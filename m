X-GM-THRID: 6392575837302947840
X-Received: by 10.28.47.140 with SMTP id v134mr168876wmv.20.1488387561838;
        Wed, 01 Mar 2017 08:59:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.45.87 with SMTP id t84ls777225wmt.15.gmail; Wed, 01 Mar
 2017 08:59:21 -0800 (PST)
X-Received: by 10.223.142.196 with SMTP id q62mr356451wrb.8.1488387561256;
        Wed, 01 Mar 2017 08:59:21 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id i76si1464370wmh.1.2017.03.01.08.59.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 08:59:21 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id g10so6302002wrg.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 08:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=WNuDqAAlo4QtFZj9M+644KFfhjhW1s3hLXsWXXDV0so=;
        b=Y9jRv/hMxCbByvicxqv8NIvTb3uEOAHNxJqcRkk0twbSI4zW44fdi73TkUZARL+3qz
         2QUAdxtLb0AfRdWtCtHeYjj0OgO5ZEbkYh8HxkkagmCZNNxnGNzElbk93QuKIidwsEQS
         mPLW8EWclbmj3Q1N0SRfRl8wIV6IUoRv/rDObLjCkRhdebJAeClLUSUmLczPKjo/wLGm
         7wt0PY0OaD2H63igsuH3J+R6cp2tj1J7GlNClabC3WWi+rQDcen2R6ar95bJKEXlBJuy
         ozShHls2r+PrAj5FyCQToXjWQVEl191VOSUWFXxAJ+tg//d343lvMGWdpKudOppJgytF
         bxeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=WNuDqAAlo4QtFZj9M+644KFfhjhW1s3hLXsWXXDV0so=;
        b=lEkVnpoxbeGu2Xy8ClV/3yfaknM1DS9v3BJ1WDcP1Iv7gZOHx+4Op9AW2vff9lDQgO
         CAtgk/wTR15HYDOXqAfKxKB88yZa6STuPiiPVpBQ9Ng+RD1f7nMIs9Tkmoqiq2oxLtmu
         tY9jtXsnHR+TnBX08KkDCwG3TfVdCRcAozmytylhLpUWk1Gc5VmuNCGW4uXHtLhttwdg
         bGYT/oompTzEv05BXEjmmultmATQLLX6SXTDaoNkO60tDd/P9FXn0B06s5QJieVceDHG
         0HTO1Y9kJ6uQWUfB8Nm23Q+b3t8taG4BHsudLzIuggVHFz771QJuWY9Z4DGLJ3y0I7YB
         t5Xw==
X-Gm-Message-State: AMke39kCUAYThJ+/MsGQHyrqJhoWBhb7Et7ezyISKWhodnBekoCnPwX7f3z0gGdcnyh2BA==
X-Received: by 10.223.152.83 with SMTP id v77mr8181745wrb.109.1488387561044;
        Wed, 01 Mar 2017 08:59:21 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id w30sm7349668wrb.5.2017.03.01.08.59.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 08:59:20 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: swarren@wwwdotorg.org,
	lee@kernel.org,
	eric@anholt.net,
	gregkh@linuxfoundation.org,
	f.fainelli@gmail.com,
	rjui@broadcom.com,
	sbranden@broadcom.com
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 1/2] staging: bcm2835-camera: Remove unnecessary blank lines
Date: Wed,  1 Mar 2017 18:59:16 +0200
Message-Id: <f09348c5e49614cc3db55fc24fc937fb268ff0cf.1488387254.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1488387254.git.narcisaanamaria12@gmail.com>
References: <cover.1488387254.git.narcisaanamaria12@gmail.com>

This patch fixes the checkpatch.pl issue:
CHECK: Please don't use multiple blank lines

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-encodings.h  | 1 -
 drivers/staging/vc04_services/bcm2835-camera/mmal-msg-format.h | 1 -
 drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h        | 7 -------
 drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h | 2 --
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h      | 4 ----
 5 files changed, 15 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-encodings.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-encodings.h
index 024d620..e71d960 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-encodings.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-encodings.h
@@ -95,7 +95,6 @@
 /** Implicitly delineated NAL units without emulation prevention */
 #define MMAL_ENCODING_VARIANT_H264_RAW       MMAL_FOURCC('R', 'A', 'W', ' ')
 
-
 /** \defgroup MmalColorSpace List of pre-defined video color spaces
  * This defines a list of common color spaces. This list isn't exhaustive and
  * is only provided as a convenience to avoid clients having to use FourCC
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg-format.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg-format.h
index 123d86e..993de44 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg-format.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg-format.h
@@ -20,7 +20,6 @@
 
 /* MMAL_ES_FORMAT_T */
 
-
 struct mmal_audio_format {
 	u32 channels;           /**< Number of audio channels */
 	u32 sample_rate;        /**< Sample rate */
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
index 67b1076..9fa222f 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
@@ -126,7 +126,6 @@ struct mmal_msg_component_destroy_reply {
 	u32 status; /** The component destruction status */
 };
 
-
 /* request and reply to VC to enable a component */
 struct mmal_msg_component_enable {
 	u32 component_handle;
@@ -136,7 +135,6 @@ struct mmal_msg_component_enable_reply {
 	u32 status; /** The component enable status */
 };
 
-
 /* request and reply to VC to disable a component */
 struct mmal_msg_component_disable {
 	u32 component_handle;
@@ -192,7 +190,6 @@ struct mmal_msg_port_info_set_reply {
 	u8 extradata[MMAL_FORMAT_EXTRADATA_MAX_SIZE];
 };
 
-
 /* port action requests that take a mmal_port as a parameter */
 struct mmal_msg_port_action_port {
 	u32 component_handle;
@@ -214,9 +211,6 @@ struct mmal_msg_port_action_reply {
 	u32 status; /** The port action operation status */
 };
 
-
-
-
 /* MMAL buffer transfer */
 
 /** Size of space reserved in a buffer message for short messages. */
@@ -307,7 +301,6 @@ struct mmal_msg_buffer_from_host {
 	u8 short_data[MMAL_VC_SHORT_DATA];
 };
 
-
 /* port parameter setting */
 
 #define MMAL_WORKER_PORT_PARAMETER_SPACE      96
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
index f6abb5c..e730022 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
@@ -191,7 +191,6 @@ struct mmal_parameter_fps_range {
 	struct mmal_parameter_rational	fps_high;
 };
 
-
 /* camera configuration parameter */
 struct mmal_parameter_camera_config {
 	/* Parameters for setting up the image pools */
@@ -223,7 +222,6 @@ struct mmal_parameter_camera_config {
 	s32 use_stc_timestamp;
 };
 
-
 enum mmal_parameter_exposuremode {
 	MMAL_PARAM_EXPOSUREMODE_OFF,
 	MMAL_PARAM_EXPOSUREMODE_AUTO,
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
index 9d1d11e..2307997 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
@@ -104,7 +104,6 @@ struct vchiq_mmal_component {
 	struct vchiq_mmal_port clock[MAX_PORT_COUNT]; /* clock ports */
 };
 
-
 int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance);
 int vchiq_mmal_finalise(struct vchiq_mmal_instance *instance);
 
@@ -128,8 +127,6 @@ int vchiq_mmal_component_disable(
 		struct vchiq_mmal_instance *instance,
 		struct vchiq_mmal_component *component);
 
-
-
 /* enable a mmal port
  *
  * enables a port and if a buffer callback provided enque buffer
@@ -147,7 +144,6 @@ int vchiq_mmal_port_enable(
 int vchiq_mmal_port_disable(struct vchiq_mmal_instance *instance,
 			   struct vchiq_mmal_port *port);
 
-
 int vchiq_mmal_port_parameter_set(struct vchiq_mmal_instance *instance,
 				  struct vchiq_mmal_port *port,
 				  u32 parameter,
-- 
1.9.1


