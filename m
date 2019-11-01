X-GM-THRID: 6753896393761357824
X-Received: by 2002:a9d:6288:: with SMTP id x8mr2249554otk.170.1572643325738;
        Fri, 01 Nov 2019 14:22:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5717:: with SMTP id l23ls1729166oib.1.gmail; Fri, 01 Nov
 2019 14:22:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy3AQejs2d5lLqRKlCEbEhs+K6mZu55TXNpymvzfjAmpcDrcfu/1+doPYWtsxu6P17kI0vs
X-Received: by 2002:aca:f543:: with SMTP id t64mr10474528oih.89.1572643324806;
        Fri, 01 Nov 2019 14:22:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572643324; cv=none;
        d=google.com; s=arc-20160816;
        b=RYNueBQv8ZDRJB191G7bTjLg/GtKvrG4dibAZfjwxbKCkCOkQaHUIabHX+37JEXNV5
         g5Vig/lwiUCVH+GyqoQajdBRALaoXUgmIylhZFs5bAUjj7RyhlIMbgcO+guKKJKmXO6c
         C//KDyR36kf9zX39PDO9+RSeaqd3iPKSh/DOlqhC+/tc0T0PTrzOjzgzdqoIXEUvz6Y2
         ItDdUo73gI3dhCOFK/RJ9PQv8oIDBkdWXMwYzpC/WCFoLhR6CalJbAc5rLFauav6VM4R
         ZNrqUZlrMcpM4uKZBTzRn/2LYD0hP7EhoJngDtZ/o6Re+HFd9bcnzi/TCksD32cX+Gt7
         RFgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=Nfgcty++pod3M9wy1HURJ0tRsluPbtSd8Pug8tg6Nio=;
        b=mvRBIBA/zMKM3c1ecUkKQfl8ANG8kX6ZyYc2gJulyPhc9/R1un+/pPkQabkI8AScPt
         pgq9Vgk563EomRN52yBaV9kQlW1BqQ/kw6VgMA7VdH0KQLmZamocleUMs/V0fpUTw0PT
         gjtnmzkawCmsPhqrkHbdmfkbLg0zGmzGJ55D+zeSL33Dc6/GOJUsA453g473ShaUE+dE
         QBzdp1f8ZngJPP5y++N1/bhVq22Eq6INwkvw3Kru5Jj5Sjkk4kyml6JaH6TqUD2FNGJo
         1AzFn/oovEwn1cy9u+xx6RzKsFMlPTbKn4s2UuY1W8ZxFVMWzPUoMFKI8MAs9ZYzB2WP
         w9Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rjxfWlue;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id 144si507035oii.2.2019.11.01.14.22.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 14:22:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rjxfWlue;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52a.google.com with SMTP id j22so7243674pgh.3
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 14:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Nfgcty++pod3M9wy1HURJ0tRsluPbtSd8Pug8tg6Nio=;
        b=rjxfWluef5Iz3kG0kUxzGagRTbNIc1pabO4+ngFyoLdfdA45VJ7JW0Jp1hcmIJ6rVd
         sI6/RAvQCBCXS67zq00j2Bzq5FQc/Kngj7EpScryglZpd2+4tE5hq8zYcSNyz7QvfH0e
         cR/2hIfWLimDO+N9ljsgMO4jX17dof2AoukCG2vVPLCFI9zxPSl97wgyTxm47e8HnPCU
         5idknH+5ANla69sGYlnx6JWuxoT73lYrxGiZIJEwXKhqjl3zZ+d1TgF+MG0gCUhTz4p7
         YC14cz9qwSc5pbQ9mX8OMH1BHtmNSL4hqUXCJM0d14JiE/Lj+wi2HilRNfwIR8crdX4R
         4Yig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Nfgcty++pod3M9wy1HURJ0tRsluPbtSd8Pug8tg6Nio=;
        b=CsrGrcc0SVB3MIfZSCuaboP3Z1lpRga5mV+QXihg47FvNaYw2JE/2O7c5PwiqY7Wuc
         Xyt/nwrvkm3oAhJrovSjgyYZ6Bc2gwj94E2gUnuQUq6ct8OCh1u41hsNK2+fvymc4Vwx
         RAWNT3UYuwwYr/Kwot+WhekFcaTTWjGpksvC0E6D0Y7eWYlpPmWKrEX17h5e96YDzMMj
         ZZV2yw+zGzzXtmpKNpVwE//Xulz6vPzJUrvQTOWSX1uW3QRpnsrjGJVpXIdHfoqzx2vo
         dktfjfLANyLt/yDEz4NPeLDQx2JNkId3tZgoXq/PUjQvMsUlX78IBqDo7uj+apjJlcp8
         9NSQ==
X-Gm-Message-State: APjAAAVyTyE9kmXnMXT39DN/eeFtdnFdPojxAD6ZJ/wXDsYHhSEkhjJF
	5IywuM8Ix2YSqtmvmn9V49I=
X-Received: by 2002:a17:90a:a4e:: with SMTP id o72mr17741288pjo.66.1572643323742;
        Fri, 01 Nov 2019 14:22:03 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id b6sm9193594pga.12.2019.11.01.14.22.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 14:22:03 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v3 3/8] staging: vc04_services: Remove struct typedefs in vchi
Date: Fri,  1 Nov 2019 14:21:41 -0700
Message-Id: <5989023c1a64e0e5c8d56ceb0511b4f49199703d.1572642845.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572642845.git.jamal.k.shareef@gmail.com>
References: <cover.1572642845.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572642845.git.jamal.k.shareef@gmail.com>
References: <cover.1572642845.git.jamal.k.shareef@gmail.com>

Removes opaque struct typedefs from vchi files. Issue found by
checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../bcm2835-audio/bcm2835-vchiq.c             |  4 +-
 .../vc04_services/bcm2835-audio/bcm2835.h     |  2 +-
 .../vc04_services/bcm2835-camera/mmal-vchiq.c |  4 +-
 .../vc04_services/interface/vchi/vchi.h       | 54 ++++++------
 .../interface/vchi/vchi_common.h              |  6 +-
 .../interface/vchiq_arm/vchiq_shim.c          | 83 +++++++++----------
 6 files changed, 76 insertions(+), 77 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 84ece768854f..73144f1ce45e 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -9,7 +9,7 @@
 
 struct bcm2835_audio_instance {
 	struct device *dev;
-	VCHI_SERVICE_HANDLE_T vchi_handle;
+	struct vchi_service_handle *vchi_handle;
 	struct completion msg_avail_comp;
 	struct mutex vchi_mutex;
 	struct bcm2835_alsa_stream *alsa_stream;
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
index 06b7be7d8872..de03b90021a8 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -155,7 +155,7 @@ struct mmal_msg_context {
 };
 
 struct vchiq_mmal_instance {
-	VCHI_SERVICE_HANDLE_T handle;
+	struct vchi_service_handle *handle;
 
 	/* ensure serialised access to service */
 	struct mutex vchiq_mutex;
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
index 75b1ab4919e3..05fb5c3e8ba0 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -50,10 +50,10 @@ struct service_creation {
 };
 
 // Opaque handle for a VCHI instance
-typedef struct opaque_vchi_instance_handle_t *VCHI_INSTANCE_T;
+struct vchi_instance_handle;
 
 // Opaque handle for a server or client
-typedef struct opaque_vchi_service_handle_t *VCHI_SERVICE_HANDLE_T;
+struct vchi_service_handle;
 
 /******************************************************************************
  * Global funcs - implementation is specific to which side you are on
@@ -65,64 +65,64 @@ extern "C" {
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
-extern void *vchi_allocate_buffer(VCHI_SERVICE_HANDLE_T handle, uint32_t *length);
-extern void vchi_free_buffer(VCHI_SERVICE_HANDLE_T handle, void *address);
-extern uint32_t vchi_current_time(VCHI_INSTANCE_T instance_handle);
+extern void *vchi_allocate_buffer(struct vchi_service_handle *handle, uint32_t *length);
+extern void vchi_free_buffer(struct vchi_service_handle *handle, void *address);
+extern uint32_t vchi_current_time(struct vchi_instance_handle *instance_handle);
 
 /******************************************************************************
  * Global service API
  *****************************************************************************/
 // Routine to destroy a service
-extern int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle);
+extern int32_t vchi_service_destroy(const struct vchi_service_handle *handle);
 
 // Routine to open a named service
-extern int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
+extern int32_t vchi_service_open(struct vchi_instance_handle *instance_handle,
 				 struct service_creation *setup,
-				 VCHI_SERVICE_HANDLE_T *handle);
+				 struct vchi_service_handle **handle);
 
-extern int32_t vchi_get_peer_version(const VCHI_SERVICE_HANDLE_T handle,
+extern int32_t vchi_get_peer_version(const struct vchi_service_handle *handle,
 				     short *peer_version);
 
 // Routine to close a named service
-extern int32_t vchi_service_close(const VCHI_SERVICE_HANDLE_T handle);
+extern int32_t vchi_service_close(const struct vchi_service_handle *handle);
 
 // Routine to increment ref count on a named service
-extern int32_t vchi_service_use(const VCHI_SERVICE_HANDLE_T handle);
+extern int32_t vchi_service_use(const struct vchi_service_handle *handle);
 
 // Routine to decrement ref count on a named service
-extern int32_t vchi_service_release(const VCHI_SERVICE_HANDLE_T handle);
+extern int32_t vchi_service_release(const struct vchi_service_handle *handle);
 
 // Routine to set a control option for a named service
-extern int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
+extern int32_t vchi_service_set_option(const struct vchi_service_handle *handle,
 				       enum vchi_service_option option,
 				       int value);
 
 /* Routine to send a message from kernel memory across a service */
 extern int
-vchi_queue_kernel_message(VCHI_SERVICE_HANDLE_T handle,
+vchi_queue_kernel_message(struct vchi_service_handle *handle,
 			  void *data,
 			  unsigned int size);
 
 /* Routine to send a message from user memory across a service */
 extern int
-vchi_queue_user_message(VCHI_SERVICE_HANDLE_T handle,
+vchi_queue_user_message(struct vchi_service_handle *handle,
 			void __user *data,
 			unsigned int size);
 
 // Routine to receive a msg from a service
 // Dequeue is equivalent to hold, copy into client buffer, release
-extern int32_t vchi_msg_dequeue(VCHI_SERVICE_HANDLE_T handle,
+extern int32_t vchi_msg_dequeue(struct vchi_service_handle *handle,
 				void *data,
 				uint32_t max_data_size_to_read,
 				uint32_t *actual_msg_size,
@@ -131,26 +131,26 @@ extern int32_t vchi_msg_dequeue(VCHI_SERVICE_HANDLE_T handle,
 // Routine to look at a message in place.
 // The message is not dequeued, so a subsequent call to peek or dequeue
 // will return the same message.
-extern int32_t vchi_msg_peek(VCHI_SERVICE_HANDLE_T handle,
+extern int32_t vchi_msg_peek(struct vchi_service_handle *handle,
 			     void **data,
 			     uint32_t *msg_size,
 			     enum vchi_flags flags);
 
 // Routine to remove a message after it has been read in place with peek
 // The first message on the queue is dequeued.
-extern int32_t vchi_msg_remove(VCHI_SERVICE_HANDLE_T handle);
+extern int32_t vchi_msg_remove(struct vchi_service_handle *handle);
 
 // Routine to look at a message in place.
 // The message is dequeued, so the caller is left holding it; the descriptor is
 // filled in and must be released when the user has finished with the message.
-extern int32_t vchi_msg_hold(VCHI_SERVICE_HANDLE_T handle,
+extern int32_t vchi_msg_hold(struct vchi_service_handle *handle,
 			     void **data,        // } may be NULL, as info can be
 			     uint32_t *msg_size, // } obtained from HELD_MSG_T
 			     enum vchi_flags flags,
 			     struct vchi_held_msg *message_descriptor);
 
 // Initialise an iterator to look through messages in place
-extern int32_t vchi_msg_look_ahead(VCHI_SERVICE_HANDLE_T handle,
+extern int32_t vchi_msg_look_ahead(struct vchi_service_handle *handle,
 				   struct vchi_msg_iter *iter,
 				   enum vchi_flags flags);
 
@@ -202,21 +202,21 @@ extern int32_t vchi_msg_iter_hold_next(struct vchi_msg_iter *iter,
  *****************************************************************************/
 
 // Routine to prepare interface for a transfer from the other side
-extern int32_t vchi_bulk_queue_receive(VCHI_SERVICE_HANDLE_T handle,
+extern int32_t vchi_bulk_queue_receive(struct vchi_service_handle *handle,
 				       void *data_dst,
 				       uint32_t data_size,
 				       enum vchi_flags flags,
 				       void *transfer_handle);
 
 // Prepare interface for a transfer from the other side into relocatable memory.
-int32_t vchi_bulk_queue_receive_reloc(const VCHI_SERVICE_HANDLE_T handle,
+int32_t vchi_bulk_queue_receive_reloc(const struct vchi_service_handle *handle,
 				      uint32_t offset,
 				      uint32_t data_size,
 				      const enum vchi_flags flags,
 				      void * const bulk_handle);
 
 // Routine to queue up data ready for transfer to the other (once they have signalled they are ready)
-extern int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
+extern int32_t vchi_bulk_queue_transmit(struct vchi_service_handle *handle,
 					const void *data_src,
 					uint32_t data_size,
 					enum vchi_flags flags,
@@ -230,7 +230,7 @@ extern int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
 }
 #endif
 
-extern int32_t vchi_bulk_queue_transmit_reloc(VCHI_SERVICE_HANDLE_T handle,
+extern int32_t vchi_bulk_queue_transmit_reloc(struct vchi_service_handle *handle,
 					      uint32_t offset,
 					      uint32_t data_size,
 					      enum vchi_flags flags,
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index c99735fc0308..07f39e1b67e0 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -86,9 +86,9 @@ enum vchi_service_option {
 };
 
 //Callback used by all services / bulk transfers
-typedef void (*VCHI_CALLBACK_T)(void *callback_param, //my service local param
-				enum vchi_callback_reason reason,
-				void *handle); //for transmitting msg's only
+ typedef void (*VCHI_CALLBACK_T)(void *callback_param, //my service local param
+				 enum vchi_callback_reason reason,
+				 void *handle); //for transmitting msg's only
 
 /*
  * Define vector struct for scatter-gather (vector) operations
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 704afd470c88..c8e62789a540 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -23,7 +23,7 @@ struct shim_service {
 /***********************************************************
  * Name: vchi_msg_peek
  *
- * Arguments:  const VCHI_SERVICE_HANDLE_T handle,
+ * Arguments:  struct vchi_service_handle *handle,
  *             void **data,
  *             uint32_t *msg_size,
 
@@ -36,7 +36,7 @@ struct shim_service {
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_msg_peek(VCHI_SERVICE_HANDLE_T handle,
+int32_t vchi_msg_peek(struct vchi_service_handle *handle,
 		      void **data,
 		      uint32_t *msg_size,
 		      enum vchi_flags flags)
@@ -63,7 +63,7 @@ EXPORT_SYMBOL(vchi_msg_peek);
 /***********************************************************
  * Name: vchi_msg_remove
  *
- * Arguments:  const VCHI_SERVICE_HANDLE_T handle,
+ * Arguments:  struct vchi_service_handle *handle,
  *
  * Description: Routine to remove a message (after it has been read with
  *              vchi_msg_peek)
@@ -71,7 +71,7 @@ EXPORT_SYMBOL(vchi_msg_peek);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_msg_remove(VCHI_SERVICE_HANDLE_T handle)
+int32_t vchi_msg_remove(struct vchi_service_handle *handle)
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	struct vchiq_header *header;
@@ -87,7 +87,7 @@ EXPORT_SYMBOL(vchi_msg_remove);
 /***********************************************************
  * Name: vchi_msg_queue
  *
- * Arguments:  VCHI_SERVICE_HANDLE_T handle,
+ * Arguments:  struct vchi_service_handle *handle,
  *             ssize_t (*copy_callback)(void *context, void *dest,
  *				        size_t offset, size_t maxsize),
  *	       void *context,
@@ -99,11 +99,10 @@ EXPORT_SYMBOL(vchi_msg_remove);
  *
  ***********************************************************/
 static
-int32_t vchi_msg_queue(VCHI_SERVICE_HANDLE_T handle,
-	ssize_t (*copy_callback)(void *context, void *dest,
-				 size_t offset, size_t maxsize),
-	void *context,
-	uint32_t data_size)
+int32_t vchi_msg_queue(struct vchi_service_handle *handle,
+		       ssize_t (*copy_callback)(void *context, void *dest,
+						size_t offset, size_t maxsize),
+		       void *context, uint32_t data_size)
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	VCHIQ_STATUS_T status;
@@ -139,7 +138,7 @@ vchi_queue_kernel_message_callback(void *context,
 }
 
 int
-vchi_queue_kernel_message(VCHI_SERVICE_HANDLE_T handle,
+vchi_queue_kernel_message(struct vchi_service_handle *handle,
 			  void *data,
 			  unsigned int size)
 {
@@ -169,8 +168,7 @@ vchi_queue_user_message_callback(void *context,
 }
 
 int
-vchi_queue_user_message(VCHI_SERVICE_HANDLE_T handle,
-			void __user *data,
+vchi_queue_user_message(struct vchi_service_handle *handle, void __user *data,
 			unsigned int size)
 {
 	struct vchi_queue_user_message_context copycontext = {
@@ -187,7 +185,7 @@ EXPORT_SYMBOL(vchi_queue_user_message);
 /***********************************************************
  * Name: vchi_bulk_queue_receive
  *
- * Arguments:  VCHI_BULK_HANDLE_T handle,
+ * Arguments:  struct vchi_service_handle *handle,
  *             void *data_dst,
  *             const uint32_t data_size,
  *             enum vchi_flags flags
@@ -198,7 +196,7 @@ EXPORT_SYMBOL(vchi_queue_user_message);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_bulk_queue_receive(VCHI_SERVICE_HANDLE_T handle, void *data_dst,
+int32_t vchi_bulk_queue_receive(struct vchi_service_handle *handle, void *data_dst,
 				uint32_t data_size, enum vchi_flags flags,
 				void *bulk_handle)
 {
@@ -245,7 +243,7 @@ EXPORT_SYMBOL(vchi_bulk_queue_receive);
 /***********************************************************
  * Name: vchi_bulk_queue_transmit
  *
- * Arguments:  VCHI_BULK_HANDLE_T handle,
+ * Arguments:  struct vchi_service_handle *handle,
  *             const void *data_src,
  *             uint32_t data_size,
  *             enum vchi_flags flags,
@@ -256,7 +254,7 @@ EXPORT_SYMBOL(vchi_bulk_queue_receive);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
+int32_t vchi_bulk_queue_transmit(struct vchi_service_handle *handle,
 				 const void *data_src,
 				 uint32_t data_size,
 				 enum vchi_flags flags,
@@ -307,7 +305,7 @@ EXPORT_SYMBOL(vchi_bulk_queue_transmit);
 /***********************************************************
  * Name: vchi_msg_dequeue
  *
- * Arguments:  VCHI_SERVICE_HANDLE_T handle,
+ * Arguments:  struct vchi_service_handle *handle,
  *             void *data,
  *             uint32_t max_data_size_to_read,
  *             uint32_t *actual_msg_size
@@ -318,7 +316,7 @@ EXPORT_SYMBOL(vchi_bulk_queue_transmit);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_msg_dequeue(VCHI_SERVICE_HANDLE_T handle, void *data,
+int32_t vchi_msg_dequeue(struct vchi_service_handle *handle, void *data,
 			 uint32_t max_data_size_to_read,
 			 uint32_t *actual_msg_size, enum vchi_flags flags)
 {
@@ -376,7 +374,7 @@ EXPORT_SYMBOL(vchi_held_msg_release);
 /***********************************************************
  * Name: vchi_msg_hold
  *
- * Arguments:  VCHI_SERVICE_HANDLE_T handle,
+ * Arguments:  struct vchi_service_handle *handle,
  *             void **data,
  *             uint32_t *msg_size,
  *             enum vchi_flags flags,
@@ -390,7 +388,7 @@ EXPORT_SYMBOL(vchi_held_msg_release);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_msg_hold(VCHI_SERVICE_HANDLE_T handle, void **data,
+int32_t vchi_msg_hold(struct vchi_service_handle *handle, void **data,
 		      uint32_t *msg_size, enum vchi_flags flags,
 		      struct vchi_held_msg *message_handle)
 {
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
 
@@ -493,9 +491,9 @@ EXPORT_SYMBOL(vchi_disconnect);
  * Name: vchi_service_open
  * Name: vchi_service_create
  *
- * Arguments: VCHI_INSTANCE_T *instance_handle
+ * Arguments: struct vchi_instance_handle *instance_handle
  *            struct service_creation *setup,
- *            VCHI_SERVICE_HANDLE_T *handle
+ *            struct vchi_service_handle **handle
  *
  * Description: Routine to open a service
  *
@@ -593,14 +591,14 @@ static void service_free(struct shim_service *service)
 	}
 }
 
-int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
-	struct service_creation *setup,
-	VCHI_SERVICE_HANDLE_T *handle)
+int32_t vchi_service_open(struct vchi_instance_handle *instance_handle,
+			  struct service_creation *setup,
+			  struct vchi_service_handle **handle)
 {
 	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
 	struct shim_service *service = service_alloc(instance, setup);
 
-	*handle = (VCHI_SERVICE_HANDLE_T)service;
+	*handle = (struct vchi_service_handle *)service;
 
 	if (service) {
 		struct vchiq_service_params params;
@@ -626,7 +624,7 @@ int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
 }
 EXPORT_SYMBOL(vchi_service_open);
 
-int32_t vchi_service_close(const VCHI_SERVICE_HANDLE_T handle)
+int32_t vchi_service_close(const struct vchi_service_handle *handle)
 {
 	int32_t ret = -1;
 	struct shim_service *service = (struct shim_service *)handle;
@@ -642,7 +640,7 @@ int32_t vchi_service_close(const VCHI_SERVICE_HANDLE_T handle)
 }
 EXPORT_SYMBOL(vchi_service_close);
 
-int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle)
+int32_t vchi_service_destroy(const struct vchi_service_handle *handle)
 {
 	int32_t ret = -1;
 	struct shim_service *service = (struct shim_service *)handle;
@@ -661,7 +659,7 @@ int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle)
 }
 EXPORT_SYMBOL(vchi_service_destroy);
 
-int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
+int32_t vchi_service_set_option(const struct vchi_service_handle *handle,
 				enum vchi_service_option option,
 				int value)
 {
@@ -692,7 +690,8 @@ int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
 }
 EXPORT_SYMBOL(vchi_service_set_option);
 
-int32_t vchi_get_peer_version(const VCHI_SERVICE_HANDLE_T handle, short *peer_version)
+int32_t vchi_get_peer_version(const struct vchi_service_handle *handle,
+			      short *peer_version)
 {
 	int32_t ret = -1;
 	struct shim_service *service = (struct shim_service *)handle;
@@ -710,14 +709,14 @@ EXPORT_SYMBOL(vchi_get_peer_version);
 /***********************************************************
  * Name: vchi_service_use
  *
- * Arguments: const VCHI_SERVICE_HANDLE_T handle
+ * Arguments: const struct vchi_service_handle *handle
  *
  * Description: Routine to increment refcount on a service
  *
  * Returns: void
  *
  ***********************************************************/
-int32_t vchi_service_use(const VCHI_SERVICE_HANDLE_T handle)
+int32_t vchi_service_use(const struct vchi_service_handle *handle)
 {
 	int32_t ret = -1;
 
@@ -731,14 +730,14 @@ EXPORT_SYMBOL(vchi_service_use);
 /***********************************************************
  * Name: vchi_service_release
  *
- * Arguments: const VCHI_SERVICE_HANDLE_T handle
+ * Arguments: const struct vchi_service_handle *handle
  *
  * Description: Routine to decrement refcount on a service
  *
  * Returns: void
  *
  ***********************************************************/
-int32_t vchi_service_release(const VCHI_SERVICE_HANDLE_T handle)
+int32_t vchi_service_release(const struct vchi_service_handle *handle)
 {
 	int32_t ret = -1;
 
-- 
2.17.1


