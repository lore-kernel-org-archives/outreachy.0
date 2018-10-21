X-GM-THRID: 6614699391929286656
X-Received: by 2002:a37:1183:: with SMTP id 3-v6mr31355221qkr.40.1540104716600;
        Sat, 20 Oct 2018 23:51:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:ca:: with SMTP id d10-v6ls15379895qtg.5.gmail; Sat, 20
 Oct 2018 23:51:56 -0700 (PDT)
X-Received: by 2002:ac8:3432:: with SMTP id u47-v6mr32356958qtb.39.1540104716031;
        Sat, 20 Oct 2018 23:51:56 -0700 (PDT)
Received: by 2002:a37:ae04:0:0:0:0:0 with SMTP id x4-v6msqke;
        Sat, 20 Oct 2018 23:19:37 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61j3X8bC/8kZBz42upLXxVeNni7LcqdZNNfbxSlwkaqbqf/3cPGF/s63CunqLPckGDILP9E
X-Received: by 2002:a67:3644:: with SMTP id d65mr39186644vsa.35.1540102777537;
        Sat, 20 Oct 2018 23:19:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540102777; cv=none;
        d=google.com; s=arc-20160816;
        b=brp0mCwWWtHNMeHGTAqXHLGpX8o3cZXKy+mOPLzWgUxwKB7Bf37Vht4jeF1zht/0KG
         uxDz4lao1PB1+cq5TTwifXl3Jysgbc8EnP2HjUuQwJ4qixf0XedjCEZf6SxZWUoqF8ZP
         bzRXB4pxCs+Otav3yIIkXdhinubRHNZ85dKH//Nk/4+zSwBxWYZhbvYaTM8sOq2ttW85
         CPCvFtcvoOh4ade7yu5ceGwop3WvGAai0nNEcpKsttwIsEZIo8ki7DfolKohacdiXRH7
         kxfPr+OAJe1GnuljNde5opIawVIxRMdL31GA8Bb0fH8Uiwet0CZXynpxC9LCrXlOhaJO
         t9AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=luiDhQ8GISYic45DTNgNOUe26mzECQA3EZ7nO8hRTME=;
        b=wVflAkpBMT8Kb4ZY8SVZeHoGo8jfkO8nkSEzT35I4I6zsMyYRlaAVYpla109SJ5yPp
         OXfY2Vh2m2yN+f3wwdAu3SN6hiHGIuzv0Z+Utd72HOoUXMZz4uXno5FANciun1P6UTc4
         cDkI8IgyGKSGmcZVUufUXyXz+JIfwya350zokinruL9HkBe4NHL7WCKBnfW9lMHFWsge
         Q1diIJKmdrKu+CCvX6KDnDdVijkUHiYuKdZEdQ0LvKH5skash4WOTvrlltRBEtuE8yOb
         xGLgHNzWkHtPqBcCkPxpOrzO81B1LbR+jOFEL2LWm6hindh05p3RU8HEP4brQ2YBjD42
         kDeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VfaZxKhU;
       spf=pass (google.com: domain of nishadkamdar@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=nishadkamdar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nishadkamdar@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id 131si1228886vkx.3.2018.10.20.23.19.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Oct 2018 23:19:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishadkamdar@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VfaZxKhU;
       spf=pass (google.com: domain of nishadkamdar@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=nishadkamdar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id g12-v6so17551523pgs.1
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Oct 2018 23:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=luiDhQ8GISYic45DTNgNOUe26mzECQA3EZ7nO8hRTME=;
        b=VfaZxKhUeZNMIPNLf++fdf+L4FQ7xhtTcgFkKd5jgWx7uRWtDcz5BAB8Z/9/0xaJsA
         qqWfQo2jmgFHjA6dezzr45Or8UPdMZ4wU+xJNIq3m5UuSn9LmlJGvIXIpec8Uz+Ndfan
         5l8+Dx0vYSKO2NnQhMsqJDn92t6rGnVit1jLkZ5i7U/Hxk5WD56AsnP95CDpLlWeI7gT
         NYCfeJp35aAIgzX2OcPH7Vq9ZAIxrMzZX8KD+qNtmwtHkUpAIt3A0m7b9fQiosYhWGkv
         iyTE6u1ivV8lYHkU/GfI/M73Duw92t7zMm3Be1lupcn197fn/5CjCWFpiOdKsEHUn7Gm
         +IWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=luiDhQ8GISYic45DTNgNOUe26mzECQA3EZ7nO8hRTME=;
        b=WfC8iElhHQgQAqyes+3PyC08fwj6USHhlEHquHf+MaB2ctJlOHGtV8QP97NeOC61yX
         9HBPfix4CaShrE99GLmUL4FyEhVqJCtaGYoxvjbXCzT3uaXO0XxmgwB2wlSGFQ1e/YCo
         Vb3N4LrG8Z8keOW+rFARo7Q4NFdg4uiBtPk+bnzNAA1I+PFZMPibUMCNyk4mUp+gke0I
         aOle+e1GTmZi9LXc5BVJx3dmAF3vpd0ilUwD+Nmpf0WHl9cHg2/ijkR3Mj/KKHZMi5Pd
         Mlpb9Wv6OvXECXAxaarBWqIEvRs5IZ3lEXOj7Pgz3ZjeuQ3tIM2nwmlpPBG5HkQCN+42
         pCMA==
X-Gm-Message-State: ABuFfoj/6rRUWrwlRNx8SDKj1SuI84/fW0n61Z1ffoamD/DSn9k2WM/F
	2RWDYDzR6TxFnr6XMbfC43w=
X-Received: by 2002:a62:d206:: with SMTP id c6-v6mr15954155pfg.8.1540102776340;
        Sat, 20 Oct 2018 23:19:36 -0700 (PDT)
Return-Path: <nishadkamdar@gmail.com>
Received: from nishad ([106.51.27.228])
        by smtp.gmail.com with ESMTPSA id 64-v6sm54593145pfq.10.2018.10.20.23.19.32
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 20 Oct 2018 23:19:35 -0700 (PDT)
Date: Sun, 21 Oct 2018 11:49:28 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: ad2s1210: Switch to the gpio descriptor
 interface
Message-ID: <20181021061924.GA11073@nishad>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Use the gpiod interface instead of the deprecated old non-descriptor
interface.

Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/staging/iio/resolver/ad2s1210.c | 110 +++++++++++++++---------
 drivers/staging/iio/resolver/ad2s1210.h |   3 -
 2 files changed, 71 insertions(+), 42 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index ac13b99bd9cb..ed372a5f9130 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -15,7 +15,7 @@
 #include <linux/slab.h>
 #include <linux/sysfs.h>
 #include <linux/delay.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/module.h>
 
 #include <linux/iio/iio.h>
@@ -73,6 +73,11 @@ struct ad2s1210_state {
 	const struct ad2s1210_platform_data *pdata;
 	struct mutex lock;
 	struct spi_device *sdev;
+	struct gpio_desc *sample;
+	struct gpio_desc *a0;
+	struct gpio_desc *a1;
+	struct gpio_desc *res0;
+	struct gpio_desc *res1;
 	unsigned int fclkin;
 	unsigned int fexcit;
 	bool hysteresis;
@@ -91,8 +96,8 @@ static const int ad2s1210_mode_vals[4][2] = {
 static inline void ad2s1210_set_mode(enum ad2s1210_mode mode,
 				     struct ad2s1210_state *st)
 {
-	gpio_set_value(st->pdata->a[0], ad2s1210_mode_vals[mode][0]);
-	gpio_set_value(st->pdata->a[1], ad2s1210_mode_vals[mode][1]);
+	gpiod_set_value(st->a0, ad2s1210_mode_vals[mode][0]);
+	gpiod_set_value(st->a1, ad2s1210_mode_vals[mode][1]);
 	st->mode = mode;
 }
 
@@ -152,8 +157,8 @@ int ad2s1210_update_frequency_control_word(struct ad2s1210_state *st)
 
 static unsigned char ad2s1210_read_resolution_pin(struct ad2s1210_state *st)
 {
-	int resolution = (gpio_get_value(st->pdata->res[0]) << 1) |
-			  gpio_get_value(st->pdata->res[1]);
+	int resolution = (gpiod_get_value(st->res0) << 1) |
+			  gpiod_get_value(st->res1);
 
 	return ad2s1210_resolution_value[resolution];
 }
@@ -164,10 +169,10 @@ static const int ad2s1210_res_pins[4][2] = {
 
 static inline void ad2s1210_set_resolution_pin(struct ad2s1210_state *st)
 {
-	gpio_set_value(st->pdata->res[0],
-		       ad2s1210_res_pins[(st->resolution - 10) / 2][0]);
-	gpio_set_value(st->pdata->res[1],
-		       ad2s1210_res_pins[(st->resolution - 10) / 2][1]);
+	gpiod_set_value(st->res0,
+			ad2s1210_res_pins[(st->resolution - 10) / 2][0]);
+	gpiod_set_value(st->res1,
+			ad2s1210_res_pins[(st->resolution - 10) / 2][1]);
 }
 
 static inline int ad2s1210_soft_reset(struct ad2s1210_state *st)
@@ -401,15 +406,15 @@ static ssize_t ad2s1210_clear_fault(struct device *dev,
 	int ret;
 
 	mutex_lock(&st->lock);
-	gpio_set_value(st->pdata->sample, 0);
+	gpiod_set_value(st->sample, 0);
 	/* delay (2 * tck + 20) nano seconds */
 	udelay(1);
-	gpio_set_value(st->pdata->sample, 1);
+	gpiod_set_value(st->sample, 1);
 	ret = ad2s1210_config_read(st, AD2S1210_REG_FAULT);
 	if (ret < 0)
 		goto error_ret;
-	gpio_set_value(st->pdata->sample, 0);
-	gpio_set_value(st->pdata->sample, 1);
+	gpiod_set_value(st->sample, 0);
+	gpiod_set_value(st->sample, 1);
 error_ret:
 	mutex_unlock(&st->lock);
 
@@ -466,7 +471,7 @@ static int ad2s1210_read_raw(struct iio_dev *indio_dev,
 	s16 vel;
 
 	mutex_lock(&st->lock);
-	gpio_set_value(st->pdata->sample, 0);
+	gpiod_set_value(st->sample, 0);
 	/* delay (6 * tck + 20) nano seconds */
 	udelay(1);
 
@@ -512,7 +517,7 @@ static int ad2s1210_read_raw(struct iio_dev *indio_dev,
 	}
 
 error_ret:
-	gpio_set_value(st->pdata->sample, 1);
+	gpiod_set_value(st->sample, 1);
 	/* delay (2 * tck + 20) nano seconds */
 	udelay(1);
 	mutex_unlock(&st->lock);
@@ -628,32 +633,59 @@ static const struct iio_info ad2s1210_info = {
 	.attrs = &ad2s1210_attribute_group,
 };
 
-static int ad2s1210_setup_gpios(struct ad2s1210_state *st)
+static int ad2s1210_setup_gpios(struct spi_device *spi,
+				struct ad2s1210_state *st)
 {
-	unsigned long flags = st->pdata->gpioin ? GPIOF_DIR_IN : GPIOF_DIR_OUT;
-	struct gpio ad2s1210_gpios[] = {
-		{ st->pdata->sample, GPIOF_DIR_IN, "sample" },
-		{ st->pdata->a[0], flags, "a0" },
-		{ st->pdata->a[1], flags, "a1" },
-		{ st->pdata->res[0], flags, "res0" },
-		{ st->pdata->res[0], flags, "res1" },
-	};
+	int ret = 0;
+	unsigned long flags = st->pdata->gpioin ? GPIOD_IN : GPIOD_OUT_LOW;
+
+	st->sample = devm_gpiod_get(&spi->dev, "sample", GPIOD_IN);
+	if (IS_ERR(st->sample)) {
+		ret = PTR_ERR(st->sample);
+		dev_err(&spi->dev, "Failed to request sample GPIO: %d\n",
+			ret);
+		return ret;
+	}
+	st->a0 = devm_gpiod_get(&spi->dev, "a0", flags);
+	if (IS_ERR(st->a0)) {
+		ret = PTR_ERR(st->a0);
+		dev_err(&spi->dev, "Failed to request a0 GPIO: %d\n",
+			ret);
+		return ret;
+	}
+	st->a1 = devm_gpiod_get(&spi->dev, "a1", flags);
+	if (IS_ERR(st->a1)) {
+		ret = PTR_ERR(st->a1);
+		dev_err(&spi->dev, "Failed to request a1 GPIO: %d\n",
+			ret);
+		return ret;
+	}
+	st->res0 = devm_gpiod_get(&spi->dev, "res0", flags);
+	if (IS_ERR(st->res0)) {
+		ret = PTR_ERR(st->res0);
+		dev_err(&spi->dev, "Failed to request res0 GPIO: %d\n",
+			ret);
+		return ret;
+	}
+	st->res1 = devm_gpiod_get(&spi->dev, "res1", flags);
+	if (IS_ERR(st->res1)) {
+		ret = PTR_ERR(st->res1);
+		dev_err(&spi->dev, "Failed to request res1 GPIO: %d\n",
+			ret);
+		return ret;
+	}
 
-	return gpio_request_array(ad2s1210_gpios, ARRAY_SIZE(ad2s1210_gpios));
+	return ret;
 }
 
-static void ad2s1210_free_gpios(struct ad2s1210_state *st)
+static void ad2s1210_free_gpios(struct spi_device *spi,
+				struct ad2s1210_state *st)
 {
-	unsigned long flags = st->pdata->gpioin ? GPIOF_DIR_IN : GPIOF_DIR_OUT;
-	struct gpio ad2s1210_gpios[] = {
-		{ st->pdata->sample, GPIOF_DIR_IN, "sample" },
-		{ st->pdata->a[0], flags, "a0" },
-		{ st->pdata->a[1], flags, "a1" },
-		{ st->pdata->res[0], flags, "res0" },
-		{ st->pdata->res[0], flags, "res1" },
-	};
-
-	gpio_free_array(ad2s1210_gpios, ARRAY_SIZE(ad2s1210_gpios));
+	devm_gpiod_put(&spi->dev, st->sample);
+	devm_gpiod_put(&spi->dev, st->a0);
+	devm_gpiod_put(&spi->dev, st->a1);
+	devm_gpiod_put(&spi->dev, st->res0);
+	devm_gpiod_put(&spi->dev, st->res1);
 }
 
 static int ad2s1210_probe(struct spi_device *spi)
@@ -670,7 +702,7 @@ static int ad2s1210_probe(struct spi_device *spi)
 		return -ENOMEM;
 	st = iio_priv(indio_dev);
 	st->pdata = spi->dev.platform_data;
-	ret = ad2s1210_setup_gpios(st);
+	ret = ad2s1210_setup_gpios(spi, st);
 	if (ret < 0)
 		return ret;
 
@@ -702,7 +734,7 @@ static int ad2s1210_probe(struct spi_device *spi)
 	return 0;
 
 error_free_gpios:
-	ad2s1210_free_gpios(st);
+	ad2s1210_free_gpios(spi, st);
 	return ret;
 }
 
@@ -711,7 +743,7 @@ static int ad2s1210_remove(struct spi_device *spi)
 	struct iio_dev *indio_dev = spi_get_drvdata(spi);
 
 	iio_device_unregister(indio_dev);
-	ad2s1210_free_gpios(iio_priv(indio_dev));
+	ad2s1210_free_gpios(spi, iio_priv(indio_dev));
 
 	return 0;
 }
diff --git a/drivers/staging/iio/resolver/ad2s1210.h b/drivers/staging/iio/resolver/ad2s1210.h
index e9b2147701fc..63d479b20a6c 100644
--- a/drivers/staging/iio/resolver/ad2s1210.h
+++ b/drivers/staging/iio/resolver/ad2s1210.h
@@ -12,9 +12,6 @@
 #define _AD2S1210_H
 
 struct ad2s1210_platform_data {
-	unsigned int		sample;
-	unsigned int		a[2];
-	unsigned int		res[2];
 	bool			gpioin;
 };
 #endif /* _AD2S1210_H */
-- 
2.17.1


