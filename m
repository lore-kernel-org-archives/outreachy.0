X-GM-THRID: 6202672545102036992
X-Received: by 10.180.106.197 with SMTP id gw5mr192888wib.7.1444420309055;
        Fri, 09 Oct 2015 12:51:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.168.83 with SMTP id r80ls312432lfe.75.gmail; Fri, 09 Oct
 2015 12:51:48 -0700 (PDT)
X-Received: by 10.112.209.73 with SMTP id mk9mr2958272lbc.14.1444420308558;
        Fri, 09 Oct 2015 12:51:48 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id ch7si11307wib.2.2015.10.09.12.51.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 12:51:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x235.google.com with SMTP id lk2so80687068wic.1
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 12:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Bryy6NomPv4TpIew8YoxWyVpUoDIE5H1XlMthyd7p8Q=;
        b=PRx8gHYve0VqSPa/6jCH87Jc/xGt44ZmW0fWikswMiyCqx1334wl3vFcTL80C0Qz1l
         2U3yLafnLixIXVwCZ/xeKI9pBUDkWfXnD69ih3JHn0dgE0rAClFGmUQFEgnNGTQWLfJ5
         3249hMn432UPOg6oluez9SaO+tQRTu5x/g12RNwxGBGq9YQWkHD9eukw9dBFsQyTYhuY
         8oAPqrX2mNafmsOnRygaJv4PlgufvVbzrsGmMVtbusVzZouhSTeWkYYJnd9lSMO4dAth
         oCpVCQShXvQmDiiWqPR1ScBHZko/9UCELpmDBEH4Vswd84MVaEZsQ1X8NX7H/Thvvs4/
         jBsQ==
X-Received: by 10.180.105.138 with SMTP id gm10mr970719wib.37.1444420308440;
        Fri, 09 Oct 2015 12:51:48 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id wj4sm3895064wjb.10.2015.10.09.12.51.47
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 12:51:48 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v3 7/9] staging: iio: adc: remove multiple blank lines
Date: Fri,  9 Oct 2015 22:51:06 +0300
Message-Id: <35c56be9ce1f3e1af6510fb788fccc3043d339ac.1444419393.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444419393.git.ciorneiioana@gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444419393.git.ciorneiioana@gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>

Remove multiple blank lines since there is no practical reason
to have it

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---

Changes in v2:
    - nothing
Changes in v3:
    - nothing

 drivers/staging/iio/adc/ad7192.c  | 1 -
 drivers/staging/iio/adc/ad7280a.c | 1 -
 drivers/staging/iio/adc/ad7780.c  | 1 -
 drivers/staging/iio/adc/ad7816.c  | 3 ---
 4 files changed, 6 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index 1bae258..5f2b5a6 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -88,7 +88,6 @@
 #define AD7192_CLK_INT_CO		3 /* Internal 4.92 MHz Clock available
 					   * at the MCLK2 pin */
 
-
 /* Configuration Register Bit Designations (AD7192_REG_CONF) */
 
 #define AD7192_CONF_CHOP	BIT(23) /* CHOP enable */
diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index e8e1eb1..2be3475 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -773,7 +773,6 @@ static IIO_DEVICE_ATTR(in_temp_thresh_high_value,
 		ad7280_write_channel_config,
 		AD7280A_AUX_ADC_OVERVOLTAGE);
 
-
 static struct attribute *ad7280_event_attributes[] = {
 	&iio_dev_attr_in_thresh_low_value.dev_attr.attr,
 	&iio_dev_attr_in_thresh_high_value.dev_attr.attr,
diff --git a/drivers/staging/iio/adc/ad7780.c b/drivers/staging/iio/adc/ad7780.c
index 722bb15..618b41f 100644
--- a/drivers/staging/iio/adc/ad7780.c
+++ b/drivers/staging/iio/adc/ad7780.c
@@ -206,7 +206,6 @@ static int ad7780_probe(struct spi_device *spi)
 	indio_dev->info = &ad7780_info;
 
 	if (pdata && gpio_is_valid(pdata->gpio_pdrst)) {
-
 		ret = devm_gpio_request_one(&spi->dev,
 					    pdata->gpio_pdrst,
 					    GPIOF_OUT_INIT_LOW,
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


