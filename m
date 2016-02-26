X-GM-THRID: 6255614868842348544
X-Received: by 10.182.29.129 with SMTP id k1mr1374707obh.23.1456498836212;
        Fri, 26 Feb 2016 07:00:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.196 with SMTP id l4ls541436igx.43.canary; Fri, 26 Feb
 2016 07:00:35 -0800 (PST)
X-Received: by 10.107.167.148 with SMTP id q142mr7153988ioe.17.1456498835548;
        Fri, 26 Feb 2016 07:00:35 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id yd9si1916937pab.1.2016.02.26.07.00.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 07:00:35 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id yy13so52269603pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 07:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+PREb0L5KHQfga8wKGIhza00LkNVoTTh1UDTWuQFX+Y=;
        b=ZjpdWCpPoMHqhwZh0V4KWvbJPhvy5TKj+eY6+eIuzseL3zWj9Q9QsIpUMAuHZucc2C
         ugOwOiGigY1pUI8AtRaSfBK1HGg5GQQx9fgniCQ8/wzWEnJ4tq8J3bBA1bQwwhArc4/r
         l9BE13I/s9pqdBJGQ6Gzs5zzKTlBQ5dN1cCOC6wXJwyS5m5qHJ1oPem2NnkpJVzGQe3k
         5DAl2LMR5RYNN9pS7XcNmxjLeRxPFV0dXOCLsU2hKmqECnIK6KmslpMtP0/3x7avaQUS
         x1uY6uz+XSZdH+pPkU8DzCzn5UVKgLvhI5WxkkmZCeGUU+aN/lQSrwba3hUoydQi3fVj
         AMsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+PREb0L5KHQfga8wKGIhza00LkNVoTTh1UDTWuQFX+Y=;
        b=JBJ7fWtNGFsEYdRWYE3+B2IWH0vKKK9SsCuU3kDD7IxVNN3+CCIijNncrDPW8XFM75
         FhX2/V6Xh6wZ6zJ3gnX0XXu48+by14KrrS4cwWltXYELD8Nmwi778kcLO1GEJxgbFqpk
         mRnjOM+bGQQxk9dLFL3sJdkBpWIgxiQIdxAi9o4hA4A4FUA8K0Np7k5AnUHmAmuI6JDX
         A+tspHkU83jpvdxpOz8pH4VmpIXSlyAtrJLRjPeRVWcsj9baS0htJUsXF4QeJeLepB8e
         rbB/HfyLTzSXVsFxC7pXtnvXaZj4I+p0vcuZ0GK8XUzANaEzGMm5zQVDDqrOOVOgnYKZ
         vSSg==
X-Gm-Message-State: AD7BkJLsv2Wyu3jIQxjFEV+HeWy8Ao3L9pbPkMM+Wd5f3bGHl/RorT2gpydPTBzrl2Y0rw==
X-Received: by 10.66.141.71 with SMTP id rm7mr2688121pab.106.1456498835346;
        Fri, 26 Feb 2016 07:00:35 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id n28sm20065320pfa.45.2016.02.26.07.00.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 07:00:34 -0800 (PST)
Date: Fri, 26 Feb 2016 20:30:29 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: davinci_vpfe: Replace kzalloc with
 devm_kzalloc
Message-ID: <20160226150029.GA32277@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace data allocated by kzalloc to managed data allocated by
devm_kzalloc. Remove unnecessary kzfree.

Also remove a goto by replacing it with returns and dropping the
unnecessary label.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 .../staging/media/davinci_vpfe/vpfe_mc_capture.c   | 22 +++++++---------------
 1 file changed, 7 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
index bf077f8..5852a6b 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
@@ -579,22 +579,20 @@ static int vpfe_probe(struct platform_device *pdev)
 	struct resource *res1;
 	int ret = -ENOMEM;
 
-	vpfe_dev = kzalloc(sizeof(*vpfe_dev), GFP_KERNEL);
+	vpfe_dev = devm_kzalloc(&pdev->dev, sizeof(*vpfe_dev), GFP_KERNEL);
 	if (!vpfe_dev)
 		return ret;
 
 	if (pdev->dev.platform_data == NULL) {
 		v4l2_err(pdev->dev.driver, "Unable to get vpfe config\n");
-		ret = -ENOENT;
-		goto probe_free_dev_mem;
+		return -ENOENT;
 	}
 
 	vpfe_dev->cfg = pdev->dev.platform_data;
 	if (vpfe_dev->cfg->card_name == NULL ||
 			vpfe_dev->cfg->sub_devs == NULL) {
 		v4l2_err(pdev->dev.driver, "null ptr in vpfe_cfg\n");
-		ret = -ENOENT;
-		goto probe_free_dev_mem;
+		return -ENOENT;
 	}
 
 	/* Get VINT0 irq resource */
@@ -602,8 +600,7 @@ static int vpfe_probe(struct platform_device *pdev)
 	if (!res1) {
 		v4l2_err(pdev->dev.driver,
 			 "Unable to get interrupt for VINT0\n");
-		ret = -ENOENT;
-		goto probe_free_dev_mem;
+		return -ENOENT;
 	}
 	vpfe_dev->ccdc_irq0 = res1->start;
 
@@ -612,8 +609,7 @@ static int vpfe_probe(struct platform_device *pdev)
 	if (!res1) {
 		v4l2_err(pdev->dev.driver,
 			 "Unable to get interrupt for VINT1\n");
-		ret = -ENOENT;
-		goto probe_free_dev_mem;
+		return -ENOENT;
 	}
 	vpfe_dev->ccdc_irq1 = res1->start;
 
@@ -622,8 +618,7 @@ static int vpfe_probe(struct platform_device *pdev)
 	if (!res1) {
 		v4l2_err(pdev->dev.driver,
 			 "Unable to get interrupt for DMA\n");
-		ret = -ENOENT;
-		goto probe_free_dev_mem;
+		return -ENOENT;
 	}
 	vpfe_dev->imp_dma_irq = res1->start;
 
@@ -632,7 +627,7 @@ static int vpfe_probe(struct platform_device *pdev)
 	/* enable vpss clocks */
 	ret = vpfe_enable_clock(vpfe_dev);
 	if (ret)
-		goto probe_free_dev_mem;
+		return ret;
 
 	ret = vpfe_initialize_modules(vpfe_dev, pdev);
 	if (ret)
@@ -680,8 +675,6 @@ probe_out_entities_cleanup:
 	vpfe_cleanup_modules(vpfe_dev, pdev);
 probe_disable_clock:
 	vpfe_disable_clock(vpfe_dev);
-probe_free_dev_mem:
-	kzfree(vpfe_dev);
 
 	return ret;
 }
@@ -702,7 +695,6 @@ static int vpfe_remove(struct platform_device *pdev)
 	v4l2_device_unregister(&vpfe_dev->v4l2_dev);
 	media_device_unregister(&vpfe_dev->media_dev);
 	vpfe_disable_clock(vpfe_dev);
-	kzfree(vpfe_dev);
 
 	return 0;
 }
-- 
1.9.1


