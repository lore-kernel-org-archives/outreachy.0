X-GM-THRID: 6202672545102036992
X-Received: by 10.180.9.104 with SMTP id y8mr186972wia.7.1444420305741;
        Fri, 09 Oct 2015 12:51:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.83.82 with SMTP id h79ls297409lfb.76.gmail; Fri, 09 Oct
 2015 12:51:45 -0700 (PDT)
X-Received: by 10.112.54.197 with SMTP id l5mr2919396lbp.21.1444420304950;
        Fri, 09 Oct 2015 12:51:44 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id w4si65029wiz.0.2015.10.09.12.51.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 12:51:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id lk2so80687093wic.1
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 12:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=GWEhFs5UdpKhmag6ld/DnY+gHNxpd49SpS4eXq9oVRM=;
        b=Ym1zSoeNxdusZh6yEEXgc6M4/9zHew43MdwsE1h4wVWiecsZ8D5ncc/jQOJ3NgLS+R
         KrWHOVobdF5+7I3HnwwHfj27SVgpW9vIIDnfNZ72Sck/k0jOAKS/QfsGbG6JTHjd2+Mh
         0dlWgi657cLXq2yqTSt3xfuNaBpPhcxJm5jsfQK6SBmQDKIqXrQvRZi17anlMjFHLkgj
         aTtq58MTOHnZHmiRiv6es/myuCcO+6i4w/2Qh9708yd2xYlUCRxflISJLyDDPEhk7noq
         LnaEiuvXSPEIDdtxMogj8dzQyx6mwfGN1UqjFP2+eDDnHOv+GrPqKxr2vGzGHCAEpkr6
         rMBQ==
X-Received: by 10.180.102.169 with SMTP id fp9mr1117145wib.29.1444420304849;
        Fri, 09 Oct 2015 12:51:44 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id wj4sm3895064wjb.10.2015.10.09.12.51.43
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 12:51:44 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v3 4/9] staging: iio: adc: remove space after cast
Date: Fri,  9 Oct 2015 22:51:03 +0300
Message-Id: <38a48156926a77db8a247e311f879238c0f60981.1444419393.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444419393.git.ciorneiioana@gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444419393.git.ciorneiioana@gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>

Remove the space after an explicit cast because there is no
point in having it

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---

Changes in v2:
    - nothing
Changes in v3:
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
index 8ee2868..2c07198 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -606,7 +606,7 @@ static ssize_t ad7280_read_channel_config(struct device *dev,
 	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 	unsigned val;
 
-	switch ((u32) this_attr->address) {
+	switch ((u32)this_attr->address) {
 	case AD7280A_CELL_OVERVOLTAGE:
 		val = 1000 + (st->cell_threshhigh * 1568) / 100;
 		break;
@@ -642,7 +642,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
 	if (ret)
 		return ret;
 
-	switch ((u32) this_attr->address) {
+	switch ((u32)this_attr->address) {
 	case AD7280A_CELL_OVERVOLTAGE:
 	case AD7280A_CELL_UNDERVOLTAGE:
 		val = ((val - 1000) * 100) / 1568; /* LSB 15.68mV */
@@ -658,7 +658,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
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


