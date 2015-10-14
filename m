X-GM-THRID: 6202672545102036992
X-Received: by 10.194.192.71 with SMTP id he7mr1105936wjc.2.1444846729874;
        Wed, 14 Oct 2015 11:18:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.96.170 with SMTP id dt10ls211918wib.32.gmail; Wed, 14 Oct
 2015 11:18:49 -0700 (PDT)
X-Received: by 10.180.10.135 with SMTP id i7mr1214315wib.2.1444846729481;
        Wed, 14 Oct 2015 11:18:49 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id h2si967217wiy.0.2015.10.14.11.18.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:18:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id q12so95823104wie.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=bVSlBr9XG/Zu+UJwiGTwoeEtCYq8YEfgI5eP4Wp8Osw=;
        b=zrBkgGRRwLhfw8aphrSJCVi0zUEpacPG5MjZiMYWHgLBAIiburan5CEx6S4uZK7gXi
         I/tSB17Btl/F2V/eeuSoakdn//eCn/I1fEXeYWoAWvWomS4aAvms9mMbw88H5YjqxsUz
         M+UT4C8WuWAqK4sORsTQ9hjCmwfUO9qCetde6viq1uNB01k7b54fY6vsm3Y6vQnSp7Hw
         hkAeTgNDrO30oy2D3NuZvcg1OvccOkei0J0PmLFcHTVb1TSUtDPFMh3MAeo0SFqlXE+S
         x3jQa3tqJCHPB79E0a+nHe/tKs7wY6Tb13MZT1S2M2ANcHpB2j00E9sRYLGSPFlWWUD5
         ytIA==
X-Received: by 10.180.11.1 with SMTP id m1mr30776156wib.69.1444846729372;
        Wed, 14 Oct 2015 11:18:49 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id p4sm20285140wia.15.2015.10.14.11.18.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 11:18:48 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v4 4/9] staging: iio: adc: remove space after cast
Date: Wed, 14 Oct 2015 21:14:15 +0300
Message-Id: <27e3072f96b82d21efe09e193daf6e45a6d9176b.1444845354.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444845354.git.ciorneiioana@gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444845354.git.ciorneiioana@gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>

Remove the space after an explicit cast because there is no
point in having it

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    - nothing
Changes in v3:
    - nothing
Changes in v4:
    - nothing


 drivers/staging/iio/adc/ad7192.c      | 2 +-
 drivers/staging/iio/adc/ad7280a.c     | 6 +++---
 drivers/staging/iio/adc/ad7606_core.c | 2 +-
 drivers/staging/iio/adc/ad7606_par.c  | 4 ++--
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index 6adac61..e7212c8 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -424,7 +424,7 @@ static ssize_t ad7192_set(struct device *dev,
 		return -EBUSY;
 	}
 
-	switch ((u32) this_attr->address) {
+	switch ((u32)this_attr->address) {
 	case AD7192_REG_GPOCON:
 		if (val)
 			st->gpocon |= AD7192_GPOCON_BPDSW;
diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index 01156c7..2737033 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -604,7 +604,7 @@ static ssize_t ad7280_read_channel_config(struct device *dev,
 	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 	unsigned val;
 
-	switch ((u32) this_attr->address) {
+	switch ((u32)this_attr->address) {
 	case AD7280A_CELL_OVERVOLTAGE:
 		val = 1000 + (st->cell_threshhigh * 1568) / 100;
 		break;
@@ -640,7 +640,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
 	if (ret)
 		return ret;
 
-	switch ((u32) this_attr->address) {
+	switch ((u32)this_attr->address) {
 	case AD7280A_CELL_OVERVOLTAGE:
 	case AD7280A_CELL_UNDERVOLTAGE:
 		val = ((val - 1000) * 100) / 1568; /* LSB 15.68mV */
@@ -656,7 +656,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
 	val = clamp(val, 0L, 0xFFL);
 
 	mutex_lock(&indio_dev->mlock);
-	switch ((u32) this_attr->address) {
+	switch ((u32)this_attr->address) {
 	case AD7280A_CELL_OVERVOLTAGE:
 		st->cell_threshhigh = val;
 		break;
diff --git a/drivers/staging/iio/adc/ad7606_core.c b/drivers/staging/iio/adc/ad7606_core.c
index 1e324fe..5796ed2 100644
--- a/drivers/staging/iio/adc/ad7606_core.c
+++ b/drivers/staging/iio/adc/ad7606_core.c
@@ -97,7 +97,7 @@ static int ad7606_read_raw(struct iio_dev *indio_dev,
 
 		if (ret < 0)
 			return ret;
-		*val = (short) ret;
+		*val = (short)ret;
 		return IIO_VAL_INT;
 	case IIO_CHAN_INFO_SCALE:
 		*val = st->range * 2;
diff --git a/drivers/staging/iio/adc/ad7606_par.c b/drivers/staging/iio/adc/ad7606_par.c
index fbe8237..3537a78 100644
--- a/drivers/staging/iio/adc/ad7606_par.c
+++ b/drivers/staging/iio/adc/ad7606_par.c
@@ -22,7 +22,7 @@ static int ad7606_par16_read_block(struct device *dev,
 	struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 	struct ad7606_state *st = iio_priv(indio_dev);
 
-	insw((unsigned long) st->base_address, buf, count);
+	insw((unsigned long)st->base_address, buf, count);
 
 	return 0;
 }
@@ -38,7 +38,7 @@ static int ad7606_par8_read_block(struct device *dev,
 	struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 	struct ad7606_state *st = iio_priv(indio_dev);
 
-	insb((unsigned long) st->base_address, buf, count * 2);
+	insb((unsigned long)st->base_address, buf, count * 2);
 
 	return 0;
 }
-- 
2.1.4


