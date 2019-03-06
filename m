X-GM-THRID: 6665247866619953152
X-Received: by 2002:ac2:419a:: with SMTP id z26mr433747lfh.2.1551873979092;
        Wed, 06 Mar 2019 04:06:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5551:: with SMTP id j78ls199730ljb.11.gmail; Wed, 06 Mar
 2019 04:06:17 -0800 (PST)
X-Google-Smtp-Source: APXvYqwnpV8qCcexZEoOjE5okY1ZpJ+yvCT/1860LP+rturSZF7sCEchkGck5RAY2Kj1gGvQQ2mh
X-Received: by 2002:a2e:944f:: with SMTP id o15mr243752ljh.28.1551873977855;
        Wed, 06 Mar 2019 04:06:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551873977; cv=none;
        d=google.com; s=arc-20160816;
        b=YVevug9whyz6BLzeozITPnzcrhuoiyjlYkYAn8odQ1kVL6hISP6KhFw/VBUucdWZKs
         btqAUunXYtLRmQioTMM+lS5dKc7IFctvs0K3KfTM8Xpa2ZDzfbsZcDvZE7/BNav6QJa5
         UhULdfD+XdoGKHb2UIODvqISeCqGA3+7sM+1QzZk7c+2rOR0lXWTq9e1dYkgssoHbDjQ
         2C2wbv49GAORzjL0odLzUl/InnQLtZTs/T3KA344z3Hgs/K7Rz1jsAhc/CYHP0SWdYdE
         ss1m5HalPumKDdKaxqEM5epdYH8AyX3PZYRoSv+st3VdTNQA5fhpMpPpDhrfYanyTf3Y
         rbLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=8bVrpTMdy/4rC5ojhrT1feKXyBpqggtE8IQ/UDWug58=;
        b=NMCHI+JAVaRVG7hX+zcWzcF9iXN0e4iPnVcKCy3oNZlYluJ7Als7r17/wvdLXm0xhW
         gw0i5eZ5UzHq9JJfMlbt0IhifzUAGxCp/X7WKKritCeAxUmGspKEjh6+vHXR9ATjo5U6
         L3fwdwzOfo0Ht9t3GOqSVL0z5glmY/qxGya5M/fKy/e+Es7sDn3RXjuXScL95FyPkMnP
         r2xjpjfoznDnfE8LvxRqZDwN3zkY2VxarHhcOsUZfE+gHCsFWWLAlWJo6kUVsobjszfY
         lZIzXTtTfuiNzIMm7jevFmHRI8wcnKlamg5UbCleRH5ySLbk2oi/91+savgykhtpERty
         Yufw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a0ROfKfN;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id x12si63984ljb.2.2019.03.06.04.06.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 04:06:17 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a0ROfKfN;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id q187so5702999wme.5
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 04:06:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8bVrpTMdy/4rC5ojhrT1feKXyBpqggtE8IQ/UDWug58=;
        b=a0ROfKfNB7hsydgQsWReRR7PYzA+qx0ZD/xmTPuyj6vyhD2/3US1fst7tcB4J4H0B3
         4p+xvDsgJDEOwi+Cxyyk+A2DtKN1u49bUSDfUWCalNJ1pu9ZbIbPYiwY4Tyk8MjOXDbK
         UkuzzL78wJxz8zuOfXJRYAVnRrcR8S6o07MhxdSIRkkp7eZnbpKOlorxrqClMjaZaMzv
         vbmVzdLDju+DJCxL4Dq9QLx+RCpVKDcuynRoNh6wuoLAenhEG+eHwVrGXxysHmmFDgU1
         xtEcbIEUCfFp0uVawxPLJFqvPiJ/y786K3lYHdrtHLVUgA9XgCg92rYQ8EL8TO3ZNIqQ
         R0xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8bVrpTMdy/4rC5ojhrT1feKXyBpqggtE8IQ/UDWug58=;
        b=Aqi5PG6ZC9DPpNHDbgAXcdrLq0n9GpjnYhV4Hn+IoBixrDqgVNw2IGQSSUrRUl4I5N
         c78372Br3mgTrMeqyiM/Fo0MFNVTh4NBVv0v4DEcGMD2KXa52CZFn4/z33/iySfMd+44
         Akw9VQQFmHPIz2cdJSQ7V0ysJxJvtjUksS5dM4pdKmHIDmz15oZDbRER+653KPSki6/C
         TEWmcxXEyxN256UMZ2PeODFc6OqIPtj7De4rrXaAy8uWX6voA4NUPCdaUmkF7KKdu8Ur
         w13nzH8fH++UqYNRpz/TFTT0gssoAv8C/7Upztw+xMW9Jr2F0rtAFyClo+h/apIw9BBP
         NYGw==
X-Gm-Message-State: APjAAAUiBI3vd5QZ0Y/TiMpylA+oIy0xZNJpPuDxAtSdTZgBEVDFTPWI
	8ZpaOMS99id/ULk820dMTTo=
X-Received: by 2002:a1c:a986:: with SMTP id s128mr2354016wme.44.1551873977188;
        Wed, 06 Mar 2019 04:06:17 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([141.85.233.103])
        by smtp.gmail.com with ESMTPSA id f191sm2397257wmg.41.2019.03.06.04.06.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 06 Mar 2019 04:06:16 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH v6 1/2] staging: vc04_services: bcm2835-camera: Fix multiple line dereference
Date: Wed,  6 Mar 2019 14:06:12 +0200
Message-Id: <1551873972-31768-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1551873943-31719-1-git-send-email-daniela.mormocea@gmail.com>
References: <1551873943-31719-1-git-send-email-daniela.mormocea@gmail.com>

Fix multiple line dereference to avoid checkpatch warnings

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---

Changes in v6:
-add driver name in all the patches from the series

Changes in v5:
-add changes in cover letter

Changes in v4:
-add driver name in subject

Changes in v3:
-add cover-letter to patch series

Changes in v2:
-make these a patch series 

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


