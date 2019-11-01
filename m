X-GM-THRID: 6753896393761357824
X-Received: by 2002:a0d:e8d5:: with SMTP id r204mr5139241ywe.92.1572586138288;
        Thu, 31 Oct 2019 22:28:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:6055:: with SMTP id u82ls784846ywb.10.gmail; Thu, 31 Oct
 2019 22:28:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwWT1Cj30MI1MsPl+JWXS90h5Lc1HR494wksJXwxd8NMQs2FsAEDA9zRuuJkc7ggtFBgmvt
X-Received: by 2002:a81:a207:: with SMTP id w7mr7450323ywg.476.1572586137159;
        Thu, 31 Oct 2019 22:28:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572586137; cv=none;
        d=google.com; s=arc-20160816;
        b=nuKzjJurOXjUSANdtNk2qoTS5jzRVVa1LyRurw9nLleA0AJ2eEDYuuWODknv7Hq4ez
         j0ABOOH6ro2vMhKE21JT78qHc/Pnca07Du1r+FI8M0loOnLUR9JzIXqcMXigWgXF7Yva
         Bm0GpDVbaaVqrL7lPsYef+dYTiUc8SU9PtUpehxzElf0ByX6nEA5PtW9pmGPzjEmvMIj
         ve0WDOPdNNVZDnnvXkCWyv9gvRzMaIjBI0Uv6B85K/qj3Srvdo9Lw89d505SnIA/54bA
         z8JqjTtu5uptnwNZJ9WKennUyMklohB34mQ6qC4iwrwZjtFzdNZJ+Z6o9QzeoOAaLGFj
         KHug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=dT8bXaTn+pAJESyKreekrlyHV5NVhXjUsgk4RFtj1l8=;
        b=X6YB2T02nssUyaQmgTpKTdApnOan3fg/E7UZnwJVxW+/aebQAinzN77aRgcNtsofGA
         yFtio/EtPFiLLergthp2InbUQP4ojb37VtCVaRi7SrTTpX1tw5gfYsSaIoru1ivkEssG
         Jpbvj3rl603PDqylxGC4IN0pUYOi0RTk+PSBqldp/HUkK00b8iaxbvu4S934p+WASojb
         Zr1oyQ5lrqQBI8uUEZz8ujGYHfIFqF1Mzx07JGzIjAa83KYao8l5vkTi67fm8o3nkTvZ
         RCgFBEx0hGKvb1GnUaDqOOLGreWagS/6ntCWKDjkvtlpVCjNFmGNEgdKgJ/tlUiBBJNW
         iVUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B6HlAES3;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id r185si616665ywe.2.2019.10.31.22.28.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 22:28:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B6HlAES3;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x436.google.com with SMTP id v19so6256478pfm.3
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 22:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=dT8bXaTn+pAJESyKreekrlyHV5NVhXjUsgk4RFtj1l8=;
        b=B6HlAES33O8zzazO5enAP/fuzEOU76AnUzwSQerdXrFqDD06qfaRbj8/3HiVkuZMdI
         xSZSDKOEQ3TP6a8lN7/38MVn/tAvNEMNYvFuqWjLoJiyZ14QccvDD6yC6MwmSKjmt+gm
         t1v1DJHkAptWkceaNnJtALsixQ0k+6KMs9YaAVsxyPSiYClE5yG4UQLRKZRETiaV+7rT
         p+1ZyrFqZWObSgOVOuklrt8yPELtIoqCkWt138yUw8GcBG2B+VPDkO7bGPW8dBnTQMZq
         t4qCeOl0PGuHindx6NaQgyWUSdUFLG+gRLEsyc5Jc1qYJ2I1pATUoYMjmk0YL1B6ZIN5
         HmbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=dT8bXaTn+pAJESyKreekrlyHV5NVhXjUsgk4RFtj1l8=;
        b=ga5WVpSQS0oFDKMFxRwDQSZqbNbp4pcEp29p16iGRwERi5g2vjx/19ddcq8F5UFytm
         kqE1UW2nUxCRp+nHE/UWXL6v2KeLesywQ6qSh2IMDFrdsyYopVoGX1HAif/E3GCkLNEi
         3i6sO9FnDbz1ef1ygCv8l9c9j4vAdua4OiQgGFTz2W4svf22FIBPhZfLNEGIGay73LCt
         s32W2UFmEHJFoap6wcHxodHlF7VfpwBn1MHJKXIwTNyhw7Xe282P5j7ctNYrh/DeiCAV
         uKR7MA3faxZkO4AyWT/CkQkLdk7c30KIm0ecM3q9wCo8EOWdMTae4iRHQ2krbdJGS80h
         7GOA==
X-Gm-Message-State: APjAAAWiT5zp+QDd76pSyjwM2snMMdnsr9gTMSB9jVOGrFr39Ycd9Ssy
	Bih2nAMsikybS82p2UoTNFE=
X-Received: by 2002:a63:582:: with SMTP id 124mr11201056pgf.324.1572586136340;
        Thu, 31 Oct 2019 22:28:56 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id q42sm7826331pja.16.2019.10.31.22.28.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 22:28:55 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 2/7] staging: vc04_services: Remove struct typedefs in vchi
Date: Thu, 31 Oct 2019 22:28:30 -0700
Message-Id: <dbc2f24a40638e4ceab2e68b626c536e27a6ef83.1572585566.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572585566.git.jamal.k.shareef@gmail.com>
References: <cover.1572585566.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572585566.git.jamal.k.shareef@gmail.com>
References: <cover.1572585566.git.jamal.k.shareef@gmail.com>

Removes opaque struct typedefs from vchi files. Issue found by
checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../bcm2835-audio/bcm2835-vchiq.c             |  4 +-
 .../vc04_services/bcm2835-audio/bcm2835.h     |  2 +-
 .../vc04_services/bcm2835-camera/mmal-vchiq.c |  4 +-
 .../vc04_services/interface/vchi/vchi.h       | 54 +++++++-------
 .../interface/vchi/vchi_common.h              |  6 +-
 .../interface/vchiq_arm/vchiq_shim.c          | 72 +++++++++----------
 6 files changed, 71 insertions(+), 71 deletions(-)

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
index 2074d32eb964..27fe1d3dea91 100644
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
index 191d89832b14..30f029233f52 100644
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
@@ -426,7 +426,7 @@ EXPORT_SYMBOL(vchi_msg_hold);
 /***********************************************************
  * Name: vchi_initialise
  *
- * Arguments: VCHI_INSTANCE_T *instance_handle
+ * Arguments: struct vchi_instance_handle *instance_handle
  *
  * Description: Initialises the hardware but does not transmit anything
  *              When run as a Host App this will be called twice hence the need
@@ -436,14 +436,14 @@ EXPORT_SYMBOL(vchi_msg_hold);
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
@@ -452,7 +452,7 @@ EXPORT_SYMBOL(vchi_initialise);
 /***********************************************************
  * Name: vchi_connect
  *
- * Arguments: VCHI_INSTANCE_T instance_handle
+ * Arguments: struct vchi_instance_handle *instance_handle
  *
  * Description: Starts the command service on each connection,
  *              causing INIT messages to be pinged back and forth
@@ -460,7 +460,7 @@ EXPORT_SYMBOL(vchi_initialise);
  * Returns: 0 if successful, failure otherwise
  *
  ***********************************************************/
-int32_t vchi_connect(VCHI_INSTANCE_T instance_handle)
+int32_t vchi_connect(struct vchi_instance_handle *instance_handle)
 {
 	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
 
@@ -471,7 +471,7 @@ EXPORT_SYMBOL(vchi_connect);
 /***********************************************************
  * Name: vchi_disconnect
  *
- * Arguments: VCHI_INSTANCE_T instance_handle
+ * Arguments: struct vchi_instance_handle *instance_handle
  *
  * Description: Stops the command service on each connection,
  *              causing DE-INIT messages to be pinged back and forth
@@ -479,7 +479,7 @@ EXPORT_SYMBOL(vchi_connect);
  * Returns: 0 if successful, failure otherwise
  *
  ***********************************************************/
-int32_t vchi_disconnect(VCHI_INSTANCE_T instance_handle)
+int32_t vchi_disconnect(struct vchi_instance_handle *instance_handle)
 {
 	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
 
@@ -491,9 +491,9 @@ EXPORT_SYMBOL(vchi_disconnect);
  * Name: vchi_service_open
  * Name: vchi_service_create
  *
- * Arguments: VCHI_INSTANCE_T instance_handle
+ * Arguments: struct vchi_instance_handle *instance_handle
  *            struct service_creation *setup,
- *            VCHI_SERVICE_HANDLE_T *handle
+ *            struct vchi_service_handle **handle
  *
  * Description: Routine to open a service
  *
@@ -591,14 +591,14 @@ static void service_free(struct shim_service *service)
 	}
 }
 
-int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
+int32_t vchi_service_open(struct vchi_instance_handle *instance_handle,
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
@@ -624,7 +624,7 @@ int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
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


