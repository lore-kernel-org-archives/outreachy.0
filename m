X-GM-THRID: 6252666207493685248
X-Received: by 10.129.71.85 with SMTP id u82mr8119739ywa.9.1455812297416;
        Thu, 18 Feb 2016 08:18:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.205 with SMTP id p74ls2397612ioi.11.gmail; Thu, 18 Feb
 2016 08:18:17 -0800 (PST)
X-Received: by 10.50.164.134 with SMTP id yq6mr3616878igb.13.1455812297048;
        Thu, 18 Feb 2016 08:18:17 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from mail-qg0-x229.google.com (mail-qg0-x229.google.com. [2607:f8b0:400d:c04::229])
        by gmr-mx.google.com with ESMTPS id y131si433561ywc.0.2016.02.18.08.18.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 08:18:17 -0800 (PST)
Received-SPF: pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) client-ip=2607:f8b0:400d:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) smtp.mailfrom=thaissa.falbo@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x229.google.com with SMTP id b35so40263578qge.0
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 08:18:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=4xOD6qxa9lH/JU2yCIuQh/J2hgku9K/+A40Q4vtTXEE=;
        b=NOVyU4G2MwvXmMJvVCtWlNcb/GZQgtGuT2c+9RPXGGAISgi7urrFbdaxMdI1zFb4J+
         55+lpTCozh02DYFq8PwtrHVDNjoirvN9AsAn1LaOYU0d66loTt1KheyFiukBqFrvO1/5
         kWtzI6HwgIw6he3fFmKUByu2pwGRjxxcySiIPPQ6OIKCQ/+xGBwCVHca37mr70wdVywz
         V3PlaMsvsVbzLmmhoFgX/KOHP1nfDjWpWNntHDK7ohi4rh6Mh2nhOdXMiQ8L6s/MnPvh
         YOOhpMqbp7tB27Cj6SEJ/QPPUiO3st69rQ4AOe90fOXfCysUEc6Sl6wA8lnknLhdDcDM
         /hAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=4xOD6qxa9lH/JU2yCIuQh/J2hgku9K/+A40Q4vtTXEE=;
        b=aGlHyoOnvS1GAIqhbUeVdcHJsR04l2txNIm9/OtSINTDbjHFFIErpx5fGAQ4tyVEJM
         gVGg6ZreaS1EMPR+TUtvpWG2DXJia6904OyPpb+zsvzHfBoTpDJFnqFKlcNozAQ5BVcj
         dyXi1Zxi+HXI46TjEKaeU5hdcr3imbucEFwPFzrpe59BXsanRnqz0UlxOibkxtEuDVsU
         2+UVwQR8fyoeeilKd/2Zn9Xo/8I+GuLzq/cZCJ8R5bDwLZTyA5WllvOys2vn8FNTI76s
         SvXFbldrVYiqfz4dKYBdpS4XCdXnur0PauVn5Qf1AfFeT9VWDeXzdO03QIEnfGTid7yk
         NHVA==
X-Gm-Message-State: AG10YOQtBd4p4fQeE8hCtM9mjXGHm1ePvH36LJLhH6cX911TpxwxipDMOG8/CKJSXo06rA==
X-Received: by 10.140.23.81 with SMTP id 75mr9833321qgo.35.1455812296876;
        Thu, 18 Feb 2016 08:18:16 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from bb8.rjo.virtua.com.br ([177.142.197.210])
        by smtp.googlemail.com with ESMTPSA id b201sm2795555qhb.48.2016.02.18.08.18.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 08:18:16 -0800 (PST)
From: Thaissa Falbo <thaissa.falbo@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: davinci_vpfe: remove unnecessary ret variable
Date: Thu, 18 Feb 2016 14:18:12 -0200
Message-Id: <1455812292-13825-1-git-send-email-thaissa.falbo@gmail.com>
X-Mailer: git-send-email 2.1.4

Simplified return of funcions by removing assignment of ret variable.

Coccinelle script used:

@@
local idexpression ret;
expression e;
@@

- ret = e;
- if(ret)
-       return ret;
+ if(e)
+       return e;

@@
local idexpression ret;
expression e;
@@

- ret = e;
- return ret;
+ return e;

@@
local idexpression ret;
expression e;
@@

- ret = e;
- if(ret){
+ if(e){
        ... when != ret
-       return ret;
+       return e;
}

@@
type T; identifier i;
@@
- T i;
... when != i



Signed-off-by: Thaissa Falbo <thaissa.falbo@gmail.com>
---
 drivers/staging/media/davinci_vpfe/vpfe_video.c | 54 +++++++++----------------
 1 file changed, 20 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.c b/drivers/staging/media/davinci_vpfe/vpfe_video.c
index 3ec7e65..52366099 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_video.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_video.c
@@ -172,21 +172,18 @@ static int vpfe_prepare_pipeline(struct vpfe_video_device *video)
 static int vpfe_update_pipe_state(struct vpfe_video_device *video)
 {
 	struct vpfe_pipeline *pipe = &video->pipe;
-	int ret;
 
-	ret = vpfe_prepare_pipeline(video);
-	if (ret)
-		return ret;
+	if (vpfe_prepare_pipeline(video))
+		return vpfe_prepare_pipeline(video);
 
 	/* Find out if there is any input video
 	  if yes, it is single shot.
 	*/
 	if (pipe->input_num == 0) {
 		pipe->state = VPFE_PIPELINE_STREAM_CONTINUOUS;
-		ret = vpfe_update_current_ext_subdev(video);
-		if (ret) {
+		if (vpfe_update_current_ext_subdev(video)) {
 			pr_err("Invalid external subdev\n");
-			return ret;
+			return vpfe_update_current_ext_subdev(video);
 		}
 	} else {
 		pipe->state = VPFE_PIPELINE_STREAM_SINGLESHOT;
@@ -668,7 +665,6 @@ static int vpfe_enum_fmt(struct file *file, void  *priv,
 	struct v4l2_subdev *subdev;
 	struct v4l2_format format;
 	struct media_pad *remote;
-	int ret;
 
 	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_enum_fmt\n");
 
@@ -695,11 +691,10 @@ static int vpfe_enum_fmt(struct file *file, void  *priv,
 	sd_fmt.pad = remote->index;
 	sd_fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
 	/* get output format of remote subdev */
-	ret = v4l2_subdev_call(subdev, pad, get_fmt, NULL, &sd_fmt);
-	if (ret) {
+	if (v4l2_subdev_call(subdev, pad, get_fmt, NULL, &sd_fmt)) {
 		v4l2_err(&vpfe_dev->v4l2_dev,
 			 "invalid remote subdev for video node\n");
-		return ret;
+		return v4l2_subdev_call(subdev, pad, get_fmt, NULL, &sd_fmt);
 	}
 	/* convert to pix format */
 	mbus.code = sd_fmt.format.code;
@@ -726,7 +721,6 @@ static int vpfe_s_fmt(struct file *file, void *priv,
 	struct vpfe_video_device *video = video_drvdata(file);
 	struct vpfe_device *vpfe_dev = video->vpfe_dev;
 	struct v4l2_format format;
-	int ret;
 
 	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_s_fmt\n");
 	/* If streaming is started, return error */
@@ -735,9 +729,8 @@ static int vpfe_s_fmt(struct file *file, void *priv,
 		return -EBUSY;
 	}
 	/* get adjacent subdev's output pad format */
-	ret = __vpfe_video_get_format(video, &format);
-	if (ret)
-		return ret;
+	if (__vpfe_video_get_format(video, &format))
+		return __vpfe_video_get_format(video, &format);
 	*fmt = format;
 	video->fmt = *fmt;
 	return 0;
@@ -760,13 +753,11 @@ static int vpfe_try_fmt(struct file *file, void *priv,
 	struct vpfe_video_device *video = video_drvdata(file);
 	struct vpfe_device *vpfe_dev = video->vpfe_dev;
 	struct v4l2_format format;
-	int ret;
 
 	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_try_fmt\n");
 	/* get adjacent subdev's output pad format */
-	ret = __vpfe_video_get_format(video, &format);
-	if (ret)
-		return ret;
+	if (__vpfe_video_get_format(video, &format))
+		return __vpfe_video_get_format(video, &format);
 
 	*fmt = format;
 	return 0;
@@ -843,9 +834,8 @@ static int vpfe_s_input(struct file *file, void *priv, unsigned int index)
 
 	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_s_input\n");
 
-	ret = mutex_lock_interruptible(&video->lock);
-	if (ret)
-		return ret;
+	if (mutex_lock_interruptible(&video->lock))
+		return mutex_lock_interruptible(&video->lock);
 	/*
 	 * If streaming is started return device busy
 	 * error
@@ -946,9 +936,8 @@ static int vpfe_s_std(struct file *file, void *priv, v4l2_std_id std_id)
 	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_s_std\n");
 
 	/* Call decoder driver function to set the standard */
-	ret = mutex_lock_interruptible(&video->lock);
-	if (ret)
-		return ret;
+	if (mutex_lock_interruptible(&video->lock))
+		return mutex_lock_interruptible(&video->lock);
 	sdinfo = video->current_ext_subdev;
 	/* If streaming is started, return device busy error */
 	if (video->started) {
@@ -1334,9 +1323,8 @@ static int vpfe_reqbufs(struct file *file, void *priv,
 		return -EINVAL;
 	}
 
-	ret = mutex_lock_interruptible(&video->lock);
-	if (ret)
-		return ret;
+	if (mutex_lock_interruptible(&video->lock))
+		return mutex_lock_interruptible(&video->lock);
 
 	if (video->io_usrs != 0) {
 		v4l2_err(&vpfe_dev->v4l2_dev, "Only one IO user allowed\n");
@@ -1362,11 +1350,10 @@ static int vpfe_reqbufs(struct file *file, void *priv,
 	q->buf_struct_size = sizeof(struct vpfe_cap_buffer);
 	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 
-	ret = vb2_queue_init(q);
-	if (ret) {
+	if (vb2_queue_init(q)) {
 		v4l2_err(&vpfe_dev->v4l2_dev, "vb2_queue_init() failed\n");
 		vb2_dma_contig_cleanup_ctx(vpfe_dev->pdev);
-		return ret;
+		return vb2_queue_init(q);
 	}
 
 	fh->io_allowed = 1;
@@ -1542,9 +1529,8 @@ static int vpfe_streamoff(struct file *file, void *priv,
 		return -EINVAL;
 	}
 
-	ret = mutex_lock_interruptible(&video->lock);
-	if (ret)
-		return ret;
+	if (mutex_lock_interruptible(&video->lock))
+		return mutex_lock_interruptible(&video->lock);
 
 	vpfe_stop_capture(video);
 	ret = vb2_streamoff(&video->buffer_queue, buf_type);
-- 
2.1.4


