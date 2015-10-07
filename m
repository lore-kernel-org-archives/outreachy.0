X-GM-THRID: 6202672545102036992
X-Received: by 10.180.72.68 with SMTP id b4mr678726wiv.2.1444241643911;
        Wed, 07 Oct 2015 11:14:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.81.169 with SMTP id b9ls203512wiy.35.gmail; Wed, 07 Oct
 2015 11:14:03 -0700 (PDT)
X-Received: by 10.180.106.197 with SMTP id gw5mr665992wib.7.1444241642917;
        Wed, 07 Oct 2015 11:14:02 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id w4si173148wiz.0.2015.10.07.11.14.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 11:14:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x235.google.com with SMTP id fx3so224698278wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 11:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=3f9kaSz0p4TjHrmkh1YQvD9ZQgTUIGOjJYmh7GD9E20=;
        b=Hc7174evtyg4ecDAeY84P3uHWt/JfWolpOWeZT6kKuIG+FYI+DdUvUgK7bj589psBS
         /15dm79XbmCiRU/3VU7HRllAzSw8SnQJqHIi/GMkGf9yCkj7NEo9GcY6zrzRDlCjLMC+
         tKfIKB1w6+A9YCJLjDtU2Am6toDOzCv6oXlQ5n5X1wb20P4rMkgFuY+smdptuQUKS3fo
         z0ougkaN1dZsWZ6Gp3RNFqK9NVMvLxPH/+BNRph46lA05ARvtRs9AxMOjABf4sdVEuDU
         6mfx1RIfKNyD6n5yqhB3CCI+WAZI7J81XWvtgqMPkKutqpHc16ACSLYiFmod+GNlMPHS
         UDlA==
X-Received: by 10.194.52.6 with SMTP id p6mr3100410wjo.119.1444241642630;
        Wed, 07 Oct 2015 11:14:02 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id jf3sm3629403wic.8.2015.10.07.11.14.01
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Oct 2015 11:14:02 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 4/9] staging: iio: adc: remove space after cast
Date: Wed,  7 Oct 2015 21:13:42 +0300
Message-Id: <c29e51f870168b03dd05a1c58edb619b10780986.1444241200.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444241200.git.ciorneiioana@gmail.com>
References: <cover.1444241200.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444241200.git.ciorneiioana@gmail.com>
References: <cover.1444241200.git.ciorneiioana@gmail.com>

Remove the space after an explicit cast because there is no
point in having it

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    - nothing

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


