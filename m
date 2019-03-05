X-GM-THRID: 6664972943325396992
X-Received: by 2002:a17:906:7f0a:: with SMTP id d10mr268957ejr.15.1551810021073;
        Tue, 05 Mar 2019 10:20:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:358c:: with SMTP id o12ls2479428ejb.0.gmail; Tue, 05
 Mar 2019 10:20:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqyvGDXzV9bE/gAHB/SAQPf2FBWZbmAWyiaNeAzdaObfNkKjo0aS+hHaSPu1LCm6ybQlbSBo
X-Received: by 2002:a17:906:938b:: with SMTP id l11mr277513ejx.8.1551810020194;
        Tue, 05 Mar 2019 10:20:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551810020; cv=none;
        d=google.com; s=arc-20160816;
        b=EPMQ97uexN9z2GMdBw7KhEns6CnZ6+3rE2ITbzDNsNHACEDuJpDkPIMf8S7Ee/iu0v
         OiZmm8m9Rv2rU9CcOPOcX3GOP11Lp7/a3yXCScQX7LEnXGAnIBc9882WsQ61XAMiNKpQ
         YtkZE+FsCnCKjBaWpeq6rFN2pX8X3pAacdGeJ3Y+53d9C9LgCnkqySWdBCVPU/EqyNFE
         CcD+Xj8h0DihpkW6VjqQEFeYiBciRta8a4zIam8WCSf99iiz+tM7dotfrvy0iXKl5g/n
         S6gb7V2+6Mwekub/pVRmueUlIbtOKpdXzHXZ+UVx5yogyCIVmw1kCBcvfIZcuwOdZwQM
         3VQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=TyNgq0LYUsHmfCsYXDbUMw0cRIsXk3NucoZ0vnDbpmg=;
        b=F41BdKfp8+F+D+b7MRBqlco3HX6B6wVzxm3qedwGlxaioV8JZCUX+H7qj1HLTrpoqq
         /imaAKCuWbajibNnCgD//iwStvfd35T8Rynt3WcmgNvriP9sP3HuxXRtgxWCKflQbOm0
         P2KGwCj8OJ7rP7Lxph4XVG64QstMTi2CylJ43IgQuoB1Li97S98z4gb5P40xoqiG3hc7
         JB27Ew1j8vjkO/DKS6M5e1zOpw2OffgDvvvQs29SNsxGyh7RoxhBKxlMg0qqLGgnnY11
         PDSyktAn8lcWIcrOjEMfCDs8hn88PdAb0CR9r7Oh4kEuYY6obCrzupASxDmVaJHjXa2k
         fbqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K254esX1;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id q1si422761edd.5.2019.03.05.10.20.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 10:20:20 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K254esX1;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id e74so3524529wmg.3
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 10:20:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=TyNgq0LYUsHmfCsYXDbUMw0cRIsXk3NucoZ0vnDbpmg=;
        b=K254esX1o2mZ5ncmFx50DznLO5cNfjKXIYgKM0FJYeNvUmjCEycfvcVghwzckV8VMB
         ANglmNblzpyKfTr5sxNZHQC3ehU3VG6iMAJH3i56bnREZiQJD3litTZoumcGSniS3+3m
         K/R7eEHQND4TTlsQJEQ20YQXqrnjwU9jmgl3SOJHo1HtMcYYEoMaAer0+s33RIpEpgpf
         1lX491PrXSRs30vnMGcpAgrC74WEgQo13MTOiuR8cHjh0C+a8zuGJK3pRHfnkIwYDhxd
         x5gdpxjPbnz1jQZZsyirOX+UGV0UYh+8RiT8LPsrkvS8uZCKqjq57wD21S1ivLEOtkqz
         sR+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=TyNgq0LYUsHmfCsYXDbUMw0cRIsXk3NucoZ0vnDbpmg=;
        b=q5nIWuMU1VPDSzzf1g51SkiPDwRddy0FTH9xac3AOS6jLJSEdV0XPRmkkvB+AUH8PP
         imMBTYoSD4Rgk8+wttY3eBtO8t+xS/lWa35zHGhFe7kKM60bIRw1B90owXg/qMJRBGnr
         tUbxyZ9Mml1JDoCjEeNk3juBahrewugzbuN7B3bjIZRBx/zI3W18BYsqDDNXgoy8yZBC
         rLa0I3nn7T8vrCqmSRUFkrwzNNTZjtf3UgTeHNZMANBEw1AJiaqSeDlQ8pDTsSqpt2do
         YwJJY6LRIfxTZ4AN/i/z6vGz3zA/y9hR+LyaekvZw0AT7RbUsnbO/N5A/3qB9+663xIk
         yCWA==
X-Gm-Message-State: APjAAAVSciagfBiXoYZS9vCphqfL+95JCK90JelGz1S5VLi6rR1DgIgM
	e5Tzitr4IlEngcNrzf0lscIMeJMf
X-Received: by 2002:a1c:a885:: with SMTP id r127mr3864705wme.74.1551810019822;
        Tue, 05 Mar 2019 10:20:19 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([93.122.165.106])
        by smtp.gmail.com with ESMTPSA id b12sm2156810wrx.33.2019.03.05.10.20.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 10:20:19 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH v3 1/2] Fix multiple line dereference
Date: Tue,  5 Mar 2019 20:20:16 +0200
Message-Id: <1551810016-26875-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1551809936-26809-1-git-send-email-daniela.mormocea@gmail.com>
References: <1551809936-26809-1-git-send-email-daniela.mormocea@gmail.com>

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


