X-GM-THRID: 6888359188938883072
X-Received: by 2002:aca:38c6:: with SMTP id f189mr2347825oia.27.1603821107227;
        Tue, 27 Oct 2020 10:51:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:53cb:: with SMTP id h194ls658510oib.4.gmail; Tue, 27 Oct
 2020 10:51:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyO04ipAUkPMw3PqgQNBmrNVCkpg2gsOSNd+oGXnq5nHpAHSHp/+dkSuysJvmVkDF8ttv21
X-Received: by 2002:aca:d987:: with SMTP id q129mr2362371oig.5.1603821105883;
        Tue, 27 Oct 2020 10:51:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603821105; cv=none;
        d=google.com; s=arc-20160816;
        b=NzQTNId+QBF2HZqJ5zruiQCJ4+cNDeekz67wY/9j2hOIiHdUcXiUWVvgdj57ok7ktk
         ePsjANq3+NfPjOaofASKRhRHhNTqoN1ezJB9muJ0mpZNV529A5ERftW0Ke/mP1CkIVQv
         dg3pmvLxheEwXkxVlt7RnC612kleF21jVquGN+roKDZEezayOkytf3nqKBmr5Yk2r2Ob
         RsBaVmmP3k/A9YMQWOQC3Do7LK9Vnzg5Yhix5Z348qcWuT0AMAomPGqpPDhGC6TI9/31
         L2yY5xyRHouUQscpArKAz8cuEA/Vq6ydY4p2DMVtEP1DgltPf9wVDaigkBZFKhKnDCxt
         IuMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JZy74ab01pV00Y8rNNhJwyT7+s/rH68ItFs2XZJPCe4=;
        b=a7hIkcnUkQ/MgLlAK1TVgV0hjo3SoWQFhJ3I0udY2cfEsNFo2yfChFC8TLWyjc6SlG
         uvGLJq9cgBgyS3+cED8b0rSvD/BrcNa3oO846+QG/zGdqlrgpJVILyr7hhPH5DInvKzV
         FJMdEzFH2fVXdfIKd0rNqCfyty6wk74xPw6eX1EBr8yLDeztq3GmyXeMimBmTQ4KbFch
         60YF6mw4mS4OT8vyf5R6dZcAugUGTwSiYon8/5MXEqTSLCLKMD1I715S7Cko2X6lf8FP
         +ki6fpW8ksV/OrHHKzOcS1BPOjaIp5p7MaScA9abPb9YQbMfxHO5ZRTk+GQ6L4dC8lCV
         8CRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bHJhLmIg;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <amarjargal16@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id q10si232828oov.2.2020.10.27.10.51.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 10:51:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bHJhLmIg;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id i3so256316pju.1
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2020 10:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JZy74ab01pV00Y8rNNhJwyT7+s/rH68ItFs2XZJPCe4=;
        b=bHJhLmIgYdiqsfXrJTVxpDyK3ADOExcwMZtMTESn15ldnKTkVSvUNgCabHpfWp9aDA
         7B15g4T2psyguSdkMCkHdyU8PGhFWPgWOhiC4uTgDh4DK+UuUlH129VhYyABHYrZl4ut
         hHQRDzI5pfg4OKVojEZHJesJOo4zD1Et+ZFiQ1H8kMqG5ZiJDDxd+kEkgPg//kgaUV2r
         fWj8wwnXWK+8Aqg6mldUeoXtvDMUESsJ0jlO70ofVpYPTVAOt5LQbeYy3ebmQPJql3dg
         awkyTmRCxCk8b++k2DVDsBpwl2HQurPouVhHRep4LnYjlkipc4rnKf/oU+gJcZ8qYO/K
         +9bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JZy74ab01pV00Y8rNNhJwyT7+s/rH68ItFs2XZJPCe4=;
        b=bQp+/kWUWyOHhYyQI8bCpPGbuj5qFOtjSCG3neiweum52oSnmTrvbkClNGGPlhs7pk
         FJI+LMOlKedXb02sDg40KjoIdf+SGftlNbB+OdPzcNWKJR55WxXfC3zMBAv2OErPUQo2
         O+0K48g9bR1BxT2ZM/Yv8lAQbaf8Y3REwLkpZibNzBy7vyg0iyL0XqEAJ4etbrrzQnF7
         qAIotT5X3GT8DLZ0GZVC79MvxJDfHwg52z8f/wE/btbBCYWQj2hyWFCV2VNHB+ocYFLc
         VssxTvjpm44cuMag1RIzQAG8AAqeQ4QXlSn0hCokgO4Vb8vdfqCAevbnqfaeO7wkytxE
         m0wQ==
X-Gm-Message-State: AOAM531agcgiUTQHyy+BcKNit2uPHqQ+WTqsUIeeJ7g/50w6vmRw0wlJ
	wu5L9CU5Sk3JSulf8azK7ns=
X-Received: by 2002:a17:90b:4a10:: with SMTP id kk16mr3123266pjb.77.1603821104807;
        Tue, 27 Oct 2020 10:51:44 -0700 (PDT)
Return-Path: <amarjargal16@gmail.com>
Received: from localhost.localdomain ([66.181.189.144])
        by smtp.googlemail.com with ESMTPSA id ge6sm2643906pjb.29.2020.10.27.10.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 10:51:44 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal16@gmail.com>
To: nsaenzjulienne@suse.de,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Amarjargal Gundjalam <amarjargal16@gmail.com>
Subject: [PATCH 1/3] staging: vc04_services: fix block comment style
Date: Wed, 28 Oct 2020 01:51:15 +0800
Message-Id: <20201027175117.32826-2-amarjargal16@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201027175117.32826-1-amarjargal16@gmail.com>
References: <20201027175117.32826-1-amarjargal16@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix block comments to adhere to the kernel coding style.

Signed-off-by: Amarjargal Gundjalam <amarjargal16@gmail.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 174 +++++++-------
 .../interface/vchiq_arm/vchiq_arm.h           |  27 ++-
 .../interface/vchiq_arm/vchiq_cfg.h           |   6 +-
 .../interface/vchiq_arm/vchiq_core.c          | 222 +++++++++++-------
 .../interface/vchiq_arm/vchiq_core.h          |  55 +++--
 .../interface/vchiq_arm/vchiq_debugfs.c       |   8 +-
 6 files changed, 289 insertions(+), 203 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 01125d9f991b..5862d63cba8d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -156,7 +156,8 @@ enum vchiq_status vchiq_initialise(struct vchiq_instance **instance_out)
 
 	vchiq_log_trace(vchiq_core_log_level, "%s called", __func__);
 
-	/* VideoCore may not be ready due to boot up timing.
+	/*
+	 * VideoCore may not be ready due to boot up timing.
 	 * It may never be ready if kernel and firmware are mismatched,so don't
 	 * block forever.
 	 */
@@ -460,9 +461,9 @@ vchiq_blocking_bulk_transfer(unsigned int handle, void *data,
 			/* FIXME: why compare a dma address to a pointer? */
 			if ((bulk->data != (dma_addr_t)(uintptr_t)data) ||
 				(bulk->size != size)) {
-				/* This is not a retry of the previous one.
-				 * Cancel the signal when the transfer
-				 * completes.
+				/*
+				 * This is not a retry of the previous one.
+				 * Cancel the signal when the transfer completes.
 				 */
 				spin_lock(&bulk_waiter_spinlock);
 				bulk->userdata = NULL;
@@ -486,9 +487,7 @@ vchiq_blocking_bulk_transfer(unsigned int handle, void *data,
 		struct vchiq_bulk *bulk = waiter->bulk_waiter.bulk;
 
 		if (bulk) {
-			/* Cancel the signal when the transfer
-			 * completes.
-			 */
+			/* Cancel the signal when the transfer completes. */
 			spin_lock(&bulk_waiter_spinlock);
 			bulk->userdata = NULL;
 			spin_unlock(&bulk_waiter_spinlock);
@@ -507,10 +506,10 @@ vchiq_blocking_bulk_transfer(unsigned int handle, void *data,
 	return status;
 }
 /****************************************************************************
-*
-*   add_completion
-*
-***************************************************************************/
+ *
+ *   add_completion
+ *
+ ***************************************************************************/
 
 static enum vchiq_status
 add_completion(struct vchiq_instance *instance, enum vchiq_reason reason,
@@ -551,15 +550,19 @@ add_completion(struct vchiq_instance *instance, enum vchiq_reason reason,
 	completion->bulk_userdata = bulk_userdata;
 
 	if (reason == VCHIQ_SERVICE_CLOSED) {
-		/* Take an extra reference, to be held until
-		   this CLOSED notification is delivered. */
+		/*
+		 * Take an extra reference, to be held until
+		 * this CLOSED notification is delivered.
+		 */
 		lock_service(user_service->service);
 		if (instance->use_close_delivered)
 			user_service->close_pending = 1;
 	}
 
-	/* A write barrier is needed here to ensure that the entire completion
-		record is written out before the insert point. */
+	/*
+	 * A write barrier is needed here to ensure that the entire completion
+	 * record is written out before the insert point.
+	 */
 	wmb();
 
 	if (reason == VCHIQ_MESSAGE_AVAILABLE)
@@ -574,20 +577,21 @@ add_completion(struct vchiq_instance *instance, enum vchiq_reason reason,
 }
 
 /****************************************************************************
-*
-*   service_callback
-*
-***************************************************************************/
+ *
+ *   service_callback
+ *
+ ***************************************************************************/
 
 static enum vchiq_status
 service_callback(enum vchiq_reason reason, struct vchiq_header *header,
 		 unsigned int handle, void *bulk_userdata)
 {
-	/* How do we ensure the callback goes to the right client?
-	** The service_user data points to a user_service record
-	** containing the original callback and the user state structure, which
-	** contains a circular buffer for completion records.
-	*/
+	/*
+	 * How do we ensure the callback goes to the right client?
+	 * The service_user data points to a user_service record
+	 * containing the original callback and the user state structure, which
+	 * contains a circular buffer for completion records.
+	 */
 	struct user_service *user_service;
 	struct vchiq_service *service;
 	struct vchiq_instance *instance;
@@ -622,9 +626,10 @@ service_callback(enum vchiq_reason reason, struct vchiq_header *header,
 			DEBUG_COUNT(MSG_QUEUE_FULL_COUNT);
 			vchiq_log_trace(vchiq_arm_log_level,
 				"service_callback - msg queue full");
-			/* If there is no MESSAGE_AVAILABLE in the completion
-			** queue, add one
-			*/
+			/*
+			 * If there is no MESSAGE_AVAILABLE in the completion
+			 * queue, add one
+			 */
 			if ((user_service->message_available_pos -
 				instance->completion_remove) < 0) {
 				enum vchiq_status status;
@@ -661,10 +666,11 @@ service_callback(enum vchiq_reason reason, struct vchiq_header *header,
 			(MSG_QUEUE_SIZE - 1)] = header;
 		user_service->msg_insert++;
 
-		/* If there is a thread waiting in DEQUEUE_MESSAGE, or if
-		** there is a MESSAGE_AVAILABLE in the completion queue then
-		** bypass the completion queue.
-		*/
+		/*
+		 * If there is a thread waiting in DEQUEUE_MESSAGE, or if
+		 * there is a MESSAGE_AVAILABLE in the completion queue then
+		 * bypass the completion queue.
+		 */
 		if (((user_service->message_available_pos -
 			instance->completion_remove) >= 0) ||
 			user_service->dequeue_pending) {
@@ -687,10 +693,10 @@ service_callback(enum vchiq_reason reason, struct vchiq_header *header,
 }
 
 /****************************************************************************
-*
-*   user_service_free
-*
-***************************************************************************/
+ *
+ *   user_service_free
+ *
+ ***************************************************************************/
 static void
 user_service_free(void *userdata)
 {
@@ -698,10 +704,10 @@ user_service_free(void *userdata)
 }
 
 /****************************************************************************
-*
-*   close_delivered
-*
-***************************************************************************/
+ *
+ *   close_delivered
+ *
+ ***************************************************************************/
 static void close_delivered(struct user_service *user_service)
 {
 	vchiq_log_info(vchiq_arm_log_level,
@@ -1012,8 +1018,7 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
 	if ((status != VCHIQ_RETRY) || fatal_signal_pending(current) ||
 		!waiter->bulk_waiter.bulk) {
 		if (waiter->bulk_waiter.bulk) {
-			/* Cancel the signal when the transfer
-			** completes. */
+			/* Cancel the signal when the transfer completes. */
 			spin_lock(&bulk_waiter_spinlock);
 			waiter->bulk_waiter.bulk->userdata = NULL;
 			spin_unlock(&bulk_waiter_spinlock);
@@ -1179,8 +1184,7 @@ static int vchiq_ioc_await_completion(struct vchiq_instance *instance,
 				break;
 			}
 			if (msgbufcount <= 0)
-				/* Stall here for lack of a
-				** buffer for the message. */
+				/* Stall here for lack of a buffer for the message. */
 				break;
 			/* Get the pointer from user space */
 			msgbufcount--;
@@ -1198,12 +1202,10 @@ static int vchiq_ioc_await_completion(struct vchiq_instance *instance,
 				break;
 			}
 
-			/* Now it has been copied, the message
-			** can be released. */
+			/* Now it has been copied, the message can be released. */
 			vchiq_release_message(service->handle, header);
 
-			/* The completion must point to the
-			** msgbuf. */
+			/* The completion must point to the msgbuf. */
 			user_completion.header = msgbuf;
 		}
 
@@ -1246,10 +1248,10 @@ static int vchiq_ioc_await_completion(struct vchiq_instance *instance,
 }
 
 /****************************************************************************
-*
-*   vchiq_ioctl
-*
-***************************************************************************/
+ *
+ *   vchiq_ioctl
+ *
+ ***************************************************************************/
 static long
 vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 {
@@ -1347,8 +1349,10 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 
 		user_service = service->base.userdata;
 
-		/* close_pending is false on first entry, and when the
-		   wait in vchiq_close_service has been interrupted. */
+		/*
+		 * close_pending is false on first entry, and when the
+		 * wait in vchiq_close_service has been interrupted.
+		 */
 		if (!user_service->close_pending) {
 			status = (cmd == VCHIQ_IOC_CLOSE_SERVICE) ?
 				 vchiq_close_service(service->handle) :
@@ -1357,9 +1361,11 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 				break;
 		}
 
-		/* close_pending is true once the underlying service
-		   has been closed until the client library calls the
-		   CLOSE_DELIVERED ioctl, signalling close_event. */
+		/*
+		 * close_pending is true once the underlying service
+		 * has been closed until the client library calls the
+		 * CLOSE_DELIVERED ioctl, signalling close_event.
+		 */
 		if (user_service->close_pending &&
 			wait_for_completion_interruptible(
 				&user_service->close_event))
@@ -2001,10 +2007,10 @@ static int vchiq_release(struct inode *inode, struct file *file)
 }
 
 /****************************************************************************
-*
-*   vchiq_dump
-*
-***************************************************************************/
+ *
+ *   vchiq_dump
+ *
+ ***************************************************************************/
 
 int vchiq_dump(void *dump_context, const char *str, int len)
 {
@@ -2048,10 +2054,10 @@ int vchiq_dump(void *dump_context, const char *str, int len)
 }
 
 /****************************************************************************
-*
-*   vchiq_dump_platform_instance_state
-*
-***************************************************************************/
+ *
+ *   vchiq_dump_platform_instance_state
+ *
+ ***************************************************************************/
 
 int vchiq_dump_platform_instances(void *dump_context)
 {
@@ -2060,8 +2066,10 @@ int vchiq_dump_platform_instances(void *dump_context)
 	int len;
 	int i;
 
-	/* There is no list of instances, so instead scan all services,
-		marking those that have been dumped. */
+	/*
+	 * There is no list of instances, so instead scan all services,
+	 * marking those that have been dumped.
+	 */
 
 	rcu_read_lock();
 	for (i = 0; i < state->unused_service; i++) {
@@ -2114,10 +2122,10 @@ int vchiq_dump_platform_instances(void *dump_context)
 }
 
 /****************************************************************************
-*
-*   vchiq_dump_platform_service_state
-*
-***************************************************************************/
+ *
+ *   vchiq_dump_platform_service_state
+ *
+ ***************************************************************************/
 
 int vchiq_dump_platform_service_state(void *dump_context,
 				      struct vchiq_service *service)
@@ -2145,10 +2153,10 @@ int vchiq_dump_platform_service_state(void *dump_context,
 }
 
 /****************************************************************************
-*
-*   vchiq_read
-*
-***************************************************************************/
+ *
+ *   vchiq_read
+ *
+ ***************************************************************************/
 
 static ssize_t
 vchiq_read(struct file *file, char __user *buf,
@@ -2260,13 +2268,17 @@ vchiq_keepalive_thread_func(void *v)
 			continue;
 		}
 
-		/* read and clear counters.  Do release_count then use_count to
-		 * prevent getting more releases than uses */
+		/*
+		 * read and clear counters.  Do release_count then use_count to
+		 * prevent getting more releases than uses
+		 */
 		rc = atomic_xchg(&arm_state->ka_release_count, 0);
 		uc = atomic_xchg(&arm_state->ka_use_count, 0);
 
-		/* Call use/release service the requisite number of times.
-		 * Process use before release so use counts don't go negative */
+		/*
+		 * Call use/release service the requisite number of times.
+		 * Process use before release so use counts don't go negative
+		 */
 		while (uc--) {
 			atomic_inc(&arm_state->ka_use_ack_count);
 			status = vchiq_use_service(ka_handle);
@@ -2539,8 +2551,10 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
 	struct service_data_struct *service_data;
 	int i, found = 0;
-	/* If there's more than 64 services, only dump ones with
-	 * non-zero counts */
+	/*
+	 * If there's more than 64 services, only dump ones with
+	 * non-zero counts
+	 */
 	int only_nonzero = 0;
 	static const char *nz = "<-- preventing suspend";
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index 0784c5002417..24c331c94354 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -31,22 +31,25 @@ struct vchiq_arm_state {
 
 	struct vchiq_state *state;
 
-	/* Global use count for videocore.
-	** This is equal to the sum of the use counts for all services.  When
-	** this hits zero the videocore suspend procedure will be initiated.
-	*/
+	/*
+	 * Global use count for videocore.
+	 * This is equal to the sum of the use counts for all services.  When
+	 * this hits zero the videocore suspend procedure will be initiated.
+	 */
 	int videocore_use_count;
 
-	/* Use count to track requests from videocore peer.
-	** This use count is not associated with a service, so needs to be
-	** tracked separately with the state.
-	*/
+	/*
+	 * Use count to track requests from videocore peer.
+	 * This use count is not associated with a service, so needs to be
+	 * tracked separately with the state.
+	 */
 	int peer_use_count;
 
-	/* Flag to indicate that the first vchiq connect has made it through.
-	** This means that both sides should be fully ready, and we should
-	** be able to suspend after this point.
-	*/
+	/*
+	 * Flag to indicate that the first vchiq connect has made it through.
+	 * This means that both sides should be fully ready, and we should
+	 * be able to suspend after this point.
+	 */
 	int first_connect;
 };
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_cfg.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_cfg.h
index c275e2e8e678..a16d0299996c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_cfg.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_cfg.h
@@ -7,8 +7,10 @@
 #define VCHIQ_MAGIC              VCHIQ_MAKE_FOURCC('V', 'C', 'H', 'I')
 /* The version of VCHIQ - change with any non-trivial change */
 #define VCHIQ_VERSION            8
-/* The minimum compatible version - update to match VCHIQ_VERSION with any
-** incompatible change */
+/*
+ * The minimum compatible version - update to match VCHIQ_VERSION with any
+ * incompatible change
+ */
 #define VCHIQ_VERSION_MIN        3
 
 /* The version that introduced the VCHIQ_IOC_LIB_VERSION ioctl */
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 38b10fd5d992..15c90f81e31b 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -346,10 +346,12 @@ mark_service_closing_internal(struct vchiq_service *service, int sh_thread)
 	mutex_lock(&state->recycle_mutex);
 	mutex_unlock(&state->recycle_mutex);
 	if (!sh_thread || (state->conn_state != VCHIQ_CONNSTATE_PAUSE_SENT)) {
-		/* If we're pausing then the slot_mutex is held until resume
+		/*
+		 * If we're pausing then the slot_mutex is held until resume
 		 * by the slot handler.  Therefore don't try to acquire this
 		 * mutex if we're the slot handler and in the pause sent state.
-		 * We don't need to in this case anyway. */
+		 * We don't need to in this case anyway.
+		 */
 		mutex_lock(&state->slot_mutex);
 		mutex_unlock(&state->slot_mutex);
 	}
@@ -405,8 +407,10 @@ static inline void
 remote_event_create(wait_queue_head_t *wq, struct remote_event *event)
 {
 	event->armed = 0;
-	/* Don't clear the 'fired' flag because it may already have been set
-	** by the other side. */
+	/*
+	 * Don't clear the 'fired' flag because it may already have been set
+	 * by the other side.
+	 */
 	init_waitqueue_head(wq);
 }
 
@@ -460,9 +464,11 @@ remote_event_pollall(struct vchiq_state *state)
 	remote_event_poll(&state->recycle_event, &state->local->recycle);
 }
 
-/* Round up message sizes so that any space at the end of a slot is always big
-** enough for a header. This relies on header size being a power of two, which
-** has been verified earlier by a static assertion. */
+/*
+ * Round up message sizes so that any space at the end of a slot is always big
+ * enough for a header. This relies on header size being a power of two, which
+ * has been verified earlier by a static assertion.
+ */
 
 static inline size_t
 calc_stride(size_t size)
@@ -554,8 +560,10 @@ request_poll(struct vchiq_state *state, struct vchiq_service *service,
 	remote_event_signal_local(&state->trigger_event, &state->local->trigger);
 }
 
-/* Called from queue_message, by the slot handler and application threads,
-** with slot_mutex held */
+/*
+ * Called from queue_message, by the slot handler and application threads,
+ * with slot_mutex held
+ */
 static struct vchiq_header *
 reserve_space(struct vchiq_state *state, size_t space, int is_blocking)
 {
@@ -624,8 +632,10 @@ process_free_queue(struct vchiq_state *state, BITSET_T *service_found,
 	struct vchiq_shared_state *local = state->local;
 	int slot_queue_available;
 
-	/* Find slots which have been freed by the other side, and return them
-	** to the available queue. */
+	/*
+	 * Find slots which have been freed by the other side, and return them
+	 * to the available queue.
+	 */
 	slot_queue_available = state->slot_queue_available;
 
 	/*
@@ -652,8 +662,7 @@ process_free_queue(struct vchiq_state *state, BITSET_T *service_found,
 			state->id, slot_index, data,
 			local->slot_queue_recycle, slot_queue_available);
 
-		/* Initialise the bitmask for services which have used this
-		** slot */
+		/* Initialise the bitmask for services which have used this slot */
 		memset(service_found, 0, length);
 
 		pos = 0;
@@ -677,9 +686,10 @@ process_free_queue(struct vchiq_state *state, BITSET_T *service_found,
 				spin_unlock(&quota_spinlock);
 
 				if (count == service_quota->message_quota)
-					/* Signal the service that it
-					** has dropped below its quota
-					*/
+					/*
+					 * Signal the service that it
+					 * has dropped below its quota
+					 */
 					complete(&service_quota->quota_event);
 				else if (count == 0) {
 					vchiq_log_error(vchiq_core_log_level,
@@ -702,9 +712,10 @@ process_free_queue(struct vchiq_state *state, BITSET_T *service_found,
 					spin_unlock(&quota_spinlock);
 
 					if (count > 0) {
-						/* Signal the service in case
-						** it has dropped below its
-						** quota */
+						/*
+						 * Signal the service in case
+						 * it has dropped below its quota
+						 */
 						complete(&service_quota->quota_event);
 						vchiq_log_trace(
 							vchiq_core_log_level,
@@ -849,13 +860,17 @@ queue_message(struct vchiq_state *state, struct vchiq_service *service,
 
 		spin_lock(&quota_spinlock);
 
-		/* Ensure this service doesn't use more than its quota of
-		** messages or slots */
+		/*
+		 * Ensure this service doesn't use more than its quota of
+		 * messages or slots
+		 */
 		tx_end_index = SLOT_QUEUE_INDEX_FROM_POS(
 			state->local_tx_pos + stride - 1);
 
-		/* Ensure data messages don't use more than their quota of
-		** slots */
+		/*
+		 * Ensure data messages don't use more than their quota of
+		 * slots
+		 */
 		while ((tx_end_index != state->previous_data_index) &&
 			(state->data_use_count == state->data_quota)) {
 			VCHIQ_STATS_INC(state, data_stalls);
@@ -918,8 +933,10 @@ queue_message(struct vchiq_state *state, struct vchiq_service *service,
 	if (!header) {
 		if (service)
 			VCHIQ_SERVICE_STATS_INC(service, slot_stalls);
-		/* In the event of a failure, return the mutex to the
-		   state it was in */
+		/*
+		 * In the event of a failure, return the mutex to the
+		 * state it was in
+		 */
 		if (!(flags & QMFLAGS_NO_MUTEX_LOCK))
 			mutex_unlock(&state->slot_mutex);
 		return VCHIQ_RETRY;
@@ -963,15 +980,19 @@ queue_message(struct vchiq_state *state, struct vchiq_service *service,
 		tx_end_index =
 			SLOT_QUEUE_INDEX_FROM_POS(state->local_tx_pos - 1);
 
-		/* If this transmission can't fit in the last slot used by any
-		** service, the data_use_count must be increased. */
+		/*
+		 * If this transmission can't fit in the last slot used by any
+		 * service, the data_use_count must be increased.
+		 */
 		if (tx_end_index != state->previous_data_index) {
 			state->previous_data_index = tx_end_index;
 			state->data_use_count++;
 		}
 
-		/* If this isn't the same slot last used by this service,
-		** the service's slot_use_count must be increased. */
+		/*
+		 * If this isn't the same slot last used by this service,
+		 * the service's slot_use_count must be increased.
+		 */
 		if (tx_end_index != service_quota->previous_tx_index) {
 			service_quota->previous_tx_index = tx_end_index;
 			slot_use_count = ++service_quota->slot_use_count;
@@ -997,7 +1018,8 @@ queue_message(struct vchiq_state *state, struct vchiq_service *service,
 			header, size, VCHIQ_MSG_SRCPORT(msgid),
 			VCHIQ_MSG_DSTPORT(msgid));
 		if (size != 0) {
-			/* It is assumed for now that this code path
+			/*
+			 * It is assumed for now that this code path
 			 * only happens from calls inside this file.
 			 *
 			 * External callers are through the vchiq_queue_message
@@ -1166,8 +1188,7 @@ release_slot(struct vchiq_state *state, struct vchiq_slot_info *slot_info,
 			return;
 		}
 
-		/* Rewrite the message header to prevent a double
-		** release */
+		/* Rewrite the message header to prevent a double release */
 		header->msgid = msgid & ~VCHIQ_MSGID_CLAIMED;
 	}
 
@@ -1178,9 +1199,11 @@ release_slot(struct vchiq_state *state, struct vchiq_slot_info *slot_info,
 		int slot_queue_recycle;
 		/* Add to the freed queue */
 
-		/* A read barrier is necessary here to prevent speculative
-		** fetches of remote->slot_queue_recycle from overtaking the
-		** mutex. */
+		/*
+		 * A read barrier is necessary here to prevent speculative
+		 * fetches of remote->slot_queue_recycle from overtaking the
+		 * mutex.
+		 */
 		rmb();
 
 		slot_queue_recycle = state->remote->slot_queue_recycle;
@@ -1193,8 +1216,10 @@ release_slot(struct vchiq_state *state, struct vchiq_slot_info *slot_info,
 			SLOT_INDEX_FROM_INFO(state, slot_info),
 			state->remote->slot_queue_recycle);
 
-		/* A write barrier is necessary, but remote_event_signal
-		** contains one. */
+		/*
+		 * A write barrier is necessary, but remote_event_signal
+		 * contains one.
+		 */
 		remote_event_signal(&state->remote->recycle);
 	}
 
@@ -1221,8 +1246,10 @@ notify_bulks(struct vchiq_service *service, struct vchiq_bulk_queue *queue,
 			struct vchiq_bulk *bulk =
 				&queue->bulks[BULK_INDEX(queue->remove)];
 
-			/* Only generate callbacks for non-dummy bulk
-			** requests, and non-terminated services */
+			/*
+			 * Only generate callbacks for non-dummy bulk
+			 * requests, and non-terminated services
+			 */
 			if (bulk->data && service->instance) {
 				if (bulk->actual != VCHIQ_BULK_ACTUAL_ABORTED) {
 					if (bulk->dir == VCHIQ_BULK_TRANSMIT) {
@@ -1315,9 +1342,11 @@ poll_services(struct vchiq_state *state)
 						state->id, service->localport,
 						service->remoteport);
 
-					/* Make it look like a client, because
-					   it must be removed and not left in
-					   the LISTENING state. */
+					/*
+					 * Make it look like a client, because
+					 * it must be removed and not left in
+					 * the LISTENING state.
+					 */
 					service->public_fourcc =
 						VCHIQ_FOURCC_INVALID;
 
@@ -1546,9 +1575,11 @@ parse_rx_slots(struct vchiq_state *state)
 				rx_index);
 			state->rx_info = SLOT_INFO_FROM_INDEX(state, rx_index);
 
-			/* Initialise use_count to one, and increment
-			** release_count at the end of the slot to avoid
-			** releasing the slot prematurely. */
+			/*
+			 * Initialise use_count to one, and increment
+			 * release_count at the end of the slot to avoid
+			 * releasing the slot prematurely.
+			 */
 			state->rx_info->use_count = 1;
 			state->rx_info->release_count = 0;
 		}
@@ -1580,9 +1611,11 @@ parse_rx_slots(struct vchiq_state *state)
 			      (service->remoteport != VCHIQ_PORT_FREE))) &&
 			    (localport == 0) &&
 			    (type == VCHIQ_MSG_CLOSE)) {
-				/* This could be a CLOSE from a client which
-				   hadn't yet received the OPENACK - look for
-				   the connected service */
+				/*
+				 * This could be a CLOSE from a client which
+				 * hadn't yet received the OPENACK - look for
+				 * the connected service
+				 */
 				if (service)
 					unlock_service(service);
 				service = get_connected_service(state,
@@ -1849,8 +1882,10 @@ parse_rx_slots(struct vchiq_state *state)
 		state->rx_pos += calc_stride(size);
 
 		DEBUG_TRACE(PARSE_LINE);
-		/* Perform some housekeeping when the end of the slot is
-		** reached. */
+		/*
+		 * Perform some housekeeping when the end of the slot is
+		 * reached.
+		 */
 		if ((state->rx_pos & VCHIQ_SLOT_MASK) == 0) {
 			/* Remove the extra reference count. */
 			release_slot(state, state->rx_info, NULL, NULL);
@@ -1884,8 +1919,10 @@ slot_handler_func(void *v)
 
 			state->poll_needed = 0;
 
-			/* Handle service polling and other rare conditions here
-			** out of the mainline code */
+			/*
+			 * Handle service polling and other rare conditions here
+			 * out of the mainline code
+			 */
 			switch (state->conn_state) {
 			case VCHIQ_CONNSTATE_CONNECTED:
 				/* Poll the services as requested */
@@ -1914,9 +1951,11 @@ slot_handler_func(void *v)
 					vchiq_set_conn_state(state,
 						VCHIQ_CONNSTATE_CONNECTED);
 				} else {
-					/* This should really be impossible,
-					** since the PAUSE should have flushed
-					** through outstanding messages. */
+					/*
+					 * This should really be impossible,
+					 * since the PAUSE should have flushed
+					 * through outstanding messages.
+					 */
 					vchiq_log_error(vchiq_core_log_level,
 						"Failed to send RESUME "
 						"message");
@@ -2153,7 +2192,7 @@ vchiq_init_state(struct vchiq_state *state, struct vchiq_slot_zero *slot_zero)
 	memset(state, 0, sizeof(struct vchiq_state));
 
 	/*
-		initialize shared state pointers
+	 * initialize shared state pointers
 	 */
 
 	state->local = local;
@@ -2161,7 +2200,7 @@ vchiq_init_state(struct vchiq_state *state, struct vchiq_slot_zero *slot_zero)
 	state->slot_data = (struct vchiq_slot *)slot_zero;
 
 	/*
-		initialize events and mutexes
+	 * initialize events and mutexes
 	 */
 
 	init_completion(&state->connect);
@@ -2217,7 +2256,7 @@ vchiq_init_state(struct vchiq_state *state, struct vchiq_slot_zero *slot_zero)
 		return VCHIQ_ERROR;
 
 	/*
-		bring up slot handler thread
+	 * bring up slot handler thread
 	 */
 	snprintf(threadname, sizeof(threadname), "vchiq-slot/%d", state->id);
 	state->slot_handler_thread = kthread_create(&slot_handler_func,
@@ -2382,15 +2421,16 @@ vchiq_add_service_internal(struct vchiq_state *state,
 	memset(&service->stats, 0, sizeof(service->stats));
 	memset(&service->msg_queue, 0, sizeof(service->msg_queue));
 
-	/* Although it is perfectly possible to use a spinlock
-	** to protect the creation of services, it is overkill as it
-	** disables interrupts while the array is searched.
-	** The only danger is of another thread trying to create a
-	** service - service deletion is safe.
-	** Therefore it is preferable to use state->mutex which,
-	** although slower to claim, doesn't block interrupts while
-	** it is held.
-	*/
+	/*
+	 * Although it is perfectly possible to use a spinlock
+	 * to protect the creation of services, it is overkill as it
+	 * disables interrupts while the array is searched.
+	 * The only danger is of another thread trying to create a
+	 * service - service deletion is safe.
+	 * Therefore it is preferable to use state->mutex which,
+	 * although slower to claim, doesn't block interrupts while
+	 * it is held.
+	 */
 
 	mutex_lock(&state->mutex);
 
@@ -2417,8 +2457,10 @@ vchiq_add_service_internal(struct vchiq_state *state,
 				&& ((srv->instance != instance) ||
 				(srv->base.callback !=
 				params->callback))) {
-				/* There is another server using this
-				** fourcc which doesn't match. */
+				/*
+				 * There is another server using this
+				 * fourcc which doesn't match.
+				 */
 				pservice = NULL;
 				break;
 			}
@@ -2542,8 +2584,10 @@ release_service_messages(struct vchiq_service *service)
 
 			end = VCHIQ_SLOT_SIZE;
 			if (data == state->rx_data)
-				/* This buffer is still being read from - stop
-				** at the current read position */
+				/*
+				 * This buffer is still being read from - stop
+				 * at the current read position
+				 */
 				end = state->rx_pos & VCHIQ_SLOT_MASK;
 
 			pos = 0;
@@ -2633,8 +2677,10 @@ close_service_complete(struct vchiq_service *service, int failstate)
 		int i;
 		/* Complete the close process */
 		for (i = 0; i < uc; i++)
-			/* cater for cases where close is forced and the
-			** client may not close all it's handles */
+			/*
+			 * cater for cases where close is forced and the
+			 * client may not close all it's handles
+			 */
 			vchiq_release_service_internal(service);
 
 		service->client_id = 0;
@@ -2729,8 +2775,7 @@ vchiq_close_service_internal(struct vchiq_service *service, int close_recvd)
 
 		if (status == VCHIQ_SUCCESS) {
 			if (!close_recvd) {
-				/* Change the state while the mutex is
-				   still held */
+				/* Change the state while the mutex is still held */
 				vchiq_set_service_state(service,
 							VCHIQ_SRVSTATE_CLOSESENT);
 				mutex_unlock(&state->slot_mutex);
@@ -2971,8 +3016,10 @@ vchiq_remove_service(unsigned int handle)
 
 	if ((service->srvstate == VCHIQ_SRVSTATE_HIDDEN) ||
 		(current == service->state->slot_handler_thread)) {
-		/* Make it look like a client, because it must be removed and
-		   not left in the LISTENING state. */
+		/*
+		 * Make it look like a client, because it must be removed and
+		 * not left in the LISTENING state.
+		 */
 		service->public_fourcc = VCHIQ_FOURCC_INVALID;
 
 		status = vchiq_close_service_internal(service,
@@ -3007,7 +3054,8 @@ vchiq_remove_service(unsigned int handle)
 	return status;
 }
 
-/* This function may be called by kernel threads or user threads.
+/*
+ * This function may be called by kernel threads or user threads.
  * User threads may receive VCHIQ_RETRY to indicate that a signal has been
  * received and the call should be retried after being returned to user
  * context.
@@ -3100,8 +3148,10 @@ enum vchiq_status vchiq_bulk_transfer(unsigned int handle,
 		state->id, service->localport, service->remoteport, dir_char,
 		size, &bulk->data, userdata);
 
-	/* The slot mutex must be held when the service is being closed, so
-	   claim it here to ensure that isn't happening */
+	/*
+	 * The slot mutex must be held when the service is being closed, so
+	 * claim it here to ensure that isn't happening
+	 */
 	if (mutex_lock_killable(&state->slot_mutex)) {
 		status = VCHIQ_RETRY;
 		goto cancel_bulk_error_exit;
@@ -3337,8 +3387,10 @@ vchiq_set_service_option(unsigned int handle,
 				if ((value >= service_quota->slot_use_count) &&
 					(service_quota->message_quota >=
 					 service_quota->message_use_count)) {
-					/* Signal the service that it may have
-					** dropped below its quota */
+					/*
+					 * Signal the service that it may have
+					 * dropped below its quota
+					 */
 					complete(&service_quota->quota_event);
 				}
 				status = VCHIQ_SUCCESS;
@@ -3358,8 +3410,10 @@ vchiq_set_service_option(unsigned int handle,
 					service_quota->message_use_count) &&
 					(service_quota->slot_quota >=
 					service_quota->slot_use_count))
-					/* Signal the service that it may have
-					** dropped below its quota */
+					/*
+					 * Signal the service that it may have
+					 * dropped below its quota
+					 */
 					complete(&service_quota->quota_event);
 				status = VCHIQ_SUCCESS;
 			}
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 06200a76b871..b817097651fa 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -243,8 +243,7 @@ struct vchiq_bulk_queue {
 	int remote_insert; /* Where to insert the next remote bulk (master) */
 	int process;       /* Bulk to transfer next */
 	int remote_notify; /* Bulk to notify the remote client of next (mstr) */
-	int remove;        /* Bulk to notify the local client of, and remove,
-			   ** next */
+	int remove;        /* Bulk to notify the local client of, and remove, next */
 	struct vchiq_bulk bulks[VCHIQ_NUM_SERVICE_BULKS];
 };
 
@@ -321,7 +320,8 @@ struct vchiq_service {
 	struct vchiq_header *msg_queue[VCHIQ_MAX_SLOTS];
 };
 
-/* The quota information is outside struct vchiq_service so that it can
+/*
+ * The quota information is outside struct vchiq_service so that it can
  * be statically allocated, since for accounting reasons a service's slot
  * usage is carried over between users of the same port number.
  */
@@ -346,13 +346,17 @@ struct vchiq_shared_state {
 	/* The slot allocated to synchronous messages from the owner. */
 	int slot_sync;
 
-	/* Signalling this event indicates that owner's slot handler thread
-	** should run. */
+	/*
+	 * Signalling this event indicates that owner's slot handler thread
+	 * should run.
+	 */
 	struct remote_event trigger;
 
-	/* Indicates the byte position within the stream where the next message
-	** will be written. The least significant bits are an index into the
-	** slot. The next bits are the index of the slot in slot_queue. */
+	/*
+	 * Indicates the byte position within the stream where the next message
+	 * will be written. The least significant bits are an index into the
+	 * slot. The next bits are the index of the slot in slot_queue.
+	 */
 	int tx_pos;
 
 	/* This event should be signalled when a slot is recycled. */
@@ -364,8 +368,10 @@ struct vchiq_shared_state {
 	/* This event should be signalled when a synchronous message is sent. */
 	struct remote_event sync_trigger;
 
-	/* This event should be signalled when a synchronous message has been
-	** released. */
+	/*
+	 * This event should be signalled when a synchronous message has been
+	 * released.
+	 */
 	struct remote_event sync_release;
 
 	/* A circular buffer of slot indexes. */
@@ -442,14 +448,18 @@ struct vchiq_state {
 
 	struct mutex bulk_transfer_mutex;
 
-	/* Indicates the byte position within the stream from where the next
-	** message will be read. The least significant bits are an index into
-	** the slot.The next bits are the index of the slot in
-	** remote->slot_queue. */
+	/*
+	 * Indicates the byte position within the stream from where the next
+	 * message will be read. The least significant bits are an index into
+	 * the slot.The next bits are the index of the slot in
+	 * remote->slot_queue.
+	 */
 	int rx_pos;
 
-	/* A cached copy of local->tx_pos. Only write to local->tx_pos, and read
-		from remote->tx_pos. */
+	/*
+	 * A cached copy of local->tx_pos. Only write to local->tx_pos, and read
+	 * from remote->tx_pos.
+	 */
 	int local_tx_pos;
 
 	/* The slot_queue index of the slot to become available next. */
@@ -504,9 +514,10 @@ struct bulk_waiter {
 
 struct vchiq_config {
 	unsigned int max_msg_size;
-	unsigned int bulk_threshold; /* The message size above which it
-					is better to use a bulk transfer
-					(<= max_msg_size) */
+	unsigned int bulk_threshold;	/* The message size above which it
+					 * is better to use a bulk transfer
+					 * (<= max_msg_size)
+					 */
 	unsigned int max_outstanding_bulks;
 	unsigned int max_services;
 	short version;      /* The version of VCHIQ */
@@ -628,8 +639,10 @@ vchiq_queue_message(unsigned int handle,
 		    void *context,
 		    size_t size);
 
-/* The following functions are called from vchiq_core, and external
-** implementations must be provided. */
+/*
+ * The following functions are called from vchiq_core, and external
+ * implementations must be provided.
+ */
 
 extern enum vchiq_status
 vchiq_prepare_bulk_data(struct vchiq_bulk *bulk, void *offset,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c
index 89cc52211de4..a39757b4e759 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c
@@ -12,10 +12,10 @@
 #ifdef CONFIG_DEBUG_FS
 
 /****************************************************************************
-*
-*   log category entries
-*
-***************************************************************************/
+ *
+ *   log category entries
+ *
+ ***************************************************************************/
 #define DEBUGFS_WRITE_BUF_SIZE 256
 
 #define VCHIQ_LOG_ERROR_STR   "error"
-- 
2.25.1


