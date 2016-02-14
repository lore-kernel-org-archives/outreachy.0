X-GM-THRID: 6250911351266344960
X-Received: by 10.66.139.138 with SMTP id qy10mr10651229pab.46.1455448332182;
        Sun, 14 Feb 2016 03:12:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.88.50 with SMTP id s47ls2849751qgd.34.gmail; Sun, 14 Feb
 2016 03:12:11 -0800 (PST)
X-Received: by 10.31.11.75 with SMTP id 72mr10760238vkl.2.1455448331327;
        Sun, 14 Feb 2016 03:12:11 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from mail-qg0-x22c.google.com (mail-qg0-x22c.google.com. [2607:f8b0:400d:c04::22c])
        by gmr-mx.google.com with ESMTPS id t198si1670091ywe.3.2016.02.14.03.12.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 03:12:11 -0800 (PST)
Received-SPF: pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) client-ip=2607:f8b0:400d:c04::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) smtp.mailfrom=thaissa.falbo@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22c.google.com with SMTP id b35so93181026qge.0
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 03:12:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=CnNNUt2v1J9ybTqFES5Qpo2CpqgpQurOVMv4S+zAq+U=;
        b=d4hl1Omhnz6OcpM2FhbZEl1tz9eY+5pxPq2Ot8FoXWBkmljvbR/N+GEEA5LvANqzSO
         jZMZsUuYhFWYaloZ+VV/4lv/is0eDVyyUZ1BQpw9YPKvz4ey5hxgZP0R2lFpkEKkOCio
         vluNTqBou9HhIqo+CoqtswrlcLvD0WzZomMDUMC+3GjnGV5lcnXmi5btdaFrNwDMPe75
         sTsXhjEKau2PlFw30fegmfjdXknwg0WS+5dnCLV9xujGoUbasedHPPCVykKFKAMWUGmC
         4LW6AkkuLsCtX+gnpK3WNlIvQXUQyiZAfGlEDpdVMno1we0Q7wtqYfoIw8aAwyYjMFr2
         KQiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=CnNNUt2v1J9ybTqFES5Qpo2CpqgpQurOVMv4S+zAq+U=;
        b=F2MnxJckd09EKW3fLFKnFX6jYjkeMtlBu7CBPCb+PWqF1Lp/wHi1TtNq3I9MHHwJWR
         q+22RfKune0EKpaKFCVNP0QQMZht7E8uh55u8mpz1fyEslq+Ztz7P5NMzPOWKpYgo/X1
         jdxz+MYYJho+e3ZTpCsEYJvJCOUphBudYZxcfoLKn5/pvIYVOx/M20Sxkfp0p4/tLyID
         HSwiAtL1LPQTsDZqNJlm8Op8CodUlUZS/m3tWsjybtVBhdAQWBQexInOslllixnKqL63
         lX/lFMwkzn80I3Pdf+XcHUXJxkdTBKf+0w2ezwaBJeo/PJWzj9FZrM/7Vg3CvEa05mF0
         G/Kg==
X-Gm-Message-State: AG10YOTDcb8sm+ttChoI5utP+R6lnij/HYFJtwsmSzwqP5nJwBrtHV8aFFzIDBHACVFP+w==
X-Received: by 10.140.105.97 with SMTP id b88mr13417048qgf.74.1455448331141;
        Sun, 14 Feb 2016 03:12:11 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from bb8.rjo.virtua.com.br ([177.142.197.210])
        by smtp.googlemail.com with ESMTPSA id 47sm9105622qgj.11.2016.02.14.03.12.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 03:12:10 -0800 (PST)
From: Thaissa Falbo <thaissa.falbo@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCHi v2] staging:media:davinci_vpfe: Fixed block comments according to kernel coding style
Date: Sun, 14 Feb 2016 09:12:07 -0200
Message-Id: <1455448327-4572-1-git-send-email-thaissa.falbo@gmail.com>
X-Mailer: git-send-email 2.1.4

In v2:
Lined up the *s, according to Julia's instructions

In v1:
Fixed block comments by following the checkpatch warnings

WARNING: Block comments use * on subsequent lines
WARNING: Block comments use a trailing */ on separate line


Signed-off-by: Thaissa Falbo <thaissa.falbo@gmail.com>
---
 .../staging/media/davinci_vpfe/davinci_vpfe_user.h   |  4 ++--
 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c  | 12 ++++++++----
 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h  |  7 ++++---
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c |  6 ++++--
 drivers/staging/media/davinci_vpfe/vpfe_video.c      | 20 ++++++++++++--------
 5 files changed, 30 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
index 7b7e7b2..0425a1b 100644
--- a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
+++ b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
@@ -538,8 +538,8 @@ struct vpfe_isif_raw_config {
 };
 
 /**********************************************************************
-      IPIPE API Structures
-**********************************************************************/
+ * IPIPE API Structures
+ **********************************************************************/
 
 /* IPIPE module configurations */
 
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
index b1d5e23..0792fbd 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
@@ -682,8 +682,10 @@ ipipe_set_rgb2rgb_regs(void __iomem *base_addr, unsigned int id,
 	ipipe_clock_enable(base_addr);
 
 	if (id == IPIPE_RGB2RGB_2) {
-		/* For second RGB module, gain integer is 3 bits instead
-		of 4, offset has 11 bits insread of 13 */
+		/*
+		 * For second RGB module, gain integer is 3 bits instead
+		 * of 4, offset has 11 bits insread of 13
+		 */
 		offset = RGB2_MUL_BASE;
 		integ_mask = 0x7;
 		offset_mask = RGB2RGB_2_OFST_MASK;
@@ -792,8 +794,10 @@ ipipe_set_3d_lut_regs(void __iomem *base_addr, void __iomem *isp5_base_addr,
 	/* valied table */
 	tbl = lut_3d->table;
 	for (i = 0; i < VPFE_IPIPE_MAX_SIZE_3D_LUT; i++) {
-		/* Each entry has 0-9 (B), 10-19 (G) and
-		20-29 R values */
+		/*
+		 * Each entry has 0-9 (B), 10-19 (G) and
+		 * 20-29 R values
+		 */
 		val = tbl[i].b & D3_LUT_ENTRY_MASK;
 		val |= (tbl[i].g & D3_LUT_ENTRY_MASK) <<
 			 D3_LUT_ENTRY_G_SHIFT;
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
index 2bf2f7a..7ee1572 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
@@ -278,9 +278,10 @@
 /* Resizer Rescale Parameters */
 #define RSZ_EN_A		0x58
 #define RSZ_EN_B		0xe8
-/* offset of the registers to be added with base register of
-   either RSZ0 or RSZ1
-*/
+/*
+ * offset of the registers to be added with base register of
+ * either RSZ0 or RSZ1
+ */
 #define RSZ_MODE		0x4
 #define RSZ_420			0x8
 #define RSZ_I_VPS		0xc
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
index ec46f36..bf077f8 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
@@ -442,8 +442,10 @@ static int vpfe_register_entities(struct vpfe_device *vpfe_dev)
 
 	/* create links now, starting with external(i2c) entities */
 	for (i = 0; i < vpfe_dev->num_ext_subdevs; i++)
-		/* if entity has no pads (ex: amplifier),
-		   cant establish link */
+		/*
+		 * if entity has no pads (ex: amplifier),
+		 * cant establish link
+		 */
 		if (vpfe_dev->sd[i]->entity.num_pads) {
 			ret = media_create_pad_link(&vpfe_dev->sd[i]->entity,
 				0, &vpfe_dev->vpfe_isif.subdev.entity,
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.c b/drivers/staging/media/davinci_vpfe/vpfe_video.c
index 3ec7e65..e0658bc 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_video.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_video.c
@@ -178,9 +178,10 @@ static int vpfe_update_pipe_state(struct vpfe_video_device *video)
 	if (ret)
 		return ret;
 
-	/* Find out if there is any input video
-	  if yes, it is single shot.
-	*/
+	/*
+	 * Find out if there is any input video
+	 * if yes, it is single shot.
+	 */
 	if (pipe->input_num == 0) {
 		pipe->state = VPFE_PIPELINE_STREAM_CONTINUOUS;
 		ret = vpfe_update_current_ext_subdev(video);
@@ -529,9 +530,10 @@ static int vpfe_release(struct file *file)
 	if (fh->io_allowed) {
 		if (video->started) {
 			vpfe_stop_capture(video);
-			/* mark pipe state as stopped in vpfe_release(),
-			   as app might call streamon() after streamoff()
-			   in which case driver has to start streaming.
+			/*
+			 * mark pipe state as stopped in vpfe_release(),
+			 * as app might call streamon() after streamoff()
+			 * in which case driver has to start streaming.
 			*/
 			video->pipe.state = VPFE_PIPELINE_STREAM_STOPPED;
 			vb2_streamoff(&video->buffer_queue,
@@ -672,8 +674,10 @@ static int vpfe_enum_fmt(struct file *file, void  *priv,
 
 	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_enum_fmt\n");
 
-	/* since already subdev pad format is set,
-	only one pixel format is available */
+	/*
+	 * since already subdev pad format is set,
+	 * only one pixel format is available
+	 */
 	if (fmt->index > 0) {
 		v4l2_err(&vpfe_dev->v4l2_dev, "Invalid index\n");
 		return -EINVAL;
-- 
2.1.4


