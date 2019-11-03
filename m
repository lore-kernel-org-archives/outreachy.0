X-GM-THRID: 6753896393761357824
X-Received: by 2002:ac8:4a88:: with SMTP id l8mr7119480qtq.314.1572755841370;
        Sat, 02 Nov 2019 21:37:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ae9:ee02:: with SMTP id i2ls3553291qkg.8.gmail; Sat, 02 Nov
 2019 21:37:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxYEfaZdNKWI2IDQk21pLd1p8v2QlgoqsK677miD5cs+QZdswzIDeqjg2UazEV8H7TlPzXR
X-Received: by 2002:a37:6554:: with SMTP id z81mr6778117qkb.9.1572755840110;
        Sat, 02 Nov 2019 21:37:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572755840; cv=none;
        d=google.com; s=arc-20160816;
        b=N68588vBTTN/NbCPoVSPOYq9JhHIzoxF3n8x9+En2ss3z+CT1JhotNyvHgPRXmXhkZ
         JFE/f6ZWSCMJhWf7DrFfaiUKOyZb6Fx9xWiZoIxiQOJvEFE4ugk1GoOASCJpMNdTV6ll
         ezcbskQ8GfjACwEE6tLqMyqKi71X+wWC2Yqmvz7BaodhUBwgm5BIctSV5XHHYtM+SqRR
         kg51ixLfgx4CWdYZNzt6cBiHVrwo4tL3T7dEL1pway+eDK0mv/gn1pMT+zyzK1Dr4a4G
         ZomaMYq45jsdrPnRaiLSryodn2xsciMcIjn0sgl+nh7t7RBs98cZMFk4csrlh5cTWLbF
         JJ0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=LVe1L+zfeo3r67nLmi4ebRK7N5AkuWMvit3YktjWkqc=;
        b=L/3lG5qtDvgvE6AXYptWYrW4q7MuIfHqH+zHOGbCA/e90LkqPNueyykN5y2C/HWoLJ
         mFQANyi+7qb+qwBFiXz9wsszYU1waYNgRauYfZrFH4p3vP+whgXu6MccsvIAqrnCTFyW
         AQFE/zFdccaTcftOw7l0ARFqwRBvZ2hHGZJ1LJthBG0JKhzmwoIQSvc4IrFkF7hihRmt
         ghf4egjWdQNGWsmtHSXoI+UneCtcyI3TZIdVbZv/uuirXL6Lpv657TWq9QMVb7yY39U7
         iEV2VTv4kGGUiODZTxTnJgFn6Toqp715QaDmJYSgwvUxTmhlXS6f+pfn8phsXs980vT9
         w+Og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VUa9OoXb;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id y199si29266qka.3.2019.11.02.21.37.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 21:37:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VUa9OoXb;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x431.google.com with SMTP id r4so9863845pfl.7
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Nov 2019 21:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=LVe1L+zfeo3r67nLmi4ebRK7N5AkuWMvit3YktjWkqc=;
        b=VUa9OoXbfsFq/rQuyWx/WkE+oRgXwhOrWwi5idQbQ2LUdVjKo2xdcmiyJIg6Z7tm7t
         sI2ZnpuRzlTdKiGOVfQ3hMs2qB0zaGRbrWKO97A/2PrWNtzFbtlzb4kKIR29HniKWKV4
         NjnkWAugHbzsG3rUPB/4rn1pPnxd9gDm2zfl6Avf8fbIe+b5WWsjCHz69GwQso858dw+
         Wq0Bpp1OT5pY0tilEf7wJuQsodtwusfSU0qoP16YO3BLz7VfiqEY9ZdM3I0sUWHOc6nh
         Rc+h5gFiNQhaz8Tp0tVyyfRLwja7kLuUqUIgKnIuPOgO6q8exbVvu476BDuiT8/M09RQ
         2iwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=LVe1L+zfeo3r67nLmi4ebRK7N5AkuWMvit3YktjWkqc=;
        b=FS7jBThn3N9GSXBmZLU7CmZLMrQgODP8HYftr/VTJqpy2Um6pIwvv9bD4csvy0A+Sf
         xI6npOI1ZG7loWsO40CM8Ugp/6dy+ybdn1FgPISLEP9kuv8EBH5yUkOz26aXiul5rW1o
         nOO4oqMnJYh3nxXYLOCdelhS+2xjAwI1/PpmWqLIKnQuBYFz0Tz957QzLFu31xE0HNnk
         2R6sHqGLNFy/g8140f5epA1YisVuKDZ6y7mYJpXBeewbJQbr7rb3PU231l9OPHvp9Zog
         qoYEmLJWrIhmvkVhZz4ybSB8/pMRFwRlC/DQtM54QrltFs9Ukf9VJFe2om9zbZ553DTs
         RPaA==
X-Gm-Message-State: APjAAAV+T5Eu+r2tx2Z1KsVYA7CI9DHxpxBclqL2R0FLW5RHNAAvRJl4
	JHJ/g6WhAeN5kekH99tlzIQ=
X-Received: by 2002:a62:1514:: with SMTP id 20mr23915911pfv.217.1572755839150;
        Sat, 02 Nov 2019 21:37:19 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id q34sm15704494pjb.15.2019.11.02.21.37.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2019 21:37:18 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v5 01/10] staging: vc04_services: Remove instance struct typedef
Date: Sat,  2 Nov 2019 21:36:58 -0700
Message-Id: <8774abbd755f78cde4fff36ca75ea0e3a5519cd0.1572755439.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572755439.git.jamal.k.shareef@gmail.com>
References: <cover.1572755439.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572755439.git.jamal.k.shareef@gmail.com>
References: <cover.1572755439.git.jamal.k.shareef@gmail.com>

Removes opaque vchi instance struct typedefs. Issue found by
checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../bcm2835-audio/bcm2835-vchiq.c             |  2 +-
 .../vc04_services/bcm2835-audio/bcm2835.h     |  2 +-
 .../vc04_services/bcm2835-camera/mmal-vchiq.c |  2 +-
 .../vc04_services/interface/vchi/vchi.h       | 12 +++---
 .../interface/vchi/vchi_common.h              |  2 +-
 .../interface/vchiq_arm/vchiq_shim.c          | 43 +++++++++----------
 6 files changed, 31 insertions(+), 32 deletions(-)

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
 
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index c99735fc0308..fba37559aa83 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -86,7 +86,7 @@ enum vchi_service_option {
 };
 
 //Callback used by all services / bulk transfers
-typedef void (*VCHI_CALLBACK_T)(void *callback_param, //my service local param
+ typedef void (*VCHI_CALLBACK_T)(void *callback_param, //my service local param
 				enum vchi_callback_reason reason,
 				void *handle); //for transmitting msg's only
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 704afd470c88..a2434a68fc2f 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -23,7 +23,7 @@ struct shim_service {
 /***********************************************************
  * Name: vchi_msg_peek
  *
- * Arguments:  const VCHI_SERVICE_HANDLE_T handle,
+ * Arguments:  VCHI_SERVICE_HANDLE_T handle,
  *             void **data,
  *             uint32_t *msg_size,
 
@@ -63,7 +63,7 @@ EXPORT_SYMBOL(vchi_msg_peek);
 /***********************************************************
  * Name: vchi_msg_remove
  *
- * Arguments:  const VCHI_SERVICE_HANDLE_T handle,
+ * Arguments:  VCHI_SERVICE_HANDLE_T handle,
  *
  * Description: Routine to remove a message (after it has been read with
  *              vchi_msg_peek)
@@ -100,10 +100,9 @@ EXPORT_SYMBOL(vchi_msg_remove);
  ***********************************************************/
 static
 int32_t vchi_msg_queue(VCHI_SERVICE_HANDLE_T handle,
-	ssize_t (*copy_callback)(void *context, void *dest,
-				 size_t offset, size_t maxsize),
-	void *context,
-	uint32_t data_size)
+		       ssize_t (*copy_callback)(void *context, void *dest,
+						size_t offset, size_t maxsize),
+		       void *context, uint32_t data_size)
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	VCHIQ_STATUS_T status;
@@ -169,8 +168,7 @@ vchi_queue_user_message_callback(void *context,
 }
 
 int
-vchi_queue_user_message(VCHI_SERVICE_HANDLE_T handle,
-			void __user *data,
+vchi_queue_user_message(VCHI_SERVICE_HANDLE_T handle, void __user *data,
 			unsigned int size)
 {
 	struct vchi_queue_user_message_context copycontext = {
@@ -187,7 +185,7 @@ EXPORT_SYMBOL(vchi_queue_user_message);
 /***********************************************************
  * Name: vchi_bulk_queue_receive
  *
- * Arguments:  VCHI_BULK_HANDLE_T handle,
+ * Arguments:  VCHI_SERVICE_HANDLE_T handle,
  *             void *data_dst,
  *             const uint32_t data_size,
  *             enum vchi_flags flags
@@ -245,7 +243,7 @@ EXPORT_SYMBOL(vchi_bulk_queue_receive);
 /***********************************************************
  * Name: vchi_bulk_queue_transmit
  *
- * Arguments:  VCHI_BULK_HANDLE_T handle,
+ * Arguments:  VCHI_SERVICE_HANDLE_T handle,
  *             const void *data_src,
  *             uint32_t data_size,
  *             enum vchi_flags flags,
@@ -428,7 +426,7 @@ EXPORT_SYMBOL(vchi_msg_hold);
 /***********************************************************
  * Name: vchi_initialise
  *
- * Arguments: VCHI_INSTANCE_T *instance_handle
+ * Arguments: struct vchi_instance_handle *instance_handle
  *
  * Description: Initialises the hardware but does not transmit anything
  *              When run as a Host App this will be called twice hence the need
@@ -438,14 +436,14 @@ EXPORT_SYMBOL(vchi_msg_hold);
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
@@ -454,7 +452,7 @@ EXPORT_SYMBOL(vchi_initialise);
 /***********************************************************
  * Name: vchi_connect
  *
- * Arguments: VCHI_INSTANCE_T instance_handle
+ * Arguments: struct vchi_instance_handle *instance_handle
  *
  * Description: Starts the command service on each connection,
  *              causing INIT messages to be pinged back and forth
@@ -462,7 +460,7 @@ EXPORT_SYMBOL(vchi_initialise);
  * Returns: 0 if successful, failure otherwise
  *
  ***********************************************************/
-int32_t vchi_connect(VCHI_INSTANCE_T instance_handle)
+int32_t vchi_connect(struct vchi_instance_handle *instance_handle)
 {
 	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
 
@@ -473,7 +471,7 @@ EXPORT_SYMBOL(vchi_connect);
 /***********************************************************
  * Name: vchi_disconnect
  *
- * Arguments: VCHI_INSTANCE_T instance_handle
+ * Arguments: struct vchi_instance_handle *instance_handle
  *
  * Description: Stops the command service on each connection,
  *              causing DE-INIT messages to be pinged back and forth
@@ -481,7 +479,7 @@ EXPORT_SYMBOL(vchi_connect);
  * Returns: 0 if successful, failure otherwise
  *
  ***********************************************************/
-int32_t vchi_disconnect(VCHI_INSTANCE_T instance_handle)
+int32_t vchi_disconnect(struct vchi_instance_handle *instance_handle)
 {
 	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
 
@@ -493,7 +491,7 @@ EXPORT_SYMBOL(vchi_disconnect);
  * Name: vchi_service_open
  * Name: vchi_service_create
  *
- * Arguments: VCHI_INSTANCE_T *instance_handle
+ * Arguments: struct vchi_instance_handle *instance_handle
  *            struct service_creation *setup,
  *            VCHI_SERVICE_HANDLE_T *handle
  *
@@ -593,9 +591,9 @@ static void service_free(struct shim_service *service)
 	}
 }
 
-int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
-	struct service_creation *setup,
-	VCHI_SERVICE_HANDLE_T *handle)
+int32_t vchi_service_open(struct vchi_instance_handle *instance_handle,
+			  struct service_creation *setup,
+			  VCHI_SERVICE_HANDLE_T *handle)
 {
 	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
 	struct shim_service *service = service_alloc(instance, setup);
@@ -692,7 +690,8 @@ int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
 }
 EXPORT_SYMBOL(vchi_service_set_option);
 
-int32_t vchi_get_peer_version(const VCHI_SERVICE_HANDLE_T handle, short *peer_version)
+int32_t vchi_get_peer_version(const VCHI_SERVICE_HANDLE_T handle,
+			      short *peer_version)
 {
 	int32_t ret = -1;
 	struct shim_service *service = (struct shim_service *)handle;
-- 
2.17.1


