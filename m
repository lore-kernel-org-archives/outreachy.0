X-GM-THRID: 6396716918154199040
X-Received: by 10.107.153.140 with SMTP id b134mr1333675ioe.32.1489584517965;
        Wed, 15 Mar 2017 06:28:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.35.193 with SMTP id j184ls730262ioj.1.gmail; Wed, 15 Mar
 2017 06:28:36 -0700 (PDT)
X-Received: by 10.99.113.1 with SMTP id m1mr1804588pgc.87.1489584516850;
        Wed, 15 Mar 2017 06:28:36 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 2si330959pfz.1.2017.03.15.06.28.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 06:28:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id v190so2222809pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 06:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ygeqGKhbOjMYvO7dQHT3a7Pcz7/2ejBP60vNdsZkE1Y=;
        b=h11WzplV9WgYjiI/L6lsyp/vVoYZun1VddYC2a6niKSJlI1NpYbvqBq2JEn4+wKQgl
         /4/LU1Yr/dic39CsTI+/61k4jrCCoL1FQW9T08EtEMRjOSQVh1fwhV1Oia/3zaGAI4/f
         Tp8U+m6j1umc04NHPG1sH6VjTT+K7ce6/uOGG1zNXiBrzmfuZ7u99OTUx+ESyuR4GJ4s
         ETQaDVdrfOJYMMJDgecAQNhiByEBlEhWOGST5caT0P6DmRHyvb3JzJd6RYfvPK8Bb5sM
         SaurtdcUThf0c9P1pAvxUEKYrW2Nu/wRq1tj594noXTonGjESUh18aMg2jJIGT45ARll
         pwAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ygeqGKhbOjMYvO7dQHT3a7Pcz7/2ejBP60vNdsZkE1Y=;
        b=RNxk+OIRIEt7u1Q2Z4l7+4Tl+4VnzRUFBm7hfVsoFU3XyKc24X6/YazwaHgKko5wGu
         zsgm0zxCdI7PSzk/si1J81f70mrsl5jcngODVijRkgYN3uee0I6B2zGFR2a1l+XBaFiV
         9Iec61GwOQFLl7ToA1W7X0Di7WlmqOtiJ4RUUrBHo1rh07hjEEj2RkPZZjLoD4rqoWyX
         Sd8rCQrMx5hJKxeHTGYO+0d6PidGYFQueFwXsly2P0C+lRlVgsI+QzDr2b7SdMvpd5G+
         2daHbh+IChrgy0g8m3aYUyHT1Es2bkeGDTEO6R1E/vSHnDVtjlOUKgaHKMZ3IniwVGQf
         ZElg==
X-Gm-Message-State: AFeK/H3hsAXDGpcH9WpkvF2rrDpfLEKiY4SyMt4FFrf8zwxL9prbCJ7j24UO5maSI8r9pA==
X-Received: by 10.84.224.74 with SMTP id a10mr4849391plt.28.1489584516604;
        Wed, 15 Mar 2017 06:28:36 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id z62sm1918507pff.88.2017.03.15.06.28.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 15 Mar 2017 06:28:36 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2] staging: iio: adc: Replace mlock with driver private lock
Date: Wed, 15 Mar 2017 18:58:41 +0530
Message-Id: <1489584521-20788-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, mlock was being used to protect hardware state
changes.  Replace it with a lock in the devices global data.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
Changes in v2:
	- Made the commit log clearer.
---
 drivers/staging/iio/adc/ad7280a.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index ee679ac..b482606 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -134,6 +134,7 @@ struct ad7280_state {
 	unsigned char			aux_threshhigh;
 	unsigned char			aux_threshlow;
 	unsigned char			cb_mask[AD7280A_MAX_CHAIN];
+	struct mutex			lock; /* protect sensor state */
 
 	__be32				buf[2] ____cacheline_aligned;
 };
@@ -410,7 +411,7 @@ static ssize_t ad7280_store_balance_sw(struct device *dev,
 	devaddr = this_attr->address >> 8;
 	ch = this_attr->address & 0xFF;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&st->lock);
 	if (readin)
 		st->cb_mask[devaddr] |= 1 << (ch + 2);
 	else
@@ -418,7 +419,7 @@ static ssize_t ad7280_store_balance_sw(struct device *dev,
 
 	ret = ad7280_write(st, devaddr, AD7280A_CELL_BALANCE,
 			   0, st->cb_mask[devaddr]);
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->lock);
 
 	return ret ? ret : len;
 }
@@ -433,10 +434,10 @@ static ssize_t ad7280_show_balance_timer(struct device *dev,
 	int ret;
 	unsigned int msecs;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&st->lock);
 	ret = ad7280_read(st, this_attr->address >> 8,
 			  this_attr->address & 0xFF);
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->lock);
 
 	if (ret < 0)
 		return ret;
@@ -466,11 +467,11 @@ static ssize_t ad7280_store_balance_timer(struct device *dev,
 	if (val > 31)
 		return -EINVAL;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&st->lock);
 	ret = ad7280_write(st, this_attr->address >> 8,
 			   this_attr->address & 0xFF,
 			   0, (val & 0x1F) << 3);
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->lock);
 
 	return ret ? ret : len;
 }
@@ -655,7 +656,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
 
 	val = clamp(val, 0L, 0xFFL);
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&st->lock);
 	switch ((u32)this_attr->address) {
 	case AD7280A_CELL_OVERVOLTAGE:
 		st->cell_threshhigh = val;
@@ -674,7 +675,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
 	ret = ad7280_write(st, AD7280A_DEVADDR_MASTER,
 			   this_attr->address, 1, val);
 
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->lock);
 
 	return ret ? ret : len;
 }
@@ -792,13 +793,13 @@ static int ad7280_read_raw(struct iio_dev *indio_dev,
 
 	switch (m) {
 	case IIO_CHAN_INFO_RAW:
-		mutex_lock(&indio_dev->mlock);
+		mutex_lock(&st->lock);
 		if (chan->address == AD7280A_ALL_CELLS)
 			ret = ad7280_read_all_channels(st, st->scan_cnt, NULL);
 		else
 			ret = ad7280_read_channel(st, chan->address >> 8,
 						  chan->address & 0xFF);
-		mutex_unlock(&indio_dev->mlock);
+		mutex_unlock(&st->lock);
 
 		if (ret < 0)
 			return ret;
-- 
2.7.4


