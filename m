X-GM-THRID: 6753896393761357824
X-Received: by 2002:a9d:bf0:: with SMTP id 103mr14004995oth.372.1572755842947;
        Sat, 02 Nov 2019 21:37:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6808:97:: with SMTP id s23ls2300813oic.11.gmail; Sat, 02
 Nov 2019 21:37:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx3QO3BQLcLk7NwE4szXm4V3EIS625tBbzFlt+qfnxGDYABPsdKr+VK8iocyef10c0a9hp4
X-Received: by 2002:aca:55d3:: with SMTP id j202mr5234231oib.152.1572755841859;
        Sat, 02 Nov 2019 21:37:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572755841; cv=none;
        d=google.com; s=arc-20160816;
        b=ciaq0+xuNXgOeCgIU8EKl7gh78h9QIQ+qARp+TRYc3kRRYSpPbNWsAlcqvpQIZnK4a
         /fOPz+2TaISVyGkTXMiB83hd5B5PwYtQDFKJs+y79DbuV9N494rOHrFkRESQX+ibz4O8
         qnBPxi9BiB0W/CMW5CiUVi/asNcg7Ju3fEOXe8NOd/fuG7fa10QW2i8UxQyBteu3cKAd
         Rb8iz3LRIiCTTo6e12xG1MRZpqczToHyMVUDtGs+pnWAiNhj1UG4flSNB9utB5iaU5NF
         mAFbHtv1LSd7y87sHICTiHkQKzWhOZgAfOu+w8ETplXLAq58ewDVLLws6S2uIlAgjy+2
         dJYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=yT2sy63uAyow9XS2OcWOIXx5HAMdMjypyq6ZbLfESi8=;
        b=vDIaI1i1LKBuIJm0tWaYaMw3p40zMwriImBfCWFqCE66LQlvqq/2/8pXd69K4nhJw3
         sJf6dhZXbSr8fW8gNZInAwNbmuc955Q809636F3xlzfWdQP721pUiGJK8RX9ltI3ccBl
         PFcJyCZpcS/UFzd1TTvlkFDheShj6Dn+UIJDfyxJpzrVTWM4kLYvFOfjhmRI4t9YV0gJ
         8JP3uxHuAkuNvUJt+EiPsLZEEdIJ09RIO2cukvZBxw3TlK59HMhNQ5NTG7+qxewFKcei
         nlc7z8mLXedQBwLdeXwrJdRUw+SeGVc8JUPUI7Jjj/8x/Ch7cHZEaNjqrgu51IdMBrjt
         D4vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fijEKFPv;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 144si677572oii.2.2019.11.02.21.37.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 21:37:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fijEKFPv;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id z24so4527198pgu.4
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Nov 2019 21:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=yT2sy63uAyow9XS2OcWOIXx5HAMdMjypyq6ZbLfESi8=;
        b=fijEKFPv5F0kwHTnupOo6D3cckblz554pAvsivpSaRl8y+Mp3X9FBF2eLx8Dmyn+w0
         ADXiX8rskCm3F43Fp22IbFsgK4KvHIsDxo0JYvFgpGPjJ2Oz6YlLnCNfrX2FFx50HyoB
         DPlkNe0m3yhEATc94xUKAR1ufjbjN2U7jc4+U2hBWFYVKY4szIhBdvi0E1G0CryulbQI
         9BHz4ywyihlOXRNw/p0ly/jzGpbCBoJPQqULfPlSYaljPf9xLvNrTrYHU+SFsyFqONud
         HCYVRT0uIcwLUzBdm2eY0Q3HuSUvvR0A0wkAFDJsRy5gRCI292BShrWrXCt4RvwJY4xW
         qQ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=yT2sy63uAyow9XS2OcWOIXx5HAMdMjypyq6ZbLfESi8=;
        b=o5TCMcTYijXvPEc+VDkzsSymnX9UwayLU7yBo7qFuhfv4bSn18B1CLI7qpROIh4aZA
         odEBc+c5Iq97DE7j64fFr4MWqZZwmG29STlSRpT4oA/jhhKSU23BVyEahs5Nasdg9Df5
         ewg38BtRLsglIEHeQaQRv01vJBi9SJD6R+ox9rt2MjCHNrBy1QOkeqxYfjJuJlOpEn43
         HTDLfJrSKR+qn5MaY/IM1VjKQHxxYXHb4s+eevaF5yOaRHnYOdzCrXjEbuh8M1ASPLes
         TwJJjfbPYFpBEm0H6GzSMqsbAoGcRbwT/ADi8LockZkEb/uuBzQ4iPAAdDnchfS36dkX
         83yQ==
X-Gm-Message-State: APjAAAVtOJuO7lzH6J+ZRzqD05DMEy2BfP0JY8Jj3qSwZkLPPMdULUA8
	LUOBerurMLv1hLb5LCH9LI4=
X-Received: by 2002:a63:5d12:: with SMTP id r18mr23261755pgb.149.1572755840798;
        Sat, 02 Nov 2019 21:37:20 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id z16sm13510774pge.55.2019.11.02.21.37.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2019 21:37:20 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v5 02/10] staging: vc04_services: remove service struct typedef
Date: Sat,  2 Nov 2019 21:36:59 -0700
Message-Id: <06db9b5f45567ad50af9878cf02b495d712cf255.1572755439.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572755439.git.jamal.k.shareef@gmail.com>
References: <cover.1572755439.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572755439.git.jamal.k.shareef@gmail.com>
References: <cover.1572755439.git.jamal.k.shareef@gmail.com>

Removes opaque service struct typedef. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../bcm2835-audio/bcm2835-vchiq.c             |  2 +-
 .../vc04_services/bcm2835-camera/mmal-vchiq.c |  2 +-
 .../vc04_services/interface/vchi/vchi.h       | 42 +++++++--------
 .../interface/vchiq_arm/vchiq_shim.c          | 54 +++++++++----------
 4 files changed, 50 insertions(+), 50 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 2022ff2388dc..73144f1ce45e 100644
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
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 0f4db2f24944..de03b90021a8 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -155,7 +155,7 @@ struct mmal_msg_context {
 };
 
 struct vchiq_mmal_instance {
-	VCHI_SERVICE_HANDLE_T handle;
+	struct vchi_service_handle *handle;
 
 	/* ensure serialised access to service */
 	struct mutex vchiq_mutex;
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 5c8842114607..05fb5c3e8ba0 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -53,7 +53,7 @@ struct service_creation {
 struct vchi_instance_handle;
 
 // Opaque handle for a server or client
-typedef struct opaque_vchi_service_handle_t *VCHI_SERVICE_HANDLE_T;
+struct vchi_service_handle;
 
 /******************************************************************************
  * Global funcs - implementation is specific to which side you are on
@@ -76,53 +76,53 @@ extern int32_t vchi_connect(struct vchi_instance_handle *instance_handle);
 extern int32_t vchi_disconnect(struct vchi_instance_handle *instance_handle);
 
 // helper functions
-extern void *vchi_allocate_buffer(VCHI_SERVICE_HANDLE_T handle, uint32_t *length);
-extern void vchi_free_buffer(VCHI_SERVICE_HANDLE_T handle, void *address);
+extern void *vchi_allocate_buffer(struct vchi_service_handle *handle, uint32_t *length);
+extern void vchi_free_buffer(struct vchi_service_handle *handle, void *address);
 extern uint32_t vchi_current_time(struct vchi_instance_handle *instance_handle);
 
 /******************************************************************************
  * Global service API
  *****************************************************************************/
 // Routine to destroy a service
-extern int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle);
+extern int32_t vchi_service_destroy(const struct vchi_service_handle *handle);
 
 // Routine to open a named service
 extern int32_t vchi_service_open(struct vchi_instance_handle *instance_handle,
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
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index a2434a68fc2f..c8e62789a540 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -23,7 +23,7 @@ struct shim_service {
 /***********************************************************
  * Name: vchi_msg_peek
  *
- * Arguments:  VCHI_SERVICE_HANDLE_T handle,
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
- * Arguments:  VCHI_SERVICE_HANDLE_T handle,
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
@@ -99,7 +99,7 @@ EXPORT_SYMBOL(vchi_msg_remove);
  *
  ***********************************************************/
 static
-int32_t vchi_msg_queue(VCHI_SERVICE_HANDLE_T handle,
+int32_t vchi_msg_queue(struct vchi_service_handle *handle,
 		       ssize_t (*copy_callback)(void *context, void *dest,
 						size_t offset, size_t maxsize),
 		       void *context, uint32_t data_size)
@@ -138,7 +138,7 @@ vchi_queue_kernel_message_callback(void *context,
 }
 
 int
-vchi_queue_kernel_message(VCHI_SERVICE_HANDLE_T handle,
+vchi_queue_kernel_message(struct vchi_service_handle *handle,
 			  void *data,
 			  unsigned int size)
 {
@@ -168,7 +168,7 @@ vchi_queue_user_message_callback(void *context,
 }
 
 int
-vchi_queue_user_message(VCHI_SERVICE_HANDLE_T handle, void __user *data,
+vchi_queue_user_message(struct vchi_service_handle *handle, void __user *data,
 			unsigned int size)
 {
 	struct vchi_queue_user_message_context copycontext = {
@@ -185,7 +185,7 @@ EXPORT_SYMBOL(vchi_queue_user_message);
 /***********************************************************
  * Name: vchi_bulk_queue_receive
  *
- * Arguments:  VCHI_SERVICE_HANDLE_T handle,
+ * Arguments:  struct vchi_service_handle *handle,
  *             void *data_dst,
  *             const uint32_t data_size,
  *             enum vchi_flags flags
@@ -196,7 +196,7 @@ EXPORT_SYMBOL(vchi_queue_user_message);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_bulk_queue_receive(VCHI_SERVICE_HANDLE_T handle, void *data_dst,
+int32_t vchi_bulk_queue_receive(struct vchi_service_handle *handle, void *data_dst,
 				uint32_t data_size, enum vchi_flags flags,
 				void *bulk_handle)
 {
@@ -243,7 +243,7 @@ EXPORT_SYMBOL(vchi_bulk_queue_receive);
 /***********************************************************
  * Name: vchi_bulk_queue_transmit
  *
- * Arguments:  VCHI_SERVICE_HANDLE_T handle,
+ * Arguments:  struct vchi_service_handle *handle,
  *             const void *data_src,
  *             uint32_t data_size,
  *             enum vchi_flags flags,
@@ -254,7 +254,7 @@ EXPORT_SYMBOL(vchi_bulk_queue_receive);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
+int32_t vchi_bulk_queue_transmit(struct vchi_service_handle *handle,
 				 const void *data_src,
 				 uint32_t data_size,
 				 enum vchi_flags flags,
@@ -305,7 +305,7 @@ EXPORT_SYMBOL(vchi_bulk_queue_transmit);
 /***********************************************************
  * Name: vchi_msg_dequeue
  *
- * Arguments:  VCHI_SERVICE_HANDLE_T handle,
+ * Arguments:  struct vchi_service_handle *handle,
  *             void *data,
  *             uint32_t max_data_size_to_read,
  *             uint32_t *actual_msg_size
@@ -316,7 +316,7 @@ EXPORT_SYMBOL(vchi_bulk_queue_transmit);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_msg_dequeue(VCHI_SERVICE_HANDLE_T handle, void *data,
+int32_t vchi_msg_dequeue(struct vchi_service_handle *handle, void *data,
 			 uint32_t max_data_size_to_read,
 			 uint32_t *actual_msg_size, enum vchi_flags flags)
 {
@@ -374,7 +374,7 @@ EXPORT_SYMBOL(vchi_held_msg_release);
 /***********************************************************
  * Name: vchi_msg_hold
  *
- * Arguments:  VCHI_SERVICE_HANDLE_T handle,
+ * Arguments:  struct vchi_service_handle *handle,
  *             void **data,
  *             uint32_t *msg_size,
  *             enum vchi_flags flags,
@@ -388,7 +388,7 @@ EXPORT_SYMBOL(vchi_held_msg_release);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_msg_hold(VCHI_SERVICE_HANDLE_T handle, void **data,
+int32_t vchi_msg_hold(struct vchi_service_handle *handle, void **data,
 		      uint32_t *msg_size, enum vchi_flags flags,
 		      struct vchi_held_msg *message_handle)
 {
@@ -493,7 +493,7 @@ EXPORT_SYMBOL(vchi_disconnect);
  *
  * Arguments: struct vchi_instance_handle *instance_handle
  *            struct service_creation *setup,
- *            VCHI_SERVICE_HANDLE_T *handle
+ *            struct vchi_service_handle **handle
  *
  * Description: Routine to open a service
  *
@@ -593,12 +593,12 @@ static void service_free(struct shim_service *service)
 
 int32_t vchi_service_open(struct vchi_instance_handle *instance_handle,
 			  struct service_creation *setup,
-			  VCHI_SERVICE_HANDLE_T *handle)
+			  struct vchi_service_handle **handle)
 {
 	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
 	struct shim_service *service = service_alloc(instance, setup);
 
-	*handle = (VCHI_SERVICE_HANDLE_T)service;
+	*handle = (struct vchi_service_handle *)service;
 
 	if (service) {
 		struct vchiq_service_params params;
@@ -624,7 +624,7 @@ int32_t vchi_service_open(struct vchi_instance_handle *instance_handle,
 }
 EXPORT_SYMBOL(vchi_service_open);
 
-int32_t vchi_service_close(const VCHI_SERVICE_HANDLE_T handle)
+int32_t vchi_service_close(const struct vchi_service_handle *handle)
 {
 	int32_t ret = -1;
 	struct shim_service *service = (struct shim_service *)handle;
@@ -640,7 +640,7 @@ int32_t vchi_service_close(const VCHI_SERVICE_HANDLE_T handle)
 }
 EXPORT_SYMBOL(vchi_service_close);
 
-int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle)
+int32_t vchi_service_destroy(const struct vchi_service_handle *handle)
 {
 	int32_t ret = -1;
 	struct shim_service *service = (struct shim_service *)handle;
@@ -659,7 +659,7 @@ int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle)
 }
 EXPORT_SYMBOL(vchi_service_destroy);
 
-int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
+int32_t vchi_service_set_option(const struct vchi_service_handle *handle,
 				enum vchi_service_option option,
 				int value)
 {
@@ -690,7 +690,7 @@ int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
 }
 EXPORT_SYMBOL(vchi_service_set_option);
 
-int32_t vchi_get_peer_version(const VCHI_SERVICE_HANDLE_T handle,
+int32_t vchi_get_peer_version(const struct vchi_service_handle *handle,
 			      short *peer_version)
 {
 	int32_t ret = -1;
@@ -709,14 +709,14 @@ EXPORT_SYMBOL(vchi_get_peer_version);
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
 
@@ -730,14 +730,14 @@ EXPORT_SYMBOL(vchi_service_use);
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


