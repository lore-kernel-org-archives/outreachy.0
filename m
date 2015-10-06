X-GM-THRID: 6202672545102036992
X-Received: by 10.112.130.41 with SMTP id ob9mr6835668lbb.17.1444172256432;
        Tue, 06 Oct 2015 15:57:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.85.81 with SMTP id j78ls658807lfb.81.gmail; Tue, 06 Oct
 2015 15:57:32 -0700 (PDT)
X-Received: by 10.112.164.1 with SMTP id ym1mr6856335lbb.15.1444172252525;
        Tue, 06 Oct 2015 15:57:32 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id c7si659107wiy.3.2015.10.06.15.57.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 15:57:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id fx3so3770727wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 15:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=PpRGKohScfAFKcgbCzBqF7uTeYJD8z3FtRGQ0eMyFYY=;
        b=sDsrChd33AR7g9yV0fLleLa51F8wfuLtslSER9lUBfSwFWI+jpKFadmj5tqq1HOTOS
         XSOruoe73sYsXHMaYJ+u07qCe5CikYvnru9oehCFJAc24/DmdmxgMP9q4yOL0bWBZGAO
         HolLSxB36cOZF5ggnGrVQ75XVLP2fbgc2/c0GmnG1cYTysVW2kqXysnXuw3eQXtzoZLH
         pmAhW0YmOLTsULDko8MCVtUrCu1nU8Elocn2htgKVsiREiC0Q66HvWrv+mSxcr9d9ARE
         v0hT+LvB+5zsiwWWJh5MZBjV97c116lWehp/mya0BZT1YgjYOG3YHanGrzmLDf7Oo0iy
         bpAg==
X-Received: by 10.195.11.165 with SMTP id ej5mr29842558wjd.117.1444172252426;
        Tue, 06 Oct 2015 15:57:32 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id cv4sm35261421wjc.17.2015.10.06.15.57.31
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 06 Oct 2015 15:57:32 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 07/10] staging: iio: adc: remove multiple blank lines
Date: Wed,  7 Oct 2015 01:57:07 +0300
Message-Id: <daba93692ad623b311c4c3c9650de74e7b60d81e.1444172066.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444172065.git.ciorneiioana@gmail.com>
References: <cover.1444172065.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444172065.git.ciorneiioana@gmail.com>
References: <cover.1444172065.git.ciorneiioana@gmail.com>

Remove multiple blank lines since there is no practical reason
to have it

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c  | 1 -
 drivers/staging/iio/adc/ad7280a.c | 1 -
 drivers/staging/iio/adc/ad7780.c  | 1 -
 drivers/staging/iio/adc/ad7816.c  | 3 ---
 4 files changed, 6 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index 495ddb6..f293dbd 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -88,7 +88,6 @@
 #define AD7192_CLK_INT_CO		3 /* Internal 4.92 MHz Clock available
 					   * at the MCLK2 pin */
 
-
 /* Configuration Register Bit Designations (AD7192_REG_CONF) */
 
 #define AD7192_CONF_CHOP	BIT(23) /* CHOP enable */
diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index 8d9e7f7..828bd57 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -765,7 +765,6 @@ static IIO_DEVICE_ATTR(in_temp_thresh_high_value,
 		ad7280_write_channel_config,
 		AD7280A_AUX_ADC_OVERVOLTAGE);
 
-
 static struct attribute *ad7280_event_attributes[] = {
 	&iio_dev_attr_in_thresh_low_value.dev_attr.attr,
 	&iio_dev_attr_in_thresh_high_value.dev_attr.attr,
diff --git a/drivers/staging/iio/adc/ad7780.c b/drivers/staging/iio/adc/ad7780.c
index 501dc9f..6be979a 100644
--- a/drivers/staging/iio/adc/ad7780.c
+++ b/drivers/staging/iio/adc/ad7780.c
@@ -206,7 +206,6 @@ static int ad7780_probe(struct spi_device *spi)
 	indio_dev->info = &ad7780_info;
 
 	if (pdata && gpio_is_valid(pdata->gpio_pdrst)) {
-
 		ret = devm_gpio_request_one(&spi->dev, pdata->gpio_pdrst,
 					    GPIOF_OUT_INIT_LOW, "AD7780 /PDRST");
 		if (ret) {
diff --git a/drivers/staging/iio/adc/ad7816.c b/drivers/staging/iio/adc/ad7816.c
index 6636087..b3dec706 100644
--- a/drivers/staging/iio/adc/ad7816.c
+++ b/drivers/staging/iio/adc/ad7816.c
@@ -38,7 +38,6 @@
 #define AD7816_TEMP_FLOAT_OFFSET	2
 #define AD7816_TEMP_FLOAT_MASK		0x3
 
-
 /*
  * struct ad7816_chip_info - chip specific information
  */
@@ -70,7 +69,6 @@ static int ad7816_spi_read(struct ad7816_chip_info *chip, u16 *data)
 	}
 	gpio_set_value(chip->rdwr_pin, 1);
 
-
 	if (chip->mode == AD7816_PD) { /* operating mode 2 */
 		gpio_set_value(chip->convert_pin, 1);
 		gpio_set_value(chip->convert_pin, 0);
@@ -203,7 +201,6 @@ static IIO_DEVICE_ATTR(channel, S_IRUGO | S_IWUSR,
 		ad7816_store_channel,
 		0);
 
-
 static ssize_t ad7816_show_value(struct device *dev,
 				 struct device_attribute *attr,
 				 char *buf)
-- 
2.1.4


