X-GM-THRID: 6250911351266344960
X-Received: by 10.66.139.138 with SMTP id qy10mr10606044pab.46.1455447651445;
        Sun, 14 Feb 2016 03:00:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.67.100 with SMTP id m4ls560258igt.21.canary; Sun, 14 Feb
 2016 03:00:51 -0800 (PST)
X-Received: by 10.50.61.132 with SMTP id p4mr7023601igr.0.1455447651100;
        Sun, 14 Feb 2016 03:00:51 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id w126si1521489ywe.6.2016.02.14.03.00.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 03:00:51 -0800 (PST)
Received-SPF: pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=thaissa.falbo@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id q184so4455703qkb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 03:00:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=gd1PrNYkiaSFUWFi2GtR+St833XAai4hhXrp3uWSFxs=;
        b=t6zd5IydcTPqr/d8//Ly6fOoHZdq5XKIKAFW+pBnaR1pkR71LbuEVERfA1hNWvmd2V
         X5Nk4DTsVf+Pt1m7pbcDJci1DkP8QkBIz1ad4qDCG+E78rJR9QYx6sWsKWzwQFzZ9buL
         Qcuscp5R2sK3xSHwlOyJLHUJlbP3qYZFZURQPhcoHbNIwspVCgLhT8cAglAqKCI/C1Nc
         R9N73u2f9pPo/BPvgqfQcSzxnJBNcZ5o4scqQ7Y2ZgRYzvBacJTpEsPsQmV0fjrlpNnF
         KL49GYrE2Ek2bvjdqm4UI/KosmLEBey07kizTT4sNo/hVHNYkAAfFTtoak/UhEsTnERy
         iHUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=gd1PrNYkiaSFUWFi2GtR+St833XAai4hhXrp3uWSFxs=;
        b=iBJDY00E5ywGCJYk51UBDYTEYzdpiQEr7fekCr/VzWpvpLAN2Cjg49O2bKcrvjtjIs
         AVmoZDj+OTXIk0d4SWnx9SGa5Dd5kCjf780KwbqLFBDvsQ56qgyYVbRbteCMxrMHm6+a
         mkMULq7pRv5clGxQiBxInVjRJhBJbwPooP8zSy/oKXr95JUpkVZzMZjMWgoIxQ0fPLyE
         VHZq7H2MCcbV570q3PJTbgCvOmZwTAbjvybXRbN4sKn56beJRg4Pu+yrKo43TzWy22SI
         Y2QwqYUS7B08nAqoTB2lV5yTbw1K3yQegjSCWMWVf4g/5xxM9PSvb+0JFChMVWTWIJ7X
         yQwQ==
X-Gm-Message-State: AG10YOSTppmYXfgLqFSBRDdNfUEfj+qs1nrvJDeas6nMxNiDv2OgwtCDhrFThm1Cq3VNAQ==
X-Received: by 10.55.72.87 with SMTP id v84mr13773676qka.9.1455447650891;
        Sun, 14 Feb 2016 03:00:50 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from bb8.rjo.virtua.com.br ([177.142.197.210])
        by smtp.googlemail.com with ESMTPSA id r6sm9010970qhr.28.2016.02.14.03.00.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 03:00:50 -0800 (PST)
From: Thaissa Falbo <thaissa.falbo@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging:media:davinci_vpfe: Fixed block comments according to kernel coding style
Date: Sun, 14 Feb 2016 09:00:45 -0200
Message-Id: <1455447645-3667-1-git-send-email-thaissa.falbo@gmail.com>
X-Mailer: git-send-email 2.1.4


In v2:
Lined up *s, according to Julia's instructions

In v1:
Fixed block comments by following the checkpatch warnings

WARNING: Block comments use * on subsequent lines
WARNING: Block comments use a trailing */ on separate line



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


