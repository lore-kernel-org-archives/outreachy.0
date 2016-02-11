X-GM-THRID: 6250059411855769600
X-Received: by 10.107.11.222 with SMTP id 91mr44821424iol.7.1455205355593;
        Thu, 11 Feb 2016 07:42:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.119 with SMTP id g110ls1095923qgf.2.gmail; Thu, 11 Feb
 2016 07:42:34 -0800 (PST)
X-Received: by 10.13.230.148 with SMTP id p142mr41682265ywe.45.1455205354872;
        Thu, 11 Feb 2016 07:42:34 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x231.google.com (mail-qg0-x231.google.com. [2607:f8b0:400d:c04::231])
        by gmr-mx.google.com with ESMTPS id g136si661381ywb.5.2016.02.11.07.42.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 07:42:34 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) client-ip=2607:f8b0:400d:c04::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x231.google.com with SMTP id y89so40377960qge.2
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 07:42:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=pRm29vfsL0AeHzd3JkTRyd76Qdv1RmRaFgUzVX5SlJs=;
        b=BOSZZOKXBfWfyAOGXctLQaqSAqe0lW30Rkc03ljkSAIhR8eUTpJIhiEUC4gdfUqpt6
         oEhFhJWExXIFDYv6GpjV9WHT5g5xmOgtBExiag2FXveEdsTph0pVYb59bl1tY7Rna1wg
         WSLLYjMKlnPchCcJ2rUCsO/dCj6c9bhlqsEyTRQGCgH2RLlU3ST+OsRRfccORknoPTa3
         UlVwQWFUK1ESnTbbaRr88QRU0VZSomLcFWjezSZjc3YI7RLJ/NOAikxz9cNbIwhq+Fwk
         75cJRyboynp0ZslL0cETYR+i9OEDlxpbiN3qfdHv4ZK0ezRaCjW7duRHLTLU+Cyev03Z
         HWSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=pRm29vfsL0AeHzd3JkTRyd76Qdv1RmRaFgUzVX5SlJs=;
        b=R+/TSB4WCEZXpqmnK3jJxi1qGjWbwfcj9EyY/rRTmcBHuggsCdu3r4TkBUD/zRMdaW
         G9KwHin0L18/J4fcblidk+ezio6G65OGbGhbBmfyt8a61ylTaZAe1J5qYp9XekqhcAE3
         HkdFXg15+P0SnfTW+6k1j4wqW+pvZgbXF7AJvVLXMCTPH8keMMkkWz+qJUNoamectXCQ
         VmaB1xMOrlUQwmaOZX9YLJXFV7m7vxXyto/MUfdUiO9mIhrS8R4YwJEKjGw3uIU64Pl9
         LueAfY8L2rcSppEhT3zW5N3KeMZ9RSERWuvwiS3Z9mfv5YxjJgMl96ZmguarrRtaqAni
         zWlA==
X-Gm-Message-State: AG10YORBdudTpatXpQEFrI3WV18z9UryX7JRH3cOftILmRY33YVAnzCTh7v3JIQNofuI6A==
X-Received: by 10.140.97.202 with SMTP id m68mr55932931qge.102.1455205354712;
        Thu, 11 Feb 2016 07:42:34 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id f5sm3555752qkb.30.2016.02.11.07.42.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 07:42:34 -0800 (PST)
Date: Thu, 11 Feb 2016 15:41:55 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: Remove parentheses on the right hand side of
 assignment
Message-ID: <20160211204155.GA3822@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove parentheses on the right hand side of assignment as they are not
needed. Semantic patch used:

@@
expression a, b, c, d;
@@

(
  a = (c == d)
|
  a =
- (
  b
- )
)
Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/iio/accel/lis3l02dq_core.c | 4 ++--
 drivers/staging/iio/cdc/ad7746.c           | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/accel/lis3l02dq_core.c b/drivers/staging/iio/accel/lis3l02dq_core.c
index 7939ae6..7a6fed3 100644
--- a/drivers/staging/iio/accel/lis3l02dq_core.c
+++ b/drivers/staging/iio/accel/lis3l02dq_core.c
@@ -567,7 +567,7 @@ static int lis3l02dq_read_event_config(struct iio_dev *indio_dev,
 {
 	u8 val;
 	int ret;
-	u8 mask = (1 << (chan->channel2 * 2 + (dir == IIO_EV_DIR_RISING)));
+	u8 mask = 1 << (chan->channel2 * 2 + (dir == IIO_EV_DIR_RISING));
 
 	ret = lis3l02dq_spi_read_reg_8(indio_dev,
 				       LIS3L02DQ_REG_WAKE_UP_CFG_ADDR,
@@ -622,7 +622,7 @@ static int lis3l02dq_write_event_config(struct iio_dev *indio_dev,
 	u8 val, control;
 	u8 currentlyset;
 	bool changed = false;
-	u8 mask = (1 << (chan->channel2 * 2 + (dir == IIO_EV_DIR_RISING)));
+	u8 mask = 1 << (chan->channel2 * 2 + (dir == IIO_EV_DIR_RISING));
 
 	mutex_lock(&indio_dev->mlock);
 	/* read current control */
diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index 2c5d277..5771d4ee 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -529,8 +529,8 @@ static int ad7746_write_raw(struct iio_dev *indio_dev,
 
 		val /= 338646;
 
-		chip->capdac[chan->channel][chan->differential] = (val > 0 ?
-			AD7746_CAPDAC_DACP(val) | AD7746_CAPDAC_DACEN : 0);
+		chip->capdac[chan->channel][chan->differential] = val > 0 ?
+			AD7746_CAPDAC_DACP(val) | AD7746_CAPDAC_DACEN : 0;
 
 		ret = i2c_smbus_write_byte_data(chip->client,
 			AD7746_REG_CAPDACA,
-- 
2.5.0


