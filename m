X-GM-THRID: 6250911351266344960
X-Received: by 10.182.33.42 with SMTP id o10mr8969468obi.12.1455509264646;
        Sun, 14 Feb 2016 20:07:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.90 with SMTP id 87ls1352443ioi.36.gmail; Sun, 14 Feb
 2016 20:07:44 -0800 (PST)
X-Received: by 10.50.138.73 with SMTP id qo9mr4361983igb.6.1455509264200;
        Sun, 14 Feb 2016 20:07:44 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from mail-qk0-x242.google.com (mail-qk0-x242.google.com. [2607:f8b0:400d:c09::242])
        by gmr-mx.google.com with ESMTPS id i133si1977051ywe.7.2016.02.14.20.07.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 20:07:44 -0800 (PST)
Received-SPF: pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) client-ip=2607:f8b0:400d:c09::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=thaissa.falbo@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x242.google.com with SMTP id q184so5011720qkb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 20:07:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=eQqskU3XMQvynQknmSycHQqenqT8wkfbNY95OddsHLw=;
        b=Ht83aspr/XtbgL5I6m3I0GTb0ifw04zZ1pSBuxdWluhvVf240l2TqnrqihAXxgYEgK
         YX3vziAKNAo8XE30DTvvY4afMS8bsdpmtonojy2AfA3SxQ5hmb0Xjufy49l0g+9HLQhY
         287xtM+eIANaBgMt14nqEiJwVU94P3gR0kEs7WiXoQeLmV2tAN65gwE7tSyye//fXafW
         yFheygb+ZeJKPXeA2C/1mDYuSoxRLYVF3n9Ka0H5yUyn8mR18/iPtobPvfPD4UUZt3pI
         N7oA0H/cAntVLG7/+PP4j3RE0FDln8ERidF94Jpgg83cp/nj8Ez4+KZC4zA/aJFPh7C0
         DPUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=eQqskU3XMQvynQknmSycHQqenqT8wkfbNY95OddsHLw=;
        b=FdOCUFJYadu6dyyYURprrzNUfz4WcabuaptodKC2snkC+xqlZy5iGApzBotremqW09
         7dhGqGKI0+n4jD2ei+6jxSi+hRWiQaskvJKAbtVOUTvoZpH66k9n41wBkw9f4U4uB76Y
         tjo4w8SF39EIJi0Cq7sUlEaeHXt0ER6XlAIC65HeQsvc5JxLiqxnzA3NsJtALdXFeeeZ
         CLqdeOPQiZNUE1T191N9A9OfCwhHv7LM6Vpd545gHCgDg2QHC8q5rVSYsKy0ZnA8LVpV
         //IfFVxh+r1Yt8SPH0Tzi8RFxTiJHCzjCRx5ylCyAtH9D+QY/2FOGjkXqivAe6y9OIl8
         DuYw==
X-Gm-Message-State: AG10YOSSyjJYi/Vhvoyp0WeUW617P64cZ1js3sYqbhMnQJgylgL45Ux5//e+5K5V64aXWA==
X-Received: by 10.55.207.217 with SMTP id v86mr17930765qkl.16.1455509263966;
        Sun, 14 Feb 2016 20:07:43 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from bb8 ([177.142.197.210])
        by smtp.gmail.com with ESMTPSA id z82sm10376113qhd.26.2016.02.14.20.07.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 20:07:43 -0800 (PST)
Date: Mon, 15 Feb 2016 02:07:41 -0200
From: Thaissa Falbo <thaissa.falbo@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging:media:davinci_vpfe: Fixed block comments
 according to kernel coding style
Message-ID: <20160215040741.GA3412@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Fixed block comments by following the checkpatch warnings

WARNING: Block comments use * on subsequent lines
WARNING: Block comments use a trailing */ on separate line


Signed-off-by: Thaissa Falbo <thaissa.falbo@gmail.com>
---
Changes in v3:
 - Moved version comments to the right place

 .../staging/media/davinci_vpfe/davinci_vpfe_user.h |  4 ++--
 .../staging/media/davinci_vpfe/dm365_ipipe_hw.c    | 12 ++++++++----
 .../staging/media/davinci_vpfe/dm365_ipipe_hw.h    |  7 ++++---
 .../staging/media/davinci_vpfe/vpfe_mc_capture.c   |  6 ++++--
 drivers/staging/media/davinci_vpfe/vpfe_video.c    | 22 +++++++++++++---------
 5 files changed, 31 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
index 7b7e7b2..f4f35c9 100644
--- a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
+++ b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
@@ -538,8 +538,8 @@ struct vpfe_isif_raw_config {
 };
 
 /**********************************************************************
-      IPIPE API Structures
-**********************************************************************/
+ *	IPIPE API Structures
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
index 3ec7e65..933ad49 100644
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
@@ -529,10 +530,11 @@ static int vpfe_release(struct file *file)
 	if (fh->io_allowed) {
 		if (video->started) {
 			vpfe_stop_capture(video);
-			/* mark pipe state as stopped in vpfe_release(),
-			   as app might call streamon() after streamoff()
-			   in which case driver has to start streaming.
-			*/
+			/*
+			 * mark pipe state as stopped in vpfe_release(),
+			 * as app might call streamon() after streamoff()
+			 * in which case driver has to start streaming.
+			 */
 			video->pipe.state = VPFE_PIPELINE_STREAM_STOPPED;
 			vb2_streamoff(&video->buffer_queue,
 				      video->buffer_queue.type);
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


