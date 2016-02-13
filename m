X-GM-THRID: 6250911351266344960
X-Received: by 10.107.185.4 with SMTP id j4mr10131513iof.21.1455403713632;
        Sat, 13 Feb 2016 14:48:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.67.100 with SMTP id m4ls480073igt.21.canary; Sat, 13 Feb
 2016 14:48:33 -0800 (PST)
X-Received: by 10.66.141.102 with SMTP id rn6mr9089084pab.26.1455403713203;
        Sat, 13 Feb 2016 14:48:33 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from mail-qk0-x22f.google.com (mail-qk0-x22f.google.com. [2607:f8b0:400d:c09::22f])
        by gmr-mx.google.com with ESMTPS id y131si1556189ywc.0.2016.02.13.14.48.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 14:48:33 -0800 (PST)
Received-SPF: pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c09::22f as permitted sender) client-ip=2607:f8b0:400d:c09::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c09::22f as permitted sender) smtp.mailfrom=thaissa.falbo@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22f.google.com with SMTP id x1so43747309qkc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 14:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=uLze4C9jjcTW5zYL5/gIdudw/bktne3QGAjJd2Dga2I=;
        b=Gb+/GQIiTurK2ocoq8dDzdtyaHymRHZeODtzpv+ImChYDjnuEW9Dff9CxlloE0QP+f
         B7q2Rh7qnNjBC7HY4nirFwxtF4r6wNOaV9LibG/BhegkNb5PIyhd68S9SUYENRmP2SsW
         QUNjuQMTphWN7QdbZMikG1cJOdQJdO/GQT6J6EUoYpmUBi9XNLMXUdErA+fu5p3Ia16Q
         QVhxzHxEOiWUh+SbmTqUBJkOZqE9iksXuHvfOyzQhxFhkKhoWBwJbGceRpiQec4MVCNb
         6G5Cnzz3gGKMW+FiVU2D7GaCErxkRYbilYV39PqosgInSiuA4HMXGQZ6u5WyYR8U9VNo
         ZzbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=uLze4C9jjcTW5zYL5/gIdudw/bktne3QGAjJd2Dga2I=;
        b=UBjr1fka1Tp0QXlZ4NYKTyafXFtA0AKFvnCbmhJ+fU/xdfKzCvTjoKkrHQpRtYfFMy
         qvk/doDC9id56Wm00v29T3JIvtOhOy5+uQ2gpe0RynHTfGaFoZXBj/wSvG2vrC9RieOo
         Cows2s2gnuQEcHv9Im1fVd5YOS6VpMMjNEDmLTYR5MTdWJETycOgeIjJMKCx5rVBqJI+
         +/SiCVqrpb8paIVJmvgsheVJC3Iq09ZDDXB/Plnlqe644bolHxi89YE6QYAUpnVoDibQ
         kP0lOGZdDrbJH07NTghPJQlL0LYNpBGNwBjwY4yY9Amv4Y9kdGtdxj5V/vCh5OQEGadF
         U9PQ==
X-Gm-Message-State: AG10YOQShF8T3R8aE5dQLV/umUwpILqF4n4RZnk3Kt1Qztx2kt4FLP6NuK3gQ3YxdmVpyg==
X-Received: by 10.55.71.76 with SMTP id u73mr11284634qka.6.1455403712971;
        Sat, 13 Feb 2016 14:48:32 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from bb8.rjo.virtua.com.br ([177.142.197.210])
        by smtp.googlemail.com with ESMTPSA id o67sm6111608qki.24.2016.02.13.14.48.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 13 Feb 2016 14:48:32 -0800 (PST)
From: Thaissa Falbo <thaissa.falbo@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: davinci_vpfe: Fixed block comments according to kernel coding style
Date: Sat, 13 Feb 2016 20:47:55 -0200
Message-Id: <1455403675-3630-1-git-send-email-thaissa.falbo@gmail.com>
X-Mailer: git-send-email 2.1.4

Fixed block comments by following the checkpatch warnings.

WARNING: Block comments use * on subsequent lines
WARNING: Block comments use a trailing */ on a separate line



Signed-off-by: Thaissa Falbo <thaissa.falbo@gmail.com>
---
 drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h |  2 +-
 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c    | 12 ++++++++----
 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h    |  5 +++--
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c   |  6 ++++--
 drivers/staging/media/davinci_vpfe/vpfe_video.c        | 18 +++++++++++-------
 5 files changed, 27 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
index 7b7e7b2..3cc9be7 100644
--- a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
+++ b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
@@ -538,7 +538,7 @@ struct vpfe_isif_raw_config {
 };
 
 /**********************************************************************
-      IPIPE API Structures
+*      IPIPE API Structures
 **********************************************************************/
 
 /* IPIPE module configurations */
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
index b1d5e23..de9a1bf 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
@@ -682,8 +682,10 @@ ipipe_set_rgb2rgb_regs(void __iomem *base_addr, unsigned int id,
 	ipipe_clock_enable(base_addr);
 
 	if (id == IPIPE_RGB2RGB_2) {
-		/* For second RGB module, gain integer is 3 bits instead
-		of 4, offset has 11 bits insread of 13 */
+		/*
+		* For second RGB module, gain integer is 3 bits instead
+		* of 4, offset has 11 bits insread of 13
+		*/
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
index 2bf2f7a..957fe01 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
@@ -278,8 +278,9 @@
 /* Resizer Rescale Parameters */
 #define RSZ_EN_A		0x58
 #define RSZ_EN_B		0xe8
-/* offset of the registers to be added with base register of
-   either RSZ0 or RSZ1
+/*
+ * offset of the registers to be added with base register of
+ * either RSZ0 or RSZ1
 */
 #define RSZ_MODE		0x4
 #define RSZ_420			0x8
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
index 3ec7e65..3de5461 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_video.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_video.c
@@ -178,8 +178,9 @@ static int vpfe_update_pipe_state(struct vpfe_video_device *video)
 	if (ret)
 		return ret;
 
-	/* Find out if there is any input video
-	  if yes, it is single shot.
+	/*
+	 * Find out if there is any input video
+	 * if yes, it is single shot.
 	*/
 	if (pipe->input_num == 0) {
 		pipe->state = VPFE_PIPELINE_STREAM_CONTINUOUS;
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


