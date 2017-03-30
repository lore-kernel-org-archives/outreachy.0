X-GM-THRID: 6401527449864110080
X-Received: by 10.237.43.36 with SMTP id p33mr1915217qtd.46.1490866588777;
        Thu, 30 Mar 2017 02:36:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.230.70 with SMTP id e67ls980853ith.21.gmail; Thu, 30 Mar
 2017 02:36:28 -0700 (PDT)
X-Received: by 10.99.127.27 with SMTP id a27mr1795549pgd.142.1490866588108;
        Thu, 30 Mar 2017 02:36:28 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 2si248696pfx.8.2017.03.30.02.36.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 02:36:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 79so8708215pgf.0
        for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 02:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=PgG2qMRZJgBWs1oojm0UCRsR63XO+IIN3gDPijfoV/c=;
        b=MtmrAAMHsAieCfYROlD3dvenFr07jUDWp/7bKhK9NiDVyRbeJOUNa0l6m+MunbI06F
         F/AHGWoufM2qQZdlRNT1sF4jrrE+iXVb7I8dl9XySGbhLYFfQGkZd1PR2xdcP7ewSj+z
         v8zK/1irR+HwC7emI85mVcIl1agGC+vZHvSzs9TqrRWRw56R166qHwomu1BypbbQvYpb
         b2ZL8OfCpikwixfFEQEkYMh4oGj2K9lNROIjkzC9J3c30LTjTl8J7EramjFCzVw0+yUZ
         sM5faXHlrefCZbdXBWmsl/R2yrs0PZu9tBU7TWcgppC7zwOjfVJD9jft9AJ7ujkjbKVK
         SIHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=PgG2qMRZJgBWs1oojm0UCRsR63XO+IIN3gDPijfoV/c=;
        b=b7QCVrRzceFaUEGggc2gvrg50EXm2GxHLTZ4EbifKr01w8j9tHrruFUjNmGKN+LGvx
         OrTd0wlWx8yhmhRVg3U2zDLDuq8q51h2MNDAaTpxk1SLujiDe/K2ZDyhxEM9CK7JSmAz
         ehmJgNED3IyPJf4h2auH1Gra1+hzUV1mzgtk3iCzKVW+Q0JgZt+iqU/mNWbQWjkBaYIV
         0iXajgWM6iJFvp3cOTjFzCy7HjI5g0TVjKKENBYrXEzn/1Pb0NGVWvsnSEAKy5mgF8Md
         bMJJWhiC+9OxWJIBKWreWLqVeacrLUMDat77ui4ZNbAC5cdv+j6TefEqL+t5rRqKokTu
         dXHQ==
X-Gm-Message-State: AFeK/H25V35ZH5XsahRFOm0K4L5kfWvEJ+Tjvtwlw0Jt7OKypAPo9t9J92QDgjwN88xYjg==
X-Received: by 10.99.247.83 with SMTP id f19mr4871156pgk.158.1490866587889;
        Thu, 30 Mar 2017 02:36:27 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id y83sm3244683pff.83.2017.03.30.02.36.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 30 Mar 2017 02:36:27 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-iio@vger.kernel.org,
	lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [RFC/PATCH v3] staging: iio: update locking method during frequency writes
Date: Thu, 30 Mar 2017 15:03:46 +0530
Message-Id: <1490866426-15575-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

The driver needs to insure atomicity during frequency
changes of bus and device. The iiodev->mlock as used
was not doing that. Replace it with the drivers existing
buffer lock and introduce an auxiliary spi_write() that does
not hold the lock.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
Changes in v3:
        - Removed unnecessary ret variable inside
          __ade7754_spi_write_reg_8 function.
Changes in v2:
        - Added auxiliary function.
        - Updated the buf_lock comment appropriately.
---
 drivers/staging/iio/meter/ade7754.c | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
index c8d2d4c..91f8740 100644
--- a/drivers/staging/iio/meter/ade7754.c
+++ b/drivers/staging/iio/meter/ade7754.c
@@ -97,7 +97,7 @@
 /**
  * struct ade7754_state - device instance specific data
  * @us:			actual spi_device
- * @buf_lock:		mutex to protect tx and rx
+ * @buf_lock:		mutex to protect tx, rx and write frequency
  * @tx:			transmit buffer
  * @rx:			receive buffer
  **/
@@ -108,17 +108,25 @@ struct ade7754_state {
 	u8			rx[ADE7754_MAX_RX];
 };
 
-static int ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
+/* Unlocked version of ade7754_spi_write_reg_8 function */
+static int __ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
 {
-	int ret;
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ade7754_state *st = iio_priv(indio_dev);
 
-	mutex_lock(&st->buf_lock);
 	st->tx[0] = ADE7754_WRITE_REG(reg_address);
 	st->tx[1] = val;
+	return spi_write(st->us, st->tx, 2);
+}
 
-	ret = spi_write(st->us, st->tx, 2);
+static int ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
+{
+	int ret;
+	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
+	struct ade7754_state *st = iio_priv(indio_dev);
+
+	mutex_lock(&st->buf_lock);
+	ret = __ade7754_spi_write_reg_8(dev, reg_address, val);
 	mutex_unlock(&st->buf_lock);
 
 	return ret;
@@ -513,7 +521,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
 	if (!val)
 		return -EINVAL;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&st->buf_lock);
 
 	t = 26000 / val;
 	if (t > 0)
@@ -531,10 +539,10 @@ static ssize_t ade7754_write_frequency(struct device *dev,
 	reg &= ~(3 << 3);
 	reg |= t << 3;
 
-	ret = ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
+	ret = __ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
 
 out:
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->buf_lock);
 
 	return ret ? ret : len;
 }
-- 
2.7.4


