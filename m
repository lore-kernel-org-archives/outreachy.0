X-GM-THRID: 6612972487393148928
X-Received: by 2002:aca:cf87:: with SMTP id f129-v6mr22211416oig.36.1539788374898;
        Wed, 17 Oct 2018 07:59:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:bdc6:: with SMTP id n189-v6ls3840852oif.9.gmail; Wed, 17
 Oct 2018 07:59:34 -0700 (PDT)
X-Received: by 2002:aca:e705:: with SMTP id e5-v6mr22913867oih.35.1539788374499;
        Wed, 17 Oct 2018 07:59:34 -0700 (PDT)
Received: by 2002:aca:f188:0:0:0:0:0 with SMTP id p130-v6msoih;
        Wed, 17 Oct 2018 07:47:28 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62wJ9dChj9vMwYFbAmAuLqmFoTPSzNMgVCiI7bNY0+OsHs5UqJ+r4bao8J9UmeL/1sWJd6G
X-Received: by 2002:a62:105c:: with SMTP id y89-v6mr13216360pfi.58.1539787648610;
        Wed, 17 Oct 2018 07:47:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539787648; cv=none;
        d=google.com; s=arc-20160816;
        b=xcl9t9qB4iakIw/F8HUYiHxSYzl0ITZnU4yRCn7qCo1bHU3Aq3YrLcY4zGch7SD36l
         Xa8Mi4qMdwhgLok7d7YUgM9keoeH16g4ATwb55Wyogz+lt1krlEmLgPWoTQPP4uvsiC0
         Bv+J6Il02y8JxpKEZG8+0lcld29TuKsVm98rOt0CJnU51wIEpkc1O/08R5oIkk4hdQrx
         dq0FLIbKU70Xp4btjDm040oqNnlq7jpBmWIb/+4VtPZal/P5tTf8dL6MLPTSJfYdCyKX
         9SsiaZ+AnvbtczJXfTsAkowces9mKfdymX4jVbxYTNC5qmpJnBp6CxdyJEOcZsCvnKBa
         QRCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=tUUvdP4UNgmpZkA6UF7VLCkX7XSiVsFjtHhMwBS+X4U=;
        b=Iigs0fZy3yEYpwltGt+IVrD/QLo8g6XcJEMOOx+7LFNPXQCNnh7LXLxlPns5ozivVm
         l7d/gICBkZD/NY3D1CoiI3hhtpCRZV81NOgOZViqeiNc9d0vGhEnwJXbdrtTZNetJJbv
         Ni1YcFERPqP2kY08TWZLNvWSDC9SQI7AGdYWa8LmAIoIstNMzF2ECWnrutwZoYuBc3rZ
         xUwJuWNqyVYRsHmJCY63uO+Fa5K15kIdHvIlXze3UBTmbaAinAQEdjL9Be4VwqfwtUaA
         L7xwQhoLLmLDxVbP7o6Y6QasRhsfaQzwKFwUIg8ilccVuLjomTf/tNx3XWUKC67IN+hJ
         SOjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F233+fIx;
       spf=pass (google.com: domain of nishadkamdar@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=nishadkamdar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nishadkamdar@gmail.com>
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id b84-v6si746032pfc.0.2018.10.17.07.47.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Oct 2018 07:47:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishadkamdar@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F233+fIx;
       spf=pass (google.com: domain of nishadkamdar@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=nishadkamdar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x429.google.com with SMTP id r9-v6so13305734pff.11
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Oct 2018 07:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=tUUvdP4UNgmpZkA6UF7VLCkX7XSiVsFjtHhMwBS+X4U=;
        b=F233+fIxRzY7jwfjKzUuaWjvzx7uwxFcZLa5zbncnuKL/IElvgFk2kAb5b6izxGoUd
         0+Jc/EbPu0bzFR0U5habCUvrhEDpUpWUXdl0ovjP4GjtYJDmzDQpNNpidzvCyUFLDFEO
         Hj/CCCrPKXC1e4ule4KiUjVU44Rrt/y3oEQ0Ygon3s7uLKvSQZ/ZWGns1ixLuGond+HU
         29FWCgYxJg1HldMLtbZT7HAnjfBmyBhi547h3RZxBjPUT8zSgKLEJtC0BeFH62xRhKsH
         YdCSbQrKqpI77IdCoZa1zEcxALGa1EpyR3X/A7vq0aJhsvB8P07IQhAxmbHQIDSq1cK9
         cWFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=tUUvdP4UNgmpZkA6UF7VLCkX7XSiVsFjtHhMwBS+X4U=;
        b=YAJuaPjsbA7zg4N8wUFcjZvv6VsxW/3Km55W2cRKeE86lW5nW8YHb/PNYREfvNR4u6
         CI+9rDVFg3lYkszgvut6NAhaOQ43VukMdgNj0J79K9mPser3jlbrtWVIPFF0uKQdtoc4
         P2zz0AOqotQcl4VCT7vpEcgJFiLms6ED+2mYpRQUVy4GaFD7c++7OuUq7eHoJkSO5Zaj
         D21gIKXEikekl8WgYQz7VA5Tc/KsqFh4tqjOR1N4t4Oy+auvaaSpFr6gSrNDR+q/2Sh/
         konvHZDsrjv7yuqg9Rvd0beMpwNn9ouUZ02o1KV8s1V2T0rD4dL7QbwBrDTjAu22ENeP
         T7Fg==
X-Gm-Message-State: ABuFfoif17L84sH4likpbOClvssFtaB7Rmr1ozubZbZ/af6GdzJsgDgR
	8lhZyA7wP2Cx5iofyUO3JHA=
X-Received: by 2002:a63:9a19:: with SMTP id o25-v6mr24716730pge.440.1539787648256;
        Wed, 17 Oct 2018 07:47:28 -0700 (PDT)
Return-Path: <nishadkamdar@gmail.com>
Received: from nishad ([106.51.27.228])
        by smtp.gmail.com with ESMTPSA id u77-v6sm30763963pfj.40.2018.10.17.07.47.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 17 Oct 2018 07:47:27 -0700 (PDT)
Date: Wed, 17 Oct 2018 20:17:20 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: iio: ad7816: Switch to the gpio descriptor
 interface
Message-ID: <20181017144716.GA11485@nishad>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Use the gpiod interface for rdwr_pin, convert_pin and busy_pin
instead of the deprecated old non-descriptor interface.

Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
Changes in v2:
 - Correct the error messages as pin number being showed
   has now been replaced by error code.
---
 drivers/staging/iio/adc/ad7816.c | 80 ++++++++++++++------------------
 1 file changed, 34 insertions(+), 46 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7816.c b/drivers/staging/iio/adc/ad7816.c
index bf76a8620bdb..12c4e0ab4713 100644
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
-
-	ret = devm_gpio_request(&spi_dev->dev, chip->rdwr_pin,
-				spi_get_device_id(spi_dev)->name);
-	if (ret) {
-		dev_err(&spi_dev->dev, "Fail to request rdwr gpio PIN %d.\n",
-			chip->rdwr_pin);
+
+	chip->rdwr_pin = devm_gpiod_get(&spi_dev->dev, "rdwr", GPIOD_IN);
+	if (IS_ERR(chip->rdwr_pin)) {
+		ret = PTR_ERR(chip->rdwr_pin);
+		dev_err(&spi_dev->dev, "Failed to request rdwr GPIO: %d\n",
+			ret);
 		return ret;
 	}
-	gpio_direction_input(chip->rdwr_pin);
-	ret = devm_gpio_request(&spi_dev->dev, chip->convert_pin,
-				spi_get_device_id(spi_dev)->name);
-	if (ret) {
-		dev_err(&spi_dev->dev, "Fail to request convert gpio PIN %d.\n",
-			chip->convert_pin);
+	chip->convert_pin = devm_gpiod_get(&spi_dev->dev, "convert", GPIOD_IN);
+	if (IS_ERR(chip->convert_pin)) {
+		ret = PTR_ERR(chip->convert_pin);
+		dev_err(&spi_dev->dev, "Failed to request convert GPIO: %d\n",
+			ret);
 		return ret;
 	}
-	gpio_direction_input(chip->convert_pin);
-	ret = devm_gpio_request(&spi_dev->dev, chip->busy_pin,
-				spi_get_device_id(spi_dev)->name);
-	if (ret) {
-		dev_err(&spi_dev->dev, "Fail to request busy gpio PIN %d.\n",
-			chip->busy_pin);
+	chip->busy_pin = devm_gpiod_get(&spi_dev->dev, "busy", GPIOD_IN);
+	if (IS_ERR(chip->busy_pin)) {
+		ret = PTR_ERR(chip->busy_pin);
+		dev_err(&spi_dev->dev, "Failed to request busy GPIO: %d\n",
+			ret);
 		return ret;
 	}
-	gpio_direction_input(chip->busy_pin);
 
 	indio_dev->name = spi_get_device_id(spi_dev)->name;
 	indio_dev->dev.parent = &spi_dev->dev;
-- 
2.17.1


