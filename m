X-GM-THRID: 6252641236847427584
X-Received: by 10.98.43.132 with SMTP id r126mr7188003pfr.5.1455806517797;
        Thu, 18 Feb 2016 06:41:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.201 with SMTP id n67ls5684785qgd.18.gmail; Thu, 18 Feb
 2016 06:41:57 -0800 (PST)
X-Received: by 10.13.213.208 with SMTP id x199mr7364218ywd.48.1455806517244;
        Thu, 18 Feb 2016 06:41:57 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id u66si993844pfa.2.2016.02.18.06.41.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 06:41:57 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id q63so32499771pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 06:41:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=sWg3avaT9gpBAxcr79+LJWkYiZEpduDzYCoS5PlmCA8=;
        b=qYA7MXnsyVbO51pzxaDghd4wGMSY5CQcE0pcrH96iQwGW35souI6J7zBnUPp1rn+4X
         7gt7+/Q9ZmhgnIIdIafXO/JNOlHs6IZY/dWrxbMbRQnQXZL7TES+u01mayAPHOH9YCDC
         1nanjb49KHwgN8+hlpKmMaMwXvt9Xo9H/fFk9LOCZOP0m5d6t5UJC+LUtIYG0ZDtSXVr
         tbC+qpyfS3ClFZ/rJsDwrnECvaYOtwt6CqFZ5nbBt7cyhObsGcv+VmFjRtx0Al/IXqSW
         1nNAcL1MQ2AX78lcn93/35rA99kVdzBalI+4peFc2E/oHPgdODsn8jgj0RjiVXcR4EQb
         6JvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=sWg3avaT9gpBAxcr79+LJWkYiZEpduDzYCoS5PlmCA8=;
        b=VyHbSEe/5ehcP0GQ/lTYYosTP+1Rrvv5rvQjUr72j/RDWyzTFpqMsFDG6A8XyBNgCH
         61K3F47Wbyn8MHSJUF3/fG17GlhtZEKk59NRvdZOpXWUkiU6Xwi/oLipViehpWiivE+x
         7ipPpP7Bz9y6mr2VuTbSM71sXKfeAhKGC9HK2PXmhFoZu7h0wZ+/OjnNy7uYmrv4MxBo
         HVyuEgjmtY4VKIdjEFd8gpLMHSxt3TMKwhNJFv1v6WyozLZLgYFk37F7OZyR2qx1UIYE
         iLHtsa/MJS8bROTZElnqNiSy5hAhvyy3Sk0tc/ERq+iKaHAHQdNeb1gVRz0Sb4jtHs/d
         Wllw==
X-Gm-Message-State: AG10YOSbzT3cjwg+t2K+GHYIL/QtgEv+T7P0pH0VdovNLde+7IW4YSdmRf7wQhIOjZPbhQ==
X-Received: by 10.98.18.201 with SMTP id 70mr10676944pfs.104.1455806517049;
        Thu, 18 Feb 2016 06:41:57 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id 67sm10946165pfi.2.2016.02.18.06.41.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 06:41:56 -0800 (PST)
Date: Thu, 18 Feb 2016 20:11:50 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: most: hdm-dim2: Switch to
 devm_ioremap_resource()
Message-ID: <5565c65ccfb0ef9568c7aa0ffac71ca9888b5333.1455803765.git.amitoj1606@gmail.com>
References: <cover.1455803765.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455803765.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Devm_ functions allocate memory that is released when a driver
detaches. Replace request_mem_region and ioremap with 
devm_ioremap_resource and remove corresponding freeing functions
release_mem_region and iounmap from probe and remove functions of a
platform device.

Also, an unnecessary platform_set_drvdata() has been removed since the
driver core clears the driver data to NULL after device release or on
probe failure. There is no need to manually clear the device driver
data to NULL.

Lastly, unnecessary labels have been removed.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/most/hdm-dim2/dim2_hdm.c | 33 +++++---------------------------
 1 file changed, 5 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/most/hdm-dim2/dim2_hdm.c b/drivers/staging/most/hdm-dim2/dim2_hdm.c
index 97db334..708b998 100644
--- a/drivers/staging/most/hdm-dim2/dim2_hdm.c
+++ b/drivers/staging/most/hdm-dim2/dim2_hdm.c
@@ -747,29 +747,14 @@ static int dim2_probe(struct platform_device *pdev)
 	test_dev = dev;
 #else
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res) {
-		pr_err("no memory region defined\n");
-		ret = -ENOENT;
-		return ret;
-	}
-
-	if (!request_mem_region(res->start, resource_size(res), pdev->name)) {
-		pr_err("failed to request mem region\n");
-		ret = -EBUSY;
-		return ret;
-	}
-
-	dev->io_base = ioremap(res->start, resource_size(res));
-	if (!dev->io_base) {
-		pr_err("failed to ioremap\n");
-		ret = -ENOMEM;
-		goto err_release_mem;
-	}
+	dev->io_base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(dev->io_base))
+		return PTR_ERR(dev->io_base);
 
 	ret = platform_get_irq(pdev, 0);
 	if (ret < 0) {
 		pr_err("failed to get irq\n");
-		goto err_unmap_io;
+		return -ENODEV;
 	}
 	dev->irq_ahb0 = ret;
 
@@ -777,7 +762,7 @@ static int dim2_probe(struct platform_device *pdev)
 	if (ret) {
 		pr_err("failed to request IRQ: %d, err: %d\n",
 		       dev->irq_ahb0, ret);
-		goto err_unmap_io;
+		return ret;
 	}
 #endif
 	init_waitqueue_head(&dev->netinfo_waitq);
@@ -858,10 +843,6 @@ err_stop_thread:
 err_free_irq:
 #if !defined(ENABLE_HDM_TEST)
 	free_irq(dev->irq_ahb0, dev);
-err_unmap_io:
-	iounmap(dev->io_base);
-err_release_mem:
-	release_mem_region(res->start, resource_size(res));
 #endif
 
 	return ret;
@@ -876,7 +857,6 @@ err_release_mem:
 static int dim2_remove(struct platform_device *pdev)
 {
 	struct dim2_hdm *dev = platform_get_drvdata(pdev);
-	struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	struct dim2_platform_data *pdata = pdev->dev.platform_data;
 	unsigned long flags;
 
@@ -892,10 +872,7 @@ static int dim2_remove(struct platform_device *pdev)
 	kthread_stop(dev->netinfo_task);
 #if !defined(ENABLE_HDM_TEST)
 	free_irq(dev->irq_ahb0, dev);
-	iounmap(dev->io_base);
-	release_mem_region(res->start, resource_size(res));
 #endif
-	platform_set_drvdata(pdev, NULL);
 
 	/*
 	 * break link to local platform_device_id struct
-- 
1.9.1


