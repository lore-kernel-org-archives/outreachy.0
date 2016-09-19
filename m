X-GM-THRID: 6332005806257471488
X-Received: by 10.194.79.231 with SMTP id m7mr3029231wjx.4.1474284987586;
        Mon, 19 Sep 2016 04:36:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.13 with SMTP id 13ls111089ljj.0.gmail; Mon, 19 Sep 2016
 04:36:27 -0700 (PDT)
X-Received: by 10.25.99.71 with SMTP id x68mr642124lfb.28.1474284986995;
        Mon, 19 Sep 2016 04:36:26 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id e21si1671275wmc.2.2016.09.19.04.36.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 04:36:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id b184so14468937wma.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 04:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yZRi90AtUlyHwHKp1/sgWjHhtzykJ4Seax1rGcjSAOY=;
        b=hJU9SCmTVTx8Z/6GDkqfer6C6BS2HCQxSvSZ5PV5bZKegRlZh2WIM7CC8pzUA0TC5+
         A8TJa6LAekutu9OJi+QrCGlaxPHqHUAs8KjrQcK21aTNzfzKr9U9frARkJIEwVXmNUQ4
         mJFjtGq8fi6je47/DtlW2cHmDyqcZdAWR6r+uRSTezekv+pEZJwipm8zk8fTDxgAujRR
         HWLhaLnG1H4dRuDnC3qQxUv7WT88pD/M1uA1CNgheVGC3aHembk/7gsXMuU/Nr3BrpoL
         znDMW+C0x2a8a6L8JazVG8NTlPf54/auZ4Ot6zFmpbXobd05qvtnTnirQVqX9xayW+B7
         Jymw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yZRi90AtUlyHwHKp1/sgWjHhtzykJ4Seax1rGcjSAOY=;
        b=l7aBArOTP0Mf9Vn/niEmkC9jbd/WIMKPfesqHjQt9n1VELXnQ/K6vXEzzT4KVgaMT1
         gKxm2s07h80ZlXr2eSa/up2N4RdAb0iiGEMSBOwmjJgLiL90QBtaBezKhj1xT+7dqjsb
         Hd8im2r9O+85sMixAoJC2THwjKgDBUvuibqWa16aGSAh3dcVT1JD41bzh5kHVFzIbY5y
         LmFx0GyJyj+Y3+MGpS4i9h5Y/2DOmmaRF5oWu/bDYRqFmNLJ4gxS5PbymD1lYgRvW7ue
         346Rhw9q3NhA1ZA9Dt6QpnUdVErFRad5qObfJNH6XIUqg+FeGH3ixM7eU6C4U+Wf/eEN
         exnA==
X-Gm-Message-State: AE9vXwPRE0Sn9+ovbcKMNVKcAqV4HkjPOiCj5t4DLVf6jQ1APBFe0gVUaUeYIsfx+snrkw==
X-Received: by 10.28.211.10 with SMTP id k10mr9435997wmg.16.1474284986539;
        Mon, 19 Sep 2016 04:36:26 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id bk7sm22692719wjc.36.2016.09.19.04.36.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 04:36:25 -0700 (PDT)
Date: Mon, 19 Sep 2016 14:36:24 +0300
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: meter: ade7754: Match alignment with open
 parenthesis
Message-ID: <20160919113624.GA10298@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the following checkpatch.pl check:
CHECK: Alignment should match open parenthesis

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/iio/meter/ade7754.c | 59 +++++++++++++++++--------------------
 1 file changed, 27 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
index c46bef64..4e93987 100644
--- a/drivers/staging/iio/meter/ade7754.c
+++ b/drivers/staging/iio/meter/ade7754.c
@@ -24,8 +24,8 @@
 #include "ade7754.h"
 
 static int ade7754_spi_write_reg_8(struct device *dev,
-		u8 reg_address,
-		u8 val)
+				   u8 reg_address,
+				   u8 val)
 {
 	int ret;
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
@@ -42,8 +42,8 @@ static int ade7754_spi_write_reg_8(struct device *dev,
 }
 
 static int ade7754_spi_write_reg_16(struct device *dev,
-		u8 reg_address,
-		u16 value)
+				    u8 reg_address,
+				    u16 value)
 {
 	int ret;
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
@@ -60,8 +60,8 @@ static int ade7754_spi_write_reg_16(struct device *dev,
 }
 
 static int ade7754_spi_read_reg_8(struct device *dev,
-		u8 reg_address,
-		u8 *val)
+				  u8 reg_address,
+				  u8 *val)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ade7754_state *st = iio_priv(indio_dev);
@@ -70,7 +70,7 @@ static int ade7754_spi_read_reg_8(struct device *dev,
 	ret = spi_w8r8(st->us, ADE7754_READ_REG(reg_address));
 	if (ret < 0) {
 		dev_err(&st->us->dev, "problem when reading 8 bit register 0x%02X",
-				reg_address);
+			reg_address);
 		return ret;
 	}
 	*val = ret;
@@ -79,8 +79,8 @@ static int ade7754_spi_read_reg_8(struct device *dev,
 }
 
 static int ade7754_spi_read_reg_16(struct device *dev,
-		u8 reg_address,
-		u16 *val)
+				   u8 reg_address,
+				   u16 *val)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ade7754_state *st = iio_priv(indio_dev);
@@ -99,8 +99,8 @@ static int ade7754_spi_read_reg_16(struct device *dev,
 }
 
 static int ade7754_spi_read_reg_24(struct device *dev,
-		u8 reg_address,
-		u32 *val)
+				   u8 reg_address,
+				   u32 *val)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ade7754_state *st = iio_priv(indio_dev);
@@ -123,7 +123,7 @@ static int ade7754_spi_read_reg_24(struct device *dev,
 	ret = spi_sync_transfer(st->us, xfers, ARRAY_SIZE(xfers));
 	if (ret) {
 		dev_err(&st->us->dev, "problem when reading 24 bit register 0x%02X",
-				reg_address);
+			reg_address);
 		goto error_ret;
 	}
 	*val = (st->rx[1] << 16) | (st->rx[2] << 8) | st->rx[3];
@@ -134,8 +134,8 @@ error_ret:
 }
 
 static ssize_t ade7754_read_8bit(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+				 struct device_attribute *attr,
+				 char *buf)
 {
 	int ret;
 	u8 val = 0;
@@ -149,8 +149,8 @@ static ssize_t ade7754_read_8bit(struct device *dev,
 }
 
 static ssize_t ade7754_read_16bit(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+				  struct device_attribute *attr,
+				  char *buf)
 {
 	int ret;
 	u16 val = 0;
@@ -164,8 +164,8 @@ static ssize_t ade7754_read_16bit(struct device *dev,
 }
 
 static ssize_t ade7754_read_24bit(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+				  struct device_attribute *attr,
+				  char *buf)
 {
 	int ret;
 	u32 val = 0;
@@ -179,9 +179,8 @@ static ssize_t ade7754_read_24bit(struct device *dev,
 }
 
 static ssize_t ade7754_write_8bit(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
+				  struct device_attribute *attr,
+				  const char *buf, size_t len)
 {
 	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 	int ret;
@@ -197,9 +196,8 @@ error_ret:
 }
 
 static ssize_t ade7754_write_16bit(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
+				   struct device_attribute *attr,
+				   const char *buf, size_t len)
 {
 	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 	int ret;
@@ -403,16 +401,14 @@ err_ret:
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
 
@@ -423,9 +419,8 @@ static ssize_t ade7754_read_frequency(struct device *dev,
 }
 
 static ssize_t ade7754_write_frequency(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
+				       struct device_attribute *attr,
+				       const char *buf, size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ade7754_state *st = iio_priv(indio_dev);
-- 
2.7.4


