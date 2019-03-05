X-GM-THRID: 6664943131010531328
X-Received: by 2002:a50:eb05:: with SMTP id y5mr3487767edp.5.1551802999405;
        Tue, 05 Mar 2019 08:23:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9fad:: with SMTP id c42ls5876185edf.1.gmail; Tue, 05 Mar
 2019 08:23:18 -0800 (PST)
X-Google-Smtp-Source: APXvYqx2GQD9wGl0J6G75HHuhyvc/+S8W3FSzkXJhfQt03tJ+4wPkzP+Oj6/2m2BRAt1iugvU2+I
X-Received: by 2002:aa7:c758:: with SMTP id c24mr3500879eds.2.1551802998780;
        Tue, 05 Mar 2019 08:23:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551802998; cv=none;
        d=google.com; s=arc-20160816;
        b=zYTmg59DARbCm5WZA67SqcPJJqvjR/qZrySpZHxS570Coh2U/U9dm3RSFnwpqchT07
         O16hiOLG1qh//xJeqd5DpJb8gJPIxF79FQmrM5PD6QXziczJA4lYwcUcngeoEhL0EbTi
         LVIHGeE4e+pOzZAAiSeTkcD4u6iTA88qqI1quPNmXeys5InSifyqNgKRPg04spaR6bP2
         TA/5cpOgZT6K7TrOrmb4zdhX7TrZY6HLBNi/FXmbRV1DQn0Vyt9tTDQaJ+3jqdMLml6e
         J18kSa0GdYUbUw0Uoxg2n+R0boPVhx0mqU4Bt4Jh7W6yoKtAUE/h+cYKrRFlSn0f76uI
         4dyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=TyNgq0LYUsHmfCsYXDbUMw0cRIsXk3NucoZ0vnDbpmg=;
        b=hQIrtimGwJW6Acub5ZUZkIeOGpEewXoRNgU3RYgwpQk/cMB1TBrJ65IWjL3Bs1EDR5
         GLIWEutrZOojflwydbqzTnKFVV6AAzJXj3/WK5aeO3rNuqmgBPCT8tFTF0RTDy3jxIzI
         vF5ITthk071qHeli0+Ik6ThAag6tmLlxUGKuOvc0wncqiR4EI0/Nv9d7wEdWDJcxxq6p
         1jxnnec8zmDrmIHE1Tcuv01qmzwOfXPJ/QJ7Au6mYvZOdSzg6DgEzfORCvSIS7No2mKh
         CSONUp5jfldf+Y/YxHwjP6r8RL02JCoMawOhEcDQKxh/gVgHLTBd3KnzSszZ9cbNdg89
         gHZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="nPO/dpQa";
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id r37si548134edd.2.2019.03.05.08.23.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 08:23:18 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="nPO/dpQa";
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id f14so10150366wrg.1
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 08:23:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=TyNgq0LYUsHmfCsYXDbUMw0cRIsXk3NucoZ0vnDbpmg=;
        b=nPO/dpQa16g96na0+J6jBdR3IqcrUXMznOT8I5TimVl+vHXLCWVZX7w9aHJ5XYSfzQ
         RR/9JAfjMuhByHsUJvVh53V4QfQgNQQTM/wBkAUjrcAiHxvoosfzEtgQZeDXHQ8YUbD3
         lWO+eIlqiuQDKBjek5CVv5a6EmQKfJgNkwU8xq2RktUm2Jtb+GoLjlgXcJD8xDg/0sCD
         Ix4cyhqY9TFWl/oRS5xgBLdv9pZpqw6FkJO9pqDO0lwOFZ2HUzX1smrmm144NLAfVpHD
         U0hYRapngf/O4iOJFzjkYy6v2OSI+3IuccL8l6JhrIYb/oqtFwvmMup1Qcau9i1M4GX7
         lFPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=TyNgq0LYUsHmfCsYXDbUMw0cRIsXk3NucoZ0vnDbpmg=;
        b=FCmREf5pW7qNdYjEHWPG5svyMWttjSA4y/som8IsYMjaJbql1QjHS3WyBs7m6TucYv
         ea9l9Zn3vi1VWlpZFh30SDWkzQK3hpmk6oT0beraZDCO6CJ/96Ot0rrGJg2FfCZgeAqI
         +N7vlmbRuAZh00BDU20fg280qjB33+jps+e08/pKZVTm9UMoGCAeQFRxrtOq0EGBsctJ
         2VfETs8Nvt6qI1xGh69qWMgM75QzPCC3UjLgU8XSYn5AgZOamTFZlJDteEOiEVXyq6bw
         hgWndugbkTGqdh2Hd+X4LfD4P/33vi7+onDUwiSZ4cWv019yM3EiR5fe0K29qHXC6XnQ
         rtGA==
X-Gm-Message-State: APjAAAWLoeEocenCwv3+ZSLbxUDHkDWAb2T+PARx1lKq21D50OeRWxGk
	6qS2O0XcYqbW2/QRXbeTOv1uy6KO
X-Received: by 2002:adf:a2cc:: with SMTP id t12mr17137015wra.253.1551802998187;
        Tue, 05 Mar 2019 08:23:18 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([141.85.233.105])
        by smtp.gmail.com with ESMTPSA id h126sm10409162wmf.2.2019.03.05.08.23.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 08:23:17 -0800 (PST)
Date: Tue, 5 Mar 2019 18:23:16 +0200
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vc04_services: bcm2835-camera: Fix multiple line
 dereference
Message-ID: <20190305162316.GA24382@pthm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix multiple line dereference to avoid checkpatch warnings

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 39 ++++++++--------------
 1 file changed, 13 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 611a6ee..e71738a 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -312,8 +312,7 @@ static void buffer_cleanup(struct vb2_buffer *vb)
 static inline bool is_capturing(struct bm2835_mmal_dev *dev)
 {
 	return dev->capture.camera_port ==
-	    &dev->
-	    component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
+	    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
 }
 
 static void buffer_cb(struct vchiq_mmal_instance *instance,
@@ -751,8 +750,7 @@ static int vidioc_overlay(struct file *file, void *f, unsigned int on)
 		return 0;	/* already in requested state */
 
 	src =
-	    &dev->component[MMAL_COMPONENT_CAMERA]->
-	    output[MMAL_CAMERA_PORT_PREVIEW];
+	    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_PREVIEW];
 
 	if (!on) {
 		/* disconnect preview ports and disable component */
@@ -807,8 +805,7 @@ static int vidioc_g_fbuf(struct file *file, void *fh,
 	 */
 	struct bm2835_mmal_dev *dev = video_drvdata(file);
 	struct vchiq_mmal_port *preview_port =
-		    &dev->component[MMAL_COMPONENT_CAMERA]->
-		    output[MMAL_CAMERA_PORT_PREVIEW];
+		    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_PREVIEW];
 
 	a->capability = V4L2_FBUF_CAP_EXTERNOVERLAY |
 			V4L2_FBUF_CAP_GLOBAL_ALPHA;
@@ -1000,8 +997,7 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 					       dev->capture.camera_port, NULL);
 		dev->capture.camera_port = NULL;
 		ret = vchiq_mmal_component_disable(dev->instance,
-						   dev->capture.
-						   encode_component);
+						   dev->capture.encode_component);
 		if (ret)
 			v4l2_err(&dev->v4l2_dev,
 				 "Failed to disable encode component %d\n",
@@ -1016,26 +1012,22 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 		if (f->fmt.pix.width <= max_video_width
 		    && f->fmt.pix.height <= max_video_height)
 			camera_port = port =
-			    &dev->component[MMAL_COMPONENT_CAMERA]->
-			    output[MMAL_CAMERA_PORT_VIDEO];
+			    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO];
 		else
 			camera_port = port =
-			    &dev->component[MMAL_COMPONENT_CAMERA]->
-			    output[MMAL_CAMERA_PORT_CAPTURE];
+			    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
 		break;
 	case MMAL_COMPONENT_IMAGE_ENCODE:
 		encode_component = dev->component[MMAL_COMPONENT_IMAGE_ENCODE];
 		port = &dev->component[MMAL_COMPONENT_IMAGE_ENCODE]->output[0];
 		camera_port =
-		    &dev->component[MMAL_COMPONENT_CAMERA]->
-		    output[MMAL_CAMERA_PORT_CAPTURE];
+		    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
 		break;
 	case MMAL_COMPONENT_VIDEO_ENCODE:
 		encode_component = dev->component[MMAL_COMPONENT_VIDEO_ENCODE];
 		port = &dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->output[0];
 		camera_port =
-		    &dev->component[MMAL_COMPONENT_CAMERA]->
-		    output[MMAL_CAMERA_PORT_VIDEO];
+		    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO];
 		break;
 	default:
 		break;
@@ -1077,13 +1069,11 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 
 	if (!ret
 	    && camera_port ==
-	    &dev->component[MMAL_COMPONENT_CAMERA]->
-	    output[MMAL_CAMERA_PORT_VIDEO]) {
+	    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO]) {
 		bool overlay_enabled =
 		    !!dev->component[MMAL_COMPONENT_PREVIEW]->enabled;
 		struct vchiq_mmal_port *preview_port =
-		    &dev->component[MMAL_COMPONENT_CAMERA]->
-		    output[MMAL_CAMERA_PORT_PREVIEW];
+		    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_PREVIEW];
 		/* Preview and encode ports need to match on resolution */
 		if (overlay_enabled) {
 			/* Need to disable the overlay before we can update
@@ -1677,8 +1667,7 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 
 	/* get the video encoder component ready */
 	ret = vchiq_mmal_component_init(dev->instance, "ril.video_encode",
-					&dev->
-					component[MMAL_COMPONENT_VIDEO_ENCODE]);
+					&dev->component[MMAL_COMPONENT_VIDEO_ENCODE]);
 	if (ret < 0)
 		goto unreg_image_encoder;
 
@@ -1801,12 +1790,10 @@ static void bcm2835_cleanup_instance(struct bm2835_mmal_dev *dev)
 				     dev->component[MMAL_COMPONENT_CAMERA]);
 
 	vchiq_mmal_component_finalise(dev->instance,
-				      dev->
-				      component[MMAL_COMPONENT_VIDEO_ENCODE]);
+				      dev->component[MMAL_COMPONENT_VIDEO_ENCODE]);
 
 	vchiq_mmal_component_finalise(dev->instance,
-				      dev->
-				      component[MMAL_COMPONENT_IMAGE_ENCODE]);
+				      dev->component[MMAL_COMPONENT_IMAGE_ENCODE]);
 
 	vchiq_mmal_component_finalise(dev->instance,
 				      dev->component[MMAL_COMPONENT_PREVIEW]);
-- 
2.7.4


