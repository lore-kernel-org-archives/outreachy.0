X-GM-THRID: 205981220864
X-Received: by 10.112.181.198 with SMTP id dy6mr3979174lbc.22.1424207736858;
        Tue, 17 Feb 2015 13:15:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.12.68 with SMTP id eo4ls914316wid.22.canary; Tue, 17 Feb
 2015 13:15:36 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr3860347wjb.6.1424207736569;
        Tue, 17 Feb 2015 13:15:36 -0800 (PST)
Received: by 10.194.198.231 with SMTP id jf7mswjc;
        Tue, 17 Feb 2015 12:19:06 -0800 (PST)
X-Received: by 10.180.105.129 with SMTP id gm1mr3744740wib.3.1424204346002;
        Tue, 17 Feb 2015 12:19:06 -0800 (PST)
Return-Path: <ksenija@ksenija-aspire-v3-572>
Received: from ksenija-Aspire-V3-572 (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by gmr-mx.google.com with ESMTPS id el6si490028wib.2.2015.02.17.12.19.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 12:19:05 -0800 (PST)
Received-SPF: temperror (google.com: error in processing during lookup of ksenija@ksenija-aspire-v3-572: DNS timeout) client-ip=77.46.215.254;
Authentication-Results: gmr-mx.google.com;
       spf=temperror (google.com: error in processing during lookup of ksenija@ksenija-aspire-v3-572: DNS timeout) smtp.mail=ksenija@ksenija-aspire-v3-572;
       dmarc=fail (p=NONE dis=NONE) header.from=gmail.com
Received: from ksenija-Aspire-V3-572 (localhost [127.0.0.1])
	by ksenija-Aspire-V3-572 (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id t1HKJ4dw032016;
	Tue, 17 Feb 2015 21:19:04 +0100
Received: (from ksenija@localhost)
	by ksenija-Aspire-V3-572 (8.14.4/8.14.4/Submit) id t1HKJ4BQ032012;
	Tue, 17 Feb 2015 21:19:04 +0100
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2] Staging: media: vino: Replace printk() and dprintk() with dev_dbg().
Date: Tue, 17 Feb 2015 21:18:02 +0100
Message-Id: <1424204282-31960-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Making variants of existing macros is against kernel coding style. This
patch removes all definitions made by macro dprinkt() and replaces them
with dev_dbg().

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/media/vino/saa7191.c | 58 ++++++++++++++++--------------------
 1 file changed, 26 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/media/vino/saa7191.c b/drivers/staging/media/vino/saa7191.c
index 087acab..2aa68c6 100644
--- a/drivers/staging/media/vino/saa7191.c
+++ b/drivers/staging/media/vino/saa7191.c
@@ -33,13 +33,7 @@ MODULE_AUTHOR("Mikael Nousiainen <tmnousia@cc.hut.fi>");
 MODULE_LICENSE("GPL");
 
 
-/* #define SAA7191_DEBUG */
 
-#ifdef SAA7191_DEBUG
-#define dprintk(x...) printk("SAA7191: " x);
-#else
-#define dprintk(x...)
-#endif
 
 #define SAA7191_SYNC_COUNT	30
 #define SAA7191_SYNC_DELAY	100	/* milliseconds */
@@ -116,7 +110,7 @@ static int saa7191_read_status(struct v4l2_subdev *sd, u8 *value)
 
 	ret = i2c_master_recv(client, value, 1);
 	if (ret < 0) {
-		printk(KERN_ERR "SAA7191: saa7191_read_status(): read failed\n");
+		dev_dbg("saa7191_read_status(): read failed\n");
 		return ret;
 	}
 
@@ -147,7 +141,7 @@ static int saa7191_write_block(struct v4l2_subdev *sd,
 
 	ret = i2c_master_send(client, data, length);
 	if (ret < 0) {
-		printk(KERN_ERR "SAA7191: saa7191_write_block(): "
+		dev_dbg("saa7191_write_block(): "
 		       "write failed\n");
 		return ret;
 	}
@@ -230,9 +224,9 @@ static int saa7191_s_std(struct v4l2_subdev *sd, v4l2_std_id norm)
 
 	decoder->norm = norm;
 
-	dprintk("ctl3: %02x stdc: %02x chcv: %02x\n", ctl3,
+	dev_dbg(&sd->dev, "ctl3: %02x stdc: %02x chcv: %02x\n", ctl3,
 		stdc, chcv);
-	dprintk("norm: %llx\n", norm);
+	dev_dbg("norm: %llx\n", norm);
 
 	return 0;
 }
@@ -241,21 +235,21 @@ static int saa7191_wait_for_signal(struct v4l2_subdev *sd, u8 *status)
 {
 	int i = 0;
 
-	dprintk("Checking for signal...\n");
+	dev_dbg("Checking for signal...\n");
 
 	for (i = 0; i < SAA7191_SYNC_COUNT; i++) {
 		if (saa7191_read_status(sd, status))
 			return -EIO;
 
 		if (((*status) & SAA7191_STATUS_HLCK) == 0) {
-			dprintk("Signal found\n");
+			dev_dbg("Signal found\n");
 			return 0;
 		}
 
 		msleep(SAA7191_SYNC_DELAY);
 	}
 
-	dprintk("No signal\n");
+	dev_dbg("No signal\n");
 
 	return -EBUSY;
 }
@@ -269,7 +263,7 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
 	v4l2_std_id old_norm = decoder->norm;
 	int err = 0;
 
-	dprintk("SAA7191 extended signal auto-detection...\n");
+	dev_dbg("SAA7191 extended signal auto-detection...\n");
 
 	*norm &= V4L2_STD_NTSC | V4L2_STD_PAL | V4L2_STD_SECAM;
 	stdc &= ~SAA7191_STDC_SECS;
@@ -301,13 +295,13 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
 
 	if (status & SAA7191_STATUS_FIDT) {
 		/* 60Hz signal -> NTSC */
-		dprintk("60Hz signal: NTSC\n");
+		dev_dbg("60Hz signal: NTSC\n");
 		*norm &= V4L2_STD_NTSC;
 		return 0;
 	}
 
 	/* 50Hz signal */
-	dprintk("50Hz signal: Trying PAL...\n");
+	dev_dbg("50Hz signal: Trying PAL...\n");
 
 	/* try PAL first */
 	err = saa7191_s_std(sd, V4L2_STD_PAL);
@@ -322,19 +316,19 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
 
 	/* not 50Hz ? */
 	if (status & SAA7191_STATUS_FIDT) {
-		dprintk("No 50Hz signal\n");
+		dev_dbg("No 50Hz signal\n");
 		saa7191_s_std(sd, old_norm);
 		*norm = V4L2_STD_UNKNOWN;
 		return 0;
 	}
 
 	if (status & SAA7191_STATUS_CODE) {
-		dprintk("PAL\n");
+		dev_dbg("PAL\n");
 		*norm &= V4L2_STD_PAL;
 		return saa7191_s_std(sd, old_norm);
 	}
 
-	dprintk("No color detected with PAL - Trying SECAM...\n");
+	dev_dbg("No color detected with PAL - Trying SECAM...\n");
 
 	/* no color detected ? -> try SECAM */
 	err = saa7191_s_std(sd, V4L2_STD_SECAM);
@@ -349,19 +343,19 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
 
 	/* not 50Hz ? */
 	if (status & SAA7191_STATUS_FIDT) {
-		dprintk("No 50Hz signal\n");
+		dev_dbg("No 50Hz signal\n");
 		*norm = V4L2_STD_UNKNOWN;
 		goto out;
 	}
 
 	if (status & SAA7191_STATUS_CODE) {
 		/* Color detected -> SECAM */
-		dprintk("SECAM\n");
+		dev_dbg("SECAM\n");
 		*norm &= V4L2_STD_SECAM;
 		return saa7191_s_std(sd, old_norm);
 	}
 
-	dprintk("No color detected with SECAM - Going back to PAL.\n");
+	dev_dbg("No color detected with SECAM - Going back to PAL.\n");
 	*norm = V4L2_STD_UNKNOWN;
 
 out:
@@ -372,30 +366,30 @@ static int saa7191_autodetect_norm(struct v4l2_subdev *sd)
 {
 	u8 status;
 
-	dprintk("SAA7191 signal auto-detection...\n");
+	dev_dbg("SAA7191 signal auto-detection...\n");
 
-	dprintk("Reading status...\n");
+	dev_dbg("Reading status...\n");
 
 	if (saa7191_read_status(sd, &status))
 		return -EIO;
 
-	dprintk("Checking for signal...\n");
+	dev_dbg("Checking for signal...\n");
 
 	/* no signal ? */
 	if (status & SAA7191_STATUS_HLCK) {
-		dprintk("No signal\n");
+		dev_dbg("No signal\n");
 		return -EBUSY;
 	}
 
-	dprintk("Signal found\n");
+	dev_dbg("Signal found\n");
 
 	if (status & SAA7191_STATUS_FIDT) {
 		/* 60hz signal -> NTSC */
-		dprintk("NTSC\n");
+		dev_dbg("NTSC\n");
 		return saa7191_s_std(sd, V4L2_STD_NTSC);
 	} else {
 		/* 50hz signal -> PAL */
-		dprintk("PAL\n");
+		dev_dbg("PAL\n");
 		return saa7191_s_std(sd, V4L2_STD_PAL);
 	}
 }
@@ -606,18 +600,18 @@ static int saa7191_probe(struct i2c_client *client,
 
 	err = saa7191_write_block(sd, sizeof(initseq), initseq);
 	if (err) {
-		printk(KERN_ERR "SAA7191 initialization failed\n");
+		dev_dbg("SAA7191 initialization failed\n");
 		return err;
 	}
 
-	printk(KERN_INFO "SAA7191 initialized\n");
+	dev_dbg("SAA7191 initialized\n");
 
 	decoder->input = SAA7191_INPUT_COMPOSITE;
 	decoder->norm = V4L2_STD_PAL;
 
 	err = saa7191_autodetect_norm(sd);
 	if (err && (err != -EBUSY))
-		printk(KERN_ERR "SAA7191: Signal auto-detection failed\n");
+		dev_dbg("SAA7191: Signal auto-detection failed\n");
 
 	return 0;
 }
-- 
1.9.1


