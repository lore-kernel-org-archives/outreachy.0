X-GM-THRID: 6467255080902983680
X-Received: by 10.129.74.67 with SMTP id x64mr3554426ywa.84.1505775163657;
        Mon, 18 Sep 2017 15:52:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.174.201 with SMTP id n70ls11929198ioo.53.gmail; Mon, 18
 Sep 2017 15:52:42 -0700 (PDT)
X-Received: by 10.13.210.196 with SMTP id u187mr10337673ywd.194.1505775162919;
        Mon, 18 Sep 2017 15:52:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505775162; cv=none;
        d=google.com; s=arc-20160816;
        b=Q+UVnss52RVT+LM4LCbBkATIB0g7K5P2mysXdzO5J9NgaomiH3nRjhCGSEbGyXv0NV
         RBLacj6PSN3f8Nj+iLCQaYgZr7n44PlXzOudby4ifYIv1Ixw5aFauTbwvAI3IPxxduzL
         3ERo+QTF7XzEMUJqgi/2wwNxDKIB1p1vr60poLq0VUmfxsjNxQJ8l3GJSj8Pm+NaH5uZ
         MRJX6lLoc6FcpcbRgZIkxlpy4WZlna56pDBErngmSP0kKdkybqzswCtr7l9aQkyP8VMI
         XFjJJ95s5MA4VAKdE/p8lYdPm3lFVI+dfW2sh1DPCRIy9+lurAcc3tbkystHjnTFoWo+
         NjOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=Cbj6+YmN6552rHtXdcWvHJ2VkWxVMIFe6CbCxu6whqM=;
        b=PaPACxXsqkdlKOO0ohBS1CzHRKJurnosuJH4DswwJeecQKwOqegKYPm5bo0gGbKEe/
         sQJMHdc1gpdO8Eq+943YFsVLl0X0yS+ioXTeLrR/dPiDjN6rERdNjr+BKtgeeBBrkAks
         cOjx2vfpvn8KshuOBg+/9O9A2Z+/Hg585bljHQNygXZ8BCz2CgbYROC5Y7OiW8LBXBkf
         njN0PvFec4uKTYCM8DXw/XF4YuOiGDSPIOSjnwmnZEKY3/mWUhHTGOCVjaw0RqOzEkQe
         H4+LIa6BqoeZMtoKT9BZNCm/hMw7Y6EQsLIfOwhoB+3pZjqBiBc7a3dlO/r2HUw5zWXE
         rTdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com header.s=20150623 header.b=FUJcP9R6;
       spf=neutral (google.com: 2607:f8b0:400e:c00::243 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id s81si61014pfg.19.2017.09.18.15.52.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 15:52:42 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c00::243 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com header.s=20150623 header.b=FUJcP9R6;
       spf=neutral (google.com: 2607:f8b0:400e:c00::243 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pf0-x243.google.com with SMTP id q76so740933pfq.5
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Sep 2017 15:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Cbj6+YmN6552rHtXdcWvHJ2VkWxVMIFe6CbCxu6whqM=;
        b=FUJcP9R69eeDOCFciApj7LDBhbjZsBx1dKsP8a1x/aoJeSKD16N5kZvtsFaKHW/IRD
         pCGdXYDHmQvuRoyiuFR9txYSJvqS0Tufsmtvr5NqHPfefMAY7re13H7cVlQPBLZAcCIu
         5y9/i8HVG4jEuQUHi2hObgO+zS3L69UqYHUKHSk9DfIVhA3+VI9O4vAyfSd7UarGZ7ZQ
         vx6H9NC58PrWcw515r5ygsExaAc899LrJLPdsnahP1jM1sh02mv3eHVz4HHkFUV1doKL
         LxtYz6aKGSv0FSuRUhk372BgFx39WUqGfokcvAHQNa7nlJDM8Nnae6aOFeUpEvGgVHBI
         J8uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Cbj6+YmN6552rHtXdcWvHJ2VkWxVMIFe6CbCxu6whqM=;
        b=DOLOLbqgrUe3T/28Z+oSkTfuk/QHhK2yBl0iunN6PPEMYqpVG8HOxRZ5D3H8DWgXXg
         jR5LjBGKF9d/JxjjOp1N6DvJQbsrypFhMj9gczEPTh5FBslBna8jhQbdZXG9o5wmunzm
         lMozMl4fge6oVt9h0HFSMDoSm44Ft0HiFZszJobvNLkcMzDL6ghWNHBuwLySSGj3nEC6
         Bjqea74ZQtiRAFs7nTlvMnxush9tJmGdrVyIrt+671E6eqigQbBZ0rrjz6NYc209mtY1
         rr7JLh6bMCL48vDZyoimhucCfSqdVIdGLzSZ/EeQlZPmuABiK3eBLpft/xXrIBOTX96V
         +OHQ==
X-Gm-Message-State: AHPjjUhmISEECpOdaNNrqxlv32keA+SXzHJ3/9ek0V2+3xUwdmiasw5r
	syNnTXzM23jHIPNF+qHP5Q==
X-Google-Smtp-Source: AOwi7QCOvNzWfQybGUzHRZN0QhZcy16RzhG8ZFV7tuyFkCbCPyGpmAtZhrCJe9821gXmPilZxngASQ==
X-Received: by 10.98.166.137 with SMTP id r9mr135932pfl.86.1505775162639;
        Mon, 18 Sep 2017 15:52:42 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 (c-69-181-34-251.hsd1.ca.comcast.net. [69.181.34.251])
        by smtp.gmail.com with ESMTPSA id t25sm535540pfe.96.2017.09.18.15.52.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 18 Sep 2017 15:52:41 -0700 (PDT)
Date: Mon, 18 Sep 2017 15:52:40 -0700
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Cc: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de,
	linux-iio@vger.kernel.org, pmeerw@pmeerw.net, 21cnbao@gmail.com
Subject: [PATCH] Staging: iio: meter: ade7759: update locking method for
 write frequency
Message-ID: <20170918225240.GA3085@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

iio_dev->mlock is to be used only by the IIO core for protecting
device mode changes between INDIO_DIRECT and INDIO_BUFFER.

This patch replaces the use of mlock with the already established
buf_lock mutex.

Introducing an 'unlocked' spi_write_reg_16 function to be used by
ade7759_write_frequency avoids nested locks and maintains atomicity
between bus and device frequency changes.

Based on the solution found in ade7754 patch here:
https://marc.info/?l=linux-iio&m=149086659008991&w=2

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/iio/meter/ade7759.c | 27 +++++++++++++++++++--------
 1 file changed, 19 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7759.c b/drivers/staging/iio/meter/ade7759.c
index 1691760..b52d4d7 100644
--- a/drivers/staging/iio/meter/ade7759.c
+++ b/drivers/staging/iio/meter/ade7759.c
@@ -60,7 +60,7 @@
 /**
  * struct ade7759_state - device instance specific data
  * @us:			actual spi_device
- * @buf_lock:		mutex to protect tx and rx
+ * @buf_lock:		mutex to protect tx and rx and write frequency
  * @tx:			transmit buffer
  * @rx:			receive buffer
  **/
@@ -89,19 +89,30 @@ static int ade7759_spi_write_reg_8(struct device *dev,
 	return ret;
 }
 
-static int ade7759_spi_write_reg_16(struct device *dev,
+/*Unlocked version of ade7759_spi_write_reg_16 function */
+static int __ade7759_spi_write_reg_16(struct device *dev,
 		u8 reg_address,
 		u16 value)
 {
-	int ret;
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ade7759_state *st = iio_priv(indio_dev);
 
-	mutex_lock(&st->buf_lock);
 	st->tx[0] = ADE7759_WRITE_REG(reg_address);
 	st->tx[1] = (value >> 8) & 0xFF;
 	st->tx[2] = value & 0xFF;
-	ret = spi_write(st->us, st->tx, 3);
+	return spi_write(st->us, st->tx, 3);
+}
+
+static int ade7759_spi_write_reg_16(struct device *dev,
+		u8 reg_address,
+		u16 value)
+{
+	int ret;
+	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
+	struct ade7759_state *st = iio_priv(indio_dev);
+
+	mutex_lock(&st->buf_lock);
+	ret = __ade7759_spi_write_reg_16(dev, reg_address, value);
 	mutex_unlock(&st->buf_lock);
 
 	return ret;
@@ -429,7 +440,7 @@ static ssize_t ade7759_write_frequency(struct device *dev,
 	if (!val)
 		return -EINVAL;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&st->buf_lock);
 
 	t = 27900 / val;
 	if (t > 0)
@@ -447,10 +458,10 @@ static ssize_t ade7759_write_frequency(struct device *dev,
 	reg &= ~(3 << 13);
 	reg |= t << 13;
 
-	ret = ade7759_spi_write_reg_16(dev, ADE7759_MODE, reg);
+	ret = __ade7759_spi_write_reg_16(dev, ADE7759_MODE, reg);
 
 out:
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->buf_lock);
 
 	return ret ? ret : len;
 }
-- 
2.7.4


