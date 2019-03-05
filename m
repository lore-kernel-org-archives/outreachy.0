X-GM-THRID: 6665043213885112320
X-Received: by 2002:a19:c502:: with SMTP id w2mr253361lfe.15.1551826332937;
        Tue, 05 Mar 2019 14:52:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:c78b:: with SMTP id x133ls6490lff.1.gmail; Tue, 05 Mar
 2019 14:52:12 -0800 (PST)
X-Google-Smtp-Source: APXvYqxCYWa6mlKhqR3xOrhrcTvFQ3qZiyGnmfOeFc4BCBMnM9NV7xdU+VTB6bi32oh5RB243F3/
X-Received: by 2002:ac2:419a:: with SMTP id z26mr257785lfh.2.1551826331998;
        Tue, 05 Mar 2019 14:52:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551826331; cv=none;
        d=google.com; s=arc-20160816;
        b=WVsmU3+jdVgRGa681fPdLiWGAilUx2sCbQTIEYQgE96UyGj3HFqSroX29GQc8iiccX
         Jb40LCYY+yhZHV/25pT0dc6xtlWGdfdIL4XO4HL0TNtQuwSPlN88PdK/ls79rEUC5OpY
         8sUWtfIl5x31H1pU4MeDPEbEHMvITVBdg5srLIVPT8b0sKv1WKBaV0A9eGdfANX8rcBS
         +4kc4FNJkNdDQHoz7s2WZGx0REbm5tj7Kulk1qeSqNDrZFrAO2CPN+Usv4glh/biIemz
         KKGZuESxThrl7XyUwGK5Hg8dKdZbmiUm/ShH8ELttTVnioFCnlxCIYiz9tk+tKVErcCC
         tbCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=tmToSsB3DQtyIzfxRIOStcFmkEnZDyoW3XvnlqEAigg=;
        b=Su7IGXTel4a5Z63aTET1+AZObyBGSOGPd2lIvRR3HJJYPOd5CMeG0m2hCrk1O9LnJU
         4jCmvDNVX6HVB+MF2LChCPfcXdamT+v/en6XtrXnmGbn71bmWmjNafWGK/Gz603IttLa
         m3TtQOr5DZkE4cYZzgfo3Jhq0sm3dBHsaUWnvCjhAu+gD1O/bEh7aDWAeG90WMR2ECg/
         YXwh6WAw+mZ05K14HK4C1vRqi59nM7ylaOy+HrP3E4Q46TI3Js1g7LxddjHqHPEQImpC
         Z7iZNs5hqpwPBKX4JJKbwypqnZ3twQfxNzUJLk9y9huyFisu3ipOkAxRawJgVXFHWHCw
         2/uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sT4M+7Ea;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v27si1342lje.0.2019.03.05.14.52.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 14:52:11 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sT4M+7Ea;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id q1so11277101wrp.7
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 14:52:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=tmToSsB3DQtyIzfxRIOStcFmkEnZDyoW3XvnlqEAigg=;
        b=sT4M+7EauKxojqrcpCZdL+5jmAizzJJJkOrT9vVzaDlmNDzbrxoZWiAMbEjK14ypWR
         tOPI3O67UOZqgDbMJ6puyggamEuDeesmlywFRXfLsiWVex7lRsBshTZKaSVGVSC7/uL4
         63z38uR3qD3ghQz14wD8Fm35fjqJhEPCO0QCCFJhX3RxhYD2TCiTkA9kTrhRuvnMkLwU
         Lkj8ObAKYJ/wOUJHHRMXCaqL1w9Pz8uRtjpaCA03uHD/bdifndrsEYsJM0TpSOoWf892
         TftS5IlSlpabsEagp8GCeSx2HjKviMQvYduCnrUxcSfWNsGSwp3iGumHNthueQmgdJ2q
         EqAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=tmToSsB3DQtyIzfxRIOStcFmkEnZDyoW3XvnlqEAigg=;
        b=BuJEGi+7T0Ybn/aUa4hiMpVlIAEMYYn41bRK2wMr4RBm3tEGecANnatNCz1NJxa3wR
         IPBLmTkusalmGXp4S20eYL2phkhTpTv6QYOtsSsZKD2OfPYYGmB/LHwwZbyXmwcQ+jp4
         vvC521OyqCoiel4+bPyvNkJpxKRLvJkIKYuCa8eaFqezoK6WqTHXznQoKozwvHTGYsDY
         5wWrCOEldR7VZGL260iQEz7jGyfP1vHLMtiS/4CZ11D7UNkTqffYVK4rbil7kxClh2/8
         sQ6W5g4Z2lPFkOqho4OG2W42oSel3Vt1dTL33/TaYMVKcogvc5B69Or9Dz/JzoFBitMa
         hFRQ==
X-Gm-Message-State: APjAAAXWc/W8dRxBlRW0haDS0fKbdczA7zOeUD2jOSXmakDLWFT/4cBr
	oJZw3UZwnC36awyFafuI6wqP8Snt
X-Received: by 2002:a5d:4cd1:: with SMTP id c17mr695975wrt.229.1551826331424;
        Tue, 05 Mar 2019 14:52:11 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id i13sm17149418wrm.86.2019.03.05.14.52.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 14:52:10 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH v5 1/2] Fix multiple line dereference
Date: Wed,  6 Mar 2019 00:52:08 +0200
Message-Id: <1551826328-28067-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1551826297-28015-1-git-send-email-daniela.mormocea@gmail.com>
References: <1551826297-28015-1-git-send-email-daniela.mormocea@gmail.com>

Fix multiple line dereference to avoid checkpatch warnings

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---

Changes in v5:
-add driver name in all the patches from the series

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


