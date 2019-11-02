X-GM-THRID: 6753896393761357824
X-Received: by 2002:a63:f704:: with SMTP id x4mr16005558pgh.336.1572653076892;
        Fri, 01 Nov 2019 17:04:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7292:: with SMTP id d18ls1946599pll.13.gmail; Fri,
 01 Nov 2019 17:04:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz+a6UF8wa96XY22GppSkqEpGbDjbintuBgY31JnmxLk9p8tBKkjqTLSQEplBLNVbMKsQ6S
X-Received: by 2002:a17:902:868b:: with SMTP id g11mr12849183plo.144.1572653075646;
        Fri, 01 Nov 2019 17:04:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572653075; cv=none;
        d=google.com; s=arc-20160816;
        b=tr+ZCHCu8HHCPh1Ad3wj3Mamc3Xt3xdkOnoxbHO9DvmvvUVBolHOZTcXds+X1kkgc8
         DDBJvlSc1K6cBWJ+U2ANTd/1EBISZxnbOdnrPL/7Q6kB5/qvNhAd+QYfaB+ZkzceoRX9
         NyQSK1oMsLOXw/7rgF05J7WFajrSywLHl6rNmp/SiCKpvESmf0c2T8Iq+2JDvzUEU3dl
         VVijUjhlOjGbpNixM4RRQnVU5325d5fUK/2ShlE/KjHHLjH7B9AfXUhyYnlte0m+bgOp
         G632/+swlcN6hqx4W4I7OjFEzwaibqtqr7js6LIA33zxblpxTyD9tLAl9DArtTYcQwDU
         vYsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=Nfgcty++pod3M9wy1HURJ0tRsluPbtSd8Pug8tg6Nio=;
        b=qHVcEpEoFHkOD7TjrDduCQluPtdoqgHI6RXYdiMaJK3MqsbH1aXAhWTNzsUTZUsE2T
         nzBLXVT5lenUigd1kc++pUvSFbnpZQ6hvYSKtmRxn8ys99egqOTUsMAxP7jlOdSbBqX3
         7UAAtdf2GfFQpIGym+IFP4EWWDMOIs/dunA+1Fnt6cZTk/obCv0E5npdw1iwTlW6XjhS
         RE+EgRrlye6xAkgefIrJnZdihMSqz6O9h4moYjbgvBTrB7x7PHBVCieDIY/Bv5B2QI4R
         XhZmfQaNIabZoKfR4yN+lDajuTILdklgKicnewxDOXDjY7wR1LrC7f2InVeSdCyuf/0n
         PcLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uaJSYzJH;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com. [2607:f8b0:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id f8si67461plr.4.2019.11.01.17.04.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 17:04:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::62a as permitted sender) client-ip=2607:f8b0:4864:20::62a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uaJSYzJH;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62a.google.com with SMTP id j12so3072024plt.9
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 17:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Nfgcty++pod3M9wy1HURJ0tRsluPbtSd8Pug8tg6Nio=;
        b=uaJSYzJHhoBQxrSkbCtbsDBOjVHvvWxKICWxEwadtqmRxrVpmDzWDEV9nRxvj3WZEa
         jXNVQyqijBMEjggC28ZzaKQarnkiBw+CF0ePZ8LfHPEHdFCGeq8GX2VXtVTd7RWuNHbK
         y4GVt5FzM7y0S/3cu+xd3O1jWFVwA4eSULDJoPWMAd0HHIdWEaq9lDl1rbx4PF97hjZl
         kdLnv9YPLvtJ3tzWZPH3/hK5t+L6reRF0beC8gSlNlTPVx9F6r+homDTpt2zxnu7oXyq
         XvRcgsHr9+NnuXh2tCWABylo2nPtaXgGDyVjqiK1TZYTVdPzX7+y1zlGbmu7na+ZqwZH
         kvYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Nfgcty++pod3M9wy1HURJ0tRsluPbtSd8Pug8tg6Nio=;
        b=SCuWDCeNJh0jOt/YkC1fA+VvJJXJsnRIuflg9WYKxVaWtn/dp4smwy5T9z1OgXhLoY
         aOfQU1xo3nGV2Kva0ghK0yePfqzqeaPlZkujmfF7ewZ48FEOHf/qyUkRIJ10VJ6TC8N+
         zWNgSn0SdAB2vfAn2khjDIa7n53AsJYPNQqIjQRmVcxEDieuJYKVbjhN2UfY2fi2uJAU
         UNrUe2e9asnHsjQIPoQZ7R2rjD5bEGiBdlH5eYKxZ2N3OMbQ5o2npqsmx3wbMnvo+2JG
         SnKxE4ujG5/i/J+yYd448VdSlvWim/QI4xoW5r1tFdX/4hEH374y1898+oI1aP29kM6T
         pBsA==
X-Gm-Message-State: APjAAAXU6QCrOqkuj27jDfPGtPtYvE4kVoZOStRwGPW9+SOtYLMJZkzJ
	7qOCMImUFbAYWaBE4kQTCms=
X-Received: by 2002:a17:902:ac84:: with SMTP id h4mr12133261plr.171.1572653074990;
        Fri, 01 Nov 2019 17:04:34 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id j7sm6714978pgl.38.2019.11.01.17.04.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 17:04:34 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v4 3/8] staging: vc04_services: Remove struct typedefs in vchi
Date: Fri,  1 Nov 2019 17:04:15 -0700
Message-Id: <5989023c1a64e0e5c8d56ceb0511b4f49199703d.1572652827.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572652827.git.jamal.k.shareef@gmail.com>
References: <cover.1572652827.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572652827.git.jamal.k.shareef@gmail.com>
References: <cover.1572652827.git.jamal.k.shareef@gmail.com>

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


