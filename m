X-GM-THRID: 612983898112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d24031e2a704191,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.142.174 with SMTP id rx14mr356827wjb.4.1424330252016;
        Wed, 18 Feb 2015 23:17:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.20.230 with SMTP id q6ls480926wie.48.canary; Wed, 18 Feb
 2015 23:17:31 -0800 (PST)
X-Received: by 10.180.72.44 with SMTP id a12mr483763wiv.0.1424330251760;
        Wed, 18 Feb 2015 23:17:31 -0800 (PST)
Received: by 10.194.15.65 with SMTP id v1mswjc;
        Wed, 18 Feb 2015 20:18:49 -0800 (PST)
X-Received: by 10.112.171.37 with SMTP id ar5mr292545lbc.16.1424319529211;
        Wed, 18 Feb 2015 20:18:49 -0800 (PST)
Return-Path: <ksenija@ksenija-aspire-v3-572>
Received: from ksenija-Aspire-V3-572 (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by gmr-mx.google.com with ESMTPS id o3si4072100wib.2.2015.02.18.20.18.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 20:18:49 -0800 (PST)
Received-SPF: temperror (google.com: error in processing during lookup of ksenija@ksenija-aspire-v3-572: DNS timeout) client-ip=77.46.215.254;
Authentication-Results: gmr-mx.google.com;
       spf=temperror (google.com: error in processing during lookup of ksenija@ksenija-aspire-v3-572: DNS timeout) smtp.mail=ksenija@ksenija-aspire-v3-572;
       dmarc=fail (p=NONE dis=NONE) header.from=gmail.com
Received: from ksenija-Aspire-V3-572 (localhost [127.0.0.1])
	by ksenija-Aspire-V3-572 (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id t1J4Iloq002887;
	Thu, 19 Feb 2015 05:18:47 +0100
Received: (from ksenija@localhost)
	by ksenija-Aspire-V3-572 (8.14.4/8.14.4/Submit) id t1J4IlrM002882;
	Thu, 19 Feb 2015 05:18:47 +0100
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v3] Staging: media: vino: Replace printk() and dprintk() with dev_dbg()
Date: Thu, 19 Feb 2015 05:17:45 +0100
Message-Id: <1424319465-2828-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Making variants of existing macros is against kernel coding style.
This patch removes all definitions made by macro dprintk() and
replaces them with dev_dbg().

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v3: Added a pointer to a structure in dev_dbg() as the first
    argument.
v2: Removed KERN_ERR and KERN_INFO from dev_dbg() argument list.

 drivers/staging/media/vino/saa7191.c | 52 ++++++++++++++++++------------------
 1 file changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/media/vino/saa7191.c b/drivers/staging/media/vino/saa7191.c
index 2aa68c6..29e3296 100644
--- a/drivers/staging/media/vino/saa7191.c
+++ b/drivers/staging/media/vino/saa7191.c
@@ -110,7 +110,7 @@ static int saa7191_read_status(struct v4l2_subdev *sd, u8 *value)
 
 	ret = i2c_master_recv(client, value, 1);
 	if (ret < 0) {
-		dev_dbg("saa7191_read_status(): read failed\n");
+		dev_dbg(sd->dev, "saa7191_read_status(): read failed\n");
 		return ret;
 	}
 
@@ -141,7 +141,7 @@ static int saa7191_write_block(struct v4l2_subdev *sd,
 
 	ret = i2c_master_send(client, data, length);
 	if (ret < 0) {
-		dev_dbg("saa7191_write_block(): "
+		dev_dbg(sd->dev, "saa7191_write_block(): "
 		       "write failed\n");
 		return ret;
 	}
@@ -224,9 +224,9 @@ static int saa7191_s_std(struct v4l2_subdev *sd, v4l2_std_id norm)
 
 	decoder->norm = norm;
 
-	dev_dbg(&sd->dev, "ctl3: %02x stdc: %02x chcv: %02x\n", ctl3,
+	dev_dbg(sd->dev, "ctl3: %02x stdc: %02x chcv: %02x\n", ctl3,
 		stdc, chcv);
-	dev_dbg("norm: %llx\n", norm);
+	dev_dbg(sd->dev, "norm: %llx\n", norm);
 
 	return 0;
 }
@@ -235,21 +235,21 @@ static int saa7191_wait_for_signal(struct v4l2_subdev *sd, u8 *status)
 {
 	int i = 0;
 
-	dev_dbg("Checking for signal...\n");
+	dev_dbg(sd->dev, "Checking for signal...\n");
 
 	for (i = 0; i < SAA7191_SYNC_COUNT; i++) {
 		if (saa7191_read_status(sd, status))
 			return -EIO;
 
 		if (((*status) & SAA7191_STATUS_HLCK) == 0) {
-			dev_dbg("Signal found\n");
+			dev_dbg(sd->dev, "Signal found\n");
 			return 0;
 		}
 
 		msleep(SAA7191_SYNC_DELAY);
 	}
 
-	dev_dbg("No signal\n");
+	dev_dbg(sd->dev, "No signal\n");
 
 	return -EBUSY;
 }
@@ -263,7 +263,7 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
 	v4l2_std_id old_norm = decoder->norm;
 	int err = 0;
 
-	dev_dbg("SAA7191 extended signal auto-detection...\n");
+	dev_dbg(sd->dev, "SAA7191 extended signal auto-detection...\n");
 
 	*norm &= V4L2_STD_NTSC | V4L2_STD_PAL | V4L2_STD_SECAM;
 	stdc &= ~SAA7191_STDC_SECS;
@@ -295,13 +295,13 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
 
 	if (status & SAA7191_STATUS_FIDT) {
 		/* 60Hz signal -> NTSC */
-		dev_dbg("60Hz signal: NTSC\n");
+		dev_dbg(sd->dev, "60Hz signal: NTSC\n");
 		*norm &= V4L2_STD_NTSC;
 		return 0;
 	}
 
 	/* 50Hz signal */
-	dev_dbg("50Hz signal: Trying PAL...\n");
+	dev_dbg(sd->dev, "50Hz signal: Trying PAL...\n");
 
 	/* try PAL first */
 	err = saa7191_s_std(sd, V4L2_STD_PAL);
@@ -316,19 +316,19 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
 
 	/* not 50Hz ? */
 	if (status & SAA7191_STATUS_FIDT) {
-		dev_dbg("No 50Hz signal\n");
+		dev_dbg(sd->dev, "No 50Hz signal\n");
 		saa7191_s_std(sd, old_norm);
 		*norm = V4L2_STD_UNKNOWN;
 		return 0;
 	}
 
 	if (status & SAA7191_STATUS_CODE) {
-		dev_dbg("PAL\n");
+		dev_dbg(sd->dev, "PAL\n");
 		*norm &= V4L2_STD_PAL;
 		return saa7191_s_std(sd, old_norm);
 	}
 
-	dev_dbg("No color detected with PAL - Trying SECAM...\n");
+	dev_dbg(sd->dev, "No color detected with PAL - Trying SECAM...\n");
 
 	/* no color detected ? -> try SECAM */
 	err = saa7191_s_std(sd, V4L2_STD_SECAM);
@@ -343,19 +343,19 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
 
 	/* not 50Hz ? */
 	if (status & SAA7191_STATUS_FIDT) {
-		dev_dbg("No 50Hz signal\n");
+		dev_dbg(sd->dev, "No 50Hz signal\n");
 		*norm = V4L2_STD_UNKNOWN;
 		goto out;
 	}
 
 	if (status & SAA7191_STATUS_CODE) {
 		/* Color detected -> SECAM */
-		dev_dbg("SECAM\n");
+		dev_dbg(sd->dev, "SECAM\n");
 		*norm &= V4L2_STD_SECAM;
 		return saa7191_s_std(sd, old_norm);
 	}
 
-	dev_dbg("No color detected with SECAM - Going back to PAL.\n");
+	dev_dbg(sd->dev, "No color detected with SECAM - Going back to PAL.\n");
 	*norm = V4L2_STD_UNKNOWN;
 
 out:
@@ -366,30 +366,30 @@ static int saa7191_autodetect_norm(struct v4l2_subdev *sd)
 {
 	u8 status;
 
-	dev_dbg("SAA7191 signal auto-detection...\n");
+	dev_dbg(sd->dev, "SAA7191 signal auto-detection...\n");
 
-	dev_dbg("Reading status...\n");
+	dev_dbg(sd->dev, "Reading status...\n");
 
 	if (saa7191_read_status(sd, &status))
 		return -EIO;
 
-	dev_dbg("Checking for signal...\n");
+	dev_dbg(sd->dev, "Checking for signal...\n");
 
 	/* no signal ? */
 	if (status & SAA7191_STATUS_HLCK) {
-		dev_dbg("No signal\n");
+		dev_dbg(sd->dev, "No signal\n");
 		return -EBUSY;
 	}
 
-	dev_dbg("Signal found\n");
+	dev_dbg(sd->dev, "Signal found\n");
 
 	if (status & SAA7191_STATUS_FIDT) {
 		/* 60hz signal -> NTSC */
-		dev_dbg("NTSC\n");
+		dev_dbg(sd->dev, "NTSC\n");
 		return saa7191_s_std(sd, V4L2_STD_NTSC);
 	} else {
 		/* 50hz signal -> PAL */
-		dev_dbg("PAL\n");
+		dev_dbg(sd->dev, "PAL\n");
 		return saa7191_s_std(sd, V4L2_STD_PAL);
 	}
 }
@@ -600,18 +600,18 @@ static int saa7191_probe(struct i2c_client *client,
 
 	err = saa7191_write_block(sd, sizeof(initseq), initseq);
 	if (err) {
-		dev_dbg("SAA7191 initialization failed\n");
+		dev_dbg(sd->dev, "SAA7191 initialization failed\n");
 		return err;
 	}
 
-	dev_dbg("SAA7191 initialized\n");
+	dev_dbg(sd->dev, "SAA7191 initialized\n");
 
 	decoder->input = SAA7191_INPUT_COMPOSITE;
 	decoder->norm = V4L2_STD_PAL;
 
 	err = saa7191_autodetect_norm(sd);
 	if (err && (err != -EBUSY))
-		dev_dbg("SAA7191: Signal auto-detection failed\n");
+		dev_dbg(sd->dev, "SAA7191: Signal auto-detection failed\n");
 
 	return 0;
 }
-- 
1.9.1


