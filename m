X-GM-THRID: 612983898112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d24031e2a704191
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.144.130 with SMTP id sm2mr788300lbb.9.1424369081251;
        Thu, 19 Feb 2015 10:04:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.135 with SMTP id ay7ls344428wib.13.gmail; Thu, 19 Feb
 2015 10:04:40 -0800 (PST)
X-Received: by 10.194.142.174 with SMTP id rx14mr771236wjb.4.1424369080800;
        Thu, 19 Feb 2015 10:04:40 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id l8si158807wia.0.2015.02.19.10.04.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 10:04:40 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x234.google.com with SMTP id h11so11009548wiw.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 10:04:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=VccoGVIXS5vBxTrRwR8inMz4W7V8yhls/zHW8betqnI=;
        b=NXOYeBghHv5OSBGXahvQZ7lJqh+T8FVR9MLQdQdcSmktiSQp6cLYAm9az+FkiNGZnl
         fCM4lzs3M1y4cVAdeQoDQM5rzxDkgqP8/trkCH/j6LsxJv/CHfeGs2w68Io/mu3PiyMy
         44LyDdnAdDtSFHlSXP8O7aRZbEZfSQoiVwv8JnZlu1DITqlg0ucL1J2aLSQs54YzDarD
         E/4jNm1h0MZPx25NkZ7fvjv5vVm0cmqrvvyQpEYN7xsuX0OtoMzhOgNx384YW8HCU5Bb
         in1Cj9J7YEEDyHf2WZberbBDnFGrJZM/KncN9tVZrN239lgInZd3tI5wESN1pra3CULb
         DdIg==
X-Received: by 10.180.21.162 with SMTP id w2mr17519210wie.42.1424369080548;
        Thu, 19 Feb 2015 10:04:40 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id m9sm21526121wiz.24.2015.02.19.10.04.39
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 10:04:39 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v4] Staging: media: vino: Replace printk() and dprintk() with dev_dbg()
Date: Thu, 19 Feb 2015 19:04:28 +0100
Message-Id: <1424369068-6070-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Making variants of existing macros is against kernel coding style.
This patch removes all definitions made by macro dprintk() and replaces
them with dev dbg().

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v4: Merged all commits into one.
v3: Added a pointer to a device structure in dev_dbg() as the
    first argument.
v2: Removed KERN_ERR and KERN_INFO from dev_dbg() argument list.

 drivers/staging/media/vino/saa7191.c | 58 ++++++++++++++++--------------------
 1 file changed, 26 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/media/vino/saa7191.c b/drivers/staging/media/vino/saa7191.c
index 8e96992..29e3296 100644
--- a/drivers/staging/media/vino/saa7191.c
+++ b/drivers/staging/media/vino/saa7191.c
@@ -33,13 +33,7 @@ MODULE_AUTHOR("Mikael Nousiainen <tmnousia@cc.hut.fi>");
 MODULE_LICENSE("GPL");
 
 
-// #define SAA7191_DEBUG
 
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
+		dev_dbg(sd->dev, "saa7191_read_status(): read failed\n");
 		return ret;
 	}
 
@@ -147,7 +141,7 @@ static int saa7191_write_block(struct v4l2_subdev *sd,
 
 	ret = i2c_master_send(client, data, length);
 	if (ret < 0) {
-		printk(KERN_ERR "SAA7191: saa7191_write_block(): "
+		dev_dbg(sd->dev, "saa7191_write_block(): "
 		       "write failed\n");
 		return ret;
 	}
@@ -230,9 +224,9 @@ static int saa7191_s_std(struct v4l2_subdev *sd, v4l2_std_id norm)
 
 	decoder->norm = norm;
 
-	dprintk("ctl3: %02x stdc: %02x chcv: %02x\n", ctl3,
+	dev_dbg(sd->dev, "ctl3: %02x stdc: %02x chcv: %02x\n", ctl3,
 		stdc, chcv);
-	dprintk("norm: %llx\n", norm);
+	dev_dbg(sd->dev, "norm: %llx\n", norm);
 
 	return 0;
 }
@@ -241,21 +235,21 @@ static int saa7191_wait_for_signal(struct v4l2_subdev *sd, u8 *status)
 {
 	int i = 0;
 
-	dprintk("Checking for signal...\n");
+	dev_dbg(sd->dev, "Checking for signal...\n");
 
 	for (i = 0; i < SAA7191_SYNC_COUNT; i++) {
 		if (saa7191_read_status(sd, status))
 			return -EIO;
 
 		if (((*status) & SAA7191_STATUS_HLCK) == 0) {
-			dprintk("Signal found\n");
+			dev_dbg(sd->dev, "Signal found\n");
 			return 0;
 		}
 
 		msleep(SAA7191_SYNC_DELAY);
 	}
 
-	dprintk("No signal\n");
+	dev_dbg(sd->dev, "No signal\n");
 
 	return -EBUSY;
 }
@@ -269,7 +263,7 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
 	v4l2_std_id old_norm = decoder->norm;
 	int err = 0;
 
-	dprintk("SAA7191 extended signal auto-detection...\n");
+	dev_dbg(sd->dev, "SAA7191 extended signal auto-detection...\n");
 
 	*norm &= V4L2_STD_NTSC | V4L2_STD_PAL | V4L2_STD_SECAM;
 	stdc &= ~SAA7191_STDC_SECS;
@@ -301,13 +295,13 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
 
 	if (status & SAA7191_STATUS_FIDT) {
 		/* 60Hz signal -> NTSC */
-		dprintk("60Hz signal: NTSC\n");
+		dev_dbg(sd->dev, "60Hz signal: NTSC\n");
 		*norm &= V4L2_STD_NTSC;
 		return 0;
 	}
 
 	/* 50Hz signal */
-	dprintk("50Hz signal: Trying PAL...\n");
+	dev_dbg(sd->dev, "50Hz signal: Trying PAL...\n");
 
 	/* try PAL first */
 	err = saa7191_s_std(sd, V4L2_STD_PAL);
@@ -322,19 +316,19 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
 
 	/* not 50Hz ? */
 	if (status & SAA7191_STATUS_FIDT) {
-		dprintk("No 50Hz signal\n");
+		dev_dbg(sd->dev, "No 50Hz signal\n");
 		saa7191_s_std(sd, old_norm);
 		*norm = V4L2_STD_UNKNOWN;
 		return 0;
 	}
 
 	if (status & SAA7191_STATUS_CODE) {
-		dprintk("PAL\n");
+		dev_dbg(sd->dev, "PAL\n");
 		*norm &= V4L2_STD_PAL;
 		return saa7191_s_std(sd, old_norm);
 	}
 
-	dprintk("No color detected with PAL - Trying SECAM...\n");
+	dev_dbg(sd->dev, "No color detected with PAL - Trying SECAM...\n");
 
 	/* no color detected ? -> try SECAM */
 	err = saa7191_s_std(sd, V4L2_STD_SECAM);
@@ -349,19 +343,19 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
 
 	/* not 50Hz ? */
 	if (status & SAA7191_STATUS_FIDT) {
-		dprintk("No 50Hz signal\n");
+		dev_dbg(sd->dev, "No 50Hz signal\n");
 		*norm = V4L2_STD_UNKNOWN;
 		goto out;
 	}
 
 	if (status & SAA7191_STATUS_CODE) {
 		/* Color detected -> SECAM */
-		dprintk("SECAM\n");
+		dev_dbg(sd->dev, "SECAM\n");
 		*norm &= V4L2_STD_SECAM;
 		return saa7191_s_std(sd, old_norm);
 	}
 
-	dprintk("No color detected with SECAM - Going back to PAL.\n");
+	dev_dbg(sd->dev, "No color detected with SECAM - Going back to PAL.\n");
 	*norm = V4L2_STD_UNKNOWN;
 
 out:
@@ -372,30 +366,30 @@ static int saa7191_autodetect_norm(struct v4l2_subdev *sd)
 {
 	u8 status;
 
-	dprintk("SAA7191 signal auto-detection...\n");
+	dev_dbg(sd->dev, "SAA7191 signal auto-detection...\n");
 
-	dprintk("Reading status...\n");
+	dev_dbg(sd->dev, "Reading status...\n");
 
 	if (saa7191_read_status(sd, &status))
 		return -EIO;
 
-	dprintk("Checking for signal...\n");
+	dev_dbg(sd->dev, "Checking for signal...\n");
 
 	/* no signal ? */
 	if (status & SAA7191_STATUS_HLCK) {
-		dprintk("No signal\n");
+		dev_dbg(sd->dev, "No signal\n");
 		return -EBUSY;
 	}
 
-	dprintk("Signal found\n");
+	dev_dbg(sd->dev, "Signal found\n");
 
 	if (status & SAA7191_STATUS_FIDT) {
 		/* 60hz signal -> NTSC */
-		dprintk("NTSC\n");
+		dev_dbg(sd->dev, "NTSC\n");
 		return saa7191_s_std(sd, V4L2_STD_NTSC);
 	} else {
 		/* 50hz signal -> PAL */
-		dprintk("PAL\n");
+		dev_dbg(sd->dev, "PAL\n");
 		return saa7191_s_std(sd, V4L2_STD_PAL);
 	}
 }
@@ -606,18 +600,18 @@ static int saa7191_probe(struct i2c_client *client,
 
 	err = saa7191_write_block(sd, sizeof(initseq), initseq);
 	if (err) {
-		printk(KERN_ERR "SAA7191 initialization failed\n");
+		dev_dbg(sd->dev, "SAA7191 initialization failed\n");
 		return err;
 	}
 
-	printk(KERN_INFO "SAA7191 initialized\n");
+	dev_dbg(sd->dev, "SAA7191 initialized\n");
 
 	decoder->input = SAA7191_INPUT_COMPOSITE;
 	decoder->norm = V4L2_STD_PAL;
 
 	err = saa7191_autodetect_norm(sd);
 	if (err && (err != -EBUSY))
-		printk(KERN_ERR "SAA7191: Signal auto-detection failed\n");
+		dev_dbg(sd->dev, "SAA7191: Signal auto-detection failed\n");
 
 	return 0;
 }
-- 
1.9.1


