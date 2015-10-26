X-GM-THRID: 6209942832976756736
X-Received: by 10.31.54.198 with SMTP id d189mr29648976vka.6.1445864988795;
        Mon, 26 Oct 2015 06:09:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.39.134 with SMTP id n128ls745038ion.52.gmail; Mon, 26 Oct
 2015 06:09:48 -0700 (PDT)
X-Received: by 10.107.10.153 with SMTP id 25mr25574931iok.3.1445864988470;
        Mon, 26 Oct 2015 06:09:48 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id zg1si3549782pbb.2.2015.10.26.06.09.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 06:09:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id fv9so196876112pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 06:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=BmNNxRf+2QnKc454ctmB22J33KXTw80DyUK8RDEe6uM=;
        b=VHHrkf9J0X62oPM1YbpxGJuZc3+5WHNWrOU202KAlnRdTYTw355FVIC1BI5wmYMLxn
         0Y4chArBaKbN4bhEMFuha3G1WDTOYp3AXtaX3MXBU9ET+zpPDUa3M/CAkL060AXw3Kyo
         wBIjKK/kcZzns8A+pvd/NrXfS45/92rxWGyWuIo0n3HD3BgijJO2O5SQNctKPFkMUw10
         2P/L1j74yX0FISt7JZxhGhzrjVnYH7emkbiqT/iw4XV6QpPFhBBNxaYuyo6X3dgchvbF
         RCzz24HrX+rFtBMnwnO4/OdxtQlilj6J2RwG6PH6XJKdmCZfFovKwBvqINFbFShcDSuN
         QHRQ==
X-Received: by 10.66.100.165 with SMTP id ez5mr22458941pab.103.1445864988333;
        Mon, 26 Oct 2015 06:09:48 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id qn5sm34181086pac.41.2015.10.26.06.09.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 06:09:47 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/6] staging: media: omap4iss: Fixes NULL comparison
Date: Mon, 26 Oct 2015 06:09:27 -0700
Message-Id: <93581b10b5a0b2798de7f9d52110bf214901761a.1445864494.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>

This patch fixes the checkpatch issue:

CHECK: Comparison to NULL could be written

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/media/omap4iss/iss.c         |   28 +++++++++++++-------------
 drivers/staging/media/omap4iss/iss_csi2.c    |    6 +++---
 drivers/staging/media/omap4iss/iss_ipipe.c   |    4 ++--
 drivers/staging/media/omap4iss/iss_ipipeif.c |    6 +++---
 drivers/staging/media/omap4iss/iss_resizer.c |    6 +++---
 drivers/staging/media/omap4iss/iss_video.c   |   18 ++++++++---------
 6 files changed, 34 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index 9bfb725..104fc58 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -151,7 +151,7 @@ int omap4iss_get_external_info(struct iss_pipeline *pipe,
 
 	ctrl = v4l2_ctrl_find(pipe->external->ctrl_handler,
 			      V4L2_CID_PIXEL_RATE);
-	if (ctrl == NULL) {
+	if (!ctrl) {
 		dev_warn(iss->dev, "no pixel rate control in subdev %s\n",
 			 pipe->external->name);
 		return -EPIPE;
@@ -422,7 +422,7 @@ static int iss_pipeline_pm_power_one(struct media_entity *entity, int change)
 	subdev = media_entity_type(entity) == MEDIA_ENT_T_V4L2_SUBDEV
 	       ? media_entity_to_v4l2_subdev(entity) : NULL;
 
-	if (entity->use_count == 0 && change > 0 && subdev != NULL) {
+	if (entity->use_count == 0 && change > 0 && subdev) {
 		int ret;
 
 		ret = v4l2_subdev_call(subdev, core, s_power, 1);
@@ -433,7 +433,7 @@ static int iss_pipeline_pm_power_one(struct media_entity *entity, int change)
 	entity->use_count += change;
 	WARN_ON(entity->use_count < 0);
 
-	if (entity->use_count == 0 && change < 0 && subdev != NULL)
+	if (entity->use_count == 0 && change < 0 && subdev)
 		v4l2_subdev_call(subdev, core, s_power, 0);
 
 	return 0;
@@ -590,7 +590,7 @@ static int iss_pipeline_disable(struct iss_pipeline *pipe,
 			break;
 
 		pad = media_entity_remote_pad(pad);
-		if (pad == NULL ||
+		if (!pad ||
 		    media_entity_type(pad->entity) != MEDIA_ENT_T_V4L2_SUBDEV)
 			break;
 
@@ -658,7 +658,7 @@ static int iss_pipeline_enable(struct iss_pipeline *pipe,
 			break;
 
 		pad = media_entity_remote_pad(pad);
-		if (pad == NULL ||
+		if (!pad ||
 		    media_entity_type(pad->entity) != MEDIA_ENT_T_V4L2_SUBDEV)
 			break;
 
@@ -1050,7 +1050,7 @@ struct iss_device *omap4iss_get(struct iss_device *iss)
 {
 	struct iss_device *__iss = iss;
 
-	if (iss == NULL)
+	if (!iss)
 		return NULL;
 
 	mutex_lock(&iss->iss_mutex);
@@ -1065,7 +1065,7 @@ struct iss_device *omap4iss_get(struct iss_device *iss)
 	iss_enable_interrupts(iss);
 
 out:
-	if (__iss != NULL)
+	if (__iss)
 		iss->ref_count++;
 	mutex_unlock(&iss->iss_mutex);
 
@@ -1080,7 +1080,7 @@ out:
  */
 void omap4iss_put(struct iss_device *iss)
 {
-	if (iss == NULL)
+	if (!iss)
 		return;
 
 	mutex_lock(&iss->iss_mutex);
@@ -1142,7 +1142,7 @@ iss_register_subdev_group(struct iss_device *iss,
 	struct v4l2_subdev *sensor = NULL;
 	unsigned int first;
 
-	if (board_info->board_info == NULL)
+	if (!board_info->board_info)
 		return NULL;
 
 	for (first = 1; board_info->board_info; ++board_info, first = 0) {
@@ -1150,7 +1150,7 @@ iss_register_subdev_group(struct iss_device *iss,
 		struct i2c_adapter *adapter;
 
 		adapter = i2c_get_adapter(board_info->i2c_adapter_id);
-		if (adapter == NULL) {
+		if (!adapter) {
 			dev_err(iss->dev,
 				"%s: Unable to get I2C adapter %d for device %s\n",
 				__func__, board_info->i2c_adapter_id,
@@ -1160,7 +1160,7 @@ iss_register_subdev_group(struct iss_device *iss,
 
 		subdev = v4l2_i2c_new_subdev_board(&iss->v4l2_dev, adapter,
 				board_info->board_info, NULL);
-		if (subdev == NULL) {
+		if (!subdev) {
 			dev_err(iss->dev, "Unable to register subdev %s\n",
 				board_info->board_info->type);
 			continue;
@@ -1228,7 +1228,7 @@ static int iss_register_entities(struct iss_device *iss)
 		unsigned int pad;
 
 		sensor = iss_register_subdev_group(iss, subdevs->subdevs);
-		if (sensor == NULL)
+		if (!sensor)
 			continue;
 
 		sensor->host_priv = subdevs;
@@ -1369,7 +1369,7 @@ static int iss_probe(struct platform_device *pdev)
 	unsigned int i;
 	int ret;
 
-	if (pdata == NULL)
+	if (!pdata)
 		return -EINVAL;
 
 	iss = devm_kzalloc(&pdev->dev, sizeof(*iss), GFP_KERNEL);
@@ -1406,7 +1406,7 @@ static int iss_probe(struct platform_device *pdev)
 	if (ret < 0)
 		goto error;
 
-	if (omap4iss_get(iss) == NULL)
+	if (!omap4iss_get(iss))
 		goto error;
 
 	ret = iss_reset(iss);
diff --git a/drivers/staging/media/omap4iss/iss_csi2.c b/drivers/staging/media/omap4iss/iss_csi2.c
index bc83f82..c6e6d47 100644
--- a/drivers/staging/media/omap4iss/iss_csi2.c
+++ b/drivers/staging/media/omap4iss/iss_csi2.c
@@ -658,7 +658,7 @@ static void csi2_isr_buffer(struct iss_csi2_device *csi2)
 	 * Let video queue operation restart engine if there is an underrun
 	 * condition.
 	 */
-	if (buffer == NULL)
+	if (!buffer)
 		return;
 
 	csi2_set_outaddr(csi2, buffer->iss_addr);
@@ -979,7 +979,7 @@ static int csi2_get_format(struct v4l2_subdev *sd,
 	struct v4l2_mbus_framefmt *format;
 
 	format = __csi2_get_format(csi2, cfg, fmt->pad, fmt->which);
-	if (format == NULL)
+	if (!format)
 		return -EINVAL;
 
 	fmt->format = *format;
@@ -1001,7 +1001,7 @@ static int csi2_set_format(struct v4l2_subdev *sd,
 	struct v4l2_mbus_framefmt *format;
 
 	format = __csi2_get_format(csi2, cfg, fmt->pad, fmt->which);
-	if (format == NULL)
+	if (!format)
 		return -EINVAL;
 
 	csi2_try_format(csi2, cfg, fmt->pad, &fmt->format, fmt->which);
diff --git a/drivers/staging/media/omap4iss/iss_ipipe.c b/drivers/staging/media/omap4iss/iss_ipipe.c
index f94a592..fcde8a6 100644
--- a/drivers/staging/media/omap4iss/iss_ipipe.c
+++ b/drivers/staging/media/omap4iss/iss_ipipe.c
@@ -320,7 +320,7 @@ static int ipipe_get_format(struct v4l2_subdev *sd,
 	struct v4l2_mbus_framefmt *format;
 
 	format = __ipipe_get_format(ipipe, cfg, fmt->pad, fmt->which);
-	if (format == NULL)
+	if (!format)
 		return -EINVAL;
 
 	fmt->format = *format;
@@ -344,7 +344,7 @@ static int ipipe_set_format(struct v4l2_subdev *sd,
 	struct v4l2_mbus_framefmt *format;
 
 	format = __ipipe_get_format(ipipe, cfg, fmt->pad, fmt->which);
-	if (format == NULL)
+	if (!format)
 		return -EINVAL;
 
 	ipipe_try_format(ipipe, cfg, fmt->pad, &fmt->format, fmt->which);
diff --git a/drivers/staging/media/omap4iss/iss_ipipeif.c b/drivers/staging/media/omap4iss/iss_ipipeif.c
index c0da13d..fcafdbe 100644
--- a/drivers/staging/media/omap4iss/iss_ipipeif.c
+++ b/drivers/staging/media/omap4iss/iss_ipipeif.c
@@ -233,7 +233,7 @@ static void ipipeif_isr_buffer(struct iss_ipipeif_device *ipipeif)
 	ipipeif_write_enable(ipipeif, 0);
 
 	buffer = omap4iss_video_buffer_next(&ipipeif->video_out);
-	if (buffer == NULL)
+	if (!buffer)
 		return;
 
 	ipipeif_set_outaddr(ipipeif, buffer->iss_addr);
@@ -526,7 +526,7 @@ static int ipipeif_get_format(struct v4l2_subdev *sd,
 	struct v4l2_mbus_framefmt *format;
 
 	format = __ipipeif_get_format(ipipeif, cfg, fmt->pad, fmt->which);
-	if (format == NULL)
+	if (!format)
 		return -EINVAL;
 
 	fmt->format = *format;
@@ -550,7 +550,7 @@ static int ipipeif_set_format(struct v4l2_subdev *sd,
 	struct v4l2_mbus_framefmt *format;
 
 	format = __ipipeif_get_format(ipipeif, cfg, fmt->pad, fmt->which);
-	if (format == NULL)
+	if (!format)
 		return -EINVAL;
 
 	ipipeif_try_format(ipipeif, cfg, fmt->pad, &fmt->format, fmt->which);
diff --git a/drivers/staging/media/omap4iss/iss_resizer.c b/drivers/staging/media/omap4iss/iss_resizer.c
index 5030cf3..8035e01 100644
--- a/drivers/staging/media/omap4iss/iss_resizer.c
+++ b/drivers/staging/media/omap4iss/iss_resizer.c
@@ -274,7 +274,7 @@ static void resizer_isr_buffer(struct iss_resizer_device *resizer)
 	resizer_enable(resizer, 0);
 
 	buffer = omap4iss_video_buffer_next(&resizer->video_out);
-	if (buffer == NULL)
+	if (!buffer)
 		return;
 
 	resizer_set_outaddr(resizer, buffer->iss_addr);
@@ -588,7 +588,7 @@ static int resizer_get_format(struct v4l2_subdev *sd,
 	struct v4l2_mbus_framefmt *format;
 
 	format = __resizer_get_format(resizer, cfg, fmt->pad, fmt->which);
-	if (format == NULL)
+	if (!format)
 		return -EINVAL;
 
 	fmt->format = *format;
@@ -612,7 +612,7 @@ static int resizer_set_format(struct v4l2_subdev *sd,
 	struct v4l2_mbus_framefmt *format;
 
 	format = __resizer_get_format(resizer, cfg, fmt->pad, fmt->which);
-	if (format == NULL)
+	if (!format)
 		return -EINVAL;
 
 	resizer_try_format(resizer, cfg, fmt->pad, &fmt->format, fmt->which);
diff --git a/drivers/staging/media/omap4iss/iss_video.c b/drivers/staging/media/omap4iss/iss_video.c
index 40405d8..a98991a 100644
--- a/drivers/staging/media/omap4iss/iss_video.c
+++ b/drivers/staging/media/omap4iss/iss_video.c
@@ -191,7 +191,7 @@ iss_video_remote_subdev(struct iss_video *video, u32 *pad)
 
 	remote = media_entity_remote_pad(&video->pad);
 
-	if (remote == NULL ||
+	if (!remote ||
 	    media_entity_type(remote->entity) != MEDIA_ENT_T_V4L2_SUBDEV)
 		return NULL;
 
@@ -241,7 +241,7 @@ __iss_video_get_format(struct iss_video *video,
 	int ret;
 
 	subdev = iss_video_remote_subdev(video, &pad);
-	if (subdev == NULL)
+	if (!subdev)
 		return -EINVAL;
 
 	memset(&fmt, 0, sizeof(fmt));
@@ -471,7 +471,7 @@ struct iss_buffer *omap4iss_video_buffer_next(struct iss_video *video)
 		return NULL;
 	}
 
-	if (video->type == V4L2_BUF_TYPE_VIDEO_CAPTURE && pipe->input != NULL) {
+	if (video->type == V4L2_BUF_TYPE_VIDEO_CAPTURE && pipe->input) {
 		spin_lock(&pipe->lock);
 		pipe->state &= ~ISS_PIPELINE_STREAM;
 		spin_unlock(&pipe->lock);
@@ -624,7 +624,7 @@ iss_video_try_format(struct file *file, void *fh, struct v4l2_format *format)
 		return -EINVAL;
 
 	subdev = iss_video_remote_subdev(video, &pad);
-	if (subdev == NULL)
+	if (!subdev)
 		return -EINVAL;
 
 	iss_video_pix_to_mbus(&format->fmt.pix, &fmt.format);
@@ -806,7 +806,7 @@ iss_video_streamon(struct file *file, void *fh, enum v4l2_buf_type type)
 		pipe->input = far_end;
 		pipe->output = video;
 	} else {
-		if (far_end == NULL) {
+		if (!far_end) {
 			ret = -EPIPE;
 			goto err_iss_video_check_format;
 		}
@@ -841,7 +841,7 @@ iss_video_streamon(struct file *file, void *fh, enum v4l2_buf_type type)
 	 * to the stream on command. In memory-to-memory mode, it will be
 	 * started when buffers are queued on both the input and output.
 	 */
-	if (pipe->input == NULL) {
+	if (!pipe->input) {
 		unsigned long flags;
 
 		ret = omap4iss_pipeline_set_stream(pipe,
@@ -974,14 +974,14 @@ static int iss_video_open(struct file *file)
 	int ret = 0;
 
 	handle = kzalloc(sizeof(*handle), GFP_KERNEL);
-	if (handle == NULL)
+	if (!handle)
 		return -ENOMEM;
 
 	v4l2_fh_init(&handle->vfh, &video->video);
 	v4l2_fh_add(&handle->vfh);
 
 	/* If this is the first user, initialise the pipeline. */
-	if (omap4iss_get(video->iss) == NULL) {
+	if (!omap4iss_get(video->iss)) {
 		ret = -EBUSY;
 		goto done;
 	}
@@ -1116,7 +1116,7 @@ int omap4iss_video_init(struct iss_video *video, const char *name)
 	mutex_init(&video->stream_lock);
 
 	/* Initialize the video device. */
-	if (video->ops == NULL)
+	if (!video->ops)
 		video->ops = &iss_video_dummy_ops;
 
 	video->video.fops = &iss_video_fops;
-- 
1.7.9.5


