X-GM-THRID: 6755960127598100480
X-Received: by 2002:a17:90a:2ec5:: with SMTP id h5mr1944754pjs.87.1572994548698;
        Tue, 05 Nov 2019 14:55:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:2a06:: with SMTP id q6ls28167pfq.14.gmail; Tue, 05 Nov
 2019 14:55:47 -0800 (PST)
X-Google-Smtp-Source: APXvYqxjBCX14UAXZV1lQhnOmeUEUKJBIcnhmPGbSAiUh8i7rbt287lDEnTAeIuxItzFTZBErQE3
X-Received: by 2002:a63:9d0f:: with SMTP id i15mr39877541pgd.286.1572994547185;
        Tue, 05 Nov 2019 14:55:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572994547; cv=none;
        d=google.com; s=arc-20160816;
        b=KnIG3z343FZdPwJ0QLxf+FMcvoOiU1iPEYLYvM0bu72EBfHim08cUc2htaaq+8UCEy
         gbhkr/vaehLErYYDTYMB1Fkl3y+sm8Ixy3SkTBqIRek2xfE00ZTZjaWmgZqL9XjRLTDr
         5Ub7luJ18JdgHbJIkg9ixX5zPZDUfY+QnlNEJaK6pR8uP9TfUZQDz4SsbFs9HncMZxvh
         sZbL97+zu0kSMecSVqA1BboKIUQfV/9WjRtgXZa20nD1ddE55ruXotfK7S6SRDtRMGJf
         3Ti4fbRG2393R4cGe3pIDUuZ99t0+x8v1ej+m1w7vdc+KoICj6a4JDTQTixKyx+egTmI
         t9qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=SE/iwDBNXi/5BE4Q5ehP2eGhZlWWL84KUzPMQ5OoL5s=;
        b=JpPrbi9e7aedBOSivnai6zvfEsoK1Adwts6nSPcLHPSPCTlaZ+2xQVhJMJcJ3uXYtt
         fwOxlA+nbtP8RrsGM6vLaitJc93lYe7yBrRP1cNy07K7+cia/TbEgNzl1WX5dbDKDuiu
         lfkS0rt27w+F296yfHglSzYZrkTQWScP/UYQ4qU9RfTUzXjF4MKT8laCRZY89RetQvZe
         P5qeMjF9hulVgVsdNX7fO/xCZp+j9XJGOZFssG+YSFW+klc93FixrNT6YWGjRXZ1skoH
         P91oockhAYhVFvwDbSvKzfrAFqoTuX39Pp/x7YZeu8ii96Cg7fAogwiVNLM935twEDgI
         L7cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kERJTdb9;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 3si433103pfg.1.2019.11.05.14.55.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 14:55:47 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kERJTdb9;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id u23so15670884pgo.0
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 14:55:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=SE/iwDBNXi/5BE4Q5ehP2eGhZlWWL84KUzPMQ5OoL5s=;
        b=kERJTdb9/oGhzUargRoxlXQEt3dsfyWynsC+bwJ4HmX7afFfZWtYiPDT1sYOMxN+s1
         v0eB2miKATgo9HC5FgmsSYxD3MiWK8xQ3FnBfEEoKVQAmY3/Rfvs09nc47vPfUBF8NSC
         eeIf0RnA2SK+0cqmhkIDd5LHUpeqpRlQUIqnPFsVDcrbhhnSQ45MTNe+/LORY1oBYmFk
         uKNTGK+n21zzHySoWC2KU36mG6tSqmvDLwPvFN1v7U8uzKjLe5PEw36TMrrIZHt03shH
         /V3WAzCWGQquaR3uY92CCqV/XSCL8oFGfu4Od1qcgOv7kLGPBq2NLsNtTt/C48dQ4Y+r
         07EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=SE/iwDBNXi/5BE4Q5ehP2eGhZlWWL84KUzPMQ5OoL5s=;
        b=hG3d6Wuaffye+BDxk0MXUFijKxw5UpGQX0xJrC6jpKb7gifY4d5/lFdVAg841wmY3q
         XltU7vzpttcPBgGnoGYVR7XjAWU7bEQZ9P0IJZuCa0yPh0dT2CNCuNrn6KbOTytbHTgB
         ZbxJN+hZb0GAxaZvx9OHxoWPrVAe/WUa/JB9VVD00kOVnvgFUAZvWP8beTWH8tQCJTTX
         x7OOkTrCWPtrny//3fokA2CQFSjyIKpg3ZkveiXjTV7Wzq4DCEHYKR49Lo9e249Mpdyd
         Hvp+VLFAEMQJrl8MYRNQBGbfc/P4eaERPsFNpJqhZFKkZKT5672mAInLfua7De80Tuhy
         sgUQ==
X-Gm-Message-State: APjAAAVRaRAOyNNAeGTkHsbQ3CnxJqjrYzTk74/ygIYbySPmkEEi/9A2
	J4NLDSWWR3RQZ241hR3nB0C6tFseEyTzPg==
X-Received: by 2002:a17:90b:110f:: with SMTP id gi15mr2018858pjb.128.1572994546685;
        Tue, 05 Nov 2019 14:55:46 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id fz12sm456551pjb.15.2019.11.05.14.55.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 14:55:46 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 02/14] staging: vc04_services: Replace VCHI_SERVICE_HANDLE_T typedef with struct vchi_service_handle
Date: Tue,  5 Nov 2019 14:55:19 -0800
Message-Id: <ec9a1a4bdd87ff008e48835cf7c39847d999b147.1572994235.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>

Replaces VCHI_SERVICE_HANDLE_T typedef with vchi_service_handle struct
to match kernel code style. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../bcm2835-audio/bcm2835-vchiq.c             |  2 +-
 .../vc04_services/bcm2835-camera/mmal-vchiq.c |  2 +-
 .../vc04_services/interface/vchi/vchi.h       | 42 ++++++++--------
 .../interface/vchiq_arm/vchiq_shim.c          | 50 +++++++++----------
 4 files changed, 48 insertions(+), 48 deletions(-)

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
index 0227c3f27697..fe2bb49815ae 100644
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
@@ -99,7 +99,7 @@ EXPORT_SYMBOL(vchi_msg_remove);
  *
  ***********************************************************/
 static
-int32_t vchi_msg_queue(VCHI_SERVICE_HANDLE_T handle,
+int32_t vchi_msg_queue(struct vchi_service_handle *handle,
 	ssize_t (*copy_callback)(void *context, void *dest,
 				 size_t offset, size_t maxsize),
 	void *context,
@@ -139,7 +139,7 @@ vchi_queue_kernel_message_callback(void *context,
 }
 
 int
-vchi_queue_kernel_message(VCHI_SERVICE_HANDLE_T handle,
+vchi_queue_kernel_message(struct vchi_service_handle *handle,
 			  void *data,
 			  unsigned int size)
 {
@@ -169,7 +169,7 @@ vchi_queue_user_message_callback(void *context,
 }
 
 int
-vchi_queue_user_message(VCHI_SERVICE_HANDLE_T handle,
+vchi_queue_user_message(struct vchi_service_handle *handle,
 			void __user *data,
 			unsigned int size)
 {
@@ -198,7 +198,7 @@ EXPORT_SYMBOL(vchi_queue_user_message);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_bulk_queue_receive(VCHI_SERVICE_HANDLE_T handle, void *data_dst,
+int32_t vchi_bulk_queue_receive(struct vchi_service_handle *handle, void *data_dst,
 				uint32_t data_size, enum vchi_flags flags,
 				void *bulk_handle)
 {
@@ -256,7 +256,7 @@ EXPORT_SYMBOL(vchi_bulk_queue_receive);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
+int32_t vchi_bulk_queue_transmit(struct vchi_service_handle *handle,
 				 const void *data_src,
 				 uint32_t data_size,
 				 enum vchi_flags flags,
@@ -307,7 +307,7 @@ EXPORT_SYMBOL(vchi_bulk_queue_transmit);
 /***********************************************************
  * Name: vchi_msg_dequeue
  *
- * Arguments:  VCHI_SERVICE_HANDLE_T handle,
+ * Arguments:  struct vchi_service_handle *handle,
  *             void *data,
  *             uint32_t max_data_size_to_read,
  *             uint32_t *actual_msg_size
@@ -318,7 +318,7 @@ EXPORT_SYMBOL(vchi_bulk_queue_transmit);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_msg_dequeue(VCHI_SERVICE_HANDLE_T handle, void *data,
+int32_t vchi_msg_dequeue(struct vchi_service_handle *handle, void *data,
 			 uint32_t max_data_size_to_read,
 			 uint32_t *actual_msg_size, enum vchi_flags flags)
 {
@@ -376,7 +376,7 @@ EXPORT_SYMBOL(vchi_held_msg_release);
 /***********************************************************
  * Name: vchi_msg_hold
  *
- * Arguments:  VCHI_SERVICE_HANDLE_T handle,
+ * Arguments:  struct vchi_service_handle *handle,
  *             void **data,
  *             uint32_t *msg_size,
  *             enum vchi_flags flags,
@@ -390,7 +390,7 @@ EXPORT_SYMBOL(vchi_held_msg_release);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_msg_hold(VCHI_SERVICE_HANDLE_T handle, void **data,
+int32_t vchi_msg_hold(struct vchi_service_handle *handle, void **data,
 		      uint32_t *msg_size, enum vchi_flags flags,
 		      struct vchi_held_msg *message_handle)
 {
@@ -495,7 +495,7 @@ EXPORT_SYMBOL(vchi_disconnect);
  *
  * Arguments: struct vchi_instance_handle *instance_handle
  *            struct service_creation *setup,
- *            VCHI_SERVICE_HANDLE_T *handle
+ *            struct vchi_service_handle **handle
  *
  * Description: Routine to open a service
  *
@@ -595,12 +595,12 @@ static void service_free(struct shim_service *service)
 
 int32_t vchi_service_open(struct vchi_instance_handle *instance_handle,
 	struct service_creation *setup,
-	VCHI_SERVICE_HANDLE_T *handle)
+	struct vchi_service_handle **handle)
 {
 	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
 	struct shim_service *service = service_alloc(instance, setup);
 
-	*handle = (VCHI_SERVICE_HANDLE_T)service;
+	*handle = (struct vchi_service_handle *)service;
 
 	if (service) {
 		struct vchiq_service_params params;
@@ -626,7 +626,7 @@ int32_t vchi_service_open(struct vchi_instance_handle *instance_handle,
 }
 EXPORT_SYMBOL(vchi_service_open);
 
-int32_t vchi_service_close(const VCHI_SERVICE_HANDLE_T handle)
+int32_t vchi_service_close(const struct vchi_service_handle *handle)
 {
 	int32_t ret = -1;
 	struct shim_service *service = (struct shim_service *)handle;
@@ -642,7 +642,7 @@ int32_t vchi_service_close(const VCHI_SERVICE_HANDLE_T handle)
 }
 EXPORT_SYMBOL(vchi_service_close);
 
-int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle)
+int32_t vchi_service_destroy(const struct vchi_service_handle *handle)
 {
 	int32_t ret = -1;
 	struct shim_service *service = (struct shim_service *)handle;
@@ -661,7 +661,7 @@ int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle)
 }
 EXPORT_SYMBOL(vchi_service_destroy);
 
-int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
+int32_t vchi_service_set_option(const struct vchi_service_handle *handle,
 				enum vchi_service_option option,
 				int value)
 {
@@ -692,7 +692,7 @@ int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
 }
 EXPORT_SYMBOL(vchi_service_set_option);
 
-int32_t vchi_get_peer_version(const VCHI_SERVICE_HANDLE_T handle, short *peer_version)
+int32_t vchi_get_peer_version(const struct vchi_service_handle *handle, short *peer_version)
 {
 	int32_t ret = -1;
 	struct shim_service *service = (struct shim_service *)handle;
@@ -710,14 +710,14 @@ EXPORT_SYMBOL(vchi_get_peer_version);
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
 
@@ -731,14 +731,14 @@ EXPORT_SYMBOL(vchi_service_use);
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


