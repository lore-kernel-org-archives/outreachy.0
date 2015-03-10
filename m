X-GM-THRID: 7382846406656
X-Received: by 10.42.183.206 with SMTP id ch14mr25382141icb.24.1425988783209;
        Tue, 10 Mar 2015 04:59:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.80.75 with SMTP id p11ls263438igx.40.canary; Tue, 10 Mar
 2015 04:59:43 -0700 (PDT)
X-Received: by 10.66.136.175 with SMTP id qb15mr20311622pab.11.1425988783017;
        Tue, 10 Mar 2015 04:59:43 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x235.google.com (mail-pd0-x235.google.com. [2607:f8b0:400e:c02::235])
        by gmr-mx.google.com with ESMTPS id pc4si75386pac.0.2015.03.10.04.59.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 04:59:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) client-ip=2607:f8b0:400e:c02::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjy10 with SMTP id y10so1211632pdj.8
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 04:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=LvPDI6v/4i1W9jnqfs4fkDwtEixAgxYg/OBiT3JOJWI=;
        b=fAPLnybfKuBC+F4hHwhIn+/almxrM8I5fri5C5dagdqe11E8eZeSku7JVYbTNT55gL
         qYpyHldbL/P6xeUGZcHTVjicQ1r027bp4GOa9mw37wDx5ye2H9ADttKaOe+/1PtnHtRJ
         kqo9sEVhNoKtyOP8+gj9gZsYhXCmX5hmNsHmTinCJtlX4a1dWYBuAgXxU5+GLCx1K/Y6
         9s/bU4vnSGleVVSwGloWYpbugM8TQ97v0YgXP3v7A4fG6riaSYH931zsz4kAVJF4yQDu
         2IvHa3+B6v028Mlxnn2uJwFTYIHnxDrJWZIgwNzjde6HkaZPd2KMrcdpmWnuFZVZXOu7
         y5jA==
X-Received: by 10.66.216.67 with SMTP id oo3mr63952845pac.133.1425988782928;
        Tue, 10 Mar 2015 04:59:42 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id i10sm681915pdk.53.2015.03.10.04.59.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 04:59:42 -0700 (PDT)
Date: Tue, 10 Mar 2015 17:31:04 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/8] staging: dgnc: Use kcalloc instead of kzalloc.
Message-ID: <c83b4395d4ea6a0ecf0aa6d5e72faffeb49b4a24.1425987910.git.navyasri.tech@gmail.com>
References: <cover.1425987909.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425987909.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch uses kcalloc instead of kzalloc function.
A coccinelle script was used to make this change.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
     - Make commit message shorter by removing the
       coccinelle script.
       
 drivers/staging/dgnc/dgnc_driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.c b/drivers/staging/dgnc/dgnc_driver.c
index a2543cf..5990b1e 100644
--- a/drivers/staging/dgnc/dgnc_driver.c
+++ b/drivers/staging/dgnc/dgnc_driver.c
@@ -408,7 +408,7 @@ static int dgnc_found_board(struct pci_dev *pdev, int id)
 		return -ENOMEM;
 
 	/* make a temporary message buffer for the boot messages */
-	brd->msgbuf_head = kzalloc(sizeof(u8) * 8192, GFP_KERNEL);
+	brd->msgbuf_head = kcalloc(8192, sizeof(u8), GFP_KERNEL);
 	brd->msgbuf = brd->msgbuf_head;
 
 	if (!brd->msgbuf) {
-- 
1.9.1


