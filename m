X-GM-THRID: 6330861539691593728
X-Received: by 10.237.34.194 with SMTP id q2mr12961079qtc.3.1474195102262;
        Sun, 18 Sep 2016 03:38:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.162 with SMTP id 31ls2973988otj.25.gmail; Sun, 18 Sep
 2016 03:38:22 -0700 (PDT)
X-Received: by 10.13.226.202 with SMTP id l193mr2888812ywe.75.1474195101999;
        Sun, 18 Sep 2016 03:38:21 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id si10si4424155pab.1.2016.09.18.03.38.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 03:38:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id pp5so5552752pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 03:38:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0URsCtypKYnbtWicaTUjhCBMfKMlM9hsuIYHpHP7Dno=;
        b=Ila8idxL52uOJyJVYmbea+kP5q5cxI/oqPlBP8ieQ3s72bXcUrJ2WfMMKF17wpZ3Sl
         zfwkZc3ZBg+IWdyAfCaTXmyp9K+Q877gQpVeviXxznFNYhVfEfHs6zhiBasoJE757sPJ
         Ij/ODRQfPENjbpotSM/f1yD2cRFX74Te8AAZmWR0Vn+EOxwwumqU6r1H8rgcYCUNbCDM
         MiVgq77fOyr/I4MamiOSzvAMs7UEzLz+zYhJegSwpNZsyVgkMnfJF1UVFo+SreCZ5EI1
         cjTJFyYuQ7D/OAYBG+edqD4zLig74ye2LGaTQXF/+tLR3+AcSZG+3WnTysGFClhcQEWl
         nlIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0URsCtypKYnbtWicaTUjhCBMfKMlM9hsuIYHpHP7Dno=;
        b=g1oawRuJu9FBmYPEnMvcKWXcqGS7Y5LeZ1ep5dy/j6p8WQOuzFCxhLn63LA405tCIz
         azYPGDRCrsdZr8dBAv5o1HRhkOZffLnaV1HhaC6cdhGAPlWSMKQUuCmaoaMe6mXWRiuV
         7EqXyG/mJbBis87+0Ctaf9zhIeOLVVpG5Mpb5Lar+r3Vnlhi8KmA+ckMr0BhZO7qrZW4
         b1LgirBDk4bssPpeL0CdSk/4N7PfKb2/iFx24PpKErw7pH898It0y6bDJrcr8ETzbYf5
         t+cioitUQqpcdm8PWdr5Q5zuyLITQPQIX6MgVxzPJIM5cZG62KTGsU3CYGiSRVtnYDV1
         8qzg==
X-Gm-Message-State: AE9vXwNcleKF55SpoWDdk8vkE6bB4meBb5mdg2NRmEDcwVIixbo2C5OBBB4qOOiv65fiOg==
X-Received: by 10.66.193.199 with SMTP id hq7mr37761526pac.70.1474195101773;
        Sun, 18 Sep 2016 03:38:21 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.173.54])
        by smtp.gmail.com with ESMTPSA id ps2sm23799465pab.10.2016.09.18.03.38.19
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 03:38:21 -0700 (PDT)
Date: Sun, 18 Sep 2016 05:07:21 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: German.Rivera@freescale.com, stuart.yoder@nxp.com,
	gregkh@linuxfoundation.org
Subject: [PATCH v2] Staging: fsl-mc: Use !x instead of x == NULL.
Message-ID: <20160917233721.GA24643@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL. This issue was found by checkpatch. 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* Correcting file permission issue.
 drivers/staging/fsl-mc/bus/fsl-mc-msi.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fsl-mc/bus/fsl-mc-msi.c b/drivers/staging/fsl-mc/bus/fsl-mc-msi.c
index cc19092..bc1ad1a 100644
--- a/drivers/staging/fsl-mc/bus/fsl-mc-msi.c
+++ b/drivers/staging/fsl-mc/bus/fsl-mc-msi.c
@@ -50,7 +50,7 @@ static void fsl_mc_msi_update_dom_ops(struct msi_domain_info *info)
 	/*
 	 * set_desc should not be set by the caller
 	 */
-	if (ops->set_desc == NULL)
+	if (!ops->set_desc)
 		ops->set_desc = fsl_mc_msi_set_desc;
 }
 
@@ -140,7 +140,7 @@ static void fsl_mc_msi_update_chip_ops(struct msi_domain_info *info)
 	/*
 	 * irq_write_msi_msg should not be set by the caller
 	 */
-	if (chip->irq_write_msi_msg == NULL)
+	if (!chip->irq_write_msi_msg)
 		chip->irq_write_msi_msg = fsl_mc_msi_write_msg;
 }
 
-- 
1.7.1


