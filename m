X-GM-THRID: 6401527449864110080
X-Received: by 10.157.60.184 with SMTP id z53mr1750986otc.10.1490856123224;
        Wed, 29 Mar 2017 23:42:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.52.145 with SMTP id b139ls6378497ioa.38.gmail; Wed, 29 Mar
 2017 23:42:02 -0700 (PDT)
X-Received: by 10.107.15.96 with SMTP id x93mr1594317ioi.85.1490856122249;
        Wed, 29 Mar 2017 23:42:02 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id s67si175503pfs.4.2017.03.29.23.42.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 23:42:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 81so7682867pgh.3
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 23:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=0q7Fkt2r0HIYZxkHYWGdBedbsJs5m55BCVqnnzU9t7k=;
        b=GqmRYYdSZs1Lis8qknUkp70R8UL2v1138jRjWhENh5v2oIYpyOTufCN4MhfKTSB66T
         2MkMHHvygdNjknThoMcqn4/fPnNxmBSpkSrs/rL/ZEHnc0Oh+iI7lx+BQbdFWAeKnm9R
         I2Qejl/h1Y/eT8jzyYMRHEr7ItsmHBrgP35zzCll6NRx/gq5PyG4UtFAcHrKhmbYVHir
         T9A0qZFu+zyRVytEpHns6giKuDVme6yRIuByWq/FOaCYtPSrfpyCBJW1UXU7V+tpMmOn
         +kgDRtbrncLCrxZswNeiT22sDK+Kc2l6sNm3N4g9NgzKSi/j5k3/J4W8uonGH+AD6WTW
         OSUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=0q7Fkt2r0HIYZxkHYWGdBedbsJs5m55BCVqnnzU9t7k=;
        b=pIgcls07dO/UZTVm+4IQVNQ4uGCRVqKqcKBWnBJL9Dv0c9VHABL7PREC2W8ilKbIRw
         mXIHRSW/xsh/5nl7c4qZ6sIYfV5/YQ+9SqGNTe8B5HxyxjCnU2xYyIs4j3RJVeRtPmn4
         H7rFzSAavoXUt4+p6OP9elo6Jakjx2vK5r0fXlgjIdCha6JndH3RKReToxnHOCBqHmqq
         5PrPEdD+pENYvwrztTV36MU+H9XvIvTLZAA5KO4x6fa4pgGJCdHfanh2sdjT0DcjDTQ2
         88KG/QdW7YBWvU22kZW62ORU+FXfH6OM5LjVCi5hklDH5tdLq1s33nT8/7CcYQi5de3i
         xnog==
X-Gm-Message-State: AFeK/H1K3ZchKNqyL6rxWVyzjeQ2DXJA8QFutfOmQMFAzF6XXU++wRFF7LihAbSENu/y4Q==
X-Received: by 10.98.102.88 with SMTP id a85mr4548654pfc.33.1490856122014;
        Wed, 29 Mar 2017 23:42:02 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id b128sm1976222pfg.54.2017.03.29.23.41.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 23:42:01 -0700 (PDT)
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
Subject: [RFC v2] staging: iio: update locking method during frequency writes
Date: Thu, 30 Mar 2017 12:09:13 +0530
Message-Id: <1490855953-27552-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

The driver needs to insure atomicity during frequency
changes of bus and device. The iiodev->mlock as used
was not doing that. Replace it with the drivers existing
buffer lock and introduce an auxiliary spi_write() that does
not hold the lock.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
Changes in v2:
        - Added auxiliary function.
        - Updated the buf_lock comment appropriately.
---
 drivers/staging/iio/meter/ade7754.c | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
index c8d2d4c..f371030 100644
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
@@ -108,17 +108,29 @@ struct ade7754_state {
 	u8			rx[ADE7754_MAX_RX];
 };
 
-static int ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
+/* Unlocked version of ade7754_spi_write_reg_8 function */
+static int __ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
 {
 	int ret;
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ade7754_state *st = iio_priv(indio_dev);
 
-	mutex_lock(&st->buf_lock);
 	st->tx[0] = ADE7754_WRITE_REG(reg_address);
 	st->tx[1] = val;
 
 	ret = spi_write(st->us, st->tx, 2);
+
+	return ret;
+}
+
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
@@ -513,7 +525,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
 	if (!val)
 		return -EINVAL;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&st->buf_lock);
 
 	t = 26000 / val;
 	if (t > 0)
@@ -531,10 +543,10 @@ static ssize_t ade7754_write_frequency(struct device *dev,
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


