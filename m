X-GM-THRID: 6753896393761357824
X-Received: by 2002:a37:4a0c:: with SMTP id x12mr7301778qka.19.1572643333171;
        Fri, 01 Nov 2019 14:22:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3126:: with SMTP id 35ls2200712qtg.10.gmail; Fri, 01 Nov
 2019 14:22:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxDlAAqvtfpL3wqMNady38Y/UmW6UeCS8ixfXCIJbV6PgPSmw4sJOZdUdbWNELlDy4h/S3V
X-Received: by 2002:ac8:2ff3:: with SMTP id m48mr1594319qta.127.1572643332272;
        Fri, 01 Nov 2019 14:22:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572643332; cv=none;
        d=google.com; s=arc-20160816;
        b=0ENlYSUGzOGzCvaIRuexNJ+UGdiGLAjGMnvNpYaKehQeAgwlqmNI1LahCjuBn8B9wB
         Uxr+0mpkeVvgqTdYJ5BUb4SFiWKvqrn39sCJqSH4eYMTo4R6t8Adbi4bpVKsCr75xvHk
         NkRYDTRqeygxIPhGY/1fPMImvjwQy8eveb2zLI+OkmCbjzD1kfOJrXaaS/p3tFKlq9TJ
         qMoOX1pXlxGKefT551zc49hkTaYTTY8ILH7h1h8/Au/R130OLhYJPB7j8fJ1TDpoEK3R
         6XJdrer3Fx0fvqCspWBQ8FvS9Lqs6H9QL+Y44JJhZApCNIyNUD1cqrxZxlhDA50Auw4z
         /f+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=+dIdvbZQ+38QMgyIGMalW4Mn0JdIAL9xJxMtzw9lP20=;
        b=DG59mKN8JaZs26WIjiHbVU1j9iMqd0k7xtt0xWqgxK/jMGUMI42y68sCIomYjGDa+R
         Ww6Qa5V+14FRoXtt3hONLpz57iHfE6k+zDcbO/F8XQSFw+4M6r5tX8lRh2Puvvh1jsQ0
         buH5vis271z2nSzDCXd7tc2ozonMiRzm9x4B7wxcU23a6SVAkncqjGmPa4Yv5nN3A/b1
         FVky+XIsy+R/BV4GtHurRJYfc0b3rvWbS8/63fih+YsyLu8jU+/r2f2A05f8zA6wzNVd
         WASNZNbXo1AbQdpo//3KS0ceKw6uyL/qWLdjM5ZIkoajL3q/mxs2MqP0xTQZbtNroNM8
         a7dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nsUgH1Gg;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id t187si539060qkd.0.2019.11.01.14.22.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 14:22:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nsUgH1Gg;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id t12so4890112plo.6
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 14:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=+dIdvbZQ+38QMgyIGMalW4Mn0JdIAL9xJxMtzw9lP20=;
        b=nsUgH1GgMGVdfDYDckPyBnoaCwRcCyFnR9nDCJzjZYnXzaKEZqI/HDAaneIyiBFjEo
         VYwneYPwK00yRMLuufa3zlfUd2CCRbHsrxxUCNsbcTT1U6a35LGNJg6uDJtwbII+5vGH
         WqNT5X+TXpleFq5yZX4+vaGG8xjzmLGNbT9XNKq3901e9dqjrd82T3H7HkPUJIqbNVPw
         Zu0inGf7737gy7aMPsKkKYEKM018TMBalmwz5KIPt6OXiR2WSuPmSs8eb3O5G6ND4J2i
         StggNE+zYaNZnqPBtNYuSdniAib1MAXZmF/yhxMQA8OtkXFGervBOboqMo2oMeq1g0ll
         V+HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=+dIdvbZQ+38QMgyIGMalW4Mn0JdIAL9xJxMtzw9lP20=;
        b=bYukmURdYzXdM76xEkVDnXBw8Es/MOFW7Qf8LiqkOMAv0l37MHr2C1uKH2lAilPENE
         4VJr8EGvEz4inQCxiYOTS0QFSbicByoTC65UH05WONDehcwtgJ7EssKTnzN4MiXT0oxQ
         OZD75p+vSpOvxLebFF1gPrj0kf9cl8jwkje2H+6KZpGqu6TyzlvDDmlxNrAsaUAtW4+5
         seRQix2QHOY5kTDN7gZHkpO7ClKrMdKZ7J13cH6Q7CQDYg7FX2ZqLNWrQhM29dJh8R7F
         Vw3+869hNU8jg6eLtSxgjAp9s3h/xSpo4jHXr4YXvMNF7/B4YUQH12bnb8oSj0NwSiOb
         5u5w==
X-Gm-Message-State: APjAAAWpwzl36ZTrkgoI6Vc55zg9QgT5cbHqvkLvkbPugGWgeZra913u
	+vZznbI0B1fddteKjwainmI=
X-Received: by 2002:a17:902:760c:: with SMTP id k12mr14710471pll.256.1572643331103;
        Fri, 01 Nov 2019 14:22:11 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id z4sm8424281pjt.20.2019.11.01.14.22.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 14:22:10 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v3 7/8] staging: vc04_services: Remove int typedef
Date: Fri,  1 Nov 2019 14:21:45 -0700
Message-Id: <444f25cc1bcb73f885a5ba89384bfa154fd30ae4.1572642845.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572642845.git.jamal.k.shareef@gmail.com>
References: <cover.1572642845.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572642845.git.jamal.k.shareef@gmail.com>
References: <cover.1572642845.git.jamal.k.shareef@gmail.com>

Removes unsigned int typedef. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 40 +++++++++----------
 .../interface/vchiq_arm/vchiq_arm.h           |  4 +-
 .../interface/vchiq_arm/vchiq_core.c          | 28 ++++++-------
 .../interface/vchiq_arm/vchiq_core.h          | 12 +++---
 .../interface/vchiq_arm/vchiq_if.h            | 38 +++++++++---------
 .../interface/vchiq_arm/vchiq_shim.c          |  8 ++--
 6 files changed, 64 insertions(+), 66 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 0c615099b067..1581e9a858d5 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -173,7 +173,7 @@ vchiq_static_assert(ARRAY_SIZE(ioctl_names) ==
 		    (VCHIQ_IOC_MAX + 1));
 
 static enum vchiq_status
-vchiq_blocking_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *data,
+vchiq_blocking_bulk_transfer(unsigned int handle, void *data,
 	unsigned int size, enum vchiq_bulk_dir dir);
 
 #define VCHIQ_INIT_RETRIES 10
@@ -304,7 +304,7 @@ EXPORT_SYMBOL(vchiq_connect);
 enum vchiq_status vchiq_add_service(
 	VCHIQ_INSTANCE_T instance,
 	const struct vchiq_service_params *params,
-	VCHIQ_SERVICE_HANDLE_T       *phandle)
+	unsigned int       *phandle)
 {
 	enum vchiq_status status;
 	struct vchiq_state *state = instance->state;
@@ -343,7 +343,7 @@ EXPORT_SYMBOL(vchiq_add_service);
 enum vchiq_status vchiq_open_service(
 	VCHIQ_INSTANCE_T instance,
 	const struct vchiq_service_params *params,
-	VCHIQ_SERVICE_HANDLE_T       *phandle)
+	unsigned int       *phandle)
 {
 	enum vchiq_status   status = VCHIQ_ERROR;
 	struct vchiq_state   *state = instance->state;
@@ -381,7 +381,7 @@ enum vchiq_status vchiq_open_service(
 EXPORT_SYMBOL(vchiq_open_service);
 
 enum vchiq_status
-vchiq_bulk_transmit(VCHIQ_SERVICE_HANDLE_T handle, const void *data,
+vchiq_bulk_transmit(unsigned int handle, const void *data,
 	unsigned int size, void *userdata, enum vchiq_bulk_mode mode)
 {
 	enum vchiq_status status;
@@ -406,7 +406,7 @@ vchiq_bulk_transmit(VCHIQ_SERVICE_HANDLE_T handle, const void *data,
 EXPORT_SYMBOL(vchiq_bulk_transmit);
 
 enum vchiq_status
-vchiq_bulk_receive(VCHIQ_SERVICE_HANDLE_T handle, void *data,
+vchiq_bulk_receive(unsigned int handle, void *data,
 	unsigned int size, void *userdata, enum vchiq_bulk_mode mode)
 {
 	enum vchiq_status status;
@@ -430,7 +430,7 @@ vchiq_bulk_receive(VCHIQ_SERVICE_HANDLE_T handle, void *data,
 EXPORT_SYMBOL(vchiq_bulk_receive);
 
 static enum vchiq_status
-vchiq_blocking_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *data,
+vchiq_blocking_bulk_transfer(unsigned int handle, void *data,
 	unsigned int size, enum vchiq_bulk_dir dir)
 {
 	VCHIQ_INSTANCE_T instance;
@@ -584,7 +584,7 @@ add_completion(VCHIQ_INSTANCE_T instance, enum vchiq_reason reason,
 
 static enum vchiq_status
 service_callback(enum vchiq_reason reason, struct vchiq_header *header,
-		 VCHIQ_SERVICE_HANDLE_T handle, void *bulk_userdata)
+		 unsigned int handle, void *bulk_userdata)
 {
 	/* How do we ensure the callback goes to the right client?
 	** The service_user data points to a user_service record
@@ -773,7 +773,7 @@ static ssize_t vchiq_ioc_copy_element_data(void *context, void *dest,
  *
  **************************************************************************/
 static enum vchiq_status
-vchiq_ioc_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
+vchiq_ioc_queue_message(unsigned int handle,
 			struct vchiq_element *elements,
 			unsigned long count)
 {
@@ -952,7 +952,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 
 	case VCHIQ_IOC_CLOSE_SERVICE:
 	case VCHIQ_IOC_REMOVE_SERVICE: {
-		VCHIQ_SERVICE_HANDLE_T handle = (unsigned int)arg;
+		unsigned int handle = (unsigned int)arg;
 		struct user_service *user_service;
 
 		service = find_service_for_instance(instance, handle);
@@ -985,7 +985,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 
 	case VCHIQ_IOC_USE_SERVICE:
 	case VCHIQ_IOC_RELEASE_SERVICE:	{
-		VCHIQ_SERVICE_HANDLE_T handle = (unsigned int)arg;
+		unsigned int handle = (unsigned int)arg;
 
 		service = find_service_for_instance(instance, handle);
 		if (service) {
@@ -1368,7 +1368,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 	} break;
 
 	case VCHIQ_IOC_GET_CLIENT_ID: {
-		VCHIQ_SERVICE_HANDLE_T handle = (unsigned int)arg;
+		unsigned int handle = (unsigned int)arg;
 
 		ret = vchiq_get_client_id(handle);
 	} break;
@@ -1423,7 +1423,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 	} break;
 
 	case VCHIQ_IOC_CLOSE_DELIVERED: {
-		VCHIQ_SERVICE_HANDLE_T handle = (unsigned int)arg;
+		unsigned int handle = (unsigned int)arg;
 
 		service = find_closed_service_for_instance(instance, handle);
 		if (service) {
@@ -1484,7 +1484,7 @@ struct vchiq_create_service32 {
 	struct vchiq_service_params32 params;
 	int is_open;
 	int is_vchi;
-	VCHIQ_SERVICE_HANDLE_T handle; /* OUT */
+	unsigned int handle; /* OUT */
 };
 
 #define VCHIQ_IOC_CREATE_SERVICE32 \
@@ -1544,7 +1544,7 @@ struct vchiq_element32 {
 };
 
 struct vchiq_queue_message32 {
-	VCHIQ_SERVICE_HANDLE_T handle;
+	unsigned int handle;
 	unsigned int count;
 	compat_uptr_t elements;
 };
@@ -1607,7 +1607,7 @@ vchiq_compat_ioctl_queue_message(struct file *file,
 }
 
 struct vchiq_queue_bulk_transfer32 {
-	VCHIQ_SERVICE_HANDLE_T handle;
+	unsigned int handle;
 	compat_uptr_t data;
 	unsigned int size;
 	compat_uptr_t userdata;
@@ -1824,7 +1824,7 @@ vchiq_compat_ioctl_await_completion(struct file *file,
 }
 
 struct vchiq_dequeue_message32 {
-	VCHIQ_SERVICE_HANDLE_T handle;
+	unsigned int handle;
 	int blocking;
 	unsigned int bufsize;
 	compat_uptr_t buf;
@@ -2273,7 +2273,7 @@ vchiq_videocore_wanted(struct vchiq_state *state)
 static enum vchiq_status
 vchiq_keepalive_vchiq_callback(enum vchiq_reason reason,
 	struct vchiq_header *header,
-	VCHIQ_SERVICE_HANDLE_T service_user,
+	unsigned int service_user,
 	void *bulk_user)
 {
 	vchiq_log_error(vchiq_susp_log_level,
@@ -2289,7 +2289,7 @@ vchiq_keepalive_thread_func(void *v)
 
 	enum vchiq_status status;
 	VCHIQ_INSTANCE_T instance;
-	VCHIQ_SERVICE_HANDLE_T ka_handle;
+	unsigned int ka_handle;
 
 	struct vchiq_service_params params = {
 		.fourcc      = VCHIQ_MAKE_FOURCC('K', 'E', 'E', 'P'),
@@ -2970,7 +2970,7 @@ static void suspend_timer_callback(struct timer_list *t)
 }
 
 enum vchiq_status
-vchiq_use_service(VCHIQ_SERVICE_HANDLE_T handle)
+vchiq_use_service(unsigned int handle)
 {
 	enum vchiq_status ret = VCHIQ_ERROR;
 	struct vchiq_service *service = find_service_by_handle(handle);
@@ -2984,7 +2984,7 @@ vchiq_use_service(VCHIQ_SERVICE_HANDLE_T handle)
 }
 
 enum vchiq_status
-vchiq_release_service(VCHIQ_SERVICE_HANDLE_T handle)
+vchiq_release_service(unsigned int handle)
 {
 	enum vchiq_status ret = VCHIQ_ERROR;
 	struct vchiq_service *service = find_service_by_handle(handle);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index ebab08b567fa..229dd262ec7d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -125,10 +125,10 @@ vchiq_check_resume(struct vchiq_state *state);
 extern void
 vchiq_check_suspend(struct vchiq_state *state);
 enum vchiq_status
-vchiq_use_service(VCHIQ_SERVICE_HANDLE_T handle);
+vchiq_use_service(unsigned int handle);
 
 extern enum vchiq_status
-vchiq_release_service(VCHIQ_SERVICE_HANDLE_T handle);
+vchiq_release_service(unsigned int handle);
 
 extern enum vchiq_status
 vchiq_check_service(struct vchiq_service *service);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 6e4ad0929ba3..95e892d45242 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -59,7 +59,7 @@ DEFINE_SPINLOCK(bulk_waiter_spinlock);
 static DEFINE_SPINLOCK(quota_spinlock);
 
 struct vchiq_state *vchiq_states[VCHIQ_MAX_STATES];
-static VCHIQ_SERVICE_HANDLE_T handle_seq;
+static unsigned int handle_seq;
 
 static const char *const srvstate_names[] = {
 	"FREE",
@@ -132,7 +132,7 @@ vchiq_set_service_state(struct vchiq_service *service, int newstate)
 }
 
 struct vchiq_service *
-find_service_by_handle(VCHIQ_SERVICE_HANDLE_T handle)
+find_service_by_handle(unsigned int handle)
 {
 	struct vchiq_service *service;
 
@@ -178,7 +178,7 @@ find_service_by_port(struct vchiq_state *state, int localport)
 
 struct vchiq_service *
 find_service_for_instance(VCHIQ_INSTANCE_T instance,
-	VCHIQ_SERVICE_HANDLE_T handle)
+	unsigned int handle)
 {
 	struct vchiq_service *service;
 
@@ -202,7 +202,7 @@ find_service_for_instance(VCHIQ_INSTANCE_T instance,
 
 struct vchiq_service *
 find_closed_service_for_instance(VCHIQ_INSTANCE_T instance,
-	VCHIQ_SERVICE_HANDLE_T handle)
+	unsigned int handle)
 {
 	struct vchiq_service *service;
 
@@ -295,7 +295,7 @@ unlock_service(struct vchiq_service *service)
 }
 
 int
-vchiq_get_client_id(VCHIQ_SERVICE_HANDLE_T handle)
+vchiq_get_client_id(unsigned int handle)
 {
 	struct vchiq_service *service = find_service_by_handle(handle);
 	int id;
@@ -308,7 +308,7 @@ vchiq_get_client_id(VCHIQ_SERVICE_HANDLE_T handle)
 }
 
 void *
-vchiq_get_service_userdata(VCHIQ_SERVICE_HANDLE_T handle)
+vchiq_get_service_userdata(unsigned int handle)
 {
 	struct vchiq_service *service = handle_to_service(handle);
 
@@ -316,7 +316,7 @@ vchiq_get_service_userdata(VCHIQ_SERVICE_HANDLE_T handle)
 }
 
 int
-vchiq_get_service_fourcc(VCHIQ_SERVICE_HANDLE_T handle)
+vchiq_get_service_fourcc(unsigned int handle)
 {
 	struct vchiq_service *service = handle_to_service(handle);
 
@@ -2828,7 +2828,7 @@ vchiq_shutdown_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance)
 }
 
 enum vchiq_status
-vchiq_close_service(VCHIQ_SERVICE_HANDLE_T handle)
+vchiq_close_service(unsigned int handle)
 {
 	/* Unregister the service */
 	struct vchiq_service *service = find_service_by_handle(handle);
@@ -2887,7 +2887,7 @@ vchiq_close_service(VCHIQ_SERVICE_HANDLE_T handle)
 }
 
 enum vchiq_status
-vchiq_remove_service(VCHIQ_SERVICE_HANDLE_T handle)
+vchiq_remove_service(unsigned int handle)
 {
 	/* Unregister the service */
 	struct vchiq_service *service = find_service_by_handle(handle);
@@ -2952,7 +2952,7 @@ vchiq_remove_service(VCHIQ_SERVICE_HANDLE_T handle)
  * When called in blocking mode, the userdata field points to a bulk_waiter
  * structure.
  */
-enum vchiq_status vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
+enum vchiq_status vchiq_bulk_transfer(unsigned int handle,
 				   void *offset, int size, void *userdata,
 				   enum vchiq_bulk_mode mode,
 				   enum vchiq_bulk_dir dir)
@@ -3101,7 +3101,7 @@ enum vchiq_status vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
 }
 
 enum vchiq_status
-vchiq_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
+vchiq_queue_message(unsigned int handle,
 		    ssize_t (*copy_callback)(void *context, void *dest,
 					     size_t offset, size_t maxsize),
 		    void *context,
@@ -3153,7 +3153,7 @@ vchiq_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
 }
 
 void
-vchiq_release_message(VCHIQ_SERVICE_HANDLE_T handle,
+vchiq_release_message(unsigned int handle,
 		      struct vchiq_header *header)
 {
 	struct vchiq_service *service = find_service_by_handle(handle);
@@ -3193,7 +3193,7 @@ release_message_sync(struct vchiq_state *state, struct vchiq_header *header)
 }
 
 enum vchiq_status
-vchiq_get_peer_version(VCHIQ_SERVICE_HANDLE_T handle, short *peer_version)
+vchiq_get_peer_version(unsigned int handle, short *peer_version)
 {
 	enum vchiq_status status = VCHIQ_ERROR;
 	struct vchiq_service *service = find_service_by_handle(handle);
@@ -3222,7 +3222,7 @@ void vchiq_get_config(struct vchiq_config *config)
 }
 
 enum vchiq_status
-vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T handle,
+vchiq_set_service_option(unsigned int handle,
 	enum vchiq_service_option option, int value)
 {
 	struct vchiq_service *service = find_service_by_handle(handle);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index d33d6bd96617..00530d1554b4 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -250,7 +250,7 @@ struct vchiq_slot_info {
 
 struct vchiq_service {
 	struct vchiq_service_base base;
-	VCHIQ_SERVICE_HANDLE_T handle;
+	unsigned int handle;
 	unsigned int ref_count;
 	int srvstate;
 	VCHIQ_USERDATA_TERM_T userdata_term;
@@ -522,7 +522,7 @@ extern void
 remote_event_pollall(struct vchiq_state *state);
 
 extern enum vchiq_status
-vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *offset, int size,
+vchiq_bulk_transfer(unsigned int handle, void *offset, int size,
 		    void *userdata, enum vchiq_bulk_mode mode,
 		    enum vchiq_bulk_dir dir);
 
@@ -543,7 +543,7 @@ request_poll(struct vchiq_state *state, struct vchiq_service *service,
 	     int poll_type);
 
 static inline struct vchiq_service *
-handle_to_service(VCHIQ_SERVICE_HANDLE_T handle)
+handle_to_service(unsigned int handle)
 {
 	struct vchiq_state *state = vchiq_states[(handle / VCHIQ_MAX_SERVICES) &
 		(VCHIQ_MAX_STATES - 1)];
@@ -554,18 +554,18 @@ handle_to_service(VCHIQ_SERVICE_HANDLE_T handle)
 }
 
 extern struct vchiq_service *
-find_service_by_handle(VCHIQ_SERVICE_HANDLE_T handle);
+find_service_by_handle(unsigned int handle);
 
 extern struct vchiq_service *
 find_service_by_port(struct vchiq_state *state, int localport);
 
 extern struct vchiq_service *
 find_service_for_instance(VCHIQ_INSTANCE_T instance,
-	VCHIQ_SERVICE_HANDLE_T handle);
+	unsigned int handle);
 
 extern struct vchiq_service *
 find_closed_service_for_instance(VCHIQ_INSTANCE_T instance,
-	VCHIQ_SERVICE_HANDLE_T handle);
+	unsigned int handle);
 
 extern struct vchiq_service *
 next_service_by_instance(struct vchiq_state *state, VCHIQ_INSTANCE_T instance,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index 4e84c8ad3e85..cfadb79801c2 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -61,8 +61,6 @@ struct vchiq_element {
 	unsigned int size;
 };
 
-typedef unsigned int VCHIQ_SERVICE_HANDLE_T;
-
 struct vchiq_service_base {
 	int fourcc;
 	enum vchiq_status (*callback)(enum vchiq_reason,
@@ -99,49 +97,49 @@ extern enum vchiq_status vchiq_shutdown(VCHIQ_INSTANCE_T instance);
 extern enum vchiq_status vchiq_connect(VCHIQ_INSTANCE_T instance);
 extern enum vchiq_status vchiq_add_service(VCHIQ_INSTANCE_T instance,
 	const struct vchiq_service_params *params,
-	VCHIQ_SERVICE_HANDLE_T *pservice);
+	unsigned int *pservice);
 extern enum vchiq_status vchiq_open_service(VCHIQ_INSTANCE_T instance,
 	const struct vchiq_service_params *params,
-	VCHIQ_SERVICE_HANDLE_T *pservice);
-extern enum vchiq_status vchiq_close_service(VCHIQ_SERVICE_HANDLE_T service);
-extern enum vchiq_status vchiq_remove_service(VCHIQ_SERVICE_HANDLE_T service);
-extern enum vchiq_status vchiq_use_service(VCHIQ_SERVICE_HANDLE_T service);
-extern enum vchiq_status vchiq_release_service(VCHIQ_SERVICE_HANDLE_T service);
+	unsigned int *pservice);
+extern enum vchiq_status vchiq_close_service(unsigned int service);
+extern enum vchiq_status vchiq_remove_service(unsigned int service);
+extern enum vchiq_status vchiq_use_service(unsigned int service);
+extern enum vchiq_status vchiq_release_service(unsigned int service);
 extern enum vchiq_status
-vchiq_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
+vchiq_queue_message(unsigned int handle,
 		    ssize_t (*copy_callback)(void *context, void *dest,
 					     size_t offset, size_t maxsize),
 		    void *context,
 		    size_t size);
-extern void           vchiq_release_message(VCHIQ_SERVICE_HANDLE_T service,
+extern void           vchiq_release_message(unsigned int service,
 	struct vchiq_header *header);
-extern enum vchiq_status vchiq_bulk_transmit(VCHIQ_SERVICE_HANDLE_T service,
+extern enum vchiq_status vchiq_bulk_transmit(unsigned int service,
 	const void *data, unsigned int size, void *userdata,
 	enum vchiq_bulk_mode mode);
-extern enum vchiq_status vchiq_bulk_receive(VCHIQ_SERVICE_HANDLE_T service,
+extern enum vchiq_status vchiq_bulk_receive(unsigned int service,
 	void *data, unsigned int size, void *userdata,
 	enum vchiq_bulk_mode mode);
-extern enum vchiq_status vchiq_bulk_transmit_handle(VCHIQ_SERVICE_HANDLE_T service,
+extern enum vchiq_status vchiq_bulk_transmit_handle(unsigned int service,
 	const void *offset, unsigned int size,
 	void *userdata,	enum vchiq_bulk_mode mode);
-extern enum vchiq_status vchiq_bulk_receive_handle(VCHIQ_SERVICE_HANDLE_T service,
+extern enum vchiq_status vchiq_bulk_receive_handle(unsigned int service,
 	void *offset, unsigned int size, void *userdata,
 	enum vchiq_bulk_mode mode);
-extern int   vchiq_get_client_id(VCHIQ_SERVICE_HANDLE_T service);
-extern void *vchiq_get_service_userdata(VCHIQ_SERVICE_HANDLE_T service);
-extern int   vchiq_get_service_fourcc(VCHIQ_SERVICE_HANDLE_T service);
+extern int   vchiq_get_client_id(unsigned int service);
+extern void *vchiq_get_service_userdata(unsigned int service);
+extern int   vchiq_get_service_fourcc(unsigned int service);
 extern void vchiq_get_config(struct vchiq_config *config);
-extern enum vchiq_status vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T service,
+extern enum vchiq_status vchiq_set_service_option(unsigned int service,
 	enum vchiq_service_option option, int value);
 
 extern enum vchiq_status vchiq_remote_use(VCHIQ_INSTANCE_T instance,
 					   void (*callback)(void *cb_arg), void *cb_arg);
 extern enum vchiq_status vchiq_remote_release(VCHIQ_INSTANCE_T instance);
 
-extern enum vchiq_status vchiq_dump_phys_mem(VCHIQ_SERVICE_HANDLE_T service,
+extern enum vchiq_status vchiq_dump_phys_mem(unsigned int service,
 	void *ptr, size_t num_bytes);
 
-extern enum vchiq_status vchiq_get_peer_version(VCHIQ_SERVICE_HANDLE_T handle,
+extern enum vchiq_status vchiq_get_peer_version(unsigned int handle,
       short *peer_version);
 
 #endif /* VCHIQ_IF_H */
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 4b2c720e8374..f08819d1e7a1 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -12,7 +12,7 @@
 #define vchiq_status_to_vchi(status) ((int32_t)status)
 
 struct shim_service {
-	VCHIQ_SERVICE_HANDLE_T handle;
+	unsigned int handle;
 
 	struct vchiu_queue queue;
 
@@ -360,7 +360,7 @@ int32_t vchi_held_msg_release(struct vchi_held_msg *message)
 {
 	/*
 	 * Convert the service field pointer back to an
-	 * VCHIQ_SERVICE_HANDLE_T which is an int.
+	 * unsigned int which is an int.
 	 * This pointer is opaque to everything except
 	 * vchi_msg_hold which simply upcasted the int
 	 * to a pointer.
@@ -410,7 +410,7 @@ int32_t vchi_msg_hold(struct vchi_service_handle *handle, void **data,
 	*msg_size = header->size;
 
 	/*
-	 * upcast the VCHIQ_SERVICE_HANDLE_T which is an int
+	 * upcast the unsigned int which is an int
 	 * to a pointer and stuff it in the held message.
 	 * This pointer is opaque to everything except
 	 * vchi_held_msg_release which simply downcasts it back
@@ -505,7 +505,7 @@ EXPORT_SYMBOL(vchi_disconnect);
 
 static enum vchiq_status shim_callback(enum vchiq_reason reason,
 				    struct vchiq_header *header,
-				    VCHIQ_SERVICE_HANDLE_T handle,
+				    unsigned int handle,
 				    void *bulk_user)
 {
 	struct shim_service *service =
-- 
2.17.1


