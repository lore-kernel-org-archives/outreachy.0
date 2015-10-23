X-GM-THRID: 6208887489417969664
X-Received: by 10.182.29.41 with SMTP id g9mr18470965obh.27.1445619270181;
        Fri, 23 Oct 2015 09:54:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.19.197 with SMTP id 63ls2201510qgh.76.gmail; Fri, 23 Oct
 2015 09:54:29 -0700 (PDT)
X-Received: by 10.31.15.16 with SMTP id 16mr18104515vkp.0.1445619269579;
        Fri, 23 Oct 2015 09:54:29 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id pe1si2320694pac.2.2015.10.23.09.54.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 09:54:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id fv9so128496602pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 09:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ioaOQUEN4oTWAkEVgOZGsIhDI/3UKDSN8O2b+WXSd+I=;
        b=ek4HuJiJoIirgtcRk2FTPhq8iOqnamwjyiFmfZyeD421wPFRHhmYH6hcmIQk1NFnzM
         A0abHkZnSWQlFMs6ikZAFjKsetOgcCdFI9bQImEFG8syTiRuxVq6BjVOUdibLI4r+wav
         P/tsph1CPsqd+8Y51uEJElGcE6TfU+YsLfLBAUXx5Ic5TSPcennOQ6NI7tuymMMCgYz1
         ljfilMv8oLzT2ePk2JzcBH2VuWpLOzUkMTxiurJzDUt1H6xYqeE5WuHvuxvEE1ltU3Lr
         fT70J0Gsp6drRVmmhYERkLFe8fZKQIzxe5jPDlCrcDzUyXn17scNfzMHklO0vg3XSXnD
         Ax1A==
X-Received: by 10.68.227.36 with SMTP id rx4mr6183496pbc.114.1445619269404;
        Fri, 23 Oct 2015 09:54:29 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id ir5sm19912257pbc.13.2015.10.23.09.54.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Oct 2015 09:54:29 -0700 (PDT)
Date: Fri, 23 Oct 2015 09:54:27 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: jic23@kernel.org, linux-iio@vger.kernel.org
Subject: [PATCH] staging: iio: dummy: clean up the define and usage of
 dummy_scan_elements
Message-ID: <20151023165418.GA18718@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Cleanups related to the usage of dummy_scan_elements in the
iio dummy driver:
- change enum names to upper case INDEX_*
- use the enum for IIO_CHAN_SOFT_TIMESTAMP (rm hard coded value)
- comment edited to match changes & follow preferred kernel style

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/iio/iio_simple_dummy.c        | 22 ++++++++++++----------
 drivers/staging/iio/iio_simple_dummy.h        | 20 +++++++++++---------
 drivers/staging/iio/iio_simple_dummy_buffer.c |  9 +++++----
 3 files changed, 28 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/iio/iio_simple_dummy.c b/drivers/staging/iio/iio_simple_dummy.c
index 381f90f..5e19068 100644
--- a/drivers/staging/iio/iio_simple_dummy.c
+++ b/drivers/staging/iio/iio_simple_dummy.c
@@ -1,4 +1,4 @@
-/**
+/*
  * Copyright (c) 2011 Jonathan Cameron
  *
  * This program is free software; you can redistribute it and/or modify it
@@ -137,7 +137,7 @@ static const struct iio_chan_spec iio_dummy_channels[] = {
 		 */
 		.info_mask_shared_by_dir = BIT(IIO_CHAN_INFO_SAMP_FREQ),
 		/* The ordering of elements in the buffer via an enum */
-		.scan_index = voltage0,
+		.scan_index = INDEX_VOLTAGE_0,
 		.scan_type = { /* Description of storage in buffer */
 			.sign = 'u', /* unsigned */
 			.realbits = 13, /* 13 bits */
@@ -176,7 +176,7 @@ static const struct iio_chan_spec iio_dummy_channels[] = {
 		 * sampling_frequency
 		 * The frequency in Hz at which the channels are sampled
 		 */
-		.scan_index = diffvoltage1m2,
+		.scan_index = INDEX_DIFFVOLTAGE_1M2,
 		.scan_type = { /* Description of storage in buffer */
 			.sign = 's', /* signed */
 			.realbits = 12, /* 12 bits */
@@ -194,7 +194,7 @@ static const struct iio_chan_spec iio_dummy_channels[] = {
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
 		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),
 		.info_mask_shared_by_dir = BIT(IIO_CHAN_INFO_SAMP_FREQ),
-		.scan_index = diffvoltage3m4,
+		.scan_index = INDEX_DIFFVOLTAGE_3M4,
 		.scan_type = {
 			.sign = 's',
 			.realbits = 11,
@@ -221,7 +221,7 @@ static const struct iio_chan_spec iio_dummy_channels[] = {
 		BIT(IIO_CHAN_INFO_CALIBSCALE) |
 		BIT(IIO_CHAN_INFO_CALIBBIAS),
 		.info_mask_shared_by_dir = BIT(IIO_CHAN_INFO_SAMP_FREQ),
-		.scan_index = accelx,
+		.scan_index = INDEX_ACCELX,
 		.scan_type = { /* Description of storage in buffer */
 			.sign = 's', /* signed */
 			.realbits = 16, /* 16 bits */
@@ -230,10 +230,10 @@ static const struct iio_chan_spec iio_dummy_channels[] = {
 		},
 	},
 	/*
-	 * Convenience macro for timestamps. 4 is the index in
-	 * the buffer.
+	 * Convenience macro for timestamps.
+	 * INDEX_TIMESTAMP is the index in the buffer.
 	 */
-	IIO_CHAN_SOFT_TIMESTAMP(4),
+	IIO_CHAN_SOFT_TIMESTAMP(INDEX_TIMESTAMP),
 	/* DAC channel out_voltage0_raw */
 	{
 		.type = IIO_VOLTAGE,
@@ -364,8 +364,10 @@ static int iio_dummy_read_raw(struct iio_dev *indio_dev,
 				ret = IIO_VAL_INT_PLUS_MICRO;
 				break;
 			case 1:
-				/* all differential adc channels ->
-				 * 0.000001344 */
+				/*
+				 * all differential adc
+				 * channels -> 0.000001344
+				 */
 				*val = 0;
 				*val2 = 1344;
 				ret = IIO_VAL_INT_PLUS_NANO;
diff --git a/drivers/staging/iio/iio_simple_dummy.h b/drivers/staging/iio/iio_simple_dummy.h
index 5c2f4d0..31b62ad 100644
--- a/drivers/staging/iio/iio_simple_dummy.h
+++ b/drivers/staging/iio/iio_simple_dummy.h
@@ -96,20 +96,22 @@ iio_simple_dummy_events_unregister(struct iio_dev *indio_dev)
 
 #endif /* CONFIG_IIO_SIMPLE_DUMMY_EVENTS*/
 
-/**
+/*
  * enum iio_simple_dummy_scan_elements - scan index enum
- * @voltage0:		the single ended voltage channel
- * @diffvoltage1m2:	first differential channel
- * @diffvoltage3m4:	second differenial channel
- * @accelx:		acceleration channel
+ * @INDEX_VOLTAGE_0:		the single ended voltage channel
+ * @INDEX_DIFFVOLTAGE_1M2:	first differential channel
+ * @INDEX_DIFFVOLTAGE_3M4:	second differential channel
+ * @INDEX_ACCELX:		acceleration channel
+ * @INDEX_TIMESTAMP:		timestamp channel
  *
  * Enum provides convenient numbering for the scan index.
  */
 enum iio_simple_dummy_scan_elements {
-	voltage0,
-	diffvoltage1m2,
-	diffvoltage3m4,
-	accelx,
+	INDEX_VOLTAGE_0,
+	INDEX_DIFFVOLTAGE_1M2,
+	INDEX_DIFFVOLTAGE_3M4,
+	INDEX_ACCELX,
+	INDEX_TIMESTAMP,
 };
 
 #ifdef CONFIG_IIO_SIMPLE_DUMMY_BUFFER
diff --git a/drivers/staging/iio/iio_simple_dummy_buffer.c b/drivers/staging/iio/iio_simple_dummy_buffer.c
index 00ed774..7516835 100644
--- a/drivers/staging/iio/iio_simple_dummy_buffer.c
+++ b/drivers/staging/iio/iio_simple_dummy_buffer.c
@@ -27,10 +27,11 @@
 /* Some fake data */
 
 static const s16 fakedata[] = {
-	[voltage0] = 7,
-	[diffvoltage1m2] = -33,
-	[diffvoltage3m4] = -2,
-	[accelx] = 344,
+	[INDEX_VOLTAGE_0] = 7,
+	[INDEX_DIFFVOLTAGE_1M2] = -33,
+	[INDEX_DIFFVOLTAGE_3M4] = -2,
+	[INDEX_ACCELX] = 344,
+	[INDEX_TIMESTAMP] = 50,
 };
 
 /**
-- 
2.1.4


