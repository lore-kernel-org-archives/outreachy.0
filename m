X-GM-THRID: 6332005806257471488
X-Received: by 10.28.55.205 with SMTP id e196mr397922wma.0.1474302912596;
        Mon, 19 Sep 2016 09:35:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.150.140 with SMTP id y134ls1939818wmd.12.canary; Mon, 19
 Sep 2016 09:35:11 -0700 (PDT)
X-Received: by 10.28.21.84 with SMTP id 81mr568534wmv.8.1474302910955;
        Mon, 19 Sep 2016 09:35:10 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id 185si1873589wmr.2.2016.09.19.09.35.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 09:35:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id 133so15875956wmq.2
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 09:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=74ir4KSGGPpKDKAAND5eU+XEiobXR9tAtJQhJdt5lQ8=;
        b=I2vEOkVjNOuCkehGIR+Xq3yR+4B7Af43ZZpBdpqEAmzrIOCvmGpB5u4S9tQ1UhTEr/
         KIE+HgrepjpMSQrtAyCi/H3dUsN7oohe1a16egDsoze79bsdJJqLFn8KqEEaA8eslFMn
         VT0NYOSiW+RBzsocy6tTFCN+7zLUeiVAa42jU/fNEEtmFXK+EJUvmwN2gjlqJqxiluOV
         S4/pJFB+CwRMGp1UZySQud3c0QbtXNHOGXqDzQGCSgkFwEqrr2/8wKk/KtcA1KNcCdfA
         lQyrgVvrNIDQU3OixRgsaSEdD6Rxuc0G/rNpkWmAJZ0xsp+rKNIH1AQh1/U0D9aB1EAV
         1rBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=74ir4KSGGPpKDKAAND5eU+XEiobXR9tAtJQhJdt5lQ8=;
        b=QjEMTWwp6UChIQhbgl/ddkzTjdzpdjBUvbew5tCf2xw6t5fYa5nX1BdFkimu2HdxUM
         FjAqlIGueY+KTFgohMsCFW2TEtrLbQ9EJAKFbD/MyH4i+ZnlSf4MEz/VbW55dxwEj0NR
         BKui02FO1YQjirvyvKz2dSaSLisq04MkDnuRomHVQo6W8EBRyOB6tbTUcG6SQSzhyL9T
         5yK9rGnAD2sgHMi+X0ydlSQsDyne/358XdIwQ+JVdhMbOjXl2a4rJcIIb06Vai5FAdrs
         filjkg3IHDi1i+rVHXsqLCGektPCPqnOZKtMayRPJOlsuZzSQvh6hUKWDEb3/FxSaewc
         511w==
X-Gm-Message-State: AE9vXwPxOi4onaiXmeiapoKzveJv+7pf1yQSHQSplfb2REefeegVTmTucmR2+kzYMD1YLg==
X-Received: by 10.194.186.136 with SMTP id fk8mr24648019wjc.144.1474302910704;
        Mon, 19 Sep 2016 09:35:10 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id ce6sm23916228wjc.27.2016.09.19.09.35.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 09:35:09 -0700 (PDT)
Date: Mon, 19 Sep 2016 19:35:09 +0300
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: iio: meter: ade7754: Match alignment with open
 parenthesis
Message-ID: <20160919163509.GA15138@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Reorganize the parameters to improve the readability of the code in
two manners:
- parameters of distinctive variable types on different lines
- parameters of similar variable types on the same line

Also, take advantage of the horizontal space available and place
all the parameters on a single line.

Issues found by checkpatch.pl script.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
Changes in v2:
	- Make the commit message clearer
	- Reorganize the parameters in a more readable manner
	- Take advantage of the horizontal space available

 drivers/staging/iio/meter/ade7754.c | 59 ++++++++++++++++---------------------
 1 file changed, 25 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
index c46bef64..1730959 100644
--- a/drivers/staging/iio/meter/ade7754.c
+++ b/drivers/staging/iio/meter/ade7754.c
@@ -23,9 +23,7 @@
 #include "meter.h"
 #include "ade7754.h"
 
-static int ade7754_spi_write_reg_8(struct device *dev,
-		u8 reg_address,
-		u8 val)
+static int ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
 {
 	int ret;
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
@@ -42,8 +40,7 @@ static int ade7754_spi_write_reg_8(struct device *dev,
 }
 
 static int ade7754_spi_write_reg_16(struct device *dev,
-		u8 reg_address,
-		u16 value)
+				    u8 reg_address, u16 value)
 {
 	int ret;
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
@@ -59,9 +56,7 @@ static int ade7754_spi_write_reg_16(struct device *dev,
 	return ret;
 }
 
-static int ade7754_spi_read_reg_8(struct device *dev,
-		u8 reg_address,
-		u8 *val)
+static int ade7754_spi_read_reg_8(struct device *dev, u8 reg_address, u8 *val)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ade7754_state *st = iio_priv(indio_dev);
@@ -70,7 +65,7 @@ static int ade7754_spi_read_reg_8(struct device *dev,
 	ret = spi_w8r8(st->us, ADE7754_READ_REG(reg_address));
 	if (ret < 0) {
 		dev_err(&st->us->dev, "problem when reading 8 bit register 0x%02X",
-				reg_address);
+			reg_address);
 		return ret;
 	}
 	*val = ret;
@@ -79,8 +74,7 @@ static int ade7754_spi_read_reg_8(struct device *dev,
 }
 
 static int ade7754_spi_read_reg_16(struct device *dev,
-		u8 reg_address,
-		u16 *val)
+				   u8 reg_address, u16 *val)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ade7754_state *st = iio_priv(indio_dev);
@@ -99,8 +93,7 @@ static int ade7754_spi_read_reg_16(struct device *dev,
 }
 
 static int ade7754_spi_read_reg_24(struct device *dev,
-		u8 reg_address,
-		u32 *val)
+				   u8 reg_address, u32 *val)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ade7754_state *st = iio_priv(indio_dev);
@@ -123,7 +116,7 @@ static int ade7754_spi_read_reg_24(struct device *dev,
 	ret = spi_sync_transfer(st->us, xfers, ARRAY_SIZE(xfers));
 	if (ret) {
 		dev_err(&st->us->dev, "problem when reading 24 bit register 0x%02X",
-				reg_address);
+			reg_address);
 		goto error_ret;
 	}
 	*val = (st->rx[1] << 16) | (st->rx[2] << 8) | st->rx[3];
@@ -134,8 +127,8 @@ error_ret:
 }
 
 static ssize_t ade7754_read_8bit(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+				 struct device_attribute *attr,
+				 char *buf)
 {
 	int ret;
 	u8 val = 0;
@@ -149,8 +142,8 @@ static ssize_t ade7754_read_8bit(struct device *dev,
 }
 
 static ssize_t ade7754_read_16bit(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+				  struct device_attribute *attr,
+				  char *buf)
 {
 	int ret;
 	u16 val = 0;
@@ -164,8 +157,8 @@ static ssize_t ade7754_read_16bit(struct device *dev,
 }
 
 static ssize_t ade7754_read_24bit(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+				  struct device_attribute *attr,
+				  char *buf)
 {
 	int ret;
 	u32 val = 0;
@@ -179,9 +172,9 @@ static ssize_t ade7754_read_24bit(struct device *dev,
 }
 
 static ssize_t ade7754_write_8bit(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
+				  struct device_attribute *attr,
+				  const char *buf,
+				  size_t len)
 {
 	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 	int ret;
@@ -197,9 +190,9 @@ error_ret:
 }
 
 static ssize_t ade7754_write_16bit(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
+				   struct device_attribute *attr,
+				   const char *buf,
+				   size_t len)
 {
 	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 	int ret;
@@ -403,16 +396,14 @@ err_ret:
 }
 
 static ssize_t ade7754_read_frequency(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+				      struct device_attribute *attr,
+				      char *buf)
 {
 	int ret;
 	u8 t;
 	int sps;
 
-	ret = ade7754_spi_read_reg_8(dev,
-			ADE7754_WAVMODE,
-			&t);
+	ret = ade7754_spi_read_reg_8(dev, ADE7754_WAVMODE, &t);
 	if (ret)
 		return ret;
 
@@ -423,9 +414,9 @@ static ssize_t ade7754_read_frequency(struct device *dev,
 }
 
 static ssize_t ade7754_write_frequency(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
+				       struct device_attribute *attr,
+				       const char *buf,
+				       size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ade7754_state *st = iio_priv(indio_dev);
-- 
2.7.4


