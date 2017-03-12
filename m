X-GM-THRID: 6396716918154199040
X-Received: by 10.157.82.78 with SMTP id q14mr12933040otg.80.1489351717407;
        Sun, 12 Mar 2017 13:48:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.160.68 with SMTP id j65ls3703279ioe.35.gmail; Sun, 12 Mar
 2017 13:48:36 -0700 (PDT)
X-Received: by 10.99.3.78 with SMTP id 75mr13020701pgd.7.1489351716588;
        Sun, 12 Mar 2017 13:48:36 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 2si2858523pfx.8.2017.03.12.13.48.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 13:48:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 67so16892825pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 13:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7/8lNgPqBSCnRqE9COlXsXU8jjW9fosR6QqvyuRrXKo=;
        b=qQsDMWXuEdLVUACeo7WzQGg7orN/gVxfOp1duYdKoq27+vNKwlRU/St3REDsTvzTWu
         CzAzZ/jyvpkGNqUBash3Os+XcZLn1kfM1t3yK7KqYYws4Wf0DONlaK7ZFhLi+5Anl3nU
         u6xNWz19CrTytiOXtdDvRQY7s+algWZtlUBA2E+7kQrYquwUvSZ/3mKeeTQVDzeHhkUE
         8Xrz4oz7fLEGlDNivvPgaACVZkHFd1+GD+IEPvaznYCa/jaC1x6t29r1SVHSXmJ+3/RJ
         tgnmYZS4agR80RqGg2VVgHc2MDSWPgtWQwYSiWGKEfOf2KjSP+q3VqEhN90YxqA0KTyY
         f6FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7/8lNgPqBSCnRqE9COlXsXU8jjW9fosR6QqvyuRrXKo=;
        b=XNIGX7UoQasPJQ9h6/9AoTfgLcpYb/GDvQSdmTIk6Y96Had6Lsz4vdkTdh9AbDdM65
         YdsOSO1NJT6djTinpKI6jKWJ8SXRFeDEWWA1LAns4vfd4elyGQiHgz1+tJOrw70a+A7+
         8DLESK9YqJSdqduD/ZJSpr+dl2+f+Ya9TF8nCgji8EZstYMyClVXVTw+FnIeSQnafvAA
         Rp9IJa7zn65ux8XFg+JE9zKDNzSc3USnZmzDN+VnvONAcVrUUNczbKDfb5yHh5pYDDnV
         mth8rvsYQAkIPB5ao1VreXdlhOe7gGrydzChoSamNlPB6b+ILYKxxG/1GTimlw3XDdtt
         VMVA==
X-Gm-Message-State: AMke39lE8XKZSSvVxxJuKSKJuprJkgqqOm18x0kGSfqi1+G7TJHWAajm+OL4JgWGZFJ91g==
X-Received: by 10.84.248.4 with SMTP id p4mr42329293pll.72.1489351716301;
        Sun, 12 Mar 2017 13:48:36 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id t6sm29903235pgt.8.2017.03.12.13.48.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 13:48:35 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: iio: adc: Replace mlock with driver private lock
Date: Mon, 13 Mar 2017 02:15:46 +0530
Message-Id: <1489351546-21008-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, mlock was being used to protect hardware state
changes.  Replace it with a lock in the devices global data.
This was done using Coccinelle Script.

@r1@
identifier xxx_state;
@@
struct xxx_state {
...
+ struct mutex          lock; /* protect sensor state */
};

@r2@
expression e;
@@
- mutex_lock(e);
+ mutex_lock(&st->lock);

@r3@
expression e;
@@
- mutex_unlock(e);
+ mutex_unlock(&st->lock);

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/iio/adc/ad7280a.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index ee679ac..27a3ce3 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -136,6 +136,7 @@ struct ad7280_state {
 	unsigned char			cb_mask[AD7280A_MAX_CHAIN];
 
 	__be32				buf[2] ____cacheline_aligned;
+	struct mutex			lock;  /* protect sensor state */
 };
 
 static void ad7280_crc8_build_table(unsigned char *crc_tab)
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


