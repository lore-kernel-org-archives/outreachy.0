X-GM-THRID: 6753896393761357824
X-Received: by 2002:aca:ab15:: with SMTP id u21mr3785569oie.176.1572586134963;
        Thu, 31 Oct 2019 22:28:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:1710:: with SMTP id j16ls1354907oii.0.gmail; Thu, 31 Oct
 2019 22:28:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyqeG+KAkNduTTLjJJugGQk0Dpq1waj79F+kPr0p2eyVW5rTugmWOdiF/He79VUMpy8XTrg
X-Received: by 2002:aca:5058:: with SMTP id e85mr1307846oib.100.1572586133861;
        Thu, 31 Oct 2019 22:28:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572586133; cv=none;
        d=google.com; s=arc-20160816;
        b=wNYYao9r0ryNwfs8Fpndp1Wbj6EGqOYjxoKjDTItaIYrW0d+1jEhmEXUDJINMyN10w
         ZehIlScJ5Y0cqLxWmEF2+389ddUU2+hYhh4ntZTD5R0MBeH1ULDgpR0WcdTNG+04fe8C
         ho8g138mvGGh/u+WQuZ5SKlFb3q2atmxDxfr8v42pA/n3ZzcgnVeiH1D5LYON46NtLjH
         wSBCYWbVXBznjA7MZtoJxoVHEghZNVgKfhNVYJugMKLkrx4ZSiK2334fOb/gUaNM/cyL
         7+vvOimOTA/fqjG7ryLiQ8o6Zztd5TXUQrO/d0iuD4SH1y1BjlIqYRFAwIe4glkiRwAj
         tWEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=JmwpqMbwMau3AanUMqKw7sDqLPyEtvs64PkaPgl/pzA=;
        b=bDZjThKsbDyWRsiNfXwWCsZ2N5xabsFQTRDjvIJHUKpA54IndCD19hX1OJCibHcfAT
         QLIyv++hVkQgvWtma3F4RpynyBptzf6PHWAkG4qtikanrNLoZ8GYTBjAs9Sk5orvWGxp
         iCwU+Lxd3Y5Qv+iSmwjeAf7fSTtXezBUsZJzYj5mxCE/2tuiyJGRfVMuiPFpRNWbGjof
         pn2D+PVajkgNYIir/eyH14/BVsTXsD24yuei74PcN2jRx3YfIwGiGqlU2gSxuHscakMn
         5NnUEHMO1R0jsUXthHJjMhEkNLZsvtYGbxnjRmtVGakoj10uvk+MMInDljzilZoHzCLv
         iREg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OefzNEdy;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id l141si422179oib.4.2019.10.31.22.28.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 22:28:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OefzNEdy;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id x28so3031698pfo.6
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 22:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=JmwpqMbwMau3AanUMqKw7sDqLPyEtvs64PkaPgl/pzA=;
        b=OefzNEdyXYc7bs0yHw5Mtu2sLXWs2H3wLy65vKAw6YY3Ou34dQ5HLXeg4OufCA9UL5
         IJMx/1WqD4MogNkreeB+iwW+C/d4Ia7dAlw1z1zxAkpNWj8MCYzk0fhFJZfPBk/8+aS6
         Xf1YwahlRynFRAAqxd1jsPTts42BZLAHFpJpAY+Kub4SUTUJuFA0bcQjMpOe4/1kqJrJ
         rmpHiGuuWXPQiiPV/sqI8enk4uqDPHmLDYDzTYUnuBmS1Z2N4b7dv0YDtp2pJq3Wzfjm
         0TmWE14F7ushmXe29QAHmxobPmSZRv40VJN5YtjVRJdVTjSErV01CfHlimfOXOTq17ej
         /8mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=JmwpqMbwMau3AanUMqKw7sDqLPyEtvs64PkaPgl/pzA=;
        b=qp9LpN3aX2agf2d9Z957BSbkneX1qD7fZhS/o1W+BXvrWh4OKeQzQQcUcsFdZutUzl
         iCU4BOBDnxQfICBpo5rMcFGHJx1VMsF2zAQBB4r0BQ7V4mJQZCLKuHgc4iYDRGDlZNEd
         p/nYzrqJA18kPc8CQyjrVqz1ehEIoEk5f8G1oss8VJSoHu3HWKFb5Tdg0unN/zsNl7NJ
         1Xx5CDheU4EoNzWsRJIt8Tpq3QpBUs7Pv8KQSvc69jKmAoRmHz1vH3/mZRmnqkfzlzhT
         ZgwIllpHvz8RjT4Z6uM5JH4Fa3BFTW3SaT4jQXIuoAuVTOltiYzIv9Dfo4H1fW6KpYkr
         rpRw==
X-Gm-Message-State: APjAAAWuW2GYm59TA91Fz2R0xCHQzm7ChYPugZRAS5lQGbl13rwy/fS7
	Wx+7Q6O3k40hKC6Omjb8TYM=
X-Received: by 2002:a62:d44b:: with SMTP id u11mr9650623pfl.259.1572586132978;
        Thu, 31 Oct 2019 22:28:52 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id q199sm5278002pfq.147.2019.10.31.22.28.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 22:28:52 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 1/7] staging: vc04_services: Remove enum typedefs in vchi
Date: Thu, 31 Oct 2019 22:28:29 -0700
Message-Id: <b422f45f5120ccdb8d83036a5340ba9eb92d3fec.1572585566.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572585566.git.jamal.k.shareef@gmail.com>
References: <cover.1572585566.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572585566.git.jamal.k.shareef@gmail.com>
References: <cover.1572585566.git.jamal.k.shareef@gmail.com>

Remove enum typedefs from header files and files which include them
in vchi. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../bcm2835-audio/bcm2835-vchiq.c             |  2 +-
 .../vc04_services/bcm2835-camera/mmal-vchiq.c |  2 +-
 .../vc04_services/interface/vchi/vchi.h       | 20 ++---
 .../interface/vchi/vchi_common.h              | 23 ++---
 .../interface/vchiq_arm/vchiq_shim.c          | 83 +++++++++----------
 5 files changed, 59 insertions(+), 71 deletions(-)

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
index e7955cbaf26a..2074d32eb964 100644
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
index 5e26f0abd5ee..191d89832b14 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -23,11 +23,11 @@ struct shim_service {
 /***********************************************************
  * Name: vchi_msg_peek
  *
- * Arguments:  const VCHI_SERVICE_HANDLE_T handle,
+ * Arguments:  VCHI_SERVICE_HANDLE_T handle,
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
@@ -187,10 +185,10 @@ EXPORT_SYMBOL(vchi_queue_user_message);
 /***********************************************************
  * Name: vchi_bulk_queue_receive
  *
- * Arguments:  VCHI_BULK_HANDLE_T handle,
+ * Arguments:  VCHI_SERVICE_HANDLE_T handle,
  *             void *data_dst,
  *             const uint32_t data_size,
- *             VCHI_FLAGS_T flags
+ *             enum vchi_flags flags
  *             void *bulk_handle
  *
  * Description: Routine to setup a rcv buffer
@@ -198,11 +196,9 @@ EXPORT_SYMBOL(vchi_queue_user_message);
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
@@ -247,10 +243,10 @@ EXPORT_SYMBOL(vchi_bulk_queue_receive);
 /***********************************************************
  * Name: vchi_bulk_queue_transmit
  *
- * Arguments:  VCHI_BULK_HANDLE_T handle,
+ * Arguments:  VCHI_SERVICE_HANDLE_T handle,
  *             const void *data_src,
  *             uint32_t data_size,
- *             VCHI_FLAGS_T flags,
+ *             enum vchi_flags flags,
  *             void *bulk_handle
  *
  * Description: Routine to transmit some data
@@ -258,11 +254,11 @@ EXPORT_SYMBOL(vchi_bulk_queue_receive);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
-	const void *data_src,
-	uint32_t data_size,
-	VCHI_FLAGS_T flags,
-	void *bulk_handle)
+int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle, 
+				 const void *data_src,
+				 uint32_t data_size,
+				 enum vchi_flags flags,
+				 void *bulk_handle)
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	VCHIQ_BULK_MODE_T mode;
@@ -313,18 +309,16 @@ EXPORT_SYMBOL(vchi_bulk_queue_transmit);
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
@@ -383,7 +377,7 @@ EXPORT_SYMBOL(vchi_held_msg_release);
  * Arguments:  VCHI_SERVICE_HANDLE_T handle,
  *             void **data,
  *             uint32_t *msg_size,
- *             VCHI_FLAGS_T flags,
+ *             enum vchi_flags flags,
  *             struct vchi_held_msg *message_handle
  *
  * Description: Routine to return a pointer to the current message (to allow
@@ -394,11 +388,9 @@ EXPORT_SYMBOL(vchi_held_msg_release);
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
@@ -499,7 +491,7 @@ EXPORT_SYMBOL(vchi_disconnect);
  * Name: vchi_service_open
  * Name: vchi_service_create
  *
- * Arguments: VCHI_INSTANCE_T *instance_handle
+ * Arguments: VCHI_INSTANCE_T instance_handle
  *            struct service_creation *setup,
  *            VCHI_SERVICE_HANDLE_T *handle
  *
@@ -600,8 +592,8 @@ static void service_free(struct shim_service *service)
 }
 
 int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
-	struct service_creation *setup,
-	VCHI_SERVICE_HANDLE_T *handle)
+			  struct service_creation *setup,
+			  VCHI_SERVICE_HANDLE_T *handle)
 {
 	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
 	struct shim_service *service = service_alloc(instance, setup);
@@ -668,7 +660,7 @@ int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle)
 EXPORT_SYMBOL(vchi_service_destroy);
 
 int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
-				VCHI_SERVICE_OPTION_T option,
+				enum vchi_service_option option,
 				int value)
 {
 	int32_t ret = -1;
@@ -689,8 +681,8 @@ int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
 	if (service) {
 		VCHIQ_STATUS_T status =
 			vchiq_set_service_option(service->handle,
-						vchiq_option,
-						value);
+						 vchiq_option,
+						 value);
 
 		ret = vchiq_status_to_vchi(status);
 	}
@@ -698,7 +690,8 @@ int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
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


