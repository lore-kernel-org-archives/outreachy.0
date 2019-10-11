X-GM-THRID: 6746657594163593216
X-Received: by 2002:a2e:81da:: with SMTP id s26mr10106375ljg.192.1570828630397;
        Fri, 11 Oct 2019 14:17:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8803:: with SMTP id x3ls1145834ljh.10.gmail; Fri, 11 Oct
 2019 14:17:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz9wm6SVozv4T+ax7nxu/3mQP7Kleyt3UA0JxLIF2ml1+lwvZQ3g9EMR1n1XQS0MSNBeoCM
X-Received: by 2002:a2e:9d83:: with SMTP id c3mr10546504ljj.237.1570828629375;
        Fri, 11 Oct 2019 14:17:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570828629; cv=none;
        d=google.com; s=arc-20160816;
        b=NY9dYsK12RZUvJlhsTsCWhlJJDpFDoU5wnPU22Y0UBzMzHbJRrXzZZ7R65PRyIxcR9
         JmVVMJd0czHTilDXMLIb2Y2he33F/dXmIeu2LTzhZt5btzD1r38oKmkQIPN6WmScR273
         0/gskA3D3Xah4b3jiuqVmVzM1vt7fPoKdymAYX3CvLdbdqMw4k7cKoKyMWrOr54JhSYi
         Zrg32RcoQbLLvDEEcJ8LerV+DXL04WGfxu33tDaKe0ZlKf+SBTwkRY0sXw5wA5J6/ZAB
         1WhlwlrlFElBNjJWHYA3BONeJj/1cF2muP50cbGSOy2jrgvc/wcIyF/gW2TQAlQgOu9+
         sOlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=LG3n9bP9kGhQ7SFk9OxCo0gPqdU2gHnkRjsbnMNvlpY=;
        b=r/nj7GHRLNa8/EiAVMB/U/gcXdduXswgRtbHD+H6M38mAC8y+f0HJt6QvVtBeoTiBK
         O4r6L6+cZAI18QJYoeihPXLRz8FRHjIrgw5wImjYTGrT3Dlvsum+0sL6AUXd68DKl1kQ
         25B/hfO7v1ABtntd4aG/BFt2yXKpQGBsSD0Kf2tRMfvQdFCCwuNy1fOVxJAUa9e+4y5p
         Z2ZmSr3HNuvJwboOw6O2uqXnlOeQQHBlAYXRcGxWMs5IYGEnOD97TD7GyXph38SjxPcR
         mNEPesPDM3i3UhWoq6vS9DesO8bg7PJuW1uhtvFDgm+hKSBLmxhqk5ay9mQR93rCLVVh
         NTDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dBJnWFOo;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id c25si180076lji.2.2019.10.11.14.17.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 14:17:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dBJnWFOo;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id p7so11712583wmp.4
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Oct 2019 14:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LG3n9bP9kGhQ7SFk9OxCo0gPqdU2gHnkRjsbnMNvlpY=;
        b=dBJnWFOoIb19dqOC0j3JvCCdRfPc4OHL3xsyrufrdm7gBPTGnMnrAJ7Th95lKJlV+3
         wrMoLQWul2U+Cq1vwvMLQ202arVVEaOUx7L6I9ehm3vPeCkqa9MDuiaciVxs7PVAbT6R
         tOfegMjBnURzNKAMtrYiLB4ybuPKUXIq9PPnf56Isisv9H8gh6Mhmc1BG1Cnj5onhjgO
         MFDxSNzk2+sJpHb4zfDFjl+fszrvHf6aVQJubTaMYRCjeBEjf7gtB++7ZWK6n7ql0IEJ
         /VtPYb5cTW6aHS1MMuuxNNBmGqqhR30g3wQFGRz92BHUeTRqiCIFIy2eZUDbaThcs9/9
         MHSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LG3n9bP9kGhQ7SFk9OxCo0gPqdU2gHnkRjsbnMNvlpY=;
        b=SaqqbE42beeVRE/QX7EsNI0v9zAYmudE4ktautdPC66ij6VAHFidn1idg4gHCPtko4
         5Zot8lTkohEefm+Z7GuK9ZZhQZZ93JLVtLh1+Z3pP4M4Gm0A4eUmc9m/j1FDa2bvnoac
         WKdZ4icGXUTN408M0aftCCSSNZj1Pauv6Y30ZnjntE0rywIc68XrGOgS/yVwANb1UodJ
         ceU9c+S0uLmI3cSRrmoUhdlURn4GWnX5v4fiK8QXC+ape5VvmKGj8VDZnjP66gxxxjXB
         zl//JoHI2VjQ4IYLeEI/wfJCm+ZGi8FhcCWzfWOpVnXZMjn9/ANiAdxBsj3sAs2g9qLz
         EJew==
X-Gm-Message-State: APjAAAUS9LeczVJQaEtVwJDNL4DiavVGE+LTWKeK7h8OjLh8AXDBJsGN
	caW9+IPrk9Te0Q50+1BL767pSrmVJdGpH0A=
X-Received: by 2002:a7b:c387:: with SMTP id s7mr4391784wmj.110.1570828628423;
        Fri, 11 Oct 2019 14:17:08 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.googlemail.com with ESMTPSA id u2sm3265117wml.44.2019.10.11.14.17.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 14:17:07 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	eric@anholt.net,
	wahrenst@gmx.net,
	linux-kernel@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org,
	daniela.mormocea@gmail.com,
	dave.stevenson@raspberrypi.org,
	hverkuil-cisco@xs4all.nl,
	mchehab+samsung@kernel.org,
	bcm-kernel-feedback-list@broadcom.com,
	sbranden@broadcom.com,
	rjui@broadcom.com,
	f.fainelli@gmail.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: vc04_services: fix warnings of lines should not end with open parenthesis
Date: Fri, 11 Oct 2019 22:16:37 +0100
Message-Id: <20191011211637.19311-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix warning of lines should not end with open parenthesis.
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 .../bcm2835-camera/bcm2835-camera.c           | 38 ++++++++-----------
 1 file changed, 16 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index d4d1e44b16b2..c7bb6e3f529c 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -337,9 +337,8 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 			if (is_capturing(dev)) {
 				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 					 "Grab another frame");
-				vchiq_mmal_port_parameter_set(
-					instance,
-					dev->capture.camera_port,
+			vchiq_mmal_port_parameter_set(instance,
+						      dev->capture.camera_port,
 					MMAL_PARAMETER_CAPTURE,
 					&dev->capture.frame_count,
 					sizeof(dev->capture.frame_count));
@@ -392,9 +391,8 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 	    is_capturing(dev)) {
 		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 			 "Grab another frame as buffer has EOS");
-		vchiq_mmal_port_parameter_set(
-			instance,
-			dev->capture.camera_port,
+		vchiq_mmal_port_parameter_set(instance,
+					      dev->capture.camera_port,
 			MMAL_PARAMETER_CAPTURE,
 			&dev->capture.frame_count,
 			sizeof(dev->capture.frame_count));
@@ -1124,9 +1122,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 					  dev->capture.timeperframe.numerator;
 		ret = vchiq_mmal_port_set_format(dev->instance, preview_port);
 		if (overlay_enabled) {
-			ret = vchiq_mmal_port_connect_tunnel(
-				dev->instance,
-				preview_port,
+			ret = vchiq_mmal_port_connect_tunnel(dev->instance,
+							     preview_port,
 				&dev->component[COMP_PREVIEW]->input[0]);
 			if (!ret)
 				ret = vchiq_mmal_port_enable(dev->instance,
@@ -1154,9 +1151,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 			    camera_port->recommended_buffer.num;
 
 			ret =
-			    vchiq_mmal_port_connect_tunnel(
-					dev->instance,
-					camera_port,
+			    vchiq_mmal_port_connect_tunnel(dev->instance,
+							   camera_port,
 					&encode_component->input[0]);
 			if (ret) {
 				v4l2_dbg(1, bcm2835_v4l2_debug,
@@ -1655,8 +1651,8 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	dev->capture.enc_level = V4L2_MPEG_VIDEO_H264_LEVEL_4_0;
 
 	/* get the preview component ready */
-	ret = vchiq_mmal_component_init(
-			dev->instance, "ril.video_render",
+	ret = vchiq_mmal_component_init(dev->instance,
+					"ril.video_render",
 			&dev->component[COMP_PREVIEW]);
 	if (ret < 0)
 		goto unreg_camera;
@@ -1669,8 +1665,8 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	}
 
 	/* get the image encoder component ready */
-	ret = vchiq_mmal_component_init(
-		dev->instance, "ril.image_encode",
+	ret = vchiq_mmal_component_init(dev->instance,
+					"ril.image_encode",
 		&dev->component[COMP_IMAGE_ENCODE]);
 	if (ret < 0)
 		goto unreg_preview;
@@ -1731,15 +1727,13 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 
 unreg_vid_encoder:
 	pr_err("Cleanup: Destroy video encoder\n");
-	vchiq_mmal_component_finalise(
-		dev->instance,
-		dev->component[COMP_VIDEO_ENCODE]);
+	vchiq_mmal_component_finalise(dev->instance,
+				      dev->component[COMP_VIDEO_ENCODE]);
 
 unreg_image_encoder:
 	pr_err("Cleanup: Destroy image encoder\n");
-	vchiq_mmal_component_finalise(
-		dev->instance,
-		dev->component[COMP_IMAGE_ENCODE]);
+	vchiq_mmal_component_finalise(dev->instance,
+				      dev->component[COMP_IMAGE_ENCODE]);
 
 unreg_preview:
 	pr_err("Cleanup: Destroy video render\n");
-- 
2.21.0


