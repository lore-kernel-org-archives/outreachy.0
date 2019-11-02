X-GM-THRID: 6753896393761357824
X-Received: by 2002:aca:d606:: with SMTP id n6mr6569972oig.36.1572653074839;
        Fri, 01 Nov 2019 17:04:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:d410:: with SMTP id l16ls1831564oig.2.gmail; Fri, 01 Nov
 2019 17:04:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw9PgdAJ94+dfDXx0KfmAWZ2G0OYomOwx35IuZH0LnojyS07NqU2PBZ6pi3nQ2qZO+6xO3R
X-Received: by 2002:a05:6808:1d0:: with SMTP id x16mr3625602oic.137.1572653073542;
        Fri, 01 Nov 2019 17:04:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572653073; cv=none;
        d=google.com; s=arc-20160816;
        b=UYrkBBvXI3zUoL/HiU96VkEl+80qDvTFYdvf9RPmjY+IL31UJAbbtV5UYdhmpgxzvR
         s6BTv4qAEvbkm2qmG8Jne4JFDVyYfk2WPG0O0YDUwVUjMh9ZxCBgJuYzL8FeK7gJO3eJ
         xk7iqUGLYhTJ11qP3vkdP9MbE/05FQW+P9Hz282vMKRfXVXSTXU5Z9JPMuKcW6Jx2F6V
         fBkm564jPRQ+vMBjBhbr1sawmCqFaMCW9a7JaLw31hdnDUbzEGBfn6k9RM5vKfv2ieHQ
         mq9NJ4NchyBrkBvfVmFhlyEAe5bdmfXuadLY0Ux8NlPBLoyIIPcmVmw7q9M+GqF7PZlY
         dIhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=sM2gT+qaOa7Wn/Zfa3RBKoLa022i4fgFkbgXO8TsuvI=;
        b=Mpu44NzIB4pj3wBgJ5qVkdff2yv4fdMGjAO4UlpOsdERV3Hea13YfmQQeJlvt9jH8B
         hYegsdFfv1XXx34/cSWHZWrHMjmjAMl16eY4b25ppGLUZgFkfl0st27bolX+3on3Coss
         LehgA0sf1z/dOqeniarW7DEdLXElH41JaBxXZJLCM4aNt4z673ykqdYqzlcaCuSAGPpE
         78KHOOarawgjn3VPfiCeVNxyG1epAmFMcS274vFMpPDYzxB/r0INQMNKBeJrAGdcizqF
         c4k0SFBx4y1B0swCG6QKuMl4nJzs+wrYTFrxDHu4k4N2rLrrNzxJJaiPLR23lM+5kPUX
         IBZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dsNE8a7M;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id c19si515884oto.3.2019.11.01.17.04.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 17:04:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dsNE8a7M;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id s23so4044481pgo.9
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 17:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=sM2gT+qaOa7Wn/Zfa3RBKoLa022i4fgFkbgXO8TsuvI=;
        b=dsNE8a7MWL1mdTJEXAZdXjYlrpBi1lXXQv6bnbq/Ml7CvWNiQICWhUqhMilDsHCMnu
         IRhrRPPCONj9aAI0m8zSZhWjQS+2lwsbkB+7M8gJF/p51YhFRcPsx0nKqVs8jMrdEqtU
         IfBZjK1RcHyKcdQAoNBfHRti+UpqJnxgMBCXCeryTZWQEhjcspLnGRFaKMeIRQexEBBr
         9y4g2QBF+DgiF7sgavibYz5XdmuklBNUOzke0a+kNB3hYvo6ZA1dNjI8UJnAMdLR80xK
         IUSuZtE7/LM1k35xHbGMSTRuWFEB+MjodsIMGnk8QEwXV8svpSPOu5MlQD/0ot6+sGK+
         +IrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=sM2gT+qaOa7Wn/Zfa3RBKoLa022i4fgFkbgXO8TsuvI=;
        b=BR4brv41WsMNT6AX09t487JvYKwc81nahY/woIr7l/NyavrTsMA3I5GVT/OgB7VKiB
         JKI1qs91Na+HdOqwmhAtnS1IKrfmEIUYzbJnHadSP46AwwY5e35r1tkn7cKVlPgCoi7m
         2caEPwHY07sUtFWmYexNGRHxKyqxUWPzea+lhJtfu+EGjHhBkllYSHttIUn7bIVGthYG
         iFYvgu6p0vHUx+dZuqbd7Vd94qlbERvIR1sHcZhkGw0YkxLpbdEp9by573MskzxZSk43
         opPJJ0SJLuv+SH9JvA97086NkAH1eogtQRyTnmKTvF9jRE6N+j/SunFBAuNNe7+YesnR
         A23A==
X-Gm-Message-State: APjAAAUBe7z7PTWGJ089BJglCRU5TrSrSdH1m8+b7dbfFiMb1h53TdeP
	U0ncumz1o9ZhzWYCDRXSWWI=
X-Received: by 2002:a63:4b06:: with SMTP id y6mr15975323pga.409.1572653073031;
        Fri, 01 Nov 2019 17:04:33 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id f2sm5029418pfg.48.2019.11.01.17.04.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 17:04:32 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v4 2/8] staging: vc04_services: Remove enum typedefs in vchi
Date: Fri,  1 Nov 2019 17:04:14 -0700
Message-Id: <4afc7d28ef9ad249cac3bf7c3dd453bb64b13657.1572652827.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572652827.git.jamal.k.shareef@gmail.com>
References: <cover.1572652827.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572652827.git.jamal.k.shareef@gmail.com>
References: <cover.1572652827.git.jamal.k.shareef@gmail.com>

Remove enum typedefs from header files and files which include them
in vchi. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../bcm2835-audio/bcm2835-vchiq.c             |  2 +-
 .../vc04_services/bcm2835-camera/mmal-vchiq.c |  2 +-
 .../vc04_services/interface/vchi/vchi.h       | 20 ++++----
 .../interface/vchi/vchi_common.h              | 18 +++----
 .../interface/vchiq_arm/vchiq_shim.c          | 50 ++++++++-----------
 5 files changed, 43 insertions(+), 49 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 5f6a73af57f9..84ece768854f 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -90,7 +90,7 @@ static int bcm2835_audio_send_simple(struct bcm2835_audio_instance *instance,
 }
 
 static void audio_vchi_callback(void *param,
-				const VCHI_CALLBACK_REASON_T reason,
+				const enum vchi_callback_reason reason,
 				void *msg_handle)
 {
 	struct bcm2835_audio_instance *instance = param;
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 1c180ead4a20..06b7be7d8872 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -535,7 +535,7 @@ static void bulk_abort_cb(struct vchiq_mmal_instance *instance,
 
 /* incoming event service callback */
 static void service_callback(void *param,
-			     const VCHI_CALLBACK_REASON_T reason,
+			     const enum vchi_callback_reason reason,
 			     void *bulk_ctx)
 {
 	struct vchiq_mmal_instance *instance = param;
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 0a353a468f34..75b1ab4919e3 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -105,8 +105,8 @@ extern int32_t vchi_service_release(const VCHI_SERVICE_HANDLE_T handle);
 
 // Routine to set a control option for a named service
 extern int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
-					VCHI_SERVICE_OPTION_T option,
-					int value);
+				       enum vchi_service_option option,
+				       int value);
 
 /* Routine to send a message from kernel memory across a service */
 extern int
@@ -126,7 +126,7 @@ extern int32_t vchi_msg_dequeue(VCHI_SERVICE_HANDLE_T handle,
 				void *data,
 				uint32_t max_data_size_to_read,
 				uint32_t *actual_msg_size,
-				VCHI_FLAGS_T flags);
+				enum vchi_flags flags);
 
 // Routine to look at a message in place.
 // The message is not dequeued, so a subsequent call to peek or dequeue
@@ -134,7 +134,7 @@ extern int32_t vchi_msg_dequeue(VCHI_SERVICE_HANDLE_T handle,
 extern int32_t vchi_msg_peek(VCHI_SERVICE_HANDLE_T handle,
 			     void **data,
 			     uint32_t *msg_size,
-			     VCHI_FLAGS_T flags);
+			     enum vchi_flags flags);
 
 // Routine to remove a message after it has been read in place with peek
 // The first message on the queue is dequeued.
@@ -146,13 +146,13 @@ extern int32_t vchi_msg_remove(VCHI_SERVICE_HANDLE_T handle);
 extern int32_t vchi_msg_hold(VCHI_SERVICE_HANDLE_T handle,
 			     void **data,        // } may be NULL, as info can be
 			     uint32_t *msg_size, // } obtained from HELD_MSG_T
-			     VCHI_FLAGS_T flags,
+			     enum vchi_flags flags,
 			     struct vchi_held_msg *message_descriptor);
 
 // Initialise an iterator to look through messages in place
 extern int32_t vchi_msg_look_ahead(VCHI_SERVICE_HANDLE_T handle,
 				   struct vchi_msg_iter *iter,
-				   VCHI_FLAGS_T flags);
+				   enum vchi_flags flags);
 
 /*******************************************************************************
  * Global service support API - operations on held messages
@@ -205,21 +205,21 @@ extern int32_t vchi_msg_iter_hold_next(struct vchi_msg_iter *iter,
 extern int32_t vchi_bulk_queue_receive(VCHI_SERVICE_HANDLE_T handle,
 				       void *data_dst,
 				       uint32_t data_size,
-				       VCHI_FLAGS_T flags,
+				       enum vchi_flags flags,
 				       void *transfer_handle);
 
 // Prepare interface for a transfer from the other side into relocatable memory.
 int32_t vchi_bulk_queue_receive_reloc(const VCHI_SERVICE_HANDLE_T handle,
 				      uint32_t offset,
 				      uint32_t data_size,
-				      const VCHI_FLAGS_T flags,
+				      const enum vchi_flags flags,
 				      void * const bulk_handle);
 
 // Routine to queue up data ready for transfer to the other (once they have signalled they are ready)
 extern int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
 					const void *data_src,
 					uint32_t data_size,
-					VCHI_FLAGS_T flags,
+					enum vchi_flags flags,
 					void *transfer_handle);
 
 /******************************************************************************
@@ -233,7 +233,7 @@ extern int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
 extern int32_t vchi_bulk_queue_transmit_reloc(VCHI_SERVICE_HANDLE_T handle,
 					      uint32_t offset,
 					      uint32_t data_size,
-					      VCHI_FLAGS_T flags,
+					      enum vchi_flags flags,
 					      void *transfer_handle);
 #endif /* VCHI_H_ */
 
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index 1fdbe038500a..c99735fc0308 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -5,7 +5,7 @@
 #define VCHI_COMMON_H_
 
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
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 5e26f0abd5ee..704afd470c88 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -27,7 +27,7 @@ struct shim_service {
  *             void **data,
  *             uint32_t *msg_size,
 
- *             VCHI_FLAGS_T flags
+ *             enum vchi_flags flags
  *
  * Description: Routine to return a pointer to the current message (to allow in
  *              place processing). The message can be removed using
@@ -37,9 +37,9 @@ struct shim_service {
  *
  ***********************************************************/
 int32_t vchi_msg_peek(VCHI_SERVICE_HANDLE_T handle,
-	void **data,
-	uint32_t *msg_size,
-	VCHI_FLAGS_T flags)
+		      void **data,
+		      uint32_t *msg_size,
+		      enum vchi_flags flags)
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	struct vchiq_header *header;
@@ -190,7 +190,7 @@ EXPORT_SYMBOL(vchi_queue_user_message);
  * Arguments:  VCHI_BULK_HANDLE_T handle,
  *             void *data_dst,
  *             const uint32_t data_size,
- *             VCHI_FLAGS_T flags
+ *             enum vchi_flags flags
  *             void *bulk_handle
  *
  * Description: Routine to setup a rcv buffer
@@ -198,11 +198,9 @@ EXPORT_SYMBOL(vchi_queue_user_message);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_bulk_queue_receive(VCHI_SERVICE_HANDLE_T handle,
-	void *data_dst,
-	uint32_t data_size,
-	VCHI_FLAGS_T flags,
-	void *bulk_handle)
+int32_t vchi_bulk_queue_receive(VCHI_SERVICE_HANDLE_T handle, void *data_dst,
+				uint32_t data_size, enum vchi_flags flags,
+				void *bulk_handle)
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	VCHIQ_BULK_MODE_T mode;
@@ -250,7 +248,7 @@ EXPORT_SYMBOL(vchi_bulk_queue_receive);
  * Arguments:  VCHI_BULK_HANDLE_T handle,
  *             const void *data_src,
  *             uint32_t data_size,
- *             VCHI_FLAGS_T flags,
+ *             enum vchi_flags flags,
  *             void *bulk_handle
  *
  * Description: Routine to transmit some data
@@ -259,10 +257,10 @@ EXPORT_SYMBOL(vchi_bulk_queue_receive);
  *
  ***********************************************************/
 int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
-	const void *data_src,
-	uint32_t data_size,
-	VCHI_FLAGS_T flags,
-	void *bulk_handle)
+				 const void *data_src,
+				 uint32_t data_size,
+				 enum vchi_flags flags,
+				 void *bulk_handle)
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	VCHIQ_BULK_MODE_T mode;
@@ -313,18 +311,16 @@ EXPORT_SYMBOL(vchi_bulk_queue_transmit);
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
+int32_t vchi_msg_dequeue(VCHI_SERVICE_HANDLE_T handle, void *data,
+			 uint32_t max_data_size_to_read,
+			 uint32_t *actual_msg_size, enum vchi_flags flags)
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	struct vchiq_header *header;
@@ -383,7 +379,7 @@ EXPORT_SYMBOL(vchi_held_msg_release);
  * Arguments:  VCHI_SERVICE_HANDLE_T handle,
  *             void **data,
  *             uint32_t *msg_size,
- *             VCHI_FLAGS_T flags,
+ *             enum vchi_flags flags,
  *             struct vchi_held_msg *message_handle
  *
  * Description: Routine to return a pointer to the current message (to allow
@@ -394,11 +390,9 @@ EXPORT_SYMBOL(vchi_held_msg_release);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_msg_hold(VCHI_SERVICE_HANDLE_T handle,
-	void **data,
-	uint32_t *msg_size,
-	VCHI_FLAGS_T flags,
-	struct vchi_held_msg *message_handle)
+int32_t vchi_msg_hold(VCHI_SERVICE_HANDLE_T handle, void **data,
+		      uint32_t *msg_size, enum vchi_flags flags,
+		      struct vchi_held_msg *message_handle)
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	struct vchiq_header *header;
@@ -668,7 +662,7 @@ int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle)
 EXPORT_SYMBOL(vchi_service_destroy);
 
 int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
-				VCHI_SERVICE_OPTION_T option,
+				enum vchi_service_option option,
 				int value)
 {
 	int32_t ret = -1;
-- 
2.17.1


