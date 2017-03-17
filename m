X-GM-THRID: 6398373939210354688
X-Received: by 10.157.51.10 with SMTP id f10mr6033473otc.84.1489737522943;
        Fri, 17 Mar 2017 00:58:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.48.22 with SMTP id d22ls6631898otc.43.gmail; Fri, 17 Mar
 2017 00:58:42 -0700 (PDT)
X-Received: by 10.129.79.19 with SMTP id d19mr6940439ywb.19.1489737522559;
        Fri, 17 Mar 2017 00:58:42 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id g82si1279545pfb.5.2017.03.17.00.58.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Mar 2017 00:58:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o126so8434723pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Mar 2017 00:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Cf1INfRxQDGHqE5xdEX0zWMqmZqKSK+eYq2FyifhRsQ=;
        b=QAllFOmb60RyFp+rE9W2ekcNSL9IM6+SvlQEpe0ss/WHMDk/AicvPGpWY2gr6Ak8it
         CNQ3c+A7hFUun/ZemCnMH6GJ6SCLdvIcYsbbnsTHg0v2PUsxEorDVOMWX76MmNv7ZR5c
         jWmx6NPXkUbtNJCSIKorQ7wCOYeOvHUzP2z89jpHL8+bbmrj8iuTXxIeugG7nkI9/DLO
         7eT0AnUHF1JAnR1AH7cpY34LZF3v5eTfIZdkIal4Ep6oTaHp+zJh4WNB+KVVHE/8I1+d
         yV/GyrqLrVImIqj4Kwv/iYl6IiXL2UdJuyHM9ZWraG12US3VIno05166wJVsUzhdsg0A
         qoNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Cf1INfRxQDGHqE5xdEX0zWMqmZqKSK+eYq2FyifhRsQ=;
        b=pzglXyYr32Dl9xxUnTsiQnIO/MAmXu2bc7sFePzmuEPlnp8dNj8Ut4aSSBTTDcNNQv
         f2e8kBRcNP3iq3iATpBVM9jxWPoj0w2eRZ+ht7RXQn69eb1v6m8nw3H/T3rtTMoK9Njg
         NnI45j8/0le5vbi2amZb4NTlVVAAzRlL7ALHSEF/hJY52XtFph9DISAT95i8/8vMoA5D
         EWIon1TZiX5lXy6KtD+rxgctpTb8MNHao1Hi4UvtvAsQU5K0fPPiAsPw4s5rdsqjtlS1
         8MgOnUaYA36afC8VbS5k4IUCSjmkkPTagfwDa26k3T6vPtJ0sLNXuYZQe2ORBYY7a6gf
         D/gg==
X-Gm-Message-State: AFeK/H0YlYh68gPtGHL6yVnH/26aaXiD5kCt6Wap096fkbn7aTfuGJ2g3ejaDq1o4Cs2SQ==
X-Received: by 10.98.200.19 with SMTP id z19mr15316811pff.223.1489737522208;
        Fri, 17 Mar 2017 00:58:42 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id m67sm14826091pfj.32.2017.03.17.00.58.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 17 Mar 2017 00:58:41 -0700 (PDT)
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
Subject: [PATCH v3] staging: iio: ad7280: Replace mlock with driver private lock
Date: Fri, 17 Mar 2017 13:29:30 +0530
Message-Id: <1489737570-2491-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, mlock was being used to protect hardware state
changes.  Replace it with a lock in the devices global data.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
Changes in v3:
	- Added mutex_init(&st->lock) inside probe function.
	- Added driver name in subject line.
Changes in v2:
        - Made the commit log clearer.
---
 drivers/staging/iio/adc/ad7280a.c | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index ee679ac..6a85e28 100644
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
@@ -847,6 +848,7 @@ static int ad7280_probe(struct spi_device *spi)
 	st = iio_priv(indio_dev);
 	spi_set_drvdata(spi, indio_dev);
 	st->spi = spi;
+	mutex_init(&st->lock);
 
 	if (!pdata)
 		pdata = &ad7793_default_pdata;
-- 
2.7.4


