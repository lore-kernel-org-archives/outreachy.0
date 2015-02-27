X-GM-THRID: 4608630980608
X-Received: by 10.112.224.12 with SMTP id qy12mr1077586lbc.10.1425048825202;
        Fri, 27 Feb 2015 06:53:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.6.38 with SMTP id x6ls178030lax.63.gmail; Fri, 27 Feb 2015
 06:53:44 -0800 (PST)
X-Received: by 10.112.189.227 with SMTP id gl3mr2162191lbc.2.1425048824698;
        Fri, 27 Feb 2015 06:53:44 -0800 (PST)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-we0-x236.google.com (mail-we0-x236.google.com. [2a00:1450:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id i7si133147wif.0.2015.02.27.06.53.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 06:53:44 -0800 (PST)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) client-ip=2a00:1450:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x236.google.com with SMTP id x3so20868530wes.7
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 06:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=gq0TgKQz/1mje+9wX389XgoI6yS3+eZsCw4fOuRLul0=;
        b=RDMaUCXqneKFsO5TG3k4lNPZ5tSq+p4A+S3fJ77G2jXDZICoVWtgjG4h5v6NHBaLFO
         KTPEPRKNcBdmhcdHKW/BwYGpzKsicxFTCqw2QVCWpeJ0lgoESmsVLxU6wxM4ip1C/BXj
         NhPuRTDSDUn6zbPCtj23++4N08wyzj1utnZ3E1hzQObTPTB/SXDCmhLn9coz+yF2Fc0Q
         acB4Rvn/Hg1EaO3M4lhAOimU8BMZcbMs7CSpxR7o7tQ+anXG3xIv6Hs61T4R2f7JpzIH
         lZrFF7vLlEF2n4WxGbOu0PW3iOsSPNPVLsYhNzbjxvTjoq3y3Y2QBSkg1oMJhEv54gwA
         y6Bw==
X-Received: by 10.181.13.14 with SMTP id eu14mr7359859wid.2.1425048824586;
        Fri, 27 Feb 2015 06:53:44 -0800 (PST)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ev7sm6242375wjb.47.2015.02.27.06.53.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 06:53:44 -0800 (PST)
Date: Fri, 27 Feb 2015 16:53:22 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: dgnc: Replace printk() with dev_info()
Message-ID: <20150227145322.GA19004@Inspiron>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces printk() with dev_info() in order to avoid the
suggestion of using a more specific function.
Warning found by checkpatch.pl

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.c b/drivers/staging/dgnc/dgnc_driver.c
index ace2af6..cd349cd 100644
--- a/drivers/staging/dgnc/dgnc_driver.c
+++ b/drivers/staging/dgnc/dgnc_driver.c
@@ -364,7 +364,7 @@ static void dgnc_cleanup_board(struct dgnc_board *brd)
 
 		spin_lock_irqsave(&dgnc_global_lock, flags);
 		brd->msgbuf = NULL;
-		printk("%s", brd->msgbuf_head);
+		dev_info(&brd->pdev->dev, "dgnc : %s\n", brd->msgbuf_head);
 		kfree(brd->msgbuf_head);
 		brd->msgbuf_head = NULL;
 		spin_unlock_irqrestore(&dgnc_global_lock, flags);
@@ -612,7 +612,7 @@ static int dgnc_found_board(struct pci_dev *pdev, int id)
 
 	spin_lock_irqsave(&dgnc_global_lock, flags);
 	brd->msgbuf = NULL;
-	printk("%s", brd->msgbuf_head);
+	dev_info(&brd->pdev->dev, "dgnc : %s\n", brd->msgbuf_head);
 	kfree(brd->msgbuf_head);
 	brd->msgbuf_head = NULL;
 	spin_unlock_irqrestore(&dgnc_global_lock, flags);
-- 
1.9.1


