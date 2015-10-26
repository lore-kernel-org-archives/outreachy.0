X-GM-THRID: 6208887489417969664
X-Received: by 10.182.27.101 with SMTP id s5mr3139960obg.35.1445892580460;
        Mon, 26 Oct 2015 13:49:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.35.197 with SMTP id j188ls1544616ioj.49.gmail; Mon, 26 Oct
 2015 13:49:40 -0700 (PDT)
X-Received: by 10.68.197.6 with SMTP id iq6mr17682841pbc.10.1445892580206;
        Mon, 26 Oct 2015 13:49:40 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id zg1si3793820pbb.2.2015.10.26.13.49.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 13:49:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id la5so5273973pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 13:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=pyq0UYbyPLglgaIr09VURXuQSYRVP0EPklRyh+N52CM=;
        b=X6drn7TssNCHJ4LAANJwNMRrMXZHhkrJ6smbKLGvMy/FSr47QcJZXXoN+BdYbvStRI
         WmL19Gd24SHatBNsuCRfgobe3Myi/sXFHn1HBYD0C7FEvOVN3fvXQcFqSvyf11+4A+ap
         1ZOrubRz/pSVWBxLY6+/8ZgRqNVGaISsHevH2uaI3zXraTDSPV4icsu9QEkljAN6kezQ
         wpeoyyx9tElJ4B6UBaTWxCm3gTEmdCR9pUOPiMgjuqCnE6SWUU4rs7Qg/8xYcqW+5Cr9
         1vehPDitFj1YqZeTLXuucN7FmaCt0n/c7myDWxhw7S6NdYnQg1LCDxFkVD7XH1oCs0tB
         MNng==
X-Received: by 10.68.173.133 with SMTP id bk5mr24089768pbc.133.1445892580106;
        Mon, 26 Oct 2015 13:49:40 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id qk7sm35528106pbb.80.2015.10.26.13.49.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Oct 2015 13:49:39 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: iio: dummy: add the timestamp buffer to the scan index enum
Date: Mon, 26 Oct 2015 13:49:35 -0700
Message-Id: <9ba0ccaa230b9f32a76b8b5437d2cde8246ab69c.1445891339.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445891339.git.amsfield22@gmail.com>
References: <cover.1445891339.git.amsfield22@gmail.com>

Replace the hard coded buffer index for IIO_CHAN SOFT_TIMESTAMP with
an entry in the scan index enum.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/iio/iio_simple_dummy.c        | 6 +++---
 drivers/staging/iio/iio_simple_dummy.h        | 2 ++
 drivers/staging/iio/iio_simple_dummy_buffer.c | 1 +
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/iio/iio_simple_dummy.c b/drivers/staging/iio/iio_simple_dummy.c
index 70a82cd..2749746 100644
--- a/drivers/staging/iio/iio_simple_dummy.c
+++ b/drivers/staging/iio/iio_simple_dummy.c
@@ -230,10 +230,10 @@ static const struct iio_chan_spec iio_dummy_channels[] = {
 		},
 	},
 	/*
-	 * Convenience macro for timestamps. 4 is the index in
-	 * the buffer.
+	 * Convenience macro for timestamps.
+	 * DUMMY_INDEX_TIMESTAMP is the index in the buffer.
 	 */
-	IIO_CHAN_SOFT_TIMESTAMP(4),
+	IIO_CHAN_SOFT_TIMESTAMP(DUMMY_INDEX_TIMESTAMP),
 	/* DAC channel out_voltage0_raw */
 	{
 		.type = IIO_VOLTAGE,
diff --git a/drivers/staging/iio/iio_simple_dummy.h b/drivers/staging/iio/iio_simple_dummy.h
index b9069a1..89fb650 100644
--- a/drivers/staging/iio/iio_simple_dummy.h
+++ b/drivers/staging/iio/iio_simple_dummy.h
@@ -102,6 +102,7 @@ iio_simple_dummy_events_unregister(struct iio_dev *indio_dev)
  * @DUMMY_INDEX_DIFFVOLTAGE_1M2:   first differential channel
  * @DUMMY_INDEX_DIFFVOLTAGE_3M4:   second differential channel
  * @DUMMY_INDEX_ACCELX:            acceleration channel
+ * @DUMMY_INDEX_TIMESTAMP:         timestamp channel
  *
  * Enum provides convenient numbering for the scan index.
  */
@@ -110,6 +111,7 @@ enum iio_simple_dummy_scan_elements {
 	DUMMY_INDEX_DIFFVOLTAGE_1M2,
 	DUMMY_INDEX_DIFFVOLTAGE_3M4,
 	DUMMY_INDEX_ACCELX,
+	DUMMY_INDEX_TIMESTAMP,
 };
 
 #ifdef CONFIG_IIO_SIMPLE_DUMMY_BUFFER
diff --git a/drivers/staging/iio/iio_simple_dummy_buffer.c b/drivers/staging/iio/iio_simple_dummy_buffer.c
index cf44a6f..eea3e76 100644
--- a/drivers/staging/iio/iio_simple_dummy_buffer.c
+++ b/drivers/staging/iio/iio_simple_dummy_buffer.c
@@ -31,6 +31,7 @@ static const s16 fakedata[] = {
 	[DUMMY_INDEX_DIFFVOLTAGE_1M2] = -33,
 	[DUMMY_INDEX_DIFFVOLTAGE_3M4] = -2,
 	[DUMMY_INDEX_ACCELX] = 344,
+	[DUMMY_INDEX_TIMESTAMP] = 50,
 };
 
 /**
-- 
2.1.4


