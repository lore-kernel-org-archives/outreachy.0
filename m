X-GM-THRID: 6747357864452423680
X-Received: by 2002:a05:600c:2:: with SMTP id g2mr11725129wmc.163.1570991674316;
        Sun, 13 Oct 2019 11:34:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:e90e:: with SMTP id f14ls4598061wrm.7.gmail; Sun, 13 Oct
 2019 11:34:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqza+wdvP4nG+/0iUylHPANyWmek+p0KbOP7Wqs4eppWRUuIJAUDGx0fA6OyoQ2jB0m3cVt4
X-Received: by 2002:a5d:6241:: with SMTP id m1mr23683116wrv.213.1570991673329;
        Sun, 13 Oct 2019 11:34:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570991673; cv=none;
        d=google.com; s=arc-20160816;
        b=eg1HgbBBuDrfU8CsvuIkmmxxVB/PWU3xB0CrS2dG7EipA8TWOKgULRaRGJONLM8eA1
         TnlCpypBI8oe+bgqGFrbBvEz5x0Z6JWjWuKd+bfCUzJy7tN+Uf1pY326TI1iF09K9D2c
         MuKy+g7OtImMlKI3j+IPJCZs97AHYaCjAUau0hA+58AHAUERpIwHDgj4l6tQJ4kKkyj7
         MGilMgpbunVa05JzGEdoPmOAulqkl0LDH14xa/6pg8keBV+cthzv0dAIgQOdMuApzdo9
         gDidokA16k+ddwq8gsJzML72s7kBrQ8A7A6qRQIaSGh5us66VigEPLsLoHmysQ99/pNZ
         v37Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=bmWTAMSWU9ZBSdCAOtNulmnKEKBabjlDIAO/C/TxPzI=;
        b=xuHbKlTqnbesZUoLhxIH5a0qQyLOBzrqKpL4Vt+bBLsJqD7/zhhKOh3VEnBwrMhNbR
         PxIfUCZbmgmTwnqKGNgyHGZVVuM4UBUjEP0I34DaPrhl2RuORdP69PNHVIYYBgAiwgi1
         jN13kdtBhxUCtQSm+jdTziWIPwKsIn4JNss+TWa59/P3X5fQWj3rR6734+tKJgh0q0Rv
         CCTw0eit5i0Kv6RNb74RrwjQkcDF+xlI47UvlAgtvev8VEMNdf5efakEqolGElcHefC/
         NzfJjb16JLUp7LVngvqOsEF+4JpP9wiG8XaTQZ9s6D/o4zppYFiUgXDczyw58jqPXkbD
         HKaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XWCMFk+B;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id l3si746172wmg.0.2019.10.13.11.34.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Oct 2019 11:34:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XWCMFk+B;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id 5so14966561wmg.0
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Oct 2019 11:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bmWTAMSWU9ZBSdCAOtNulmnKEKBabjlDIAO/C/TxPzI=;
        b=XWCMFk+BMOARsotgv+xZX/lXnYqupIqEO/cQWp6pF5plbXPae5q9peATw80yWFNDp1
         woVK6zU0HWST+zx9frCvEIk/V5LT6sWO+EAr7NnF11DEVsiN+XGZkYAMQlAmM8gdRRpP
         TcxCQRgJTDDPoZaakVwgezy4o1D8TPUCgSYPmc1Q0Z0wAS/bbCIXWgVPkwAcl8ipsvct
         wTbU83O94IFLntNBluLQ9BGTr+8W6uR2EG01C0QKDb2RKuo9NV+s3K4UI3fP9fVKeF9K
         ouwGRDH29WkBjCVrPvlbOFDJ1IvPAgKzJDgoMgk5n2pXfAxe52ssTqEK8oQNlaZeIR9Z
         BDqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bmWTAMSWU9ZBSdCAOtNulmnKEKBabjlDIAO/C/TxPzI=;
        b=UMlIVHZLEPMWVb0nNnUnBzwV/qe7Z/+841h14AbpS+5PSD/ZMpTfYkPDyb+D1xQ7eo
         UmbR6Pa7sZQEBrsEhjbm7gNMPMFh7zX+5mGwsWq9i9jBUf0+jimraEDUeNo7BlUrQieb
         XX1XyR1WA6nG72lPeuYTvnvQ6f54Iuix84EHJRziFJ0jtMISgxvOID18p7RKdnmdF+CV
         NkU2Evchgegdq1XDSwKx3SVnqrxfSBg7mseiI0yIoxneI+edJTEeGrGCbp+lhFkEg8hL
         4cgEhGi4Q25thPHPaCzlf3sSRXwNxoA7i2xM/W+4E9pNBw1nRrFyXX7WbAIqoG5r6OKG
         QRIA==
X-Gm-Message-State: APjAAAUNjQ0hQZb6JwmMzaWIel3ZIe+tOvwT9iOY60ZaiH55rCnzbYzc
	3uKkO8nyjnWZWRXvuiyUPtc1YUsGQmxJ
X-Received: by 2002:a7b:cf28:: with SMTP id m8mr12466941wmg.63.1570991672590;
        Sun, 13 Oct 2019 11:34:32 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.googlemail.com with ESMTPSA id q124sm32228220wma.5.2019.10.13.11.34.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Oct 2019 11:34:32 -0700 (PDT)
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
Subject: [PATCH 1/2] staging: vc04_services: fix lines ending with open parenthesis
Date: Sun, 13 Oct 2019 19:34:19 +0100
Message-Id: <20191013183420.13785-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix lines ending with open parenthesis. Issue detected by checkpatch tool.
In the process, change driver functions name in the multiple files from:
vchiq_mmal_port_parameter_set to vmp_prmtr_set
vchiq_mmal_component_disable to vm_cmpnt_disable
vchiq_mmal_port_connect_tunnel to vmp_cnnct_tunnel
vchiq_mmal_component_enable to vm_cmpnt_enable

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 .../bcm2835-camera/bcm2835-camera.c           | 191 ++++++++----------
 1 file changed, 89 insertions(+), 102 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index beb6a0063bb8..0ffe95b3bfb2 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -337,12 +337,11 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 			if (is_capturing(dev)) {
 				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 					 "Grab another frame");
-				vchiq_mmal_port_parameter_set(
-					instance,
-					dev->capture.camera_port,
-					MMAL_PARAMETER_CAPTURE,
-					&dev->capture.frame_count,
-					sizeof(dev->capture.frame_count));
+				vmp_prmtr_set(instance,
+					      dev->capture.camera_port,
+					      MMAL_PARAMETER_CAPTURE,
+					      &dev->capture.frame_count,
+					      sizeof(dev->capture.frame_count));
 			}
 			if (vchiq_mmal_submit_buffer(instance, port, buf))
 				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
@@ -392,12 +391,11 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 	    is_capturing(dev)) {
 		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 			 "Grab another frame as buffer has EOS");
-		vchiq_mmal_port_parameter_set(
-			instance,
-			dev->capture.camera_port,
-			MMAL_PARAMETER_CAPTURE,
-			&dev->capture.frame_count,
-			sizeof(dev->capture.frame_count));
+		vmp_prmtr_set(instance,
+			      dev->capture.camera_port,
+			      MMAL_PARAMETER_CAPTURE,
+			      &dev->capture.frame_count,
+			      sizeof(dev->capture.frame_count));
 	}
 }
 
@@ -406,20 +404,18 @@ static int enable_camera(struct bm2835_mmal_dev *dev)
 	int ret;
 
 	if (!dev->camera_use_count) {
-		ret = vchiq_mmal_port_parameter_set(
-			dev->instance,
-			&dev->component[COMP_CAMERA]->control,
-			MMAL_PARAMETER_CAMERA_NUM, &dev->camera_num,
-			sizeof(dev->camera_num));
+		ret = vmp_prmtr_set(dev->instance,
+				    &dev->component[COMP_CAMERA]->control,
+				    MMAL_PARAMETER_CAMERA_NUM, &dev->camera_num,
+				    sizeof(dev->camera_num));
 		if (ret < 0) {
 			v4l2_err(&dev->v4l2_dev,
 				 "Failed setting camera num, ret %d\n", ret);
 			return -EINVAL;
 		}
 
-		ret = vchiq_mmal_component_enable(
-				dev->instance,
-				dev->component[COMP_CAMERA]);
+		ret = vm_cmpnt_enable(dev->instance,
+				      dev->component[COMP_CAMERA]);
 		if (ret < 0) {
 			v4l2_err(&dev->v4l2_dev,
 				 "Failed enabling camera, ret %d\n", ret);
@@ -449,19 +445,17 @@ static int disable_camera(struct bm2835_mmal_dev *dev)
 		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 			 "Disabling camera\n");
 		ret =
-		    vchiq_mmal_component_disable(
-				dev->instance,
-				dev->component[COMP_CAMERA]);
+		    vm_cmpnt_disable(dev->instance,
+				     dev->component[COMP_CAMERA]);
 		if (ret < 0) {
 			v4l2_err(&dev->v4l2_dev,
 				 "Failed disabling camera, ret %d\n", ret);
 			return -EINVAL;
 		}
-		vchiq_mmal_port_parameter_set(
-			dev->instance,
-			&dev->component[COMP_CAMERA]->control,
-			MMAL_PARAMETER_CAMERA_NUM, &i,
-			sizeof(i));
+		vmp_prmtr_set(dev->instance,
+			      &dev->component[COMP_CAMERA]->control,
+			      MMAL_PARAMETER_CAMERA_NUM, &i,
+			      sizeof(i));
 	}
 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 		 "Camera refcount now %d\n", dev->camera_use_count);
@@ -569,11 +563,11 @@ static int start_streaming(struct vb2_queue *vq, unsigned int count)
 	}
 
 	/* capture the first frame */
-	vchiq_mmal_port_parameter_set(dev->instance,
-				      dev->capture.camera_port,
-				      MMAL_PARAMETER_CAPTURE,
-				      &dev->capture.frame_count,
-				      sizeof(dev->capture.frame_count));
+	vmp_prmtr_set(dev->instance,
+		      dev->capture.camera_port,
+		      MMAL_PARAMETER_CAPTURE,
+		      &dev->capture.frame_count,
+		      sizeof(dev->capture.frame_count));
 	return 0;
 }
 
@@ -601,11 +595,11 @@ static void stop_streaming(struct vb2_queue *vq)
 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev, "stopping capturing\n");
 
 	/* stop capturing frames */
-	vchiq_mmal_port_parameter_set(dev->instance,
-				      dev->capture.camera_port,
-				      MMAL_PARAMETER_CAPTURE,
-				      &dev->capture.frame_count,
-				      sizeof(dev->capture.frame_count));
+	vmp_prmtr_set(dev->instance,
+		      dev->capture.camera_port,
+		      MMAL_PARAMETER_CAPTURE,
+		      &dev->capture.frame_count,
+		      sizeof(dev->capture.frame_count));
 
 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 		 "disabling connection\n");
@@ -675,9 +669,10 @@ static int set_overlay_params(struct bm2835_mmal_dev *dev,
 			.height = dev->overlay.w.height,
 		},
 	};
-	return vchiq_mmal_port_parameter_set(dev->instance, port,
-					     MMAL_PARAMETER_DISPLAYREGION,
-					     &prev_config, sizeof(prev_config));
+	return vmp_prmtr_set(dev->instance,
+			     port,
+			     MMAL_PARAMETER_DISPLAYREGION,
+			     &prev_config, sizeof(prev_config));
 }
 
 /* overlay ioctl */
@@ -772,12 +767,12 @@ static int vidioc_overlay(struct file *file, void *f, unsigned int on)
 		ret = vchiq_mmal_port_disable(dev->instance, src);
 		if (!ret)
 			ret =
-			    vchiq_mmal_port_connect_tunnel(dev->instance, src,
-							   NULL);
+			    vmp_cnnct_tunnel(dev->instance,
+					     src,
+					     NULL);
 		if (ret >= 0)
-			ret = vchiq_mmal_component_disable(
-					dev->instance,
-					dev->component[COMP_PREVIEW]);
+			ret = vm_cmpnt_disable(dev->instance,
+					       dev->component[COMP_PREVIEW]);
 
 		disable_camera(dev);
 		return ret;
@@ -797,15 +792,14 @@ static int vidioc_overlay(struct file *file, void *f, unsigned int on)
 	if (enable_camera(dev) < 0)
 		return -EINVAL;
 
-	ret = vchiq_mmal_component_enable(
-			dev->instance,
-			dev->component[COMP_PREVIEW]);
+	ret = vm_cmpnt_enable(dev->instance,
+			      dev->component[COMP_PREVIEW]);
 	if (ret < 0)
 		return ret;
 
 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev, "connecting %p to %p\n",
 		 src, dst);
-	ret = vchiq_mmal_port_connect_tunnel(dev->instance, src, dst);
+	ret = vmp_cnnct_tunnel(dev->instance, src, dst);
 	if (ret)
 		return ret;
 
@@ -1015,11 +1009,11 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 			 "vid_cap - disconnect previous tunnel\n");
 
 		/* Disconnect any previous connection */
-		vchiq_mmal_port_connect_tunnel(dev->instance,
-					       dev->capture.camera_port, NULL);
+		vmp_cnnct_tunnel(dev->instance,
+				 dev->capture.camera_port, NULL);
 		dev->capture.camera_port = NULL;
-		ret = vchiq_mmal_component_disable(dev->instance,
-						   dev->capture.encode_component);
+		ret = vm_cmpnt_disable(dev->instance,
+				       dev->capture.encode_component);
 		if (ret)
 			v4l2_err(&dev->v4l2_dev,
 				 "Failed to disable encode component %d\n",
@@ -1072,10 +1066,10 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 	}
 
 	remove_padding = mfmt->remove_padding;
-	vchiq_mmal_port_parameter_set(dev->instance,
-				      camera_port,
-				      MMAL_PARAMETER_NO_IMAGE_PADDING,
-				      &remove_padding, sizeof(remove_padding));
+	vmp_prmtr_set(dev->instance,
+		      camera_port,
+		      MMAL_PARAMETER_NO_IMAGE_PADDING,
+		      &remove_padding, sizeof(remove_padding));
 
 	camera_port->format.encoding_variant = 0;
 	camera_port->es.video.width = f->fmt.pix.width;
@@ -1107,10 +1101,9 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 						    preview_port);
 			if (!ret)
 				ret =
-				    vchiq_mmal_port_connect_tunnel(
-						dev->instance,
-						preview_port,
-						NULL);
+				    vmp_cnnct_tunnel(dev->instance,
+						     preview_port,
+						     NULL);
 		}
 		preview_port->es.video.width = f->fmt.pix.width;
 		preview_port->es.video.height = f->fmt.pix.height;
@@ -1124,9 +1117,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 					  dev->capture.timeperframe.numerator;
 		ret = vchiq_mmal_port_set_format(dev->instance, preview_port);
 		if (overlay_enabled) {
-			ret = vchiq_mmal_port_connect_tunnel(
-				dev->instance,
-				preview_port,
+			ret = vmp_cnnct_tunnel(dev->instance,
+					       preview_port,
 				&dev->component[COMP_PREVIEW]->input[0]);
 			if (!ret)
 				ret = vchiq_mmal_port_enable(dev->instance,
@@ -1154,10 +1146,9 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 			    camera_port->recommended_buffer.num;
 
 			ret =
-			    vchiq_mmal_port_connect_tunnel(
-					dev->instance,
-					camera_port,
-					&encode_component->input[0]);
+			    vmp_cnnct_tunnel(dev->instance,
+					     camera_port,
+					     &encode_component->input[0]);
 			if (ret) {
 				v4l2_dbg(1, bcm2835_v4l2_debug,
 					 &dev->v4l2_dev,
@@ -1205,9 +1196,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 			}
 
 			if (!ret) {
-				ret = vchiq_mmal_component_enable(
-						dev->instance,
-						encode_component);
+				ret = vm_cmpnt_enable(dev->instance,
+						      encode_component);
 				if (ret) {
 					v4l2_dbg(1, bcm2835_v4l2_debug,
 						 &dev->v4l2_dev,
@@ -1530,7 +1520,7 @@ static int set_camera_parameters(struct vchiq_mmal_instance *instance,
 		.use_stc_timestamp = MMAL_PARAM_TIMESTAMP_MODE_RAW_STC
 	};
 
-	return vchiq_mmal_port_parameter_set(instance, &camera->control,
+	return vmp_prmtr_set(instance, &camera->control,
 					    MMAL_PARAMETER_CAMERA_CONFIG,
 					    &cam_config, sizeof(cam_config));
 }
@@ -1655,9 +1645,9 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	dev->capture.enc_level = V4L2_MPEG_VIDEO_H264_LEVEL_4_0;
 
 	/* get the preview component ready */
-	ret = vchiq_mmal_component_init(
-			dev->instance, "ril.video_render",
-			&dev->component[COMP_PREVIEW]);
+	ret = vchiq_mmal_component_init(dev->instance,
+					"ril.video_render",
+					&dev->component[COMP_PREVIEW]);
 	if (ret < 0)
 		goto unreg_camera;
 
@@ -1669,9 +1659,9 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	}
 
 	/* get the image encoder component ready */
-	ret = vchiq_mmal_component_init(
-		dev->instance, "ril.image_encode",
-		&dev->component[COMP_IMAGE_ENCODE]);
+	ret = vchiq_mmal_component_init(dev->instance,
+					"ril.image_encode",
+					&dev->component[COMP_IMAGE_ENCODE]);
 	if (ret < 0)
 		goto unreg_preview;
 
@@ -1708,17 +1698,16 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	{
 		unsigned int enable = 1;
 
-		vchiq_mmal_port_parameter_set(
-			dev->instance,
-			&dev->component[COMP_VIDEO_ENCODE]->control,
-			MMAL_PARAMETER_VIDEO_IMMUTABLE_INPUT,
-			&enable, sizeof(enable));
-
-		vchiq_mmal_port_parameter_set(dev->instance,
-					      &dev->component[COMP_VIDEO_ENCODE]->control,
-					      MMAL_PARAMETER_MINIMISE_FRAGMENTATION,
-					      &enable,
-					      sizeof(enable));
+		vmp_prmtr_set(dev->instance,
+			      &dev->component[COMP_VIDEO_ENCODE]->control,
+			      MMAL_PARAMETER_VIDEO_IMMUTABLE_INPUT,
+			      &enable, sizeof(enable));
+
+		vmp_prmtr_set(dev->instance,
+			      &dev->component[COMP_VIDEO_ENCODE]->control,
+			      MMAL_PARAMETER_MINIMISE_FRAGMENTATION,
+			      &enable,
+			      sizeof(enable));
 	}
 	ret = bm2835_mmal_set_all_camera_controls(dev);
 	if (ret < 0) {
@@ -1731,15 +1720,13 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 
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
@@ -1799,13 +1786,13 @@ static void bcm2835_cleanup_instance(struct bm2835_mmal_dev *dev)
 	if (dev->capture.encode_component) {
 		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 			 "mmal_exit - disconnect tunnel\n");
-		vchiq_mmal_port_connect_tunnel(dev->instance,
-					       dev->capture.camera_port, NULL);
-		vchiq_mmal_component_disable(dev->instance,
-					     dev->capture.encode_component);
+		vmp_cnnct_tunnel(dev->instance,
+				 dev->capture.camera_port, NULL);
+		vm_cmpnt_disable(dev->instance,
+				 dev->capture.encode_component);
 	}
-	vchiq_mmal_component_disable(dev->instance,
-				     dev->component[COMP_CAMERA]);
+	vm_cmpnt_disable(dev->instance,
+			 dev->component[COMP_CAMERA]);
 
 	vchiq_mmal_component_finalise(dev->instance,
 				      dev->component[COMP_VIDEO_ENCODE]);
-- 
2.21.0


