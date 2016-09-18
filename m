X-GM-THRID: 6331780203259363328
X-Received: by 10.25.201.198 with SMTP id z189mr469932lff.13.1474232460331;
        Sun, 18 Sep 2016 14:01:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.193.216 with SMTP id r207ls196534lff.22.gmail; Sun, 18 Sep
 2016 14:00:59 -0700 (PDT)
X-Received: by 10.46.1.84 with SMTP id 81mr454707ljb.20.1474232459292;
        Sun, 18 Sep 2016 14:00:59 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id c13si1328546wme.3.2016.09.18.14.00.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 14:00:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id w84so4853192wmg.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 14:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wA/pFtyL+fYy91T0AQ+Y6kI77AqsygMzhrRns2KjAfc=;
        b=M6KAlTfGMu9hF0DjYAAb9rOx3vYNo3pU0PtgHBS4JQdjBJfxvaKH1yCf5BcXdkW582
         PkcyBhDqtfs/Ur42jrWYKdjbFSxHLcsyGlqpyE6lBml6e3ixDGKVWIqwfDVUg3Xc9DLK
         2PcvKMj9SCtz5tCQv6bfbf9ImoXmAI+PwGgXmwvYuH9MmOV+63u4wtnL+wIaEhRkGhQG
         1rK76K2SGIaq0O88LBGzGvqP3R/3Feuo6Jyfhoat2fPcv9YQzNCsvLB33V2vq0SBpBvr
         mK//CqEyDHct+ylJ2BIFWmbrSToOhOPG3JSDsuuShs9P8dC2CceK3Yr4IGTIWvezVDDo
         CKUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wA/pFtyL+fYy91T0AQ+Y6kI77AqsygMzhrRns2KjAfc=;
        b=DaAcJKZTvmyPvrKWYDgSpe2GMaCV3QYOOepztQv8/m08YeyhaMd01Re0ir1jo7QdgE
         AWyZ4b4NjRa1Fj/fiN9HANMvlG579ereOjCgKB4xKAHUfMsxribf8Wm2+kBQ4gu2//bk
         U9JoXleCDmISax6FWmDlOnCXSy92SJSYcg95ryt0asqj1+S3onmMwHTHSC5vsLARU42L
         DhkxfrwiAG7aq9ra7k/JYW2TIxcwO9s6RZwLPw3ZoOXIk0B7fIX2ccMlDT8f5pFWFHOv
         CeqZ+dUzubgKDiHyA7iwrINfL2vb/wnlK+WBYt3nui0RbtazOfo0nAK5JClqUlA+dONP
         tx/Q==
X-Gm-Message-State: AE9vXwO7pgWmA8AtCuEgouArzFrMzSPMZQx2YLD3FGc70wUAN4nIqeHfMuV0nlEIXtwaHg==
X-Received: by 10.28.238.19 with SMTP id m19mr6039663wmh.126.1474232458219;
        Sun, 18 Sep 2016 14:00:58 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id n28sm10795066wmi.2.2016.09.18.14.00.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 14:00:57 -0700 (PDT)
Date: Mon, 19 Sep 2016 00:00:56 +0300
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: meter: Match alignment with open parenthesis
Message-ID: <20160918210056.GA6241@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the following checkpatch.pl check:
CHECK: Alignment should match open parenthesis

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/iio/meter/ade7753.c | 43 ++++++++++++++-----------------------
 1 file changed, 16 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
index 4b5f05f..e3f6deb 100644
--- a/drivers/staging/iio/meter/ade7753.c
+++ b/drivers/staging/iio/meter/ade7753.c
@@ -42,8 +42,7 @@ static int ade7753_spi_write_reg_8(struct device *dev,
 }
 
 static int ade7753_spi_write_reg_16(struct device *dev,
-		u8 reg_address,
-		u16 value)
+				    u8 reg_address, u16 value)
 {
 	int ret;
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
@@ -60,8 +59,7 @@ static int ade7753_spi_write_reg_16(struct device *dev,
 }
 
 static int ade7753_spi_read_reg_8(struct device *dev,
-		u8 reg_address,
-		u8 *val)
+				  u8 reg_address, u8 *val)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ade7753_state *st = iio_priv(indio_dev);
@@ -70,7 +68,7 @@ static int ade7753_spi_read_reg_8(struct device *dev,
 	ret = spi_w8r8(st->us, ADE7753_READ_REG(reg_address));
 	if (ret < 0) {
 		dev_err(&st->us->dev, "problem when reading 8 bit register 0x%02X",
-				reg_address);
+			reg_address);
 		return ret;
 	}
 	*val = ret;
@@ -79,8 +77,7 @@ static int ade7753_spi_read_reg_8(struct device *dev,
 }
 
 static int ade7753_spi_read_reg_16(struct device *dev,
-		u8 reg_address,
-		u16 *val)
+				   u8 reg_address, u16 *val)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ade7753_state *st = iio_priv(indio_dev);
@@ -99,8 +96,7 @@ static int ade7753_spi_read_reg_16(struct device *dev,
 }
 
 static int ade7753_spi_read_reg_24(struct device *dev,
-		u8 reg_address,
-		u32 *val)
+				   u8 reg_address, u32 *val)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ade7753_state *st = iio_priv(indio_dev);
@@ -123,7 +119,7 @@ static int ade7753_spi_read_reg_24(struct device *dev,
 	ret = spi_sync_transfer(st->us, xfers, ARRAY_SIZE(xfers));
 	if (ret) {
 		dev_err(&st->us->dev, "problem when reading 24 bit register 0x%02X",
-				reg_address);
+			reg_address);
 		goto error_ret;
 	}
 	*val = (st->rx[0] << 16) | (st->rx[1] << 8) | st->rx[2];
@@ -134,8 +130,7 @@ error_ret:
 }
 
 static ssize_t ade7753_read_8bit(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+				 struct device_attribute *attr, char *buf)
 {
 	int ret;
 	u8 val;
@@ -149,8 +144,7 @@ static ssize_t ade7753_read_8bit(struct device *dev,
 }
 
 static ssize_t ade7753_read_16bit(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+				  struct device_attribute *attr, char *buf)
 {
 	int ret;
 	u16 val;
@@ -164,8 +158,7 @@ static ssize_t ade7753_read_16bit(struct device *dev,
 }
 
 static ssize_t ade7753_read_24bit(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+				  struct device_attribute *attr, char *buf)
 {
 	int ret;
 	u32 val;
@@ -179,9 +172,8 @@ static ssize_t ade7753_read_24bit(struct device *dev,
 }
 
 static ssize_t ade7753_write_8bit(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
+				  struct device_attribute *attr,
+				  const char *buf, size_t len)
 {
 	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 	int ret;
@@ -197,9 +189,8 @@ error_ret:
 }
 
 static ssize_t ade7753_write_16bit(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
+				   struct device_attribute *attr,
+				   const char *buf, size_t len)
 {
 	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 	int ret;
@@ -384,8 +375,7 @@ err_ret:
 }
 
 static ssize_t ade7753_read_frequency(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+				      struct device_attribute *attr, char *buf)
 {
 	int ret;
 	u16 t;
@@ -402,9 +392,8 @@ static ssize_t ade7753_read_frequency(struct device *dev,
 }
 
 static ssize_t ade7753_write_frequency(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
+				       struct device_attribute *attr,
+				       const char *buf, size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ade7753_state *st = iio_priv(indio_dev);
-- 
2.7.4


