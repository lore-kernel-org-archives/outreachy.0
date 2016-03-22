X-GM-THRID: 6264920846730526720
X-Received: by 10.129.72.195 with SMTP id v186mr27464007ywa.37.1458665581180;
        Tue, 22 Mar 2016 09:53:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.151.8 with SMTP id z8ls2112672iod.83.gmail; Tue, 22 Mar
 2016 09:53:00 -0700 (PDT)
X-Received: by 10.50.50.137 with SMTP id c9mr15704066igo.3.1458665580578;
        Tue, 22 Mar 2016 09:53:00 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ui7si4942293pab.0.2016.03.22.09.53.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 09:53:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id x3so37095751pfb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 09:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=W0ln4bjV4VkdNcZiRqstogCUdCd+TGnIJjG24n8VraY=;
        b=fHAoDwnsBGO9Nfq0DJPGURuFuoD/v1EdbQkwBb7U5WkWV+RH0uu5oIruW+qw1kDHsd
         RkdFB3W8DXHvti2kZPiocWzKRbigYDuBBSbmbvZee6rWPKyydT/B+7tYe5K6ezl6Fcg8
         UEaYYKNBjYnNaUvmm0bK9+Cn5AAQdv5T+OXCUNMdt7866dLOaRLzU01ZyUMLPoatKiD2
         JLTLYkBZuz4I6bR1PuDe/6h7eDENT4yXxpXYS1VeaTvOpW6vSV39EcLV1OHMVNOIOdaF
         hASqDMyIhCVm6P68fgLvpYdXgNgpYss8HRxyfp0D1NguoRgHa4X7RVSDhisykhg1OC+s
         aYrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=W0ln4bjV4VkdNcZiRqstogCUdCd+TGnIJjG24n8VraY=;
        b=TRsrNGYmZHRHMzBTBY9aBDpLckJTdGUTrBzQUsY2ZnXXbv4FuCU1PKl9DUNY9UepY1
         QyUeKv7WG2VDb/3K5Ey/Pekmm+H1FT4yEyXHp2W/5art797bAiAbMe3RMgjKOGk7hv5b
         iERs1Gq8Pd+0SzJ8XnINkeMuGEcIdGw6e8keDNueeQ6gja/Inza4uWQT3ZuxwcR5Q+yM
         1pOwq8lnNG+iPU6d1B+PhLOl5hZeKuM+oDwFzb7S888nHGzBzz+k1nVrtP7DdEt0Zne/
         KYnMcOMKJzIR5EvzTdmUbHsmNhob1hxgT4kkc28Mo+TAmo45hI3lhsS0fg3Jnx7zLZFB
         QDGw==
X-Gm-Message-State: AD7BkJIB3fdAAOVSVSANaT7Yp4tq4jDRDHpk/rkdnc3eA5HI1abMoYZichZAwlzD+UDZ4Q==
X-Received: by 10.66.55.39 with SMTP id o7mr54833257pap.13.1458665580380;
        Tue, 22 Mar 2016 09:53:00 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.172.252])
        by smtp.gmail.com with ESMTPSA id vy6sm49628382pac.38.2016.03.22.09.52.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 09:52:59 -0700 (PDT)
Date: Tue, 22 Mar 2016 22:22:56 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: media: omap1: Switch to devm_ioremap_resource
Message-ID: <56c7e74c1a9fa5c1307dd66dbacf2800f7c2db7d.1458663865.git.amitoj1606@gmail.com>
References: <cover.1458663865.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458663865.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace calls to request_mem_region and ioremap with a direct 
call to devm_ioremap_resource instead and modify error
handling.
Move the call to platform_get_resource adjacent to the call to
devm_ioremap_resource to make the connection between them more
clear.

Also remove unnecessary labels, variable initialisations and
release_mem_region iounmap from probe and remove functions.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/media/omap1/omap1_camera.c | 31 ++++++------------------------
 1 file changed, 6 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/media/omap1/omap1_camera.c b/drivers/staging/media/omap1/omap1_camera.c
index 8cc4a0a..c4450b4 100644
--- a/drivers/staging/media/omap1/omap1_camera.c
+++ b/drivers/staging/media/omap1/omap1_camera.c
@@ -1569,9 +1569,8 @@ static int omap1_cam_probe(struct platform_device *pdev)
 	unsigned int irq;
 	int err = 0;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	irq = platform_get_irq(pdev, 0);
-	if (!res || (int)irq <= 0) {
+	if ((int)irq <= 0) {
 		err = -ENODEV;
 		goto exit;
 	}
@@ -1585,7 +1584,6 @@ static int omap1_cam_probe(struct platform_device *pdev)
 	if (!pcdev)
 		return -ENOMEM;
 
-	pcdev->res = res;
 	pcdev->clk = clk;
 
 	pcdev->pdata = pdev->dev.platform_data;
@@ -1616,17 +1614,11 @@ static int omap1_cam_probe(struct platform_device *pdev)
 	INIT_LIST_HEAD(&pcdev->capture);
 	spin_lock_init(&pcdev->lock);
 
-	/*
-	 * Request the region.
-	 */
-	if (!request_mem_region(res->start, resource_size(res), DRIVER_NAME))
-		return -EBUSY;
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
 
-	base = ioremap(res->start, resource_size(res));
-	if (!base) {
-		err = -ENOMEM;
-		goto exit_release;
-	}
 	pcdev->irq = irq;
 	pcdev->base = base;
 
@@ -1636,8 +1628,7 @@ static int omap1_cam_probe(struct platform_device *pdev)
 			dma_isr, (void *)pcdev, &pcdev->dma_ch);
 	if (err < 0) {
 		dev_err(&pdev->dev, "Can't request DMA for OMAP1 Camera\n");
-		err = -EBUSY;
-		goto exit_iounmap;
+		return -EBUSY;
 	}
 	dev_dbg(&pdev->dev, "got DMA channel %d\n", pcdev->dma_ch);
 
@@ -1673,10 +1664,6 @@ exit_free_irq:
 	free_irq(pcdev->irq, pcdev);
 exit_free_dma:
 	omap_free_dma(pcdev->dma_ch);
-exit_iounmap:
-	iounmap(base);
-exit_release:
-	release_mem_region(res->start, resource_size(res));
 exit:
 	return err;
 }
@@ -1686,7 +1673,6 @@ static int omap1_cam_remove(struct platform_device *pdev)
 	struct soc_camera_host *soc_host = to_soc_camera_host(&pdev->dev);
 	struct omap1_cam_dev *pcdev = container_of(soc_host,
 					struct omap1_cam_dev, soc_host);
-	struct resource *res;
 
 	free_irq(pcdev->irq, pcdev);
 
@@ -1694,11 +1680,6 @@ static int omap1_cam_remove(struct platform_device *pdev)
 
 	soc_camera_host_unregister(soc_host);
 
-	iounmap(pcdev->base);
-
-	res = pcdev->res;
-	release_mem_region(res->start, resource_size(res));
-
 	dev_info(&pdev->dev, "OMAP1 Camera Interface driver unloaded\n");
 
 	return 0;
-- 
1.9.1


