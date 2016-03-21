X-GM-THRID: 6264514475504697344
X-Received: by 10.157.0.8 with SMTP id 8mr1584562ota.19.1458571223044;
        Mon, 21 Mar 2016 07:40:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.39.111 with SMTP id u102ls3068849qgu.45.gmail; Mon, 21 Mar
 2016 07:40:22 -0700 (PDT)
X-Received: by 10.140.236.149 with SMTP id h143mr5694188qhc.12.1458571222467;
        Mon, 21 Mar 2016 07:40:22 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id sf5si3939619pac.1.2016.03.21.07.40.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 07:40:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id x3so30278093pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 07:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0nDinbX35hpuF+e8RsABNRCj0NBWGnglF3ffQXWoFHY=;
        b=zOj5jdqtJu6Mp3HApDUoT/ORUXFZRlIxlHyZio3w00np93yPEGKmebTYimIpcxo9pE
         3jd7t3JxybQM2vE+zjutxX0EvHBXJez+93SdikvPY1hsh8QFZicNFL1gHE1OFyUnG+Hs
         Z297Rdxd1a73DCFF8PK41tJOHxzZOoGc6kUuEYo2ojcz49cQ/XBKNRD5//ZjmTTBdFXc
         +zEwJj5QYriP9GNElqFAAbYkTTBWK2VbKOjITp2Rx992fvdZCGCzFZk2gD/7m4e5dAUa
         RKVVg1HFJazz2y/ilYgiNkKoZ0yVL49MF3bXZlY5Pgrz74bRvYTPihyD7zvZ2m1xth2h
         uJcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0nDinbX35hpuF+e8RsABNRCj0NBWGnglF3ffQXWoFHY=;
        b=e12p95pbywRhU9HIlpTJ8egRhSfxKi7H1EusVAwQF40k/6fNCsiujWm/vDKNrcOPB/
         TSbdHl+R0OrZ6quqN+PciVG1SD5KXUba8p17iaEh+34LveEENjwz3eRGpJ1RnXfn6GUY
         Ik9eYgBF+cmLMEDPike5IXGOf9HA+J5SzxJm9XDsJEBqXPc7EgTE1xHu/KKSqxBS4QzI
         1v9SnLx/sK7Ki6j4h1eP9HcZmxkntTEeQ4W4UgwkF4OjZCK4RyCjjvon0MUhF7IIET4J
         7jiIRUOiPw7fwSlarrqFo2ueIypduGulXBYm775Mgc3kVoCo+KG+v+vCenlQNLct7nwR
         tNKA==
X-Gm-Message-State: AD7BkJIE7EH/GIZkWeHxsxNJh4c+/fuml66L8xcp+FDjj5B50oQBvXOFbVfKRsb3LaXNLg==
X-Received: by 10.98.65.215 with SMTP id g84mr45676700pfd.94.1458571222270;
        Mon, 21 Mar 2016 07:40:22 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.219])
        by smtp.gmail.com with ESMTPSA id 27sm41289574pfo.58.2016.03.21.07.40.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 07:40:21 -0700 (PDT)
Date: Mon, 21 Mar 2016 13:11:15 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] Staging: iio: ade7758_core: Fix open parentheses
 alignment issues.
Message-ID: <f5d1996c2d8c56cfd1da3126ea10a9a2ad5c6097.1458545206.git.bankarsandhya512@gmail.com>
References: <cover.1458545206.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458545206.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Fix open parentheses alignment issues.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/iio/meter/ade7758_core.c | 73 ++++++++++++--------------------
 1 file changed, 26 insertions(+), 47 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
index 40f5afa..d6e35c7 100644
--- a/drivers/staging/iio/meter/ade7758_core.c
+++ b/drivers/staging/iio/meter/ade7758_core.c
@@ -24,9 +24,7 @@
 #include "meter.h"
 #include "ade7758.h"
 
-int ade7758_spi_write_reg_8(struct device *dev,
-		u8 reg_address,
-		u8 val)
+int ade7758_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
 {
 	int ret;
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
@@ -42,9 +40,8 @@ int ade7758_spi_write_reg_8(struct device *dev,
 	return ret;
 }
 
-static int ade7758_spi_write_reg_16(struct device *dev,
-		u8 reg_address,
-		u16 value)
+static int ade7758_spi_write_reg_16(struct device *dev, u8 reg_address,
+				    u16 value)
 {
 	int ret;
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
@@ -68,9 +65,8 @@ static int ade7758_spi_write_reg_16(struct device *dev,
 	return ret;
 }
 
-static int ade7758_spi_write_reg_24(struct device *dev,
-		u8 reg_address,
-		u32 value)
+static int ade7758_spi_write_reg_24(struct device *dev, u8 reg_address,
+				    u32 value)
 {
 	int ret;
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
@@ -95,9 +91,7 @@ static int ade7758_spi_write_reg_24(struct device *dev,
 	return ret;
 }
 
-int ade7758_spi_read_reg_8(struct device *dev,
-		u8 reg_address,
-		u8 *val)
+int ade7758_spi_read_reg_8(struct device *dev, u8 reg_address, u8 *val)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ade7758_state *st = iio_priv(indio_dev);
@@ -124,7 +118,7 @@ int ade7758_spi_read_reg_8(struct device *dev,
 	ret = spi_sync_transfer(st->us, xfers, ARRAY_SIZE(xfers));
 	if (ret) {
 		dev_err(&st->us->dev, "problem when reading 8 bit register 0x%02X",
-				reg_address);
+			reg_address);
 		goto error_ret;
 	}
 	*val = st->rx[0];
@@ -134,9 +128,8 @@ error_ret:
 	return ret;
 }
 
-static int ade7758_spi_read_reg_16(struct device *dev,
-		u8 reg_address,
-		u16 *val)
+static int ade7758_spi_read_reg_16(struct device *dev, u8 reg_address,
+				   u16 *val)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ade7758_state *st = iio_priv(indio_dev);
@@ -165,7 +158,7 @@ static int ade7758_spi_read_reg_16(struct device *dev,
 	ret = spi_sync_transfer(st->us, xfers, ARRAY_SIZE(xfers));
 	if (ret) {
 		dev_err(&st->us->dev, "problem when reading 16 bit register 0x%02X",
-				reg_address);
+			reg_address);
 		goto error_ret;
 	}
 
@@ -176,9 +169,8 @@ error_ret:
 	return ret;
 }
 
-static int ade7758_spi_read_reg_24(struct device *dev,
-		u8 reg_address,
-		u32 *val)
+static int ade7758_spi_read_reg_24(struct device *dev, u8 reg_address,
+				   u32 *val)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ade7758_state *st = iio_priv(indio_dev);
@@ -207,7 +199,7 @@ static int ade7758_spi_read_reg_24(struct device *dev,
 	ret = spi_sync_transfer(st->us, xfers, ARRAY_SIZE(xfers));
 	if (ret) {
 		dev_err(&st->us->dev, "problem when reading 24 bit register 0x%02X",
-				reg_address);
+			reg_address);
 		goto error_ret;
 	}
 	*val = (st->rx[0] << 16) | (st->rx[1] << 8) | st->rx[2];
@@ -218,8 +210,7 @@ error_ret:
 }
 
 static ssize_t ade7758_read_8bit(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+				 struct device_attribute *attr, char *buf)
 {
 	int ret;
 	u8 val = 0;
@@ -233,8 +224,7 @@ static ssize_t ade7758_read_8bit(struct device *dev,
 }
 
 static ssize_t ade7758_read_16bit(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+				  struct device_attribute *attr, char *buf)
 {
 	int ret;
 	u16 val = 0;
@@ -248,8 +238,7 @@ static ssize_t ade7758_read_16bit(struct device *dev,
 }
 
 static ssize_t ade7758_read_24bit(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+				  struct device_attribute *attr, char *buf)
 {
 	int ret;
 	u32 val = 0;
@@ -263,9 +252,8 @@ static ssize_t ade7758_read_24bit(struct device *dev,
 }
 
 static ssize_t ade7758_write_8bit(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
+				  struct device_attribute *attr,
+				  const char *buf, size_t len)
 {
 	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 	int ret;
@@ -281,9 +269,8 @@ error_ret:
 }
 
 static ssize_t ade7758_write_16bit(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
+				   struct device_attribute *attr,
+				   const char *buf, size_t len)
 {
 	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 	int ret;
@@ -479,16 +466,13 @@ err_ret:
 }
 
 static ssize_t ade7758_read_frequency(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+				      struct device_attribute *attr, char *buf)
 {
 	int ret;
 	u8 t;
 	int sps;
 
-	ret = ade7758_spi_read_reg_8(dev,
-			ADE7758_WAVMODE,
-			&t);
+	ret = ade7758_spi_read_reg_8(dev, ADE7758_WAVMODE, &t);
 	if (ret)
 		return ret;
 
@@ -499,9 +483,8 @@ static ssize_t ade7758_read_frequency(struct device *dev,
 }
 
 static ssize_t ade7758_write_frequency(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
+				       struct device_attribute *attr,
+				       const char *buf, size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	u16 val;
@@ -532,18 +515,14 @@ static ssize_t ade7758_write_frequency(struct device *dev,
 		goto out;
 	}
 
-	ret = ade7758_spi_read_reg_8(dev,
-			ADE7758_WAVMODE,
-			&reg);
+	ret = ade7758_spi_read_reg_8(dev, ADE7758_WAVMODE, &reg);
 	if (ret)
 		goto out;
 
 	reg &= ~(5 << 3);
 	reg |= t << 5;
 
-	ret = ade7758_spi_write_reg_8(dev,
-			ADE7758_WAVMODE,
-			reg);
+	ret = ade7758_spi_write_reg_8(dev, ADE7758_WAVMODE, reg);
 
 out:
 	mutex_unlock(&indio_dev->mlock);
-- 
1.8.3.4


