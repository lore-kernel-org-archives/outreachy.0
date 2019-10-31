X-GM-THRID: 6753896393761357824
X-Received: by 2002:a67:edc4:: with SMTP id e4mr604819vsp.211.1572514054717;
        Thu, 31 Oct 2019 02:27:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:6358:: with SMTP id f24ls101365uap.16.gmail; Thu, 31 Oct
 2019 02:27:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwXau/eZ7L/Fodxnkk7quLE1+wAHI7Ix5E0d9AqvH2JKYT6fbcwyzVlh9ISGPtN+zaaW/hz
X-Received: by 2002:ab0:a93:: with SMTP id d19mr2200007uak.70.1572514053130;
        Thu, 31 Oct 2019 02:27:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572514053; cv=none;
        d=google.com; s=arc-20160816;
        b=gTnBExFp29eWBtJLRiy6M7Kkr0vMRkGnShWe4u9m2IiDqi5XCqiWQD0JUxKkeW5Qns
         qaZOKcbBVZ+fRlAOL0OjVPnMlqJFP1hjNE/FZlei0IrDrhr04r/1BIb1fOTgRS+kyi7N
         fcTUaPTZ6HgwZhfZQJYSbhys6ek1Dcz07WKd3JKZDy0RSvuePuAL3HIF4T8etqZ5I8CV
         ty+mrEySkMkuHamkAcYmlr56o2Y+MJAEwLzJjKMHQ+AccfiRDRC0NKM40XFje+yd7tny
         4Rc0U90IoFTnZL6/MK3xoaog0r/KQIjzFjy7FtkiztGQeeuqxPCIn7JYVJiczNJsWpN6
         BW9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=qczXPu4YS9wzBOCrWJ+J8KVUZCzDVsnTm3CnGZGqj6w=;
        b=dhyAIyIgz6k6HE8QhUJaWeBBaiQ+s/NpSx7+yBW4GHHyPk0l0W3Z6Oq5ZRNtFzdUxe
         8hRebHRC6T0nt6oZ+UYrRq7QBoyZiGzW7RTmqlkVZ4dbYbbCgHHPHpdxjCnutQwoeMZr
         IHV3lg4J8TrpDtFPShD0B+j95GDl+Fwej3T2zcOrFP5wLBf1mFOWefBV/iRWgJD4LhZS
         Vo5wHdm3Xr9mB2XhuJCbYPT6h1cajuAnmWnQGMC7Fv7qPnGaHafG/tDCG1ptu9QEOwy7
         MVUQ4GHlwiOlYrdluzb2NdtU4iyrlk+aVjsTDlpsWepj16ngamNVUjHXPtK84exGsK5y
         yvuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XDNjpShg;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id y8si152656vsg.2.2019.10.31.02.27.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 02:27:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XDNjpShg;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x436.google.com with SMTP id c7so3939082pfo.12
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 02:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=qczXPu4YS9wzBOCrWJ+J8KVUZCzDVsnTm3CnGZGqj6w=;
        b=XDNjpShg3ZFiq/7wi/CdGr3Z2Dz5IfQj+dLIylfK5inHP6JkSfZRn34oSupNJlYTuw
         mI4eXXJNpU2lE2prXXDN9RYkO4+t4gZ8FN82dC+aEmwW02D4avWUHkXjFq6lcBuE8Dfo
         b6LpjgBW+HAvkjneEjNci58+SsxHjI0PlE15Ojnw9Gm9Sdg74sP0d1oTyS5pby5mLrZU
         IFZew3tfzKVdxXilzYuuqGrd8CTeObafd+Rfrx7S5/wlHHNKDh5Eti4FQVa4ykBdGZ7p
         kBQ/kod3dCA0xugXpT5tZRakL+wd00SrwoG6d2GuaMGLQh+LAfWzwBG5/m1+0erIWqY6
         9Mqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=qczXPu4YS9wzBOCrWJ+J8KVUZCzDVsnTm3CnGZGqj6w=;
        b=InRWg9lqmDew1v2w/HTPQD6THx77Lyd9qbibgrdu4fwpjmAOW4qgSiDaDI1GhmRXa7
         +Spl2s1crLRqL5+yjLtzu5UVA6NmEvfhEZqs9yG8hDFnZMyJPlBPy1DddS7IQ3DgGCxr
         pBZUWEu56i74gHYJdBCV6/cp9LUkloXHocWyIHvyDMrpl3oOC6f4iNqsbz3WJeOjKOqL
         wmNd8PbUMlGDXxoTBVek3lp3p1+69eQVvXKfCcXl74Kpptz/tO+M/1dg4G0/gnY0RTCc
         W086aKGaIWpGCfqrI0pi76WaO/JsXvlVNaPBqV0lHlwwAmGUEFKKXWAnOkg6jUu8BGXm
         nB7w==
X-Gm-Message-State: APjAAAVB2B/EO+lvTYkfeKUwX2lwsecNkzGm77cWK7HT8wLhQqC6HPXA
	hhoqWWas1ohdlXR+FSJGuHs=
X-Received: by 2002:a63:d70e:: with SMTP id d14mr5304283pgg.10.1572514051694;
        Thu, 31 Oct 2019 02:27:31 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id i63sm4664262pgc.31.2019.10.31.02.27.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 02:27:31 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 1/2] staging: vc04_services: Remove typedefs in vchi
Date: Thu, 31 Oct 2019 02:27:12 -0700
Message-Id: <c558be2e5faa156604a46f695961ebf79a5cbe26.1572513863.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572513863.git.jamal.k.shareef@gmail.com>
References: <cover.1572513863.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572513863.git.jamal.k.shareef@gmail.com>
References: <cover.1572513863.git.jamal.k.shareef@gmail.com>

Remove enum, opaque struct pointer, and function pointer typedefs from
header files and files which include them. Issue found by checkpatch.

Remove unused API typedef in vchi_common.h because it did not allow
patch to build.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../bcm2835-audio/bcm2835-vchiq.c             |   6 +-
 .../vc04_services/bcm2835-audio/bcm2835.h     |   2 +-
 .../vc04_services/bcm2835-camera/mmal-vchiq.c |   6 +-
 .../vc04_services/interface/vchi/vchi.h       |  79 +++++-----
 .../interface/vchi/vchi_common.h              |  25 ++--
 .../interface/vchiq_arm/vchiq_shim.c          | 136 +++++++++---------
 6 files changed, 124 insertions(+), 130 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 5f6a73af57f9..a9f9dfa65c8a 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -9,7 +9,7 @@
 
 struct bcm2835_audio_instance {
 	struct device *dev;
-	VCHI_SERVICE_HANDLE_T vchi_handle;
+	struct vchi_service_h *vchi_handle;
 	struct completion msg_avail_comp;
 	struct mutex vchi_mutex;
 	struct bcm2835_alsa_stream *alsa_stream;
@@ -90,7 +90,7 @@ static int bcm2835_audio_send_simple(struct bcm2835_audio_instance *instance,
 }
 
 static void audio_vchi_callback(void *param,
-				const VCHI_CALLBACK_REASON_T reason,
+				const enum vchi_callback_reason reason,
 				void *msg_handle)
 {
 	struct bcm2835_audio_instance *instance = param;
@@ -122,7 +122,7 @@ static void audio_vchi_callback(void *param,
 }
 
 static int
-vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
+vc_vchi_audio_init(struct vchi_instance_h *vchi_instance,
 		   struct bcm2835_audio_instance *instance)
 {
 	struct service_creation params = {
diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
index ed0feb34b6c8..6d0f4119491f 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
@@ -44,7 +44,7 @@ enum snd_bcm2835_ctrl {
 };
 
 struct bcm2835_vchi_ctx {
-	VCHI_INSTANCE_T vchi_instance;
+	struct vchi_instance_h *vchi_instance;
 };
 
 /* definition of the chip-specific record */
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 1c180ead4a20..e8f135cbb76a 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -155,7 +155,7 @@ struct mmal_msg_context {
 };
 
 struct vchiq_mmal_instance {
-	VCHI_SERVICE_HANDLE_T handle;
+	struct vchi_service_h *handle;
 
 	/* ensure serialised access to service */
 	struct mutex vchiq_mutex;
@@ -535,7 +535,7 @@ static void bulk_abort_cb(struct vchiq_mmal_instance *instance,
 
 /* incoming event service callback */
 static void service_callback(void *param,
-			     const VCHI_CALLBACK_REASON_T reason,
+			     const enum vchi_callback_reason reason,
 			     void *bulk_ctx)
 {
 	struct vchiq_mmal_instance *instance = param;
@@ -1814,7 +1814,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 {
 	int status;
 	struct vchiq_mmal_instance *instance;
-	static VCHI_INSTANCE_T vchi_instance;
+	static struct vchi_instance_h *vchi_instance;
 	struct service_creation params = {
 		.version		= VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
 		.service_id		= VC_MMAL_SERVER_NAME,
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 0a353a468f34..c9811cde0909 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -45,15 +45,18 @@ struct vchi_held_msg {
 struct service_creation {
 	struct vchi_version version;
 	int32_t service_id;
-	VCHI_CALLBACK_T callback;
+	void (*callback)(void *callback_param, //my service local param
+			 enum vchi_callback_reason reason,
+			 void *handle); //for transmitting msg's only
+
 	void *callback_param;
 };
 
 // Opaque handle for a VCHI instance
-typedef struct opaque_vchi_instance_handle_t *VCHI_INSTANCE_T;
+struct vchi_instance_h;
 
 // Opaque handle for a server or client
-typedef struct opaque_vchi_service_handle_t *VCHI_SERVICE_HANDLE_T;
+struct vchi_service_h;
 
 /******************************************************************************
  * Global funcs - implementation is specific to which side you are on
@@ -65,94 +68,94 @@ extern "C" {
 #endif
 
 // Routine used to initialise the vchi on both local + remote connections
-extern int32_t vchi_initialise(VCHI_INSTANCE_T *instance_handle);
+extern int32_t vchi_initialise(struct vchi_instance_h **instance_handle);
 
 extern int32_t vchi_exit(void);
 
-extern int32_t vchi_connect(VCHI_INSTANCE_T instance_handle);
+extern int32_t vchi_connect(struct vchi_instance_h *instance_handle);
 
 //When this is called, ensure that all services have no data pending.
 //Bulk transfers can remain 'queued'
-extern int32_t vchi_disconnect(VCHI_INSTANCE_T instance_handle);
+extern int32_t vchi_disconnect(struct vchi_instance_h *instance_handle);
 
 // helper functions
-extern void *vchi_allocate_buffer(VCHI_SERVICE_HANDLE_T handle, uint32_t *length);
-extern void vchi_free_buffer(VCHI_SERVICE_HANDLE_T handle, void *address);
-extern uint32_t vchi_current_time(VCHI_INSTANCE_T instance_handle);
+extern void *vchi_allocate_buffer(struct vchi_service_h *handle, uint32_t *length);
+extern void vchi_free_buffer(struct vchi_service_h *handle, void *address);
+extern uint32_t vchi_current_time(struct vchi_instance_h *instance_handle);
 
 /******************************************************************************
  * Global service API
  *****************************************************************************/
 // Routine to destroy a service
-extern int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle);
+extern int32_t vchi_service_destroy(const struct vchi_service_h *handle);
 
 // Routine to open a named service
-extern int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
+extern int32_t vchi_service_open(struct vchi_instance_h *instance_handle,
 				 struct service_creation *setup,
-				 VCHI_SERVICE_HANDLE_T *handle);
+				 struct vchi_service_h **handle);
 
-extern int32_t vchi_get_peer_version(const VCHI_SERVICE_HANDLE_T handle,
+extern int32_t vchi_get_peer_version(const struct vchi_service_h *handle,
 				     short *peer_version);
 
 // Routine to close a named service
-extern int32_t vchi_service_close(const VCHI_SERVICE_HANDLE_T handle);
+extern int32_t vchi_service_close(const struct vchi_service_h *handle);
 
 // Routine to increment ref count on a named service
-extern int32_t vchi_service_use(const VCHI_SERVICE_HANDLE_T handle);
+extern int32_t vchi_service_use(const struct vchi_service_h *handle);
 
 // Routine to decrement ref count on a named service
-extern int32_t vchi_service_release(const VCHI_SERVICE_HANDLE_T handle);
+extern int32_t vchi_service_release(const struct vchi_service_h *handle);
 
 // Routine to set a control option for a named service
-extern int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
-					VCHI_SERVICE_OPTION_T option,
-					int value);
+extern int32_t vchi_service_set_option(const struct vchi_service_h *handle,
+				       enum vchi_service_option option,
+				       int value);
 
 /* Routine to send a message from kernel memory across a service */
 extern int
-vchi_queue_kernel_message(VCHI_SERVICE_HANDLE_T handle,
+vchi_queue_kernel_message(struct vchi_service_h *handle,
 			  void *data,
 			  unsigned int size);
 
 /* Routine to send a message from user memory across a service */
 extern int
-vchi_queue_user_message(VCHI_SERVICE_HANDLE_T handle,
+vchi_queue_user_message(struct vchi_service_h *handle,
 			void __user *data,
 			unsigned int size);
 
 // Routine to receive a msg from a service
 // Dequeue is equivalent to hold, copy into client buffer, release
-extern int32_t vchi_msg_dequeue(VCHI_SERVICE_HANDLE_T handle,
+extern int32_t vchi_msg_dequeue(struct vchi_service_h *handle,
 				void *data,
 				uint32_t max_data_size_to_read,
 				uint32_t *actual_msg_size,
-				VCHI_FLAGS_T flags);
+				enum vchi_flags flags);
 
 // Routine to look at a message in place.
 // The message is not dequeued, so a subsequent call to peek or dequeue
 // will return the same message.
-extern int32_t vchi_msg_peek(VCHI_SERVICE_HANDLE_T handle,
+extern int32_t vchi_msg_peek(struct vchi_service_h *handle,
 			     void **data,
 			     uint32_t *msg_size,
-			     VCHI_FLAGS_T flags);
+			     enum vchi_flags flags);
 
 // Routine to remove a message after it has been read in place with peek
 // The first message on the queue is dequeued.
-extern int32_t vchi_msg_remove(VCHI_SERVICE_HANDLE_T handle);
+extern int32_t vchi_msg_remove(struct vchi_service_h *handle);
 
 // Routine to look at a message in place.
 // The message is dequeued, so the caller is left holding it; the descriptor is
 // filled in and must be released when the user has finished with the message.
-extern int32_t vchi_msg_hold(VCHI_SERVICE_HANDLE_T handle,
+extern int32_t vchi_msg_hold(struct vchi_service_h *handle,
 			     void **data,        // } may be NULL, as info can be
 			     uint32_t *msg_size, // } obtained from HELD_MSG_T
-			     VCHI_FLAGS_T flags,
+			     enum vchi_flags flags,
 			     struct vchi_held_msg *message_descriptor);
 
 // Initialise an iterator to look through messages in place
-extern int32_t vchi_msg_look_ahead(VCHI_SERVICE_HANDLE_T handle,
+extern int32_t vchi_msg_look_ahead(struct vchi_service_h *handle,
 				   struct vchi_msg_iter *iter,
-				   VCHI_FLAGS_T flags);
+				   enum vchi_flags flags);
 
 /*******************************************************************************
  * Global service support API - operations on held messages
@@ -202,24 +205,24 @@ extern int32_t vchi_msg_iter_hold_next(struct vchi_msg_iter *iter,
  *****************************************************************************/
 
 // Routine to prepare interface for a transfer from the other side
-extern int32_t vchi_bulk_queue_receive(VCHI_SERVICE_HANDLE_T handle,
+extern int32_t vchi_bulk_queue_receive(struct vchi_service_h *handle,
 				       void *data_dst,
 				       uint32_t data_size,
-				       VCHI_FLAGS_T flags,
+				       enum vchi_flags flags,
 				       void *transfer_handle);
 
 // Prepare interface for a transfer from the other side into relocatable memory.
-int32_t vchi_bulk_queue_receive_reloc(const VCHI_SERVICE_HANDLE_T handle,
+int32_t vchi_bulk_queue_receive_reloc(const struct vchi_service_h *handle,
 				      uint32_t offset,
 				      uint32_t data_size,
-				      const VCHI_FLAGS_T flags,
+				      const enum vchi_flags flags,
 				      void * const bulk_handle);
 
 // Routine to queue up data ready for transfer to the other (once they have signalled they are ready)
-extern int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
+extern int32_t vchi_bulk_queue_transmit(struct vchi_service_h *handle,
 					const void *data_src,
 					uint32_t data_size,
-					VCHI_FLAGS_T flags,
+					enum vchi_flags flags,
 					void *transfer_handle);
 
 /******************************************************************************
@@ -230,10 +233,10 @@ extern int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
 }
 #endif
 
-extern int32_t vchi_bulk_queue_transmit_reloc(VCHI_SERVICE_HANDLE_T handle,
+extern int32_t vchi_bulk_queue_transmit_reloc(struct vchi_service_h *handle,
 					      uint32_t offset,
 					      uint32_t data_size,
-					      VCHI_FLAGS_T flags,
+					      enum vchi_flags flags,
 					      void *transfer_handle);
 #endif /* VCHI_H_ */
 
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index e7955cbaf26a..0a0f2242ead4 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -2,10 +2,10 @@
 /* Copyright (c) 2010-2012 Broadcom. All rights reserved. */
 
 #ifndef VCHI_COMMON_H_
-#define VCHI_COMMON_H_
+#define VCHI_COMMON_H
 
 //flags used when sending messages (must be bitmapped)
-typedef enum {
+enum vchi_flags {
 	VCHI_FLAGS_NONE                      = 0x0,
 	VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE   = 0x1,   // waits for message to be received, or sent (NB. not the same as being seen on other side)
 	VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE = 0x2,   // run a callback when message sent
@@ -20,17 +20,17 @@ typedef enum {
 	VCHI_FLAGS_BULK_DATA_QUEUED      = 0x040000,  // internal use only
 	VCHI_FLAGS_BULK_DATA_COMPLETE    = 0x080000,  // internal use only
 	VCHI_FLAGS_INTERNAL              = 0xFF0000
-} VCHI_FLAGS_T;
+};
 
 // constants for vchi_crc_control()
-typedef enum {
+enum vchi_crc_control {
 	VCHI_CRC_NOTHING = -1,
 	VCHI_CRC_PER_SERVICE = 0,
 	VCHI_CRC_EVERYTHING = 1,
-} VCHI_CRC_CONTROL_T;
+};
 
 //callback reasons when an event occurs on a service
-typedef enum {
+enum vchi_callback_reason {
 	VCHI_CALLBACK_REASON_MIN,
 
 	//This indicates that there is data available
@@ -73,21 +73,21 @@ typedef enum {
 	VCHI_CALLBACK_BULK_TRANSMIT_ABORTED,
 
 	VCHI_CALLBACK_REASON_MAX
-} VCHI_CALLBACK_REASON_T;
+};
 
 // service control options
-typedef enum {
+enum vchi_service_option {
 	VCHI_SERVICE_OPTION_MIN,
 
 	VCHI_SERVICE_OPTION_TRACE,
 	VCHI_SERVICE_OPTION_SYNCHRONOUS,
 
 	VCHI_SERVICE_OPTION_MAX
-} VCHI_SERVICE_OPTION_T;
+};
 
 //Callback used by all services / bulk transfers
 typedef void (*VCHI_CALLBACK_T)(void *callback_param, //my service local param
-				VCHI_CALLBACK_REASON_T reason,
+				enum vchi_callback_reason reason,
 				void *handle); //for transmitting msg's only
 
 /*
@@ -112,11 +112,6 @@ struct vchi_msg_vector {
 	int32_t vec_len;
 };
 
-// Opaque type for a connection API
-typedef struct opaque_vchi_connection_api_t VCHI_CONNECTION_API_T;
-
-// Opaque type for a message driver
-typedef struct opaque_vchi_message_driver_t VCHI_MESSAGE_DRIVER_T;
 
 // Iterator structure for reading ahead through received message queue. Allocated by client,
 // initialised by vchi_msg_look_ahead. Fields are for internal VCHI use only.
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 5e26f0abd5ee..a3efbd0b3596 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -16,18 +16,21 @@ struct shim_service {
 
 	struct vchiu_queue queue;
 
-	VCHI_CALLBACK_T callback;
+	void (*callback)(void *callback_param, //my service local param
+			      enum vchi_callback_reason reason,
+			      void *handle); //for transmitting msg's only
+
 	void *callback_param;
 };
 
 /***********************************************************
  * Name: vchi_msg_peek
  *
- * Arguments:  const VCHI_SERVICE_HANDLE_T handle,
+ * Arguments:  struct vchi_service_h *handle,
  *             void **data,
  *             uint32_t *msg_size,
 
- *             VCHI_FLAGS_T flags
+ *             enum vchi_flags flags
  *
  * Description: Routine to return a pointer to the current message (to allow in
  *              place processing). The message can be removed using
@@ -36,10 +39,10 @@ struct shim_service {
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_msg_peek(VCHI_SERVICE_HANDLE_T handle,
-	void **data,
-	uint32_t *msg_size,
-	VCHI_FLAGS_T flags)
+int32_t vchi_msg_peek(struct vchi_service_h *handle,
+		      void **data,
+		      uint32_t *msg_size,
+		      enum vchi_flags flags)
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	struct vchiq_header *header;
@@ -63,7 +66,7 @@ EXPORT_SYMBOL(vchi_msg_peek);
 /***********************************************************
  * Name: vchi_msg_remove
  *
- * Arguments:  const VCHI_SERVICE_HANDLE_T handle,
+ * Arguments:  struct vchi_service_h *handle,
  *
  * Description: Routine to remove a message (after it has been read with
  *              vchi_msg_peek)
@@ -71,7 +74,7 @@ EXPORT_SYMBOL(vchi_msg_peek);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_msg_remove(VCHI_SERVICE_HANDLE_T handle)
+int32_t vchi_msg_remove(struct vchi_service_h *handle)
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	struct vchiq_header *header;
@@ -87,7 +90,7 @@ EXPORT_SYMBOL(vchi_msg_remove);
 /***********************************************************
  * Name: vchi_msg_queue
  *
- * Arguments:  VCHI_SERVICE_HANDLE_T handle,
+ * Arguments:  struct vchi_service_h *handle,
  *             ssize_t (*copy_callback)(void *context, void *dest,
  *				        size_t offset, size_t maxsize),
  *	       void *context,
@@ -99,11 +102,10 @@ EXPORT_SYMBOL(vchi_msg_remove);
  *
  ***********************************************************/
 static
-int32_t vchi_msg_queue(VCHI_SERVICE_HANDLE_T handle,
-	ssize_t (*copy_callback)(void *context, void *dest,
-				 size_t offset, size_t maxsize),
-	void *context,
-	uint32_t data_size)
+int32_t vchi_msg_queue(struct vchi_service_h *handle,
+		       ssize_t (*copy_callback)(void *context, void *dest,
+						size_t offset, size_t maxsize),
+		       void *context, uint32_t data_size)
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	VCHIQ_STATUS_T status;
@@ -139,7 +141,7 @@ vchi_queue_kernel_message_callback(void *context,
 }
 
 int
-vchi_queue_kernel_message(VCHI_SERVICE_HANDLE_T handle,
+vchi_queue_kernel_message(struct vchi_service_h *handle,
 			  void *data,
 			  unsigned int size)
 {
@@ -169,8 +171,7 @@ vchi_queue_user_message_callback(void *context,
 }
 
 int
-vchi_queue_user_message(VCHI_SERVICE_HANDLE_T handle,
-			void __user *data,
+vchi_queue_user_message(struct vchi_service_h *handle, void __user *data,
 			unsigned int size)
 {
 	struct vchi_queue_user_message_context copycontext = {
@@ -187,10 +188,10 @@ EXPORT_SYMBOL(vchi_queue_user_message);
 /***********************************************************
  * Name: vchi_bulk_queue_receive
  *
- * Arguments:  VCHI_BULK_HANDLE_T handle,
+ * Arguments:  struct vchi_service_h *handle,
  *             void *data_dst,
  *             const uint32_t data_size,
- *             VCHI_FLAGS_T flags
+ *             enum vchi_flags flags
  *             void *bulk_handle
  *
  * Description: Routine to setup a rcv buffer
@@ -198,11 +199,9 @@ EXPORT_SYMBOL(vchi_queue_user_message);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_bulk_queue_receive(VCHI_SERVICE_HANDLE_T handle,
-	void *data_dst,
-	uint32_t data_size,
-	VCHI_FLAGS_T flags,
-	void *bulk_handle)
+int32_t vchi_bulk_queue_receive(struct vchi_service_h *handle, void *data_dst,
+				uint32_t data_size, enum vchi_flags flags,
+				void *bulk_handle)
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	VCHIQ_BULK_MODE_T mode;
@@ -247,10 +246,10 @@ EXPORT_SYMBOL(vchi_bulk_queue_receive);
 /***********************************************************
  * Name: vchi_bulk_queue_transmit
  *
- * Arguments:  VCHI_BULK_HANDLE_T handle,
+ * Arguments:  struct vchi_service_h *handle,
  *             const void *data_src,
  *             uint32_t data_size,
- *             VCHI_FLAGS_T flags,
+ *             enum vchi_flags flags,
  *             void *bulk_handle
  *
  * Description: Routine to transmit some data
@@ -258,11 +257,11 @@ EXPORT_SYMBOL(vchi_bulk_queue_receive);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
-	const void *data_src,
-	uint32_t data_size,
-	VCHI_FLAGS_T flags,
-	void *bulk_handle)
+int32_t vchi_bulk_queue_transmit(struct vchi_service_h *handle, 
+				 const void *data_src,
+				 uint32_t data_size,
+				 enum vchi_flags flags,
+				 void *bulk_handle)
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	VCHIQ_BULK_MODE_T mode;
@@ -309,22 +308,20 @@ EXPORT_SYMBOL(vchi_bulk_queue_transmit);
 /***********************************************************
  * Name: vchi_msg_dequeue
  *
- * Arguments:  VCHI_SERVICE_HANDLE_T handle,
+ * Arguments:  struct vchi_service_h *handle,
  *             void *data,
  *             uint32_t max_data_size_to_read,
  *             uint32_t *actual_msg_size
- *             VCHI_FLAGS_T flags
+ *             enum vchi_flags flags
  *
  * Description: Routine to dequeue a message into the supplied buffer
  *
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_msg_dequeue(VCHI_SERVICE_HANDLE_T handle,
-	void *data,
-	uint32_t max_data_size_to_read,
-	uint32_t *actual_msg_size,
-	VCHI_FLAGS_T flags)
+int32_t vchi_msg_dequeue(struct vchi_service_h *handle, void *data,
+			 uint32_t max_data_size_to_read,
+			 uint32_t *actual_msg_size, enum vchi_flags flags)
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	struct vchiq_header *header;
@@ -380,10 +377,10 @@ EXPORT_SYMBOL(vchi_held_msg_release);
 /***********************************************************
  * Name: vchi_msg_hold
  *
- * Arguments:  VCHI_SERVICE_HANDLE_T handle,
+ * Arguments:  struct vchi_service_h *handle,
  *             void **data,
  *             uint32_t *msg_size,
- *             VCHI_FLAGS_T flags,
+ *             enum vchi_flags flags,
  *             struct vchi_held_msg *message_handle
  *
  * Description: Routine to return a pointer to the current message (to allow
@@ -394,11 +391,9 @@ EXPORT_SYMBOL(vchi_held_msg_release);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_msg_hold(VCHI_SERVICE_HANDLE_T handle,
-	void **data,
-	uint32_t *msg_size,
-	VCHI_FLAGS_T flags,
-	struct vchi_held_msg *message_handle)
+int32_t vchi_msg_hold(struct vchi_service_h *handle, void **data,
+		      uint32_t *msg_size, enum vchi_flags flags,
+		      struct vchi_held_msg *message_handle)
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	struct vchiq_header *header;
@@ -434,7 +429,7 @@ EXPORT_SYMBOL(vchi_msg_hold);
 /***********************************************************
  * Name: vchi_initialise
  *
- * Arguments: VCHI_INSTANCE_T *instance_handle
+ * Arguments: struct vchi_instance_h *instance_handle
  *
  * Description: Initialises the hardware but does not transmit anything
  *              When run as a Host App this will be called twice hence the need
@@ -444,14 +439,14 @@ EXPORT_SYMBOL(vchi_msg_hold);
  *
  ***********************************************************/
 
-int32_t vchi_initialise(VCHI_INSTANCE_T *instance_handle)
+int32_t vchi_initialise(struct vchi_instance_h **instance_handle)
 {
 	VCHIQ_INSTANCE_T instance;
 	VCHIQ_STATUS_T status;
 
 	status = vchiq_initialise(&instance);
 
-	*instance_handle = (VCHI_INSTANCE_T)instance;
+	*instance_handle = (struct vchi_instance_h *)instance;
 
 	return vchiq_status_to_vchi(status);
 }
@@ -460,7 +455,7 @@ EXPORT_SYMBOL(vchi_initialise);
 /***********************************************************
  * Name: vchi_connect
  *
- * Arguments: VCHI_INSTANCE_T instance_handle
+ * Arguments: struct vchi_instance_h *instance_handle
  *
  * Description: Starts the command service on each connection,
  *              causing INIT messages to be pinged back and forth
@@ -468,7 +463,7 @@ EXPORT_SYMBOL(vchi_initialise);
  * Returns: 0 if successful, failure otherwise
  *
  ***********************************************************/
-int32_t vchi_connect(VCHI_INSTANCE_T instance_handle)
+int32_t vchi_connect(struct vchi_instance_h *instance_handle)
 {
 	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
 
@@ -479,7 +474,7 @@ EXPORT_SYMBOL(vchi_connect);
 /***********************************************************
  * Name: vchi_disconnect
  *
- * Arguments: VCHI_INSTANCE_T instance_handle
+ * Arguments: struct vchi_instance_h *instance_handle
  *
  * Description: Stops the command service on each connection,
  *              causing DE-INIT messages to be pinged back and forth
@@ -487,7 +482,7 @@ EXPORT_SYMBOL(vchi_connect);
  * Returns: 0 if successful, failure otherwise
  *
  ***********************************************************/
-int32_t vchi_disconnect(VCHI_INSTANCE_T instance_handle)
+int32_t vchi_disconnect(struct vchi_instance_h *instance_handle)
 {
 	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
 
@@ -499,9 +494,9 @@ EXPORT_SYMBOL(vchi_disconnect);
  * Name: vchi_service_open
  * Name: vchi_service_create
  *
- * Arguments: VCHI_INSTANCE_T *instance_handle
+ * Arguments: struct vchi_instance_h *instance_handle
  *            struct service_creation *setup,
- *            VCHI_SERVICE_HANDLE_T *handle
+ *            struct vchi_service_h **handle
  *
  * Description: Routine to open a service
  *
@@ -599,14 +594,14 @@ static void service_free(struct shim_service *service)
 	}
 }
 
-int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
-	struct service_creation *setup,
-	VCHI_SERVICE_HANDLE_T *handle)
+int32_t vchi_service_open(struct vchi_instance_h *instance_handle,
+			  struct service_creation *setup,
+			  struct vchi_service_h **handle)
 {
 	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
 	struct shim_service *service = service_alloc(instance, setup);
 
-	*handle = (VCHI_SERVICE_HANDLE_T)service;
+	*handle = (struct vchi_service_h *)service;
 
 	if (service) {
 		struct vchiq_service_params params;
@@ -632,7 +627,7 @@ int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
 }
 EXPORT_SYMBOL(vchi_service_open);
 
-int32_t vchi_service_close(const VCHI_SERVICE_HANDLE_T handle)
+int32_t vchi_service_close(const struct vchi_service_h *handle)
 {
 	int32_t ret = -1;
 	struct shim_service *service = (struct shim_service *)handle;
@@ -648,7 +643,7 @@ int32_t vchi_service_close(const VCHI_SERVICE_HANDLE_T handle)
 }
 EXPORT_SYMBOL(vchi_service_close);
 
-int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle)
+int32_t vchi_service_destroy(const struct vchi_service_h *handle)
 {
 	int32_t ret = -1;
 	struct shim_service *service = (struct shim_service *)handle;
@@ -667,8 +662,8 @@ int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle)
 }
 EXPORT_SYMBOL(vchi_service_destroy);
 
-int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
-				VCHI_SERVICE_OPTION_T option,
+int32_t vchi_service_set_option(const struct vchi_service_h *handle,
+				enum vchi_service_option option,
 				int value)
 {
 	int32_t ret = -1;
@@ -689,8 +684,8 @@ int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
 	if (service) {
 		VCHIQ_STATUS_T status =
 			vchiq_set_service_option(service->handle,
-						vchiq_option,
-						value);
+						 vchiq_option,
+						 value);
 
 		ret = vchiq_status_to_vchi(status);
 	}
@@ -698,7 +693,8 @@ int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
 }
 EXPORT_SYMBOL(vchi_service_set_option);
 
-int32_t vchi_get_peer_version(const VCHI_SERVICE_HANDLE_T handle, short *peer_version)
+int32_t vchi_get_peer_version(const struct vchi_service_h *handle,
+			      short *peer_version)
 {
 	int32_t ret = -1;
 	struct shim_service *service = (struct shim_service *)handle;
@@ -716,14 +712,14 @@ EXPORT_SYMBOL(vchi_get_peer_version);
 /***********************************************************
  * Name: vchi_service_use
  *
- * Arguments: const VCHI_SERVICE_HANDLE_T handle
+ * Arguments: const struct vchi_service_h *handle
  *
  * Description: Routine to increment refcount on a service
  *
  * Returns: void
  *
  ***********************************************************/
-int32_t vchi_service_use(const VCHI_SERVICE_HANDLE_T handle)
+int32_t vchi_service_use(const struct vchi_service_h *handle)
 {
 	int32_t ret = -1;
 
@@ -737,14 +733,14 @@ EXPORT_SYMBOL(vchi_service_use);
 /***********************************************************
  * Name: vchi_service_release
  *
- * Arguments: const VCHI_SERVICE_HANDLE_T handle
+ * Arguments: const struct vchi_service_h *handle
  *
  * Description: Routine to decrement refcount on a service
  *
  * Returns: void
  *
  ***********************************************************/
-int32_t vchi_service_release(const VCHI_SERVICE_HANDLE_T handle)
+int32_t vchi_service_release(const struct vchi_service_h *handle)
 {
 	int32_t ret = -1;
 
-- 
2.17.1


