X-GM-THRID: 6664946976077905920
X-Received: by 2002:ac2:52b2:: with SMTP id r18mr175706lfm.11.1551803894208;
        Tue, 05 Mar 2019 08:38:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9a18:: with SMTP id o24ls2487239lji.3.gmail; Tue, 05 Mar
 2019 08:38:13 -0800 (PST)
X-Google-Smtp-Source: APXvYqwKXazgURKn5ZeMb6Tkj01p3CmNIsgKctUzL0QOKLAUM0DcT2GJW63p7uOEdo9CCncQZag4
X-Received: by 2002:a2e:9d93:: with SMTP id c19mr1448582ljj.25.1551803893226;
        Tue, 05 Mar 2019 08:38:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551803893; cv=none;
        d=google.com; s=arc-20160816;
        b=DPIU/UCUvDe40601SnybPk4oJBKxTtxuyuemD0x0v5bC8fShnHXAT9q/MG9UMpknx6
         +GasY+2t0XP8KRRm3M19nHOniAdAqAHWO+bjBIA32vINEJCPil3Ksyb4dMhiZ5+RD7JI
         KltXCnymJSGOl5RUjF7G7kEpm1HtxoWriUi5THndOheJkk9YBZCliD4O/P5e4o1E/YKU
         5rK22vm059hkzGDk3TGNuD3mf1oS1bOxvlBPxu4TeOs4gLdzQGtnR8DhbTozjZPX/2nV
         0Jh5IU2h4q9gYu4hAMBus6Lx4hEe7TUrBDm19nK0nsQV/25ogKHqXwzrXxSQyLDfnxIE
         0n6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=9IpbwerVTEwXJKC1H5FvLfiH6X7J9B6i8ZXbD1KN4eQ=;
        b=MXlRuPZ4Mwa03wWzu5EbbAvYAOzxDatdeKQ1bCn6YkCNXf7Sv4eZplfelZuqBOSGzq
         U/mMitE8+0LkG4Y7iTu3xwZFlmHNLU7dIQe7GqJv2hRrfSzokG/xrEMpzEYuB6/K3Whs
         tvUTySjQ1xJcUUthhVBMiC6/KOe3+7QjAFOx4YOBbwPtA+BG9rsyZM4Hhd+0zVH/cN89
         aGZxdawdEZ4LRIwWG/YutlSKmqCKm+e+Y9hsnSZnsAm16esvnA/+O57BOhEfm/iCNw5S
         GMYDfUt0O/gAH0ddNIqG0grhcuWnWIYA8e1xFyIVx7q1h2HNn81CnUXFVCCF4izV+UBB
         87+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tN67pXxz;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com. [2a00:1450:4864:20::429])
        by gmr-mx.google.com with ESMTPS id y26si440719lfl.1.2019.03.05.08.38.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 08:38:13 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) client-ip=2a00:1450:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tN67pXxz;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x429.google.com with SMTP id n2so10191110wrw.8
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 08:38:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=9IpbwerVTEwXJKC1H5FvLfiH6X7J9B6i8ZXbD1KN4eQ=;
        b=tN67pXxzFNiDuGeu5o5PReHkoycObbzmvnz+tp52wzDrB0vlP+ALKMOTuN/IN9T6Jy
         w6ew4DInMKK1RWbfmcjMMKfHIGjrYpO/xGwtyhVDvFelJMbDpxuwUN3dc71GR3aYKIvk
         rLTJsxFlM2Hort3kVclcQCdSji/2q/afehjZAN93BjLUwPRq2CxQV7UVDe35hGsJ5zja
         slxuXKqOBSeqh/yGs8o06icYgK1dQ5emGANuGgYwLskXO+Xaie9EGTc2D+dTQsYXmNWk
         7C7lFaxOES0g0YE8EjeaYs9rvYyZEur1VI57MYAO/mM1MdAqmQ5xd1bM+WaU8wNVqTcJ
         hyfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=9IpbwerVTEwXJKC1H5FvLfiH6X7J9B6i8ZXbD1KN4eQ=;
        b=mjfmLein0eJIyY3BwFhgxDDuZbtbGdSaHmD9SthYDQRyY/0y3MDIOeSbY4lTiaCHpg
         fgOYWn64cufqaV8/ASJtlqv6Je2q+p6JJ2q1ftOOLGpUR5EwAVz8s8kYO8ar4PFj2tl7
         4Mm9Z2HlpkVHyQLzm12/z75b7RTJNPge9P8UW5eF3VpDEufLaRalRk3hfCjh/Mt8MXPV
         Vnvm2oVl85xOw6L/t3H8NMR+R/sVm94KO7ECPo8cjJRa6RPTMDL7gvt0em9d7byHastD
         uuQ0dYjNWH4YfwqIUFn+/ibjm3EJ9vKnHIEWbib6N908aJSQAkWbe7cnoTFbgU38Hjin
         JqVg==
X-Gm-Message-State: APjAAAVrXfdBWJX6oV+5g3GnnVzcSaZz53kCeBWDaLjnmFakzSyarw2p
	MZBi87Zfs6pl4FYKdPlK4SY=
X-Received: by 2002:a05:6000:10cf:: with SMTP id b15mr17451434wrx.32.1551803892877;
        Tue, 05 Mar 2019 08:38:12 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([141.85.233.103])
        by smtp.gmail.com with ESMTPSA id 132sm30496535wmd.27.2019.03.05.08.38.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 08:38:12 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH v2 0/2] Fix multiple line dereference
Date: Tue,  5 Mar 2019 18:38:07 +0200
Message-Id: <1551803887-24894-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4

Fix multiple line dereference to avoid checkpatch warnings

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
Changes in v2:
-turn this patch into a series
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


