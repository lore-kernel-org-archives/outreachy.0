X-GM-THRID: 6612972487393148928
X-Received: by 2002:ae9:e8c2:: with SMTP id a185-v6mr20497368qkg.22.1539788374973;
        Wed, 17 Oct 2018 07:59:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:60c:: with SMTP id 12-v6ls10619943qkg.9.gmail; Wed, 17
 Oct 2018 07:59:34 -0700 (PDT)
X-Received: by 2002:ae9:c00b:: with SMTP id u11-v6mr8521046qkk.53.1539788374409;
        Wed, 17 Oct 2018 07:59:34 -0700 (PDT)
Received: by 2002:a37:4890:0:0:0:0:0 with SMTP id v138-v6msqka;
        Tue, 16 Oct 2018 07:46:36 -0700 (PDT)
X-Google-Smtp-Source: ACcGV624PrMVNxbEMNqMWtQiL72HC+945lg1aIDY8SdLc20GOxdca29MXBCbFV1jE445ySlM2jGQ
X-Received: by 2002:a0c:943c:: with SMTP id h57mr17803217qvh.61.1539701195932;
        Tue, 16 Oct 2018 07:46:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539701195; cv=none;
        d=google.com; s=arc-20160816;
        b=K5uPob38o/3e7DW0tuBUtn5weTjbtMW/tkjzhp7N/qIxIhHUQ/+FJrbgt8wMrH9Vgr
         wDndMX0rD/At6g//sBlEWfH5LKXt+dxa60lv8Brs5XIH4zmDqOuFWp5GrKqCN5qURG8L
         uLK0aAHj6I1gOVVbm5Hqr2zN7O9rkfugUvRMZBFa/3rHMdhe9/EjWnUZeMWSqFupI2O/
         uQO6/SqDqHGy8fBW66GSomuYosriMdhXn87BHbH1jO9EKWSDEv2TQRqdlOkhoYYfxFtu
         X6SOxY0oNCKmzE34hVUqSsXYcREqUlhgiKEQD1gEliWluXRRJnxBu1s6eXBGPtCMNedN
         6Wkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=SZZEzm89nUQYCZIMdozLX5yhM1cilHIoym83KXh9g1U=;
        b=OwBikOzfNaFVnXsLh2i+qs/fSf5g57gkatmr/seQR3jj+kVQvJPErO0ptwkx4gDrWa
         3Br+bHQZNDldxqS4J8OB/s1Gwlqk0vMEtxUc62oR9HCv7Z3AmhnyXMSOfWnXBXheMCrs
         U54sQDfnL5jGP5mEk4uN6bBqRMni9fNdZZXoCpjXTGJqL4JMR9HvjcJZhkAKZnSSnTEC
         59syuT6eJPnaw4UNYJ1pmc8Ik9aWX0a+cwEYRf2YvSDo/vgc3RMYJd9gNrCDGifCHWkB
         IlsR8RW3zwCrCiFK+oAUmLpnnzxiI3nFVzJxot2XWo+f0Mlkkw3ZHLmCRe0booaCwIE7
         JX7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YLKfNX93;
       spf=pass (google.com: domain of nishadkamdar@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=nishadkamdar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nishadkamdar@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id x41-v6si730974qth.2.2018.10.16.07.46.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Oct 2018 07:46:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishadkamdar@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YLKfNX93;
       spf=pass (google.com: domain of nishadkamdar@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=nishadkamdar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id g2-v6so10951646pgu.11
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Oct 2018 07:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SZZEzm89nUQYCZIMdozLX5yhM1cilHIoym83KXh9g1U=;
        b=YLKfNX93ypOxOhED1Qthu0CAvblmwfBelOC5Lfeb3YiK65TvFdTeQerATwZYbYNAwh
         lEaSNnik7ocSrJya5HtruL9Z+RJ4GI7lP2ODBRl4wIHIPw5QNLspkEvgpeegAWIC4Qls
         cFTxBhxC04jdypypm7MA+eFN3tSK5SfsIZjOnRogj4up2KfTnQNeq7SmjXz5EzOk1vum
         g087R7XYfXwcnHkNzVbCZspMKBy7otx39/D7qHg3FzaaF04hFMy9qxmoLjolg14C8gNf
         voo/Y7h0BBQhJXF7YB/92/JxxVUi77axvEm0c5HAO1aB8cRIdgsO7tuYgSHHOdCXJdRH
         k2bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SZZEzm89nUQYCZIMdozLX5yhM1cilHIoym83KXh9g1U=;
        b=VtjqJEyOHxJmXsQp2ZxLBeTP0jHTSImOe55PoF3Up0QOZ7Cg9h9JYPlo9vWB1BAVTM
         43Z3L8uF+8wl9QLCnggJrnfGXXQuhZrZjNAY+LjIkHRCqqUMsrb2N9gz8xY97cmwN+Wt
         0V6BNhqUb++6HXJ+z4FiXWad28MuOyy3tlFLAFkTqerAA4luAt37dufTpYPru/Q35wkw
         /Y5yhvYInGw0zc4DbTNq+C8ZZ7XtPrvGrG9lw3pNxomFzmTnya6y/13qIZfIGl4wPhJz
         BT79bUjE7K/oh4ehsKI+uVs8uR/k3RNg4Cg4Je62t4xnp8wLLQ/qrZ2TptGNPBn1ALNi
         SyAA==
X-Gm-Message-State: ABuFfoj8JuSmIahkl3ardmtltKrWCfxJgUatFRb0SbcXL2WDDcr5Gnnt
	pv4Ikw0qnIYeUkNeTAObxR0M5fQIPWKjhg==
X-Received: by 2002:a63:9712:: with SMTP id n18-v6mr20848352pge.182.1539701194878;
        Tue, 16 Oct 2018 07:46:34 -0700 (PDT)
Return-Path: <nishadkamdar@gmail.com>
Received: from nishad ([106.51.27.228])
        by smtp.gmail.com with ESMTPSA id c8-v6sm16944694pfi.142.2018.10.16.07.46.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 16 Oct 2018 07:46:34 -0700 (PDT)
Date: Tue, 16 Oct 2018 20:16:27 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: ad7816: Switch to the gpio descriptor interface
Message-ID: <20181016144623.GA9890@nishad>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Use the gpiod interface for rdwr_pin, convert_pin and busy_pin
instead of the deprecated old non-descriptor interface.

Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/staging/iio/adc/ad7816.c | 72 +++++++++++++-------------------
 1 file changed, 30 insertions(+), 42 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7816.c b/drivers/staging/iio/adc/ad7816.c
index bf76a8620bdb..190b751af866 100644
--- a/drivers/staging/iio/adc/ad7816.c
+++ b/drivers/staging/iio/adc/ad7816.c
@@ -7,7 +7,7 @@
  */
 
 #include <linux/interrupt.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/device.h>
 #include <linux/kernel.h>
 #include <linux/slab.h>
@@ -44,9 +44,9 @@
 
 struct ad7816_chip_info {
 	struct spi_device *spi_dev;
-	u16 rdwr_pin;
-	u16 convert_pin;
-	u16 busy_pin;
+	struct gpio_desc *rdwr_pin;
+	struct gpio_desc *convert_pin;
+	struct gpio_desc *busy_pin;
 	u8  oti_data[AD7816_CS_MAX + 1];
 	u8  channel_id;	/* 0 always be temperature */
 	u8  mode;
@@ -61,28 +61,28 @@ static int ad7816_spi_read(struct ad7816_chip_info *chip, u16 *data)
 	int ret = 0;
 	__be16 buf;
 
-	gpio_set_value(chip->rdwr_pin, 1);
-	gpio_set_value(chip->rdwr_pin, 0);
+	gpiod_set_value(chip->rdwr_pin, 1);
+	gpiod_set_value(chip->rdwr_pin, 0);
 	ret = spi_write(spi_dev, &chip->channel_id, sizeof(chip->channel_id));
 	if (ret < 0) {
 		dev_err(&spi_dev->dev, "SPI channel setting error\n");
 		return ret;
 	}
-	gpio_set_value(chip->rdwr_pin, 1);
+	gpiod_set_value(chip->rdwr_pin, 1);
 
 	if (chip->mode == AD7816_PD) { /* operating mode 2 */
-		gpio_set_value(chip->convert_pin, 1);
-		gpio_set_value(chip->convert_pin, 0);
+		gpiod_set_value(chip->convert_pin, 1);
+		gpiod_set_value(chip->convert_pin, 0);
 	} else { /* operating mode 1 */
-		gpio_set_value(chip->convert_pin, 0);
-		gpio_set_value(chip->convert_pin, 1);
+		gpiod_set_value(chip->convert_pin, 0);
+		gpiod_set_value(chip->convert_pin, 1);
 	}
 
-	while (gpio_get_value(chip->busy_pin))
+	while (gpiod_get_value(chip->busy_pin))
 		cpu_relax();
 
-	gpio_set_value(chip->rdwr_pin, 0);
-	gpio_set_value(chip->rdwr_pin, 1);
+	gpiod_set_value(chip->rdwr_pin, 0);
+	gpiod_set_value(chip->rdwr_pin, 1);
 	ret = spi_read(spi_dev, &buf, sizeof(*data));
 	if (ret < 0) {
 		dev_err(&spi_dev->dev, "SPI data read error\n");
@@ -99,8 +99,8 @@ static int ad7816_spi_write(struct ad7816_chip_info *chip, u8 data)
 	struct spi_device *spi_dev = chip->spi_dev;
 	int ret = 0;
 
-	gpio_set_value(chip->rdwr_pin, 1);
-	gpio_set_value(chip->rdwr_pin, 0);
+	gpiod_set_value(chip->rdwr_pin, 1);
+	gpiod_set_value(chip->rdwr_pin, 0);
 	ret = spi_write(spi_dev, &data, sizeof(data));
 	if (ret < 0)
 		dev_err(&spi_dev->dev, "SPI oti data write error\n");
@@ -129,10 +129,10 @@ static ssize_t ad7816_store_mode(struct device *dev,
 	struct ad7816_chip_info *chip = iio_priv(indio_dev);
 
 	if (strcmp(buf, "full")) {
-		gpio_set_value(chip->rdwr_pin, 1);
+		gpiod_set_value(chip->rdwr_pin, 1);
 		chip->mode = AD7816_FULL;
 	} else {
-		gpio_set_value(chip->rdwr_pin, 0);
+		gpiod_set_value(chip->rdwr_pin, 0);
 		chip->mode = AD7816_PD;
 	}
 
@@ -345,15 +345,9 @@ static int ad7816_probe(struct spi_device *spi_dev)
 {
 	struct ad7816_chip_info *chip;
 	struct iio_dev *indio_dev;
-	unsigned short *pins = dev_get_platdata(&spi_dev->dev);
 	int ret = 0;
 	int i;
 
-	if (!pins) {
-		dev_err(&spi_dev->dev, "No necessary GPIO platform data.\n");
-		return -EINVAL;
-	}
-
 	indio_dev = devm_iio_device_alloc(&spi_dev->dev, sizeof(*chip));
 	if (!indio_dev)
 		return -ENOMEM;
@@ -364,34 +358,28 @@ static int ad7816_probe(struct spi_device *spi_dev)
 	chip->spi_dev = spi_dev;
 	for (i = 0; i <= AD7816_CS_MAX; i++)
 		chip->oti_data[i] = 203;
-	chip->rdwr_pin = pins[0];
-	chip->convert_pin = pins[1];
-	chip->busy_pin = pins[2];
 
-	ret = devm_gpio_request(&spi_dev->dev, chip->rdwr_pin,
-				spi_get_device_id(spi_dev)->name);
-	if (ret) {
+	chip->rdwr_pin = devm_gpiod_get(&spi_dev->dev, "rdwr", GPIOD_IN);
+	if (IS_ERR(chip->rdwr_pin)) {
+		ret = PTR_ERR(chip->rdwr_pin);
 		dev_err(&spi_dev->dev, "Fail to request rdwr gpio PIN %d.\n",
-			chip->rdwr_pin);
+			ret);
 		return ret;
 	}
-	gpio_direction_input(chip->rdwr_pin);
-	ret = devm_gpio_request(&spi_dev->dev, chip->convert_pin,
-				spi_get_device_id(spi_dev)->name);
-	if (ret) {
+	chip->convert_pin = devm_gpiod_get(&spi_dev->dev, "convert", GPIOD_IN);
+	if (IS_ERR(chip->convert_pin)) {
+		ret = PTR_ERR(chip->convert_pin);
 		dev_err(&spi_dev->dev, "Fail to request convert gpio PIN %d.\n",
-			chip->convert_pin);
+			ret);
 		return ret;
 	}
-	gpio_direction_input(chip->convert_pin);
-	ret = devm_gpio_request(&spi_dev->dev, chip->busy_pin,
-				spi_get_device_id(spi_dev)->name);
-	if (ret) {
+	chip->busy_pin = devm_gpiod_get(&spi_dev->dev, "busy", GPIOD_IN);
+	if (IS_ERR(chip->busy_pin)) {
+		ret = PTR_ERR(chip->busy_pin);
 		dev_err(&spi_dev->dev, "Fail to request busy gpio PIN %d.\n",
-			chip->busy_pin);
+			ret);
 		return ret;
 	}
-	gpio_direction_input(chip->busy_pin);
 
 	indio_dev->name = spi_get_device_id(spi_dev)->name;
 	indio_dev->dev.parent = &spi_dev->dev;
-- 
2.17.1


