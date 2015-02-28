X-GM-THRID: 5217547452416
X-Received: by 10.194.53.225 with SMTP id e1mr377356wjp.4.1425157931360;
        Sat, 28 Feb 2015 13:12:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.98 with SMTP id m2ls302904lae.5.gmail; Sat, 28 Feb 2015
 13:12:10 -0800 (PST)
X-Received: by 10.112.35.135 with SMTP id h7mr2845265lbj.23.1425157930919;
        Sat, 28 Feb 2015 13:12:10 -0800 (PST)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id cl5si363440wib.3.2015.02.28.13.12.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 13:12:10 -0800 (PST)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22e.google.com with SMTP id b13so26531775wgh.0
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 13:12:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=qaV72YrYiRloov9bjFp2qVQZ79lmAXtY/wYV48ZH28Y=;
        b=TOlq9Ry5N5IWKcZgxlmNJeTgMDlzDd1YG89E4ry7j/t/IBnqFMeh2+T3cxM5vdr8EV
         RHCjxax8nEmCF8Qc2igQy52Opw7blS64S5qJyjw854XiTjxsiPn4J1VrRAO7LbSX3pLz
         XNijiH6jY1E/U545eVm26T67l0QhuH5yX3J4qQEEVQ2YufkTRARFmnPjQUt3tlReOkax
         lXBHopc6rg+YiIGcXCZfLEKzghV5DgCghY2yKY7AC7doYHyrOYMWz/Xe+vF19EKcWqu5
         3YLdiQZ+UmyLENo17Rsu4/654I0ShUYHSs93tlAs32ZzYrTwumTDB/LWdcQ7EmwbvEKO
         kupA==
X-Received: by 10.194.249.37 with SMTP id yr5mr9449518wjc.66.1425157930830;
        Sat, 28 Feb 2015 13:12:10 -0800 (PST)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id dz6sm8588683wib.0.2015.02.28.13.12.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 28 Feb 2015 13:12:10 -0800 (PST)
Date: Sat, 28 Feb 2015 23:11:47 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: dgnc: Replace printk() with dev_dbg()
Message-ID: <20150228211147.GA2496@Inspiron>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces printk() with dev_dbg() in order to avoid the
suggestion of using a more specific function while printing debug
information. Warning found by checkpatch.pl.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
Changes in v2:
 - Use dev_dbg() instead of dev_info()
 - Make the commit message more clear

 drivers/staging/dgnc/dgnc_driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.c b/drivers/staging/dgnc/dgnc_driver.c
index a2543cf..c1d1a97 100644
--- a/drivers/staging/dgnc/dgnc_driver.c
+++ b/drivers/staging/dgnc/dgnc_driver.c
@@ -362,7 +362,7 @@ static void dgnc_cleanup_board(struct dgnc_board *brd)
 
 		spin_lock_irqsave(&dgnc_global_lock, flags);
 		brd->msgbuf = NULL;
-		printk("%s", brd->msgbuf_head);
+		dev_dbg(&brd->pdev->dev, "%s\n", brd->msgbuf_head);
 		kfree(brd->msgbuf_head);
 		brd->msgbuf_head = NULL;
 		spin_unlock_irqrestore(&dgnc_global_lock, flags);
@@ -610,7 +610,7 @@ static int dgnc_found_board(struct pci_dev *pdev, int id)
 
 	spin_lock_irqsave(&dgnc_global_lock, flags);
 	brd->msgbuf = NULL;
-	printk("%s", brd->msgbuf_head);
+	dev_dbg(&brd->pdev->dev, "%s\n", brd->msgbuf_head);
 	kfree(brd->msgbuf_head);
 	brd->msgbuf_head = NULL;
 	spin_unlock_irqrestore(&dgnc_global_lock, flags);
-- 
1.9.1


