X-GM-THRID: 6250833929703522304
X-Received: by 10.182.102.38 with SMTP id fl6mr7367493obb.46.1455385687419;
        Sat, 13 Feb 2016 09:48:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.9 with SMTP id i9ls2753157qgd.61.gmail; Sat, 13 Feb
 2016 09:48:06 -0800 (PST)
X-Received: by 10.31.47.131 with SMTP id v125mr7652038vkv.11.1455385686677;
        Sat, 13 Feb 2016 09:48:06 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id u66si2219995pfa.2.2016.02.13.09.48.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 09:48:06 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id e127so64266528pfe.3
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 09:48:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=3FfJ8DVHFZhQTTUEym76/pkniOCRLWMLkGF0ozBe+0k=;
        b=Si2rB5zHUDnT1lJAwO8FUIJ367B9PwxR7NbBVeWsTbb+YhGh6LJkh3IzeF5kNngrhC
         2lTQ2aCNdo7vuI9Yw7QCfWSw8wBL8DH5WFBCJEcgnFQMqeVMhqjbziEkyzAZADHW5jTq
         0IM4JkwLdqTXH7o5VSMkD67dUKOLCpZ1j1fzuYiYDViFfDXNClzQaIVe10Nv/sI5l9l3
         trEdro/7EvDqBub4QykcVHW4LW95oO2eM8HduIZh5x0fbBjgAT58O1J3YHqZSfCY3L+d
         DkbDbaS/Am6ZlCfUWKE92X3a1++uU9mi3MQbiaXH2tKvS7XF3uToPfXnRoEzhrAW3JzN
         ly+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=3FfJ8DVHFZhQTTUEym76/pkniOCRLWMLkGF0ozBe+0k=;
        b=Npx0HbTGpGPZQ+/kTsnMOtwLBm0cVkxUcJys3y772sKCW63oGfwswYMWsC62PJ6Stp
         v1/kLPx1dv1ePM/WZ8qN0Dxm6GkpjgVVLIAXF/f5CQb8e8AC9FUGU8T+Bfu0bmBRvZQI
         4criYzr98lpz0tBrMvhpY+nWmn6CZ3UbAZrlpqVeV/UDFg0EX/AjUtCAF5gZ2y9zYvRX
         g7Rp19MaAL0JTIEi9Jr+MbT1eYfv/o7BdZZ0p9roCeigCYKlUXJqJ6h4qtpbZHy9VuuN
         q2HxV4oWFp5d7fwM2HbbHyeEQtjZfZqhPHsCwnoO9eItLGJ8sN8tys+rpfRaMQyrxr6w
         JzuQ==
X-Gm-Message-State: AG10YOQlIe2e95h5hN4njF9gov4XY32Z2ITSl4Z1uixngarw1/x3ExNXbP83s8Qer2IXRg==
X-Received: by 10.98.93.211 with SMTP id n80mr11290651pfj.61.1455385686466;
        Sat, 13 Feb 2016 09:48:06 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.149.32])
        by smtp.gmail.com with ESMTPSA id b2sm27519268pfd.24.2016.02.13.09.48.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 13 Feb 2016 09:48:05 -0800 (PST)
Date: Sat, 13 Feb 2016 23:18:01 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: most: hdm-dim2: Use devm_ functions
Message-ID: <20160213174801.GA15312@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Devm_ functions allocate memory that is released when a driver
detaches. Replace kzalloc, ioremap and request_irq with their devm_*
counterparts in the probe function of a platform device which were
originally freed in the remove function.

Also, unnecessary labels have been removed and header file
linux/device.h has been added to ensure devm_* routine declarations
are unambiguously available.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/most/hdm-dim2/dim2_hdm.c | 57 +++++++-------------------------
 1 file changed, 12 insertions(+), 45 deletions(-)

diff --git a/drivers/staging/most/hdm-dim2/dim2_hdm.c b/drivers/staging/most/hdm-dim2/dim2_hdm.c
index 6296aa5..759f2cc 100644
--- a/drivers/staging/most/hdm-dim2/dim2_hdm.c
+++ b/drivers/staging/most/hdm-dim2/dim2_hdm.c
@@ -24,6 +24,7 @@
 #include <linux/dma-mapping.h>
 #include <linux/sched.h>
 #include <linux/kthread.h>
+#include <linux/device.h>
 
 #include <mostcore.h>
 #include <networking.h>
@@ -736,58 +737,41 @@ static int dim2_probe(struct platform_device *pdev)
 	int ret, i;
 	struct kobject *kobj;
 
-	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
+	dev = devm_kzalloc(&pdev->dev, sizeof(*dev), GFP_KERNEL);
 	if (!dev)
 		return -ENOMEM;
 
 	dev->atx_idx = -1;
 
-	platform_set_drvdata(pdev, dev);
 #if defined(ENABLE_HDM_TEST)
 	test_dev = dev;
 #else
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res) {
-		pr_err("no memory region defined\n");
-		ret = -ENOENT;
-		goto err_free_dev;
-	}
-
-	if (!request_mem_region(res->start, resource_size(res), pdev->name)) {
-		pr_err("failed to request mem region\n");
-		ret = -EBUSY;
-		goto err_free_dev;
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
+		return ret;
 	}
 	dev->irq_ahb0 = ret;
 
-	ret = request_irq(dev->irq_ahb0, dim2_ahb_isr, 0, "mlb_ahb0", dev);
+	ret = devm_request_irq(&pdev->dev, dev->irq_ahb0, dim2_ahb_isr, 0,
+			       "mlb_ahb0", dev);
 	if (ret) {
 		pr_err("failed to request IRQ: %d, err: %d\n",
 		       dev->irq_ahb0, ret);
-		goto err_unmap_io;
+		return ret;
 	}
 #endif
 	init_waitqueue_head(&dev->netinfo_waitq);
 	dev->deliver_netinfo = 0;
 	dev->netinfo_task = kthread_run(&deliver_netinfo_thread, (void *)dev,
 					"dim2_netinfo");
-	if (IS_ERR(dev->netinfo_task)) {
-		ret = PTR_ERR(dev->netinfo_task);
-		goto err_free_irq;
-	}
+	if (IS_ERR(dev->netinfo_task))
+		return PTR_ERR(dev->netinfo_task);
 
 	for (i = 0; i < DMA_CHANNELS; i++) {
 		struct most_channel_capability *cap = dev->capabilities + i;
@@ -847,6 +831,7 @@ static int dim2_probe(struct platform_device *pdev)
 		goto err_destroy_bus;
 	}
 
+	platform_set_drvdata(pdev, dev);
 	return 0;
 
 err_destroy_bus:
@@ -855,16 +840,6 @@ err_unreg_iface:
 	most_deregister_interface(&dev->most_iface);
 err_stop_thread:
 	kthread_stop(dev->netinfo_task);
-err_free_irq:
-#if !defined(ENABLE_HDM_TEST)
-	free_irq(dev->irq_ahb0, dev);
-err_unmap_io:
-	iounmap(dev->io_base);
-err_release_mem:
-	release_mem_region(res->start, resource_size(res));
-err_free_dev:
-#endif
-	kfree(dev);
 
 	return ret;
 }
@@ -878,7 +853,6 @@ err_free_dev:
 static int dim2_remove(struct platform_device *pdev)
 {
 	struct dim2_hdm *dev = platform_get_drvdata(pdev);
-	struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	struct dim2_platform_data *pdata = pdev->dev.platform_data;
 	unsigned long flags;
 
@@ -892,13 +866,6 @@ static int dim2_remove(struct platform_device *pdev)
 	dim2_sysfs_destroy(&dev->bus);
 	most_deregister_interface(&dev->most_iface);
 	kthread_stop(dev->netinfo_task);
-#if !defined(ENABLE_HDM_TEST)
-	free_irq(dev->irq_ahb0, dev);
-	iounmap(dev->io_base);
-	release_mem_region(res->start, resource_size(res));
-#endif
-	kfree(dev);
-	platform_set_drvdata(pdev, NULL);
 
 	/*
 	 * break link to local platform_device_id struct
-- 
1.9.1


