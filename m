X-GM-THRID: 6755960127598100480
X-Received: by 2002:a25:1f45:: with SMTP id f66mr30567040ybf.218.1572994547672;
        Tue, 05 Nov 2019 14:55:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:abb2:: with SMTP id v47ls81057ybi.0.gmail; Tue, 05 Nov
 2019 14:55:46 -0800 (PST)
X-Google-Smtp-Source: APXvYqysLezzmqbVcS2oXT8i7YqackBncFFZ00WK12HvEta9zR7zoIiXCYCnE9SNrrqtsbMCn2eh
X-Received: by 2002:a25:33d4:: with SMTP id z203mr17754681ybz.149.1572994546149;
        Tue, 05 Nov 2019 14:55:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572994546; cv=none;
        d=google.com; s=arc-20160816;
        b=V6YH8re8DTNEU1Z7/4FYxKrC8tCNRmd+huc78fCN3DmkEXd+QLc+kvjJM+sKECUbLJ
         whTQ1ilrbQr4awO9hpnTvVjgMnJgt0sOuHgSYfgf2JxkL36rA58elftLwfSBGxF8ekeW
         On1hqIB4QDq4fFX+M2JXr9d0PtOPDxCfEPM9bQeWh97FDhvaKJYBrlAtX+xdrXfKhDhP
         ojoqV3qF7RRP6IfrrFxeT6hibpkI265T6+zj4yiVgboa2LP+7/1JQ7O2IJ7GnybtHiWZ
         U3VfSSkkBf+wBEMByrGtiT6wqVgcC+5Py9XEHAXRzIMsktWAY9flwQvFwId/0r58Lc67
         P3Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=eWJnio64wh1Ao5gmmoG2ORd2ebNmQuSR8mUVap1AnQ0=;
        b=CV7RyJisUJpw4V0yo3Qy+ZOEgmOoxX/CixikBCjGUCuLKiWgKyhhRv+dNS9JvCpk6u
         spptwbsO2Lj4e7tyF4aE7vb80FfPP9WPAJOAsKb+1HGfmMMonlfK4ybvsFNGJJ0xV5BA
         sS2J/Rj4a2NqAcQUcWV37G6CcrgUVLHStoNuoxN/uazfOOifDJGBeA1AnXD0S8OJSegF
         ZH6lm8hiTK2+m3P2EiayCJ3gK+I0X3+gRDrU/T4f08d1MO1U5wS4YGjFBZGj4WMDCHfA
         vQP2JED9uSUfkMrzvqyQnC5DXxpZNYCBjRwAu295v4TK51XECDn4kkblCwGygiTVvEB8
         caGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iROZzIai;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id d192si1338897ywb.1.2019.11.05.14.55.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 14:55:46 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iROZzIai;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x430.google.com with SMTP id p26so17187835pfq.8
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 14:55:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=eWJnio64wh1Ao5gmmoG2ORd2ebNmQuSR8mUVap1AnQ0=;
        b=iROZzIair0RwZYB6ICsUbCw/nShLfTFx89d8AhM1dXLdkrfLaM+hm/PUiT0XFQXtnW
         0qZjfe45yh65HRnp74f770/T/kLBaFYsVWEpq/8jS0+rE/JH3KguID6vlxnLai+9f6lu
         v7KDdH+yzRBOSIxRVlstED8tpq9MlccSL/ORWAkgjbX/VLZq8mK8rGm2CYnw64gNt4ft
         8O5cmEQB30eRxd535nhiPA63fTzAQs867KEftKWPDdiVuULiG0QahTz01H5qT77oVYow
         FfnqNCUwY4U2CkTto7qVCTqatoUIaa8ghCY7zYHp51rD1gHi1//ufBv0W/knrTqMhdk0
         qVZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=eWJnio64wh1Ao5gmmoG2ORd2ebNmQuSR8mUVap1AnQ0=;
        b=jSpbTUOIRIgN4iQ9tP94bIHRCdS2mnQ/mgtzwd2dqHkMzDAXONpJYgrmcojj1q/gsx
         mn+AMpLIjqfZMnNTOo6sBRt+GDwvU2RSFTrUxHOQOeEutC0ejjl8/Oq9pLw2ilDkYk5E
         1JiYBv42BzlKBLiBSTHdJt0Cgq1FyvdQWzlUHfmj4WTRvz/YBj5afyE1wEytFmeKe3k7
         1FhFgM6gKf8suXIKuuQOdSQjQEBX79gJLsxnXegLXj3fZtZOblzgt6ONLLx1rRN1BSou
         E6v3FWIilPN5hQEVPZUNkKbH/3Vz9VIyQWffO0z2tcyZTsIg3s8Zels4dr/AGcICJkvo
         FwiA==
X-Gm-Message-State: APjAAAX7VXNbo+hadzXTPL+xua52KSKcyR6NoybQmW4Y/WynL7vKWYcT
	xkNRZ7yEmqPE6MjbtrE40/Ev9blVYljzbg==
X-Received: by 2002:a17:90a:a401:: with SMTP id y1mr2010560pjp.118.1572994545301;
        Tue, 05 Nov 2019 14:55:45 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id 27sm22562508pgx.23.2019.11.05.14.55.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 14:55:44 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 01/14] staging: vc04_services: Replace VCHI_INSTANCE_T with struct vhci_instance_handle
Date: Tue,  5 Nov 2019 14:55:18 -0800
Message-Id: <0b481a90b8a2b9cd6718e972dab681854ff312d7.1572994235.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>

Replaces VCHI_INSTANCE_T typedef with struct vchi_instance_handle to
match kernel code style. Issue found by checkpatch.

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


