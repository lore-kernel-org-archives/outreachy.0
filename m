X-GM-THRID: 6202672545102036992
X-Received: by 10.180.107.167 with SMTP id hd7mr3876604wib.6.1444172248611;
        Tue, 06 Oct 2015 15:57:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.24.79 with SMTP id o76ls587918lfi.48.gmail; Tue, 06 Oct
 2015 15:57:26 -0700 (PDT)
X-Received: by 10.112.130.41 with SMTP id ob9mr6835566lbb.17.1444172246484;
        Tue, 06 Oct 2015 15:57:26 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id ch7si671844wib.2.2015.10.06.15.57.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 15:57:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id ge5so188053027wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 15:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=yrXlReZBRbWSghJDFzEvOE26npufXFXtib27lU5iLy0=;
        b=Pvu0XedE3+fsEg12CNaxzdtSuPUMii7CVzxT69dN6HDg/01vmH6oHn+EbqjOSbfAk+
         juYibjsdv1NztcrRZdINmOxuMGPC20AVpIY1kQgviE2GHqCrqlyn73s99J9yiOz2Mutv
         JDGb3lZinrwUTsfGxeDUhVTjAx5S4XPrRtTFoWHR46njw1kUjAfb391HaiTvS6xoyjwp
         pgc+7UWE1dUYLnKmEqWyl0BB+K5niElV7LuhJVoE2ICY1cz4+Cgu7Z4Ohfv59bBQUAjO
         vtvaCitx9abpAQUnjZ4bjlY4XhUVoUEzdgkwhdpboa5K2eN/UzlTRWzTMKxDQIzcv2oE
         5efA==
X-Received: by 10.194.172.233 with SMTP id bf9mr39203946wjc.107.1444172246397;
        Tue, 06 Oct 2015 15:57:26 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id cv4sm35261421wjc.17.2015.10.06.15.57.25
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 06 Oct 2015 15:57:26 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 04/10] staging: iio: adc: remove space after cast
Date: Wed,  7 Oct 2015 01:57:04 +0300
Message-Id: <c29e51f870168b03dd05a1c58edb619b10780986.1444172065.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444172065.git.ciorneiioana@gmail.com>
References: <cover.1444172065.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444172065.git.ciorneiioana@gmail.com>
References: <cover.1444172065.git.ciorneiioana@gmail.com>

Remove the space after an explicit cast because there is no
point in having it

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c      | 2 +-
 drivers/staging/iio/adc/ad7280a.c     | 6 +++---
 drivers/staging/iio/adc/ad7606_core.c | 2 +-
 drivers/staging/iio/adc/ad7606_par.c  | 4 ++--
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index 22b4bf5..ab87724 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -423,7 +423,7 @@ static ssize_t ad7192_set(struct device *dev,
 		return -EBUSY;
 	}
 
-	switch ((u32) this_attr->address) {
+	switch ((u32)this_attr->address) {
 	case AD7192_REG_GPOCON:
 		if (val)
 			st->gpocon |= AD7192_GPOCON_BPDSW;
diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index 9fb664c..ad1a44f 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -602,7 +602,7 @@ static ssize_t ad7280_read_channel_config(struct device *dev,
 	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 	unsigned val;
 
-	switch ((u32) this_attr->address) {
+	switch ((u32)this_attr->address) {
 	case AD7280A_CELL_OVERVOLTAGE:
 		val = 1000 + (st->cell_threshhigh * 1568) / 100;
 		break;
@@ -638,7 +638,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
 	if (ret)
 		return ret;
 
-	switch ((u32) this_attr->address) {
+	switch ((u32)this_attr->address) {
 	case AD7280A_CELL_OVERVOLTAGE:
 	case AD7280A_CELL_UNDERVOLTAGE:
 		val = ((val - 1000) * 100) / 1568; /* LSB 15.68mV */
@@ -654,7 +654,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
 	val = clamp(val, 0L, 0xFFL);
 
 	mutex_lock(&indio_dev->mlock);
-	switch ((u32) this_attr->address) {
+	switch ((u32)this_attr->address) {
 	case AD7280A_CELL_OVERVOLTAGE:
 		st->cell_threshhigh = val;
 		break;
diff --git a/drivers/staging/iio/adc/ad7606_core.c b/drivers/staging/iio/adc/ad7606_core.c
index 6dc7413..eb890b6 100644
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


