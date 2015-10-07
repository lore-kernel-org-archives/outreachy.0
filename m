X-GM-THRID: 6202672545102036992
X-Received: by 10.195.18.100 with SMTP id gl4mr531715wjd.4.1444241650006;
        Wed, 07 Oct 2015 11:14:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.39.162 with SMTP id q2ls1355316wik.20.canary; Wed, 07 Oct
 2015 11:14:09 -0700 (PDT)
X-Received: by 10.194.6.170 with SMTP id c10mr520254wja.7.1444241649685;
        Wed, 07 Oct 2015 11:14:09 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id c1si156064wiv.3.2015.10.07.11.14.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 11:14:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id fx3so224698266wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 11:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=A60AqBQWfPoGxwp55pQZ5iBg6BNu3VEXE4mVa+6Twfo=;
        b=alT07pJxTxnMhkd9dCdUIIvvMxvVAauYWgSll7jEbmMLL9ILx2gsobJwgaQDiP4CrL
         MS0qlMuUDB2hyp7+MsgsCnyBZqR22K1eD44rV+PCAxIoXH+JE8HXsgbRb3o2WWb+Dukw
         4VgvIkLXEXbZcL0Lc0MhHl7t6x8cnN92FXgDqQ1ZjBkcvK8kYAMeY618wiM9Yl5N2kDa
         uIUgSg6PJH28wOlNl31DUwpnh+TbEEAoey+/Tl+v+lX+TPsE7tSkfrPhs3WmqeUdFkMd
         Vo4DWcHA26ZudtW5IO5yvy9gf+ZMWDgEdKt/xpYtMzzvO99xRme24J6FIGNlk6k2Sb1N
         3BEg==
X-Received: by 10.180.106.4 with SMTP id gq4mr26851118wib.53.1444241649597;
        Wed, 07 Oct 2015 11:14:09 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id jf3sm3629403wic.8.2015.10.07.11.14.08
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Oct 2015 11:14:09 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 7/9] staging: iio: adc: remove multiple blank lines
Date: Wed,  7 Oct 2015 21:13:45 +0300
Message-Id: <daba93692ad623b311c4c3c9650de74e7b60d81e.1444241200.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444241200.git.ciorneiioana@gmail.com>
References: <cover.1444241200.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444241200.git.ciorneiioana@gmail.com>
References: <cover.1444241200.git.ciorneiioana@gmail.com>

Remove multiple blank lines since there is no practical reason
to have it

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    - nothing

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


