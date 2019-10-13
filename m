X-GM-THRID: 6747357864452423680
X-Received: by 2002:adf:9e02:: with SMTP id u2mr23821631wre.329.1570991675662;
        Sun, 13 Oct 2019 11:34:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9dc8:: with SMTP id g191ls5216252wme.2.gmail; Sun, 13
 Oct 2019 11:34:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxA2+In4aDR8iNFlaZxlK/r2DMGrA+J0sRfWgJ4/5M0mRwJTMc1LohK42qY3SuzzMmrJvRE
X-Received: by 2002:a1c:7dce:: with SMTP id y197mr11966703wmc.171.1570991674781;
        Sun, 13 Oct 2019 11:34:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570991674; cv=none;
        d=google.com; s=arc-20160816;
        b=zvMwSpknoQ5zFkyKRUMH3gGIN5/fXAgZU2b1eSG3Pz7KrdMUa6uDEOsHtnWXmw3GuP
         JI7iqz0/09sWSPC0Cbm56VsQ/7uirhSKH8OkQh/XynYMTtP416Khs9h6sDRllVMpuT30
         OlXAfVteKvFEkqsNgZ6h8r4LUIc2iFPZw2mcsvAgtwvvIszu0SbT/lg8Z5oie5cnQI6J
         BqRaomwLIzvH5P+O5u5P+hxHE4BbrFuQNfC5t+YiwZfOnU+AYyB3mauVw//4AtWTB0WV
         COc8n43W5R9CwnXJhpIKN4AaT7+pkxyVR2y/h9ksc9A/TaD28o5tAvnkCraX/A1TmWJd
         WHUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0hb/QoJuRlI9kZEWMbvwFXFmysWx0MkZJWXl1KLvPB4=;
        b=foD6q5EgD9tSMEl2nDhj8QLnGvV69n1gSniLG1tstkNE8akyI3klr8NNM2Bap4qlS+
         DPOpA0G8a9t2BTi0+l/6piTUwSpgZFLNkuQj0pOdnojjnx4h4l7eZzSgCOaBI13Uq+AH
         9jOwa2iiZIx3iQajoikBGHg1Mae46LOAVGxU/yQZq9mFwAdU4UHFXsA6fHMD6GFM8Aai
         H3dUkTFCSFJequvozJx9nKNHornk6ZXPYtpAPhT+iEu7r1bXoCqg/qtDcp0ea+5wMXBw
         VsGP01m1dCwLzJ65SKC9gNWFH99DkRdn3Bz7B+jrmpWeaa/MF4muFPw3YEAYE58tnZzb
         51mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sKGlMmgh;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id s65si481576wme.2.2019.10.13.11.34.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Oct 2019 11:34:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sKGlMmgh;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id h4so17135448wrv.7
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Oct 2019 11:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0hb/QoJuRlI9kZEWMbvwFXFmysWx0MkZJWXl1KLvPB4=;
        b=sKGlMmghr6ZuMCYuktwulfawWdCQo1IFkR3Tue8bB6ngNP8G1pPToyTI7xy7mKTVw7
         3eQnRbqgFRi1nyXlX5lu0ry+oSruM+YAqUgYtUl18wk2id2IDCM/4v/DCv9EhYW4/sXS
         P3T92m1KI0TI4EIb5Ud2Lq8Wd7CUks4w6D0tKDt1NiJKH7l/BTWfpOAHQ9NL+Mtqj9VV
         xZ803UA04mxew9oNUVDI2BrgBnRpAOYE1OceMsyPJV6C+5JvUjTD/e/EwNpp5uVCaYAD
         6i1Mj0Yq016QPs2PeVR2m0rVkwF2pWGe/7XNnQ9iuX1maCsPSVEAXVweLHrmnqjlSm1s
         cJeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0hb/QoJuRlI9kZEWMbvwFXFmysWx0MkZJWXl1KLvPB4=;
        b=Vavvta6kTvuZdOhd6AwMP3uHW9EfHCc44K7m8UUpe8MUZZ2IuVVO5DUHqkjVncvqe8
         QEI3SEZEdQ75P+yIU2saLCcMV3NavdPDWGL6dURHEtU+DOHzTpmgTVm+9pBdtgRKmcwY
         y/y6jGN3e/oStIJCCOi/CkpeZI87nPlG8emxVOnBiuE7nOsbMCzyGCqF6MYkjAy8lz2O
         6T+gEs0WXJ7ufuOPCZrbmHLLVCChlmUuErEBvJhZsUX5eTEd4LTmS4kntyBKr7/hq3DJ
         w8wiTjmLevyP5ioh+hS+lvRvZNDGOJCsmUBZQgRjy8X3cj0yARFHBDyZ0JwN3nGbOkun
         K3LA==
X-Gm-Message-State: APjAAAUbES7HfXQ64R6IMHvUXJLUrEEGLCRQFEj9tHvW+uH5rTHI4VJ7
	3FEbm4+kexnrf/TkbnrdgJ5eVe+OWAqe
X-Received: by 2002:a05:6000:1048:: with SMTP id c8mr7978617wrx.349.1570991674029;
        Sun, 13 Oct 2019 11:34:34 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.googlemail.com with ESMTPSA id q124sm32228220wma.5.2019.10.13.11.34.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Oct 2019 11:34:33 -0700 (PDT)
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
Subject: [PATCH 2/2] staging: vc04_services: fix lines ending with open parenthesis
Date: Sun, 13 Oct 2019 19:34:20 +0100
Message-Id: <20191013183420.13785-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191013183420.13785-1-jbi.octave@gmail.com>
References: <20191013183420.13785-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix lines ending with open parenthesis. Issue detected by checkpatch tool.
Within "controls.c", "mmal-vchiq.c" and" mmal-vchiq.h" files.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 .../vc04_services/bcm2835-camera/controls.c   | 208 +++++++++---------
 .../vc04_services/bcm2835-camera/mmal-vchiq.c |  20 +-
 .../vc04_services/bcm2835-camera/mmal-vchiq.h |  54 ++---
 3 files changed, 138 insertions(+), 144 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 89786c264867..015ace1e9506 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -67,10 +67,9 @@ enum bm2835_mmal_ctrl_type {
 
 struct bm2835_mmal_v4l2_ctrl;
 
-typedef	int(bm2835_mmal_v4l2_ctrl_cb)(
-				struct bm2835_mmal_dev *dev,
-				struct v4l2_ctrl *ctrl,
-				const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl);
+typedef	int(bm2835_mmal_v4l2_ctrl_cb)(struct bm2835_mmal_dev *dev,
+				      struct v4l2_ctrl *ctrl,
+				      const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl);
 
 struct bm2835_mmal_v4l2_ctrl {
 	u32 id; /* v4l2 control identifier */
@@ -169,7 +168,7 @@ static int ctrl_set_rational(struct bm2835_mmal_dev *dev,
 	rational_value.num = ctrl->val;
 	rational_value.den = 100;
 
-	return vchiq_mmal_port_parameter_set(dev->instance, control,
+	return vmp_prmtr_set(dev->instance, control,
 					     mmal_ctrl->mmal_id,
 					     &rational_value,
 					     sizeof(rational_value));
@@ -186,7 +185,7 @@ static int ctrl_set_value(struct bm2835_mmal_dev *dev,
 
 	u32_value = ctrl->val;
 
-	return vchiq_mmal_port_parameter_set(dev->instance, control,
+	return vmp_prmtr_set(dev->instance, control,
 					     mmal_ctrl->mmal_id,
 					     &u32_value, sizeof(u32_value));
 }
@@ -214,7 +213,7 @@ static int ctrl_set_iso(struct bm2835_mmal_dev *dev,
 	else
 		u32_value = 0;
 
-	return vchiq_mmal_port_parameter_set(dev->instance, control,
+	return vmp_prmtr_set(dev->instance, control,
 					     MMAL_PARAMETER_ISO,
 					     &u32_value, sizeof(u32_value));
 }
@@ -230,7 +229,7 @@ static int ctrl_set_value_ev(struct bm2835_mmal_dev *dev,
 
 	s32_value = (ctrl->val - 12) * 2;	/* Convert from index to 1/6ths */
 
-	return vchiq_mmal_port_parameter_set(dev->instance, control,
+	return vmp_prmtr_set(dev->instance, control,
 					     mmal_ctrl->mmal_id,
 					     &s32_value, sizeof(s32_value));
 }
@@ -247,19 +246,19 @@ static int ctrl_set_rotate(struct bm2835_mmal_dev *dev,
 
 	u32_value = ((ctrl->val % 360) / 90) * 90;
 
-	ret = vchiq_mmal_port_parameter_set(dev->instance, &camera->output[0],
-					    mmal_ctrl->mmal_id,
-					    &u32_value, sizeof(u32_value));
+	ret = vmp_prmtr_set(dev->instance, &camera->output[0],
+			    mmal_ctrl->mmal_id,
+			    &u32_value, sizeof(u32_value));
 	if (ret < 0)
 		return ret;
 
-	ret = vchiq_mmal_port_parameter_set(dev->instance, &camera->output[1],
-					    mmal_ctrl->mmal_id,
-					    &u32_value, sizeof(u32_value));
+	ret = vmp_prmtr_set(dev->instance, &camera->output[1],
+			    mmal_ctrl->mmal_id,
+			    &u32_value, sizeof(u32_value));
 	if (ret < 0)
 		return ret;
 
-	return vchiq_mmal_port_parameter_set(dev->instance, &camera->output[2],
+	return vmp_prmtr_set(dev->instance, &camera->output[2],
 					    mmal_ctrl->mmal_id,
 					    &u32_value, sizeof(u32_value));
 }
@@ -288,21 +287,24 @@ static int ctrl_set_flip(struct bm2835_mmal_dev *dev,
 	else
 		u32_value = MMAL_PARAM_MIRROR_NONE;
 
-	ret = vchiq_mmal_port_parameter_set(dev->instance, &camera->output[0],
-					    mmal_ctrl->mmal_id,
-					    &u32_value, sizeof(u32_value));
+	ret = vmp_prmtr_set(dev->instance,
+			    &camera->output[0],
+			    mmal_ctrl->mmal_id,
+			    &u32_value, sizeof(u32_value));
 	if (ret < 0)
 		return ret;
 
-	ret = vchiq_mmal_port_parameter_set(dev->instance, &camera->output[1],
-					    mmal_ctrl->mmal_id,
-					    &u32_value, sizeof(u32_value));
+	ret = vmp_prmtr_set(dev->instance,
+			    &camera->output[1],
+			    mmal_ctrl->mmal_id,
+			    &u32_value, sizeof(u32_value));
 	if (ret < 0)
 		return ret;
 
-	return vchiq_mmal_port_parameter_set(dev->instance, &camera->output[2],
-					    mmal_ctrl->mmal_id,
-					    &u32_value, sizeof(u32_value));
+	return vmp_prmtr_set(dev->instance,
+			     &camera->output[2],
+			     mmal_ctrl->mmal_id,
+			     &u32_value, sizeof(u32_value));
 }
 
 static int ctrl_set_exposure(struct bm2835_mmal_dev *dev,
@@ -341,16 +343,16 @@ static int ctrl_set_exposure(struct bm2835_mmal_dev *dev,
 		if (exp_mode == MMAL_PARAM_EXPOSUREMODE_OFF)
 			shutter_speed = dev->manual_shutter_speed;
 
-		ret = vchiq_mmal_port_parameter_set(dev->instance,
-						    control,
-						    MMAL_PARAMETER_SHUTTER_SPEED,
-						    &shutter_speed,
-						    sizeof(shutter_speed));
-		ret += vchiq_mmal_port_parameter_set(dev->instance,
-						     control,
-						     MMAL_PARAMETER_EXPOSURE_MODE,
-						     &exp_mode,
-						     sizeof(u32));
+		ret = vmp_prmtr_set(dev->instance,
+				    control,
+				    MMAL_PARAMETER_SHUTTER_SPEED,
+				    &shutter_speed,
+				    sizeof(shutter_speed));
+		ret += vmp_prmtr_set(dev->instance,
+				     control,
+				     MMAL_PARAMETER_EXPOSURE_MODE,
+				     &exp_mode,
+				     sizeof(u32));
 		dev->exposure_mode_active = exp_mode;
 	}
 	/* exposure_dynamic_framerate (V4L2_CID_EXPOSURE_AUTO_PRIORITY) should
@@ -391,7 +393,7 @@ static int ctrl_set_metering_mode(struct bm2835_mmal_dev *dev,
 
 		control = &dev->component[COMP_CAMERA]->control;
 
-		return vchiq_mmal_port_parameter_set(dev->instance, control,
+		return vmp_prmtr_set(dev->instance, control,
 					     mmal_ctrl->mmal_id,
 					     &u32_value, sizeof(u32_value));
 	} else {
@@ -423,7 +425,7 @@ static int ctrl_set_flicker_avoidance(struct bm2835_mmal_dev *dev,
 		break;
 	}
 
-	return vchiq_mmal_port_parameter_set(dev->instance, control,
+	return vmp_prmtr_set(dev->instance, control,
 					     mmal_ctrl->mmal_id,
 					     &u32_value, sizeof(u32_value));
 }
@@ -479,7 +481,7 @@ static int ctrl_set_awb_mode(struct bm2835_mmal_dev *dev,
 		break;
 	}
 
-	return vchiq_mmal_port_parameter_set(dev->instance, control,
+	return vmp_prmtr_set(dev->instance, control,
 					     mmal_ctrl->mmal_id,
 					     &u32_value, sizeof(u32_value));
 }
@@ -502,7 +504,7 @@ static int ctrl_set_awb_gains(struct bm2835_mmal_dev *dev,
 	gains.b_gain.num = dev->blue_gain;
 	gains.r_gain.den = gains.b_gain.den = 1000;
 
-	return vchiq_mmal_port_parameter_set(dev->instance, control,
+	return vmp_prmtr_set(dev->instance, control,
 					     mmal_ctrl->mmal_id,
 					     &gains, sizeof(gains));
 }
@@ -541,17 +543,15 @@ static int ctrl_set_image_effect(struct bm2835_mmal_dev *dev,
 
 			control = &dev->component[COMP_CAMERA]->control;
 
-			ret = vchiq_mmal_port_parameter_set(
-					dev->instance, control,
-					MMAL_PARAMETER_IMAGE_EFFECT_PARAMETERS,
-					&imagefx, sizeof(imagefx));
+			ret = vmp_prmtr_set(dev->instance, control,
+					    MMAL_PARAMETER_IMAGE_EFFECT_PARAMETERS,
+					    &imagefx, sizeof(imagefx));
 			if (ret)
 				goto exit;
 
-			ret = vchiq_mmal_port_parameter_set(
-					dev->instance, control,
-					MMAL_PARAMETER_COLOUR_EFFECT,
-					&dev->colourfx, sizeof(dev->colourfx));
+			ret = vmp_prmtr_set(dev->instance, control,
+					    MMAL_PARAMETER_COLOUR_EFFECT,
+					    &dev->colourfx, sizeof(dev->colourfx));
 		}
 	}
 
@@ -577,10 +577,10 @@ static int ctrl_set_colfx(struct bm2835_mmal_dev *dev,
 	dev->colourfx.u = (ctrl->val & 0xff00) >> 8;
 	dev->colourfx.v = ctrl->val & 0xff;
 
-	ret = vchiq_mmal_port_parameter_set(dev->instance, control,
-					    MMAL_PARAMETER_COLOUR_EFFECT,
-					    &dev->colourfx,
-					    sizeof(dev->colourfx));
+	ret = vmp_prmtr_set(dev->instance, control,
+			    MMAL_PARAMETER_COLOUR_EFFECT,
+			    &dev->colourfx,
+			    sizeof(dev->colourfx));
 
 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 		 "%s: After: mmal_ctrl:%p ctrl id:0x%x ctrl val:%d ret %d(%d)\n",
@@ -600,9 +600,9 @@ static int ctrl_set_bitrate(struct bm2835_mmal_dev *dev,
 
 	encoder_out = &dev->component[COMP_VIDEO_ENCODE]->output[0];
 
-	ret = vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
-					    mmal_ctrl->mmal_id, &ctrl->val,
-					    sizeof(ctrl->val));
+	ret = vmp_prmtr_set(dev->instance, encoder_out,
+			    mmal_ctrl->mmal_id, &ctrl->val,
+			    sizeof(ctrl->val));
 
 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 		 "%s: After: mmal_ctrl:%p ctrl id:0x%x ctrl val:%d ret %d(%d)\n",
@@ -637,10 +637,10 @@ static int ctrl_set_bitrate_mode(struct bm2835_mmal_dev *dev,
 		break;
 	}
 
-	vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
-				      mmal_ctrl->mmal_id,
-					     &bitrate_mode,
-					     sizeof(bitrate_mode));
+	vmp_prmtr_set(dev->instance, encoder_out,
+		      mmal_ctrl->mmal_id,
+		      &bitrate_mode,
+		      sizeof(bitrate_mode));
 	return 0;
 }
 
@@ -655,7 +655,7 @@ static int ctrl_set_image_encode_output(struct bm2835_mmal_dev *dev,
 
 	u32_value = ctrl->val;
 
-	return vchiq_mmal_port_parameter_set(dev->instance, jpeg_out,
+	return vmp_prmtr_set(dev->instance, jpeg_out,
 					     mmal_ctrl->mmal_id,
 					     &u32_value, sizeof(u32_value));
 }
@@ -671,7 +671,7 @@ static int ctrl_set_video_encode_param_output(struct bm2835_mmal_dev *dev,
 
 	u32_value = ctrl->val;
 
-	return vchiq_mmal_port_parameter_set(dev->instance, vid_enc_ctl,
+	return vmp_prmtr_set(dev->instance, vid_enc_ctl,
 					     mmal_ctrl->mmal_id,
 					     &u32_value, sizeof(u32_value));
 }
@@ -779,8 +779,8 @@ static int ctrl_set_video_encode_profile_level(struct bm2835_mmal_dev *dev,
 			break;
 		}
 
-		ret = vchiq_mmal_port_parameter_set(dev->instance,
-						    &dev->component[COMP_VIDEO_ENCODE]->output[0],
+		ret = vmp_prmtr_set(dev->instance,
+				    &dev->component[COMP_VIDEO_ENCODE]->output[0],
 			mmal_ctrl->mmal_id,
 			&param, sizeof(param));
 	}
@@ -816,22 +816,22 @@ static int ctrl_set_scene_mode(struct bm2835_mmal_dev *dev,
 			 "%s: scene mode none: shut_speed %d, exp_mode %d, metering %d\n",
 			 __func__, shutter_speed, dev->exposure_mode_user,
 			 dev->metering_mode);
-		ret = vchiq_mmal_port_parameter_set(dev->instance,
-						    control,
-						    MMAL_PARAMETER_SHUTTER_SPEED,
-						    &shutter_speed,
-						    sizeof(shutter_speed));
-		ret += vchiq_mmal_port_parameter_set(dev->instance,
-						     control,
-						     MMAL_PARAMETER_EXPOSURE_MODE,
-						     &dev->exposure_mode_user,
-						     sizeof(u32));
+		ret = vmp_prmtr_set(dev->instance,
+				    control,
+				    MMAL_PARAMETER_SHUTTER_SPEED,
+				    &shutter_speed,
+				    sizeof(shutter_speed));
+		ret += vmp_prmtr_set(dev->instance,
+				     control,
+				     MMAL_PARAMETER_EXPOSURE_MODE,
+				     &dev->exposure_mode_user,
+				     sizeof(u32));
 		dev->exposure_mode_active = dev->exposure_mode_user;
-		ret += vchiq_mmal_port_parameter_set(dev->instance,
-						     control,
-						     MMAL_PARAMETER_EXP_METERING_MODE,
-						     &dev->metering_mode,
-						     sizeof(u32));
+		ret += vmp_prmtr_set(dev->instance,
+				     control,
+				     MMAL_PARAMETER_EXP_METERING_MODE,
+				     &dev->metering_mode,
+				     sizeof(u32));
 		ret += set_framerate_params(dev);
 	} else {
 		/* Set up scene mode */
@@ -867,23 +867,23 @@ static int ctrl_set_scene_mode(struct bm2835_mmal_dev *dev,
 			 "%s: scene mode none: shut_speed %d, exp_mode %d, metering %d\n",
 			 __func__, shutter_speed, exposure_mode, metering_mode);
 
-		ret = vchiq_mmal_port_parameter_set(dev->instance, control,
-						    MMAL_PARAMETER_SHUTTER_SPEED,
-						    &shutter_speed,
-						    sizeof(shutter_speed));
-		ret += vchiq_mmal_port_parameter_set(dev->instance, control,
-						     MMAL_PARAMETER_EXPOSURE_MODE,
-						     &exposure_mode,
-						     sizeof(u32));
+		ret = vmp_prmtr_set(dev->instance, control,
+				    MMAL_PARAMETER_SHUTTER_SPEED,
+				    &shutter_speed,
+				    sizeof(shutter_speed));
+		ret += vmp_prmtr_set(dev->instance, control,
+				     MMAL_PARAMETER_EXPOSURE_MODE,
+				     &exposure_mode,
+				     sizeof(u32));
 		dev->exposure_mode_active = exposure_mode;
-		ret += vchiq_mmal_port_parameter_set(dev->instance, control,
-						     MMAL_PARAMETER_EXPOSURE_MODE,
-						     &exposure_mode,
-						     sizeof(u32));
-		ret += vchiq_mmal_port_parameter_set(dev->instance, control,
-						     MMAL_PARAMETER_EXP_METERING_MODE,
-						     &metering_mode,
-						     sizeof(u32));
+		ret += vmp_prmtr_set(dev->instance, control,
+				     MMAL_PARAMETER_EXPOSURE_MODE,
+				     &exposure_mode,
+				     sizeof(u32));
+		ret += vmp_prmtr_set(dev->instance, control,
+				     MMAL_PARAMETER_EXP_METERING_MODE,
+				     &metering_mode,
+				     sizeof(u32));
 		ret += set_framerate_params(dev);
 	}
 	if (ret) {
@@ -1208,18 +1208,18 @@ int set_framerate_params(struct bm2835_mmal_dev *dev)
 		 fps_range.fps_high.num,
 		 fps_range.fps_high.den);
 
-	ret = vchiq_mmal_port_parameter_set(dev->instance,
-					    &dev->component[COMP_CAMERA]->output[CAM_PORT_PREVIEW],
-					    MMAL_PARAMETER_FPS_RANGE,
-					    &fps_range, sizeof(fps_range));
-	ret += vchiq_mmal_port_parameter_set(dev->instance,
-					     &dev->component[COMP_CAMERA]->output[CAM_PORT_VIDEO],
-					     MMAL_PARAMETER_FPS_RANGE,
-					     &fps_range, sizeof(fps_range));
-	ret += vchiq_mmal_port_parameter_set(dev->instance,
-					     &dev->component[COMP_CAMERA]->output[CAM_PORT_CAPTURE],
-					     MMAL_PARAMETER_FPS_RANGE,
-					     &fps_range, sizeof(fps_range));
+	ret = vmp_prmtr_set(dev->instance,
+			    &dev->component[COMP_CAMERA]->output[CAM_PORT_PREVIEW],
+			    MMAL_PARAMETER_FPS_RANGE,
+			    &fps_range, sizeof(fps_range));
+	ret += vmp_prmtr_set(dev->instance,
+			     &dev->component[COMP_CAMERA]->output[CAM_PORT_VIDEO],
+			     MMAL_PARAMETER_FPS_RANGE,
+			     &fps_range, sizeof(fps_range));
+	ret += vmp_prmtr_set(dev->instance,
+			     &dev->component[COMP_CAMERA]->output[CAM_PORT_CAPTURE],
+			     MMAL_PARAMETER_FPS_RANGE,
+			     &fps_range, sizeof(fps_range));
 	if (ret)
 		v4l2_dbg(0, bcm2835_v4l2_debug, &dev->v4l2_dev,
 			 "Failed to set fps ret %d\n", ret);
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 1c180ead4a20..8ff21a90d5ef 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -1397,9 +1397,9 @@ int vchiq_mmal_port_set_format(struct vchiq_mmal_instance *instance,
 	return ret;
 }
 
-int vchiq_mmal_port_parameter_set(struct vchiq_mmal_instance *instance,
-				  struct vchiq_mmal_port *port,
-				  u32 parameter, void *value, u32 value_size)
+int vmp_prmtr_set(struct vchiq_mmal_instance *instance,
+		  struct vchiq_mmal_port *port,
+		  u32 parameter, void *value, u32 value_size)
 {
 	int ret;
 
@@ -1482,9 +1482,9 @@ int vchiq_mmal_port_disable(struct vchiq_mmal_instance *instance,
 /* ports will be connected in a tunneled manner so data buffers
  * are not handled by client.
  */
-int vchiq_mmal_port_connect_tunnel(struct vchiq_mmal_instance *instance,
-				   struct vchiq_mmal_port *src,
-				   struct vchiq_mmal_port *dst)
+int vmp_cnnct_tunnel(struct vchiq_mmal_instance *instance,
+		     struct vchiq_mmal_port *src,
+		     struct vchiq_mmal_port *dst)
 {
 	int ret;
 
@@ -1718,8 +1718,8 @@ int vchiq_mmal_component_finalise(struct vchiq_mmal_instance *instance,
 /*
  * cause a mmal component to be enabled
  */
-int vchiq_mmal_component_enable(struct vchiq_mmal_instance *instance,
-				struct vchiq_mmal_component *component)
+int vm_cmpnt_enable(struct vchiq_mmal_instance *instance,
+		    struct vchiq_mmal_component *component)
 {
 	int ret;
 
@@ -1743,8 +1743,8 @@ int vchiq_mmal_component_enable(struct vchiq_mmal_instance *instance,
 /*
  * cause a mmal component to be enabled
  */
-int vchiq_mmal_component_disable(struct vchiq_mmal_instance *instance,
-				 struct vchiq_mmal_component *component)
+int vm_cmpnt_disable(struct vchiq_mmal_instance *instance,
+		     struct vchiq_mmal_component *component)
 {
 	int ret;
 
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
index 47897e81ec58..a24caab09784 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
@@ -41,11 +41,10 @@ struct vchiq_mmal_port_buffer {
 
 struct vchiq_mmal_port;
 
-typedef void (*vchiq_mmal_buffer_cb)(
-		struct vchiq_mmal_instance  *instance,
-		struct vchiq_mmal_port *port,
-		int status, struct mmal_buffer *buffer,
-		unsigned long length, u32 mmal_flags, s64 dts, s64 pts);
+typedef void (*vchiq_mmal_buffer_cb)(struct vchiq_mmal_instance  *instance,
+				     struct vchiq_mmal_port *port,
+				     int status, struct mmal_buffer *buffer,
+				     unsigned long length, u32 mmal_flags, s64 dts, s64 pts);
 
 struct vchiq_mmal_port {
 	u32 enabled:1;
@@ -99,32 +98,27 @@ int vchiq_mmal_finalise(struct vchiq_mmal_instance *instance);
 /* Initialise a mmal component and its ports
  *
  */
-int vchiq_mmal_component_init(
-		struct vchiq_mmal_instance *instance,
-		const char *name,
-		struct vchiq_mmal_component **component_out);
+int vchiq_mmal_component_init(struct vchiq_mmal_instance *instance,
+			      const char *name,
+			      struct vchiq_mmal_component **component_out);
 
-int vchiq_mmal_component_finalise(
-		struct vchiq_mmal_instance *instance,
-		struct vchiq_mmal_component *component);
+int vchiq_mmal_component_finalise(struct vchiq_mmal_instance *instance,
+				  struct vchiq_mmal_component *component);
 
-int vchiq_mmal_component_enable(
-		struct vchiq_mmal_instance *instance,
-		struct vchiq_mmal_component *component);
+int vm_cmpnt_enable(struct vchiq_mmal_instance *instance,
+		    struct vchiq_mmal_component *component);
 
-int vchiq_mmal_component_disable(
-		struct vchiq_mmal_instance *instance,
-		struct vchiq_mmal_component *component);
+int vm_cmpnt_disable(struct vchiq_mmal_instance *instance,
+		     struct vchiq_mmal_component *component);
 
 /* enable a mmal port
  *
  * enables a port and if a buffer callback provided enque buffer
  * headers as appropriate for the port.
  */
-int vchiq_mmal_port_enable(
-		struct vchiq_mmal_instance *instance,
-		struct vchiq_mmal_port *port,
-		vchiq_mmal_buffer_cb buffer_cb);
+int vchiq_mmal_port_enable(struct vchiq_mmal_instance *instance,
+			   struct vchiq_mmal_port *port,
+			   vchiq_mmal_buffer_cb buffer_cb);
 
 /* disable a port
  *
@@ -133,11 +127,11 @@ int vchiq_mmal_port_enable(
 int vchiq_mmal_port_disable(struct vchiq_mmal_instance *instance,
 			    struct vchiq_mmal_port *port);
 
-int vchiq_mmal_port_parameter_set(struct vchiq_mmal_instance *instance,
-				  struct vchiq_mmal_port *port,
-				  u32 parameter,
-				  void *value,
-				  u32 value_size);
+int vmp_prmtr_set(struct vchiq_mmal_instance *instance,
+		  struct vchiq_mmal_port *port,
+		  u32 parameter,
+		  void *value,
+		  u32 value_size);
 
 int vchiq_mmal_port_parameter_get(struct vchiq_mmal_instance *instance,
 				  struct vchiq_mmal_port *port,
@@ -148,9 +142,9 @@ int vchiq_mmal_port_parameter_get(struct vchiq_mmal_instance *instance,
 int vchiq_mmal_port_set_format(struct vchiq_mmal_instance *instance,
 			       struct vchiq_mmal_port *port);
 
-int vchiq_mmal_port_connect_tunnel(struct vchiq_mmal_instance *instance,
-				   struct vchiq_mmal_port *src,
-				   struct vchiq_mmal_port *dst);
+int vmp_cnnct_tunnel(struct vchiq_mmal_instance *instance,
+		     struct vchiq_mmal_port *src,
+		     struct vchiq_mmal_port *dst);
 
 int vchiq_mmal_version(struct vchiq_mmal_instance *instance,
 		       u32 *major_out,
-- 
2.21.0


