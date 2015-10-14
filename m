X-GM-THRID: 6202672545102036992
X-Received: by 10.194.94.66 with SMTP id da2mr1096371wjb.7.1444846740398;
        Wed, 14 Oct 2015 11:19:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.29.148 with SMTP id d142ls63882lfd.27.gmail; Wed, 14 Oct
 2015 11:18:59 -0700 (PDT)
X-Received: by 10.112.159.4 with SMTP id wy4mr1103154lbb.15.1444846739852;
        Wed, 14 Oct 2015 11:18:59 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id w4si1035696wiz.0.2015.10.14.11.18.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:18:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id gb1so241126645wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Tt3LcqJjlqnYV0hdIOXZdpnh0Mx5KF6UC5yuzWx4bdo=;
        b=Efz1tO/Zg+VGMuAgeFS3522UpIVO0GsEIj3FNCUExvQuLqeKlhYLT60Re5RfKSgZYq
         C9OtH9n2LdePCDUfkT6mdpfkAI9EjVkpt4Ta2nzU+SN1v7EIqKuqy4SyBlp0UTDpxd5b
         or2NK1Bhizzju7BTt2HTXtWMSbnUb0i00nTvRjzNhAH3rchp49/ifFN9qMAxVHNzIzbq
         LkrFlJep5wKH2RWstn6z2hbMX4TKdIm7bnT7vUTulLcY7iSPYupz2x2ZuE+YqbzXOHeH
         lamDHqDVo2tl82QQ0cAgkDkyi09V90PM01rX8zBVXb/bXCToBnYQ9KZ/yfxaoyYfjD4n
         oSSQ==
X-Received: by 10.194.200.195 with SMTP id ju3mr5768003wjc.26.1444846739756;
        Wed, 14 Oct 2015 11:18:59 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id p4sm20285140wia.15.2015.10.14.11.18.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 11:18:59 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v4 7/9] staging: iio: adc: remove multiple blank lines
Date: Wed, 14 Oct 2015 21:14:18 +0300
Message-Id: <27ecc770c22a71a8041a9a4e2edf0568c485f58a.1444845354.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444845354.git.ciorneiioana@gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444845354.git.ciorneiioana@gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>

Remove multiple blank lines since there is no practical reason
to have it

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    - nothing
Changes in v3:
    - nothing
Changes in v4:
    - nothing


 drivers/staging/iio/adc/ad7192.c  | 1 -
 drivers/staging/iio/adc/ad7280a.c | 1 -
 drivers/staging/iio/adc/ad7780.c  | 1 -
 drivers/staging/iio/adc/ad7816.c  | 3 ---
 4 files changed, 6 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index e7212c8..f3d793c 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -88,7 +88,6 @@
 #define AD7192_CLK_INT_CO		3 /* Internal 4.92 MHz Clock available
 					   * at the MCLK2 pin */
 
-
 /* Configuration Register Bit Designations (AD7192_REG_CONF) */
 
 #define AD7192_CONF_CHOP	BIT(23) /* CHOP enable */
diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index 2737033..d37e8a4 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -769,7 +769,6 @@ static IIO_DEVICE_ATTR(in_temp_thresh_high_value,
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


