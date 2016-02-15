X-GM-THRID: 6251376320719093760
X-Received: by 10.140.173.215 with SMTP id t206mr14252504qht.13.1455511972688;
        Sun, 14 Feb 2016 20:52:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.14.138 with SMTP id 132ls1262022ioo.27.gmail; Sun, 14 Feb
 2016 20:52:52 -0800 (PST)
X-Received: by 10.66.142.80 with SMTP id ru16mr8627248pab.2.1455511972323;
        Sun, 14 Feb 2016 20:52:52 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from mail-qk0-x229.google.com (mail-qk0-x229.google.com. [2607:f8b0:400d:c09::229])
        by gmr-mx.google.com with ESMTPS id w126si1717814ywe.6.2016.02.14.20.52.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 20:52:52 -0800 (PST)
Received-SPF: pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c09::229 as permitted sender) client-ip=2607:f8b0:400d:c09::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c09::229 as permitted sender) smtp.mailfrom=thaissa.falbo@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x229.google.com with SMTP id s68so51868158qkh.3
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 20:52:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=/snbkt30NSjLROVdIi4lfu9vclkDTfHGmM4cH1Qb67Q=;
        b=d21nEiYL7yfIIpf6VRPoHWxU7Ba+eSVzhecExym+3GLwi99janCLcjIeQw+DqAHWHe
         qTwtclsQxauJkYCRv26dpsjm+R7sXIF1KEuJ2KIfpYKh6VvOwcaaUPOqfFALc1yzOlSs
         EolUehB2Ca44+l7Cmz8LRAdNvUmBHQoQEl4vXoh/CNVuo8hU5rcJ3/uChHD+IcCACEYB
         obiTj3EYH2TqUlyhk59+evQOcUuOdWq0Iajdo50bj11NG5wWO8jTBFP31DEPzdrRSlRU
         I7Wy8DDzUGSKZQwgSVbvLxOSymDROkhjC1uJMZdA7be8aCKpxWRZ3NaDmUNW8hXcUb+c
         KE5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=/snbkt30NSjLROVdIi4lfu9vclkDTfHGmM4cH1Qb67Q=;
        b=cSaKxm6CtPQ4aUS3oPIqOo6uWJZTkaM5B3sugq+3wkDUWNF6oe0X2/BSOAivCDnIi3
         lOkO+nRiqzPfSo4x7Oy5k8LMGDE9MsK4KSSihXeGL4lMBYryBCRCUKpsm5yVxxR0mClC
         HiqWAPrvwbmgO4WTnCxIdj8Okp/KnN7Buxc44yQOA/gcbS/ObM47SZfQLHR/VN4mcIrk
         dGsTYfwZfjqdYrqHg06fOTeyuavfHy0DH1Ll6ag/Bxf8CuvusrxfECVgtvsQKokp5FOB
         hFqOHsI6ReIfPTPvN6zc67RW/uGOq3QLkz1FSdwm81997EZeDnnEoVdU0e6evgmQb/Qi
         FDtA==
X-Gm-Message-State: AG10YORkPe3wpZsrTpb4XKkKUpqqX7btgXnO8n1WeoRgNMTq9yXy4psIkOkYdcCvFaNxmw==
X-Received: by 10.55.33.208 with SMTP id f77mr10700325qki.15.1455511972138;
        Sun, 14 Feb 2016 20:52:52 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from bb8 ([177.142.197.210])
        by smtp.gmail.com with ESMTPSA id m2sm10403603qhm.33.2016.02.14.20.52.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 20:52:51 -0800 (PST)
Date: Mon, 15 Feb 2016 02:52:49 -0200
From: Thaissa Falbo <thaissa.falbo@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging:media:davinci_vpfe: Fixed comparisons with constants
 warnings
Message-ID: <20160215045249.GA5192@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

WARNING: Comparisons should place the constant on the right side of the
test

Fixed warnings by moving the constants to the right side of the comparisons.



Signed-off-by: Thaissa Falbo <thaissa.falbo@gmail.com>
---
 drivers/staging/media/davinci_vpfe/vpfe_video.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.c b/drivers/staging/media/davinci_vpfe/vpfe_video.c
index 933ad49..7f0e423 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_video.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_video.c
@@ -461,7 +461,7 @@ void vpfe_video_schedule_next_buffer(struct vpfe_video_device *video)
 	video->next_frm = list_entry(video->dma_queue.next,
 					struct vpfe_cap_buffer, list);
 
-	if (VPFE_PIPELINE_STREAM_SINGLESHOT == video->pipe.state)
+	if (video->pipe.state == VPFE_PIPELINE_STREAM_SINGLESHOT)
 		video->cur_frm = video->next_frm;
 
 	list_del(&video->next_frm->list);
@@ -1332,8 +1332,8 @@ static int vpfe_reqbufs(struct file *file, void *priv,
 
 	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_reqbufs\n");
 
-	if (V4L2_BUF_TYPE_VIDEO_CAPTURE != req_buf->type &&
-	    V4L2_BUF_TYPE_VIDEO_OUTPUT != req_buf->type) {
+	if (req_buf->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
+	    req_buf->type != V4L2_BUF_TYPE_VIDEO_OUTPUT){
 		v4l2_err(&vpfe_dev->v4l2_dev, "Invalid buffer type\n");
 		return -EINVAL;
 	}
@@ -1394,8 +1394,8 @@ static int vpfe_querybuf(struct file *file, void *priv,
 
 	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_querybuf\n");
 
-	if (V4L2_BUF_TYPE_VIDEO_CAPTURE != buf->type &&
-	    V4L2_BUF_TYPE_VIDEO_OUTPUT != buf->type) {
+	if (buf->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
+	    buf->type != V4L2_BUF_TYPE_VIDEO_OUTPUT) {
 		v4l2_err(&vpfe_dev->v4l2_dev, "Invalid buf type\n");
 		return  -EINVAL;
 	}
@@ -1421,8 +1421,8 @@ static int vpfe_qbuf(struct file *file, void *priv,
 
 	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_qbuf\n");
 
-	if (V4L2_BUF_TYPE_VIDEO_CAPTURE != p->type &&
-	    V4L2_BUF_TYPE_VIDEO_OUTPUT != p->type) {
+	if (p->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
+	    p->type != V4L2_BUF_TYPE_VIDEO_OUTPUT) {
 		v4l2_err(&vpfe_dev->v4l2_dev, "Invalid buf type\n");
 		return -EINVAL;
 	}
@@ -1449,8 +1449,8 @@ static int vpfe_dqbuf(struct file *file, void *priv,
 
 	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_dqbuf\n");
 
-	if (V4L2_BUF_TYPE_VIDEO_CAPTURE != buf->type &&
-	    V4L2_BUF_TYPE_VIDEO_OUTPUT != buf->type) {
+	if (buf->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
+	    buf->type != V4L2_BUF_TYPE_VIDEO_OUTPUT) {
 		v4l2_err(&vpfe_dev->v4l2_dev, "Invalid buf type\n");
 		return -EINVAL;
 	}
@@ -1482,8 +1482,8 @@ static int vpfe_streamon(struct file *file, void *priv,
 
 	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_streamon\n");
 
-	if (V4L2_BUF_TYPE_VIDEO_CAPTURE != buf_type &&
-	    V4L2_BUF_TYPE_VIDEO_OUTPUT != buf_type) {
+	if (buf_type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
+	    buf_type != V4L2_BUF_TYPE_VIDEO_OUTPUT) {
 		v4l2_err(&vpfe_dev->v4l2_dev, "Invalid buf type\n");
 		return ret;
 	}
@@ -1499,7 +1499,7 @@ static int vpfe_streamon(struct file *file, void *priv,
 		return -EIO;
 	}
 	/* Validate the pipeline */
-	if (V4L2_BUF_TYPE_VIDEO_CAPTURE == buf_type) {
+	if (buf_type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
 		ret = vpfe_video_validate_pipeline(pipe);
 		if (ret < 0)
 			return ret;
-- 
2.1.4


