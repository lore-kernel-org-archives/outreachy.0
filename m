X-GM-THRID: 6254552091181711360
X-Received: by 10.140.41.69 with SMTP id y63mr5458935qgy.26.1456251389397;
        Tue, 23 Feb 2016 10:16:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.196 with SMTP id l4ls955723igx.43.canary; Tue, 23 Feb
 2016 10:16:28 -0800 (PST)
X-Received: by 10.107.8.216 with SMTP id h85mr35499085ioi.0.1456251388932;
        Tue, 23 Feb 2016 10:16:28 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id ui7si4082909pab.0.2016.02.23.10.16.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 10:16:28 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id c10so120082712pfc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 10:16:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=KwYsdr9hsAjd96QoZdCTRedMLO7OkgaSoMae/K2LV1M=;
        b=EHZBcbyjqLFNrAgcclDKUqMIuK/mZMvdbr47NpEY/vyDmt/cCd9fEK8pPaP7qNAJRf
         OXl5g5qX8ln5flNqS408pZ8wXFCOVnzIHGYQp3gIWV8UGc93gOMdM/gRbPnVPwmCX7P4
         Yz4I6QCTecvGy4jvEm+Vh76I4tBrusdeXVwn9WRg4+6SAoBtQT4gSKrRu61fNgovR4Li
         eMD8bpGyg0XsO+UffbvBJ+rEQS5EgJnMoT9VrqUECZIf9RoIdtFz78+IRBum2O2XNyph
         cq3Ss3wYQ54gSdPD0zIjLtDx3GEPUtibt4HDPYJ8bDxQW67LGtVLx9T1uRU21BRbdo9v
         L1Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=KwYsdr9hsAjd96QoZdCTRedMLO7OkgaSoMae/K2LV1M=;
        b=KAToxRWw/55ONAQLfsT91be4rjQ6ZjL3S2xGs0gj93yt6OVPeDTIULdIiJ0E+6651C
         6P+Z1HUiEeBy+8nhf+iuh+wAvqkNDzJrns6CNk9/B+n1pdSJv3NkWrCqvieOKtXmb3Hu
         um80d7zIheMJYNFsIM/UQ8wFWY+jJsUzW4CaRVTirJmyPeQQ4YBTmM50Ox5FfIho1GbM
         H2gffvLnF8kIsWE0QnngwEYRXIiPTf/QrJhVBU8HTuT7yK9FY9ebnbw0IFJ4vdJigtwB
         ZG4K8zSac9oN8xDngfmqaRInydZSlQEa21TwNHXNn9FsIJSEGClnH+m0SKYIa6qfZ4Gg
         Wlaw==
X-Gm-Message-State: AG10YOSdp8vbThiUBid8qEHgJVKyZxUlMLsfKfWv7zEyr1DqNYddvGLN9S0IxH2lcUiNGw==
X-Received: by 10.98.43.149 with SMTP id r143mr47734223pfr.7.1456251388702;
        Tue, 23 Feb 2016 10:16:28 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.170.221])
        by smtp.gmail.com with ESMTPSA id vy6sm45902642pac.38.2016.02.23.10.16.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 10:16:28 -0800 (PST)
Date: Tue, 23 Feb 2016 23:46:23 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: adc: Use devm_ioremap_resource() instead of
 of_iomap()
Message-ID: <20160223181623.GA20782@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The adc driver uses of_iomap() which doesn't request the resource and
isn't device managed so error handling is needed. of_iomap() is mainly
used in cases where there is no driver or struct device so a switch to
devm_ functions is required.

This patch switches to use devm_ioremap_resource() instead which
automatically requests the resource and is freed when the driver
detaches. 

Removed the error handling to unmap I/O registers i.e. 
iounmap() in probe and remove functions of this driver and 
consequently removed an unnecessary label.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/iio/adc/spear_adc.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/iio/adc/spear_adc.c b/drivers/staging/iio/adc/spear_adc.c
index 0a6d0d7..8dc80b3 100644
--- a/drivers/staging/iio/adc/spear_adc.c
+++ b/drivers/staging/iio/adc/spear_adc.c
@@ -262,6 +262,7 @@ static int spear_adc_probe(struct platform_device *pdev)
 	struct device_node *np = pdev->dev.of_node;
 	struct device *dev = &pdev->dev;
 	struct spear_adc_state *st;
+	struct resource *res;
 	struct iio_dev *indio_dev = NULL;
 	int ret = -ENODEV;
 	int irq;
@@ -280,24 +281,24 @@ static int spear_adc_probe(struct platform_device *pdev)
 	 * (e.g. SPEAr3xx). Let's provide two register base addresses
 	 * to support multi-arch kernels.
 	 */
-	st->adc_base_spear6xx = of_iomap(np, 0);
-	if (!st->adc_base_spear6xx) {
-		dev_err(dev, "failed mapping memory\n");
-		return -ENOMEM;
-	}
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	st->adc_base_spear6xx = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(st->adc_base_spear6xx))
+		return PTR_ERR(st->adc_base_spear6xx);
+
 	st->adc_base_spear3xx =
 		(struct adc_regs_spear3xx __iomem *)st->adc_base_spear6xx;
 
 	st->clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(st->clk)) {
 		dev_err(dev, "failed getting clock\n");
-		goto errout1;
+		return ret;
 	}
 
 	ret = clk_prepare_enable(st->clk);
 	if (ret) {
 		dev_err(dev, "failed enabling clock\n");
-		goto errout1;
+		return ret;
 	}
 
 	irq = platform_get_irq(pdev, 0);
@@ -356,8 +357,6 @@ static int spear_adc_probe(struct platform_device *pdev)
 
 errout2:
 	clk_disable_unprepare(st->clk);
-errout1:
-	iounmap(st->adc_base_spear6xx);
 	return ret;
 }
 
@@ -367,7 +366,6 @@ static int spear_adc_remove(struct platform_device *pdev)
 	struct spear_adc_state *st = iio_priv(indio_dev);
 
 	clk_disable_unprepare(st->clk);
-	iounmap(st->adc_base_spear6xx);
 
 	return 0;
 }
-- 
1.9.1


