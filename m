X-GM-THRID: 6256613003892883456
X-Received: by 10.107.44.67 with SMTP id s64mr17940054ios.29.1456731232046;
        Sun, 28 Feb 2016 23:33:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.243 with SMTP id l106ls2490875qgd.43.gmail; Sun, 28 Feb
 2016 23:33:51 -0800 (PST)
X-Received: by 10.140.41.69 with SMTP id y63mr28706737qgy.26.1456731231476;
        Sun, 28 Feb 2016 23:33:51 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 12si3500731pfb.1.2016.02.28.23.33.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 23:33:51 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id yy13so8185573pab.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 23:33:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=mnIS4pMd60+byYdBbymM+DdYwXKH0zCe1ssFrDOdGbc=;
        b=Uk5iYamBRlL7aGrvUd2wb4WxnzJVHEvL9cfhS241xDAmYwrgrgHBn69vt8+3PHNC83
         WN3JsVoHGBUz6XCGwq9buDOfj3mkiNXDaySxKnKNz5bfpf6Gor5NIqVQ+D4VIHqwzU4F
         ktW+hBr8gNxQsWjjI9pT75Uc/4PccJoakRiTVzsf/bXJQL0rlhtXsL8Yw8oZOrw6ypIo
         p5B5IFwtnB15Fj9MIcsOu6/bFRygN/xDWkjKbvzpGhk+QcPnAonbQfWM45c5h4cf7rZR
         Zm7Ddu5O+GQcekU66/TMHlirJUBR+UyxG24OO2BUOksk/8K4vpMP8Bbn4N4esiNlLeQz
         qCOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=mnIS4pMd60+byYdBbymM+DdYwXKH0zCe1ssFrDOdGbc=;
        b=eQin8uMdI9JpL1aLmxEgw7qexytU61N3xb6qDimVLk9S4mzaiPsTnOq8qXJ7t99X8U
         fGf7BrYrx+J6N6Kt29hwncApKPNs7FCloqutesDWJOOZu/VacZECs07UUVuv0kJ9UVQZ
         wo85/0dGuJ5Gc/cpOGD4C+ZMrAEF4c9PVGcA5l0kpgN6RXYwHNjRAjZik5ZO1fd8aU0w
         +7AAB2pdfBRjeTQfSUJ/5/ZOGVFZKhkZoVBD35YCxR4bwRhAmjU225K36HXkXiYao/Qk
         waRCPgz+6VeZmZCiShEuR4WfS2z2H32lVoC8RImNscOjP3S7RgWdKyLa1HOJz7D91DAK
         WYoA==
X-Gm-Message-State: AD7BkJLEANND+yO3fum0I/iX7DBVkratAy/gf4dolm3Xhs7NJkI7q9qNOfi3rtqNZc4QWQ==
X-Received: by 10.66.222.129 with SMTP id qm1mr20209342pac.22.1456731231246;
        Sun, 28 Feb 2016 23:33:51 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id z67sm35519756pfa.71.2016.02.28.23.33.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 23:33:50 -0800 (PST)
Date: Mon, 29 Feb 2016 13:03:46 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: iio: adc: Replace of_iomap() with
 devm_ioremap_resource()
Message-ID: <20160229073346.GA18683@amitoj-Inspiron-3542>
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
Changes in v2:
        -Rebased patch

 drivers/staging/iio/adc/spear_adc.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/iio/adc/spear_adc.c b/drivers/staging/iio/adc/spear_adc.c
index f2c0065..5dd61f6 100644
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
+		return PTR_ERR(st->clk);
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
 
@@ -368,7 +367,6 @@ static int spear_adc_remove(struct platform_device *pdev)
 
 	iio_device_unregister(indio_dev);
 	clk_disable_unprepare(st->clk);
-	iounmap(st->adc_base_spear6xx);
 
 	return 0;
 }
-- 
1.9.1


