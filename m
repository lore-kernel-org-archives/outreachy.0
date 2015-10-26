X-GM-THRID: 6208887489417969664
X-Received: by 10.107.26.84 with SMTP id a81mr31452316ioa.6.1445892508239;
        Mon, 26 Oct 2015 13:48:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.161 with SMTP id x1ls930715igl.29.canary; Mon, 26 Oct
 2015 13:48:27 -0700 (PDT)
X-Received: by 10.66.228.69 with SMTP id sg5mr287343pac.12.1445892507918;
        Mon, 26 Oct 2015 13:48:27 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id pe1si3750236pac.2.2015.10.26.13.48.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 13:48:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id fv9so207193880pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 13:48:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=S9xeRUFRrhrl8ohqE12u6uZp3aJGtXyjP3RjvjBn5nI=;
        b=rhsaoDilnRoL/WO7/30h3rm2htc0ukoii0F7gO5i1q+Z7Ny/jm7Wc0eH+bbxtidFuk
         R5hcy85hu9pCVkAWXRwbd/XRy5p2bE5BJjwfez5lCZG5dEW1Vas6GyVVmvZLxqEeI2GI
         T8V2JfweAlm9WNVybNU2VF1+Jd5B2lpxiQLLrCteaCUFQNVEp41TqduAFph2ehFhHkzK
         TIUKjHsn7Ci//cf12pLckcwaFi+iN/aeY1Z9SWbmLF7t0i9adQy3SWKGGJNqKW894UOQ
         D+fdrhyw2k7w9PcUWtbkOQjTC5h+LzGpiYSdCxGecaG7NUaelVHRqMAlYs8nL5iJuSs4
         w6CQ==
X-Received: by 10.68.179.228 with SMTP id dj4mr24195716pbc.112.1445892507778;
        Mon, 26 Oct 2015 13:48:27 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id vl1sm35552607pbc.31.2015.10.26.13.48.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Oct 2015 13:48:27 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: iio: dummy: use uppercase descriptors for enum names
Date: Mon, 26 Oct 2015 13:48:23 -0700
Message-Id: <1d0c9afcc8747c7b0b4f4c7241b06ee489cf079a.1445891339.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445891339.git.amsfield22@gmail.com>
References: <cover.1445891339.git.amsfield22@gmail.com>

Replace lower case names in the enum dummy_scan_elements with
uppercase names and a descriptive prefix: DUMMY_INDEX_

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/iio/iio_simple_dummy.c        |  8 ++++----
 drivers/staging/iio/iio_simple_dummy.h        | 16 ++++++++--------
 drivers/staging/iio/iio_simple_dummy_buffer.c |  8 ++++----
 3 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/iio/iio_simple_dummy.c b/drivers/staging/iio/iio_simple_dummy.c
index 381f90f..70a82cd 100644
--- a/drivers/staging/iio/iio_simple_dummy.c
+++ b/drivers/staging/iio/iio_simple_dummy.c
@@ -137,7 +137,7 @@ static const struct iio_chan_spec iio_dummy_channels[] = {
 		 */
 		.info_mask_shared_by_dir = BIT(IIO_CHAN_INFO_SAMP_FREQ),
 		/* The ordering of elements in the buffer via an enum */
-		.scan_index = voltage0,
+		.scan_index = DUMMY_INDEX_VOLTAGE_0,
 		.scan_type = { /* Description of storage in buffer */
 			.sign = 'u', /* unsigned */
 			.realbits = 13, /* 13 bits */
@@ -176,7 +176,7 @@ static const struct iio_chan_spec iio_dummy_channels[] = {
 		 * sampling_frequency
 		 * The frequency in Hz at which the channels are sampled
 		 */
-		.scan_index = diffvoltage1m2,
+		.scan_index = DUMMY_INDEX_DIFFVOLTAGE_1M2,
 		.scan_type = { /* Description of storage in buffer */
 			.sign = 's', /* signed */
 			.realbits = 12, /* 12 bits */
@@ -194,7 +194,7 @@ static const struct iio_chan_spec iio_dummy_channels[] = {
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
 		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),
 		.info_mask_shared_by_dir = BIT(IIO_CHAN_INFO_SAMP_FREQ),
-		.scan_index = diffvoltage3m4,
+		.scan_index = DUMMY_INDEX_DIFFVOLTAGE_3M4,
 		.scan_type = {
 			.sign = 's',
 			.realbits = 11,
@@ -221,7 +221,7 @@ static const struct iio_chan_spec iio_dummy_channels[] = {
 		BIT(IIO_CHAN_INFO_CALIBSCALE) |
 		BIT(IIO_CHAN_INFO_CALIBBIAS),
 		.info_mask_shared_by_dir = BIT(IIO_CHAN_INFO_SAMP_FREQ),
-		.scan_index = accelx,
+		.scan_index = DUMMY_INDEX_ACCELX,
 		.scan_type = { /* Description of storage in buffer */
 			.sign = 's', /* signed */
 			.realbits = 16, /* 16 bits */
diff --git a/drivers/staging/iio/iio_simple_dummy.h b/drivers/staging/iio/iio_simple_dummy.h
index 5c2f4d0..b9069a1 100644
--- a/drivers/staging/iio/iio_simple_dummy.h
+++ b/drivers/staging/iio/iio_simple_dummy.h
@@ -98,18 +98,18 @@ iio_simple_dummy_events_unregister(struct iio_dev *indio_dev)
 
 /**
  * enum iio_simple_dummy_scan_elements - scan index enum
- * @voltage0:		the single ended voltage channel
- * @diffvoltage1m2:	first differential channel
- * @diffvoltage3m4:	second differenial channel
- * @accelx:		acceleration channel
+ * @DUMMY_INDEX_VOLTAGE_0:         the single ended voltage channel
+ * @DUMMY_INDEX_DIFFVOLTAGE_1M2:   first differential channel
+ * @DUMMY_INDEX_DIFFVOLTAGE_3M4:   second differential channel
+ * @DUMMY_INDEX_ACCELX:            acceleration channel
  *
  * Enum provides convenient numbering for the scan index.
  */
 enum iio_simple_dummy_scan_elements {
-	voltage0,
-	diffvoltage1m2,
-	diffvoltage3m4,
-	accelx,
+	DUMMY_INDEX_VOLTAGE_0,
+	DUMMY_INDEX_DIFFVOLTAGE_1M2,
+	DUMMY_INDEX_DIFFVOLTAGE_3M4,
+	DUMMY_INDEX_ACCELX,
 };
 
 #ifdef CONFIG_IIO_SIMPLE_DUMMY_BUFFER
diff --git a/drivers/staging/iio/iio_simple_dummy_buffer.c b/drivers/staging/iio/iio_simple_dummy_buffer.c
index 00ed774..cf44a6f 100644
--- a/drivers/staging/iio/iio_simple_dummy_buffer.c
+++ b/drivers/staging/iio/iio_simple_dummy_buffer.c
@@ -27,10 +27,10 @@
 /* Some fake data */
 
 static const s16 fakedata[] = {
-	[voltage0] = 7,
-	[diffvoltage1m2] = -33,
-	[diffvoltage3m4] = -2,
-	[accelx] = 344,
+	[DUMMY_INDEX_VOLTAGE_0] = 7,
+	[DUMMY_INDEX_DIFFVOLTAGE_1M2] = -33,
+	[DUMMY_INDEX_DIFFVOLTAGE_3M4] = -2,
+	[DUMMY_INDEX_ACCELX] = 344,
 };
 
 /**
-- 
2.1.4


