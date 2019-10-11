X-GM-THRID: 6746660387703226368
X-Received: by 2002:a05:651c:150:: with SMTP id c16mr10510578ljd.89.1570829280620;
        Fri, 11 Oct 2019 14:28:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9d44:: with SMTP id y4ls1145662ljj.4.gmail; Fri, 11 Oct
 2019 14:27:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxf3OCdipjZpu85ahLGZzuC/Nn3frG2n2Mj9TtGJcSfAnAvUHgMRT48csQ6y1lScgwgbOeM
X-Received: by 2002:a2e:9e4c:: with SMTP id g12mr10613769ljk.62.1570829279172;
        Fri, 11 Oct 2019 14:27:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570829279; cv=none;
        d=google.com; s=arc-20160816;
        b=WXjYuGdZJphqZiSr9uWn9pstmG1Wxg0DkUkhxbLPmdchXLAYBUdOkVNT/Okgdbou6R
         gH9w70WMaKFbQGLtGUZ9VUuzAZVF6XG15ZEeQO6gPbzGEGcmMAcWxLjrRLZje4XkJO8v
         jDHb2hlQhEV0W6jMhveyLxn7gSTaZEmgUNVJrjXJTtCsi1gCkyo00k0TbeF4lPo7hGLA
         gBZ57XPLBOFT/uCNMAOtFdR5r+LuNH0zc0BXmn6LerbGrBdiNsMWACKgTuTauA+ZyJru
         VOl7LrvZ5rZKywOoQYju+zPdc4ExQ1zyf2004M7NZSNNsMoA4Qq4AFhWLEGIaS5Ajanu
         ybWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=bfKWmljBhhbz3pJBgekKZhzWDuOhbB2Ddk+2ciq5ka8=;
        b=ovv/tZ6PlrKTyDgd/5Qm2jLDk7JEQ4uc/ONNxx6f1qPi9e5HOMIZfEhKM/dfg0UxLY
         +bKEojOVKPr3IaRXbdClHj63Q+89JSHVoGGYU2pbeCJ2VcYiC00aolC7lyEoX7NCAQD4
         0tYfFbJf3YwEyPCjtDHlCE3kNRNgE6RtRKMWgZA10cgZ41iFeqJnGj1KU8v0Isc0forr
         oLNF3PVUKQ5d2K+fdfj2fgf2FvpDDVsIvD1ukWAJPHHyyQPKxqIEj/q/ndvAfyJDDA4X
         gEJpC1w5Ro51T9oNNrpqYVUxDpYdcJnArFLClzm7O4zDkdObSKfRcrYTAQTRPYwplYsn
         RdpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ohL+8VJP;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id z4si396847lfe.4.2019.10.11.14.27.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 14:27:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ohL+8VJP;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id n14so13329171wrw.9
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Oct 2019 14:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bfKWmljBhhbz3pJBgekKZhzWDuOhbB2Ddk+2ciq5ka8=;
        b=ohL+8VJP0l1i/xy0IfSmPtrL86ip7fjeuW1/iu+Sq+coC15EESOFdIzzuM2SkrzcDp
         fWkdD/TWp29+ZqHi+8G/Hjx96kwjYoTWtIElaX1yqFaUQ+JKGvg4ABxezy94lJmB3Puk
         Rb+GgD4njHOCran2sa2lSWA2kW/vsf2H4/MazSua3/X7YQ3/1fjtmNLGm3+7JPjXU5ZO
         QT9qt6tFlpEXYYXhGQUhDhsx1Bg86f3vF3Oe15bCyn6QFVC7OQc/EkiIUdZBWADPinC1
         u4Zdg0h9GKwNGgVYSFooVhOPaJ+TOihFOA6BB4LBgOk7u4/Owc2aa0VOhy8povBPYnVV
         NbSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bfKWmljBhhbz3pJBgekKZhzWDuOhbB2Ddk+2ciq5ka8=;
        b=EyLX1fq+6eqSQ952mE8ogEabBLJI4vkCyVuKXBWsomPP2LAnW96UKPX0UBSwCyxOzc
         9COQZgT8h53ZL1xu7ldE/WxaRf2nvaWU4ULHwkpr/kQjtNAY4TFyraGevPsXl6lzLrjT
         k5Dp30zBPFTAJtSvGz7R4SDBmCog9SvHJJKLLFfz6SC4bi/swqAGnr8l5VMaPr5zDlfG
         KnJ0EHdFi3IhA/bMiSG1ufr45dLfAP8/AJcjodW6LI4MJhXH67fs+bP9D9bz8YBOdTik
         jTLPOCRTvuuYc87DBUHKtDdg2eG26UnrKLMImKqM0HGtzf+M9s7YQoycynChG7LsJQpX
         XCwQ==
X-Gm-Message-State: APjAAAW2dTFnUyyZP/manF6ws9e9k8OU9r84eT0nisa9GBIncx6XOo6K
	l3Su8YJrwCV+xIoJGw9dn5IYmAU3LHKhvvQ=
X-Received: by 2002:a5d:5542:: with SMTP id g2mr15196152wrw.115.1570829278309;
        Fri, 11 Oct 2019 14:27:58 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.googlemail.com with ESMTPSA id a13sm22797955wrf.73.2019.10.11.14.27.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 14:27:57 -0700 (PDT)
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
Subject: [PATCH] staging: vc04_services: fix warning of Logical continuations should be on the previous line
Date: Fri, 11 Oct 2019 22:27:45 +0100
Message-Id: <20191011212745.20262-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix warning of logical continuations should be on the previous line.
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 .../bcm2835-camera/bcm2835-camera.c           | 41 ++++++++-----------
 1 file changed, 17 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index d4d1e44b16b2..365bcd97e19d 100644
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
@@ -1090,8 +1088,7 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 
 	ret = vchiq_mmal_port_set_format(dev->instance, camera_port);
 
-	if (!ret
-	    && camera_port ==
+	if (!ret && camera_port ==
 	    &dev->component[COMP_CAMERA]->output[CAM_PORT_VIDEO]) {
 		bool overlay_enabled =
 		    !!dev->component[COMP_PREVIEW]->enabled;
@@ -1124,9 +1121,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
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
@@ -1154,9 +1150,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
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
@@ -1655,8 +1650,8 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	dev->capture.enc_level = V4L2_MPEG_VIDEO_H264_LEVEL_4_0;
 
 	/* get the preview component ready */
-	ret = vchiq_mmal_component_init(
-			dev->instance, "ril.video_render",
+	ret = vchiq_mmal_component_init(dev->instance,
+					"ril.video_render",
 			&dev->component[COMP_PREVIEW]);
 	if (ret < 0)
 		goto unreg_camera;
@@ -1669,8 +1664,8 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	}
 
 	/* get the image encoder component ready */
-	ret = vchiq_mmal_component_init(
-		dev->instance, "ril.image_encode",
+	ret = vchiq_mmal_component_init(dev->instance,
+					"ril.image_encode",
 		&dev->component[COMP_IMAGE_ENCODE]);
 	if (ret < 0)
 		goto unreg_preview;
@@ -1731,15 +1726,13 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 
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


