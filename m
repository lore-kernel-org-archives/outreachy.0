X-GM-THRID: 6753896393761357824
X-Received: by 2002:a05:620a:14b9:: with SMTP id x25mr7566605qkj.8.1572915334192;
        Mon, 04 Nov 2019 16:55:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ad4:45b4:: with SMTP id y20ls2168772qvu.6.gmail; Mon, 04 Nov
 2019 16:55:33 -0800 (PST)
X-Google-Smtp-Source: APXvYqxFdng46sTY5Yz3Sne/jwYJoinRhRIrk9cHR/Q83E+AoIAM0tJv1UKpUqntT5JAYkzl7aG/
X-Received: by 2002:ad4:480e:: with SMTP id g14mr24569248qvy.39.1572915333455;
        Mon, 04 Nov 2019 16:55:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572915333; cv=none;
        d=google.com; s=arc-20160816;
        b=F92FAesfkcq4MSLzV7ih5+PbPL01ahOlSjNKTsesy4JcwCtXZzR7OuywojBNNHRIeJ
         4X7YZGfn03SI/GL5l8ktDZ8jl1wsxOaIurbcfhG2cPYps5AEphVvHikzMURUXwXZN/P8
         /dWItUdo09Smiz8OwS+gCIm516QEGve/sa4NuuRmcn7If4qVzKKy8wHtmmZvSOVOm757
         BtzQov3ipUotG8wtgzn6O+GouAZvl+bSYcfINhHjqx2ESeN52oYPhGs6oMLdFWcLsN86
         DUXB52a4FN4NNvpEztCQ/7KWryl1rz0wZvsCRugy8wrpFH769Pg8G3FUX6Rb5g4hdjUh
         iNDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=wjt9DwTI2akk/0jfG72uSXw0c11D2WaiDHP0hMLCqX0=;
        b=0DeK0uzggYGglSUVm4LTjlGVIOZY1AJVl6w3/qIubvYlN7vMowMjA7c4iycZwadaGK
         6yEVdx/O5NoRodNHK5SMutlfXA1FZXg+HWMHCWGTjBdqBrEmlUflnnM/5s0mCh4kIY4x
         Y0DNVBlcpsY1m8WXBGU+IfSr0LaaWrNAXRRxd6ah5myfuOnncg+J6otYa0yenJlAZmE6
         i+tOVmZrlEfeYZbWG15ACOzxiOGqdq/PIfqdc96De/Bv3e4RfBvJFKnBvXwcyzmtkCGz
         GNqhgMXPuYsap3iKFgg875G4902zCgARo9rcsLGzpHJ9N/WE28w7BcdLODE698VXl4UX
         oAgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FKmmyKdz;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id d189si953683qkb.1.2019.11.04.16.55.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 16:55:33 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FKmmyKdz;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62f.google.com with SMTP id k7so8534935pll.1
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 16:55:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=wjt9DwTI2akk/0jfG72uSXw0c11D2WaiDHP0hMLCqX0=;
        b=FKmmyKdzsjpIk9SbBAENIvGyg2opFbl+KD2pupwpxZRjvMV8CSoLEJ4h+BulitTAln
         js2TEuAiGJ4Mji1UgWkizUUfi9gzjHnuxYyrAQcqEREAuCwXMr2Uy308AkLW2NjiIroZ
         u4OdAmOCERtjTChVvWmxs6xsfbMd+JbrCK4l6asv2DRnRlkDfcq39wlB9Hcsl2JXuLFX
         3xB9Cl2jVBcNzFzFT0OALPUVt+KsSQo1V6xGABqtBXe5KXxN7GU4kxtDEIeitrarJdLN
         vMOt88PDutlL+eQrjqaauzaqXeijjSUsNeznDENq8UP4QPrFSXm0v0vsZ1ip5O7RYOHd
         haJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=wjt9DwTI2akk/0jfG72uSXw0c11D2WaiDHP0hMLCqX0=;
        b=OJX3ChE18R5Hzx7du6ZEwIq8CSrTriVT83PYZSaHZIOgbjaDLxOKojo6Rrjvuq5+Oa
         cZ2rv2JZ0reLJiDThxZUowkxtkSOCmZK+wP/lQJvsUoBA3dhkaE7GV8Y6ozqBF9GncFM
         KvTKikWy105hcbUHKQnj1ztVxKTvDmk0aE2xZnlNzReOtbOK1wdN/sajK4ojgVbOGF+a
         3Imdltcx10/8rMZZH2WNoRbtFt0npo0db2BrIDo5X7UyuDIb/vd7mu9GczzrnlvDp9ml
         P7mwyiW6OZ9a4TAbLhuGResyaYCn0Zhlwlz3YN0pgcSTfZaiL0crQPkqOPfgNTsXxJYE
         VgKA==
X-Gm-Message-State: APjAAAVkWwU+22Js2uljKjbI+nrLSj6xj7OHdBMYPNf1uG6+5gVy0l+T
	8cMQbPBBHZAh/43idLCY3Tc=
X-Received: by 2002:a17:902:b08b:: with SMTP id p11mr30854136plr.57.1572915332979;
        Mon, 04 Nov 2019 16:55:32 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id v19sm17503848pff.46.2019.11.04.16.55.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 16:55:32 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 01/14] staging: vc04_services: Remove instance struct typedef
Date: Mon,  4 Nov 2019 16:55:11 -0800
Message-Id: <ecf031601dd7c0beb9bf6ac279dbeb912994025a.1572915104.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>

Removes vchi instance struct typedef. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../bcm2835-audio/bcm2835-vchiq.c              |  2 +-
 .../vc04_services/bcm2835-audio/bcm2835.h      |  2 +-
 .../vc04_services/bcm2835-camera/mmal-vchiq.c  |  2 +-
 .../vc04_services/interface/vchi/vchi.h        | 12 ++++++------
 .../interface/vchiq_arm/vchiq_shim.c           | 18 +++++++++---------
 5 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 84ece768854f..2022ff2388dc 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -122,7 +122,7 @@ static void audio_vchi_callback(void *param,
 }
 
 static int
-vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
+vc_vchi_audio_init(struct vchi_instance_handle *vchi_instance,
 		   struct bcm2835_audio_instance *instance)
 {
 	struct service_creation params = {
diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
index ed0feb34b6c8..d2fe8d36ab7d 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
@@ -44,7 +44,7 @@ enum snd_bcm2835_ctrl {
 };
 
 struct bcm2835_vchi_ctx {
-	VCHI_INSTANCE_T vchi_instance;
+	struct vchi_instance_handle *vchi_instance;
 };
 
 /* definition of the chip-specific record */
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 06b7be7d8872..0f4db2f24944 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -1814,7 +1814,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 {
 	int status;
 	struct vchiq_mmal_instance *instance;
-	static VCHI_INSTANCE_T vchi_instance;
+	static struct vchi_instance_handle *vchi_instance;
 	struct service_creation params = {
 		.version		= VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
 		.service_id		= VC_MMAL_SERVER_NAME,
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 75b1ab4919e3..5c8842114607 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -50,7 +50,7 @@ struct service_creation {
 };
 
 // Opaque handle for a VCHI instance
-typedef struct opaque_vchi_instance_handle_t *VCHI_INSTANCE_T;
+struct vchi_instance_handle;
 
 // Opaque handle for a server or client
 typedef struct opaque_vchi_service_handle_t *VCHI_SERVICE_HANDLE_T;
@@ -65,20 +65,20 @@ extern "C" {
 #endif
 
 // Routine used to initialise the vchi on both local + remote connections
-extern int32_t vchi_initialise(VCHI_INSTANCE_T *instance_handle);
+extern int32_t vchi_initialise(struct vchi_instance_handle **instance_handle);
 
 extern int32_t vchi_exit(void);
 
-extern int32_t vchi_connect(VCHI_INSTANCE_T instance_handle);
+extern int32_t vchi_connect(struct vchi_instance_handle *instance_handle);
 
 //When this is called, ensure that all services have no data pending.
 //Bulk transfers can remain 'queued'
-extern int32_t vchi_disconnect(VCHI_INSTANCE_T instance_handle);
+extern int32_t vchi_disconnect(struct vchi_instance_handle *instance_handle);
 
 // helper functions
 extern void *vchi_allocate_buffer(VCHI_SERVICE_HANDLE_T handle, uint32_t *length);
 extern void vchi_free_buffer(VCHI_SERVICE_HANDLE_T handle, void *address);
-extern uint32_t vchi_current_time(VCHI_INSTANCE_T instance_handle);
+extern uint32_t vchi_current_time(struct vchi_instance_handle *instance_handle);
 
 /******************************************************************************
  * Global service API
@@ -87,7 +87,7 @@ extern uint32_t vchi_current_time(VCHI_INSTANCE_T instance_handle);
 extern int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle);
 
 // Routine to open a named service
-extern int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
+extern int32_t vchi_service_open(struct vchi_instance_handle *instance_handle,
 				 struct service_creation *setup,
 				 VCHI_SERVICE_HANDLE_T *handle);
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 704afd470c88..0227c3f27697 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -428,7 +428,7 @@ EXPORT_SYMBOL(vchi_msg_hold);
 /***********************************************************
  * Name: vchi_initialise
  *
- * Arguments: VCHI_INSTANCE_T *instance_handle
+ * Arguments: struct vchi_instance_handle **instance_handle
  *
  * Description: Initialises the hardware but does not transmit anything
  *              When run as a Host App this will be called twice hence the need
@@ -438,14 +438,14 @@ EXPORT_SYMBOL(vchi_msg_hold);
  *
  ***********************************************************/
 
-int32_t vchi_initialise(VCHI_INSTANCE_T *instance_handle)
+int32_t vchi_initialise(struct vchi_instance_handle **instance_handle)
 {
 	VCHIQ_INSTANCE_T instance;
 	VCHIQ_STATUS_T status;
 
 	status = vchiq_initialise(&instance);
 
-	*instance_handle = (VCHI_INSTANCE_T)instance;
+	*instance_handle = (struct vchi_instance_handle *)instance;
 
 	return vchiq_status_to_vchi(status);
 }
@@ -454,7 +454,7 @@ EXPORT_SYMBOL(vchi_initialise);
 /***********************************************************
  * Name: vchi_connect
  *
- * Arguments: VCHI_INSTANCE_T instance_handle
+ * Arguments: struct vchi_instance_handle *instance_handle
  *
  * Description: Starts the command service on each connection,
  *              causing INIT messages to be pinged back and forth
@@ -462,7 +462,7 @@ EXPORT_SYMBOL(vchi_initialise);
  * Returns: 0 if successful, failure otherwise
  *
  ***********************************************************/
-int32_t vchi_connect(VCHI_INSTANCE_T instance_handle)
+int32_t vchi_connect(struct vchi_instance_handle *instance_handle)
 {
 	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
 
@@ -473,7 +473,7 @@ EXPORT_SYMBOL(vchi_connect);
 /***********************************************************
  * Name: vchi_disconnect
  *
- * Arguments: VCHI_INSTANCE_T instance_handle
+ * Arguments: struct vchi_instance_handle *instance_handle
  *
  * Description: Stops the command service on each connection,
  *              causing DE-INIT messages to be pinged back and forth
@@ -481,7 +481,7 @@ EXPORT_SYMBOL(vchi_connect);
  * Returns: 0 if successful, failure otherwise
  *
  ***********************************************************/
-int32_t vchi_disconnect(VCHI_INSTANCE_T instance_handle)
+int32_t vchi_disconnect(struct vchi_instance_handle *instance_handle)
 {
 	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
 
@@ -493,7 +493,7 @@ EXPORT_SYMBOL(vchi_disconnect);
  * Name: vchi_service_open
  * Name: vchi_service_create
  *
- * Arguments: VCHI_INSTANCE_T *instance_handle
+ * Arguments: struct vchi_instance_handle *instance_handle
  *            struct service_creation *setup,
  *            VCHI_SERVICE_HANDLE_T *handle
  *
@@ -593,7 +593,7 @@ static void service_free(struct shim_service *service)
 	}
 }
 
-int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
+int32_t vchi_service_open(struct vchi_instance_handle *instance_handle,
 	struct service_creation *setup,
 	VCHI_SERVICE_HANDLE_T *handle)
 {
-- 
2.17.1


