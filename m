X-GM-THRID: 6753896393761357824
X-Received: by 2002:a25:42:: with SMTP id 63mr11657272yba.262.1572653083976;
        Fri, 01 Nov 2019 17:04:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:62c3:: with SMTP id w186ls1194844ywb.5.gmail; Fri, 01
 Nov 2019 17:04:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyQaYr8WFr/GhwsKag9geq9vjO+JOcrO+/+/EPt1HXSC6veFEx2X6oY4N8W+ip3llqvpYTO
X-Received: by 2002:a81:a207:: with SMTP id w7mr11208627ywg.476.1572653082691;
        Fri, 01 Nov 2019 17:04:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572653082; cv=none;
        d=google.com; s=arc-20160816;
        b=dYOwzvyPWI5KZSSshcRhK0KsDsIkafuBTMcHsxnUeE3F8Hkly51aUC/Rpe4Lo0GEr0
         ygqUMA+DpzVOmrSmU/aufzDHoz+n4fj0eDE8XpkKwX4U0u70C/LIWO76d4pDMGQDCfCs
         6v7McN6bzc6EzBkq+8Teyyo13s2deGs76XAtH4Iepau5kl3w5Epgfuys6MqXWl6ND7Ua
         nxjIjL9d6DHcL6LAlShyjepQJaqr5wiPKSXmpYgwwZEFHdidmrINNFIs/mbQlE968Bc9
         vyGz3mAdz4R3FqCCGQ+C/+vgWeV0surBxqJKeW7pAy7C1aHY6saJm1pRw/kTzFvxQro7
         fS+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=QnWQSV297E8zlFDeL5JqN1rHPyafHzeJtRBYK8JTYdM=;
        b=W1JPzM1TEgy2VdEmw8PlZVcRuY0811tj90AKjWTh2yj3KZLtQmpKF4M3YSHSKe0yuy
         0WpiPvXOeGGm0SGgrQyOstaUOuoDByLXM3dD1B7zGEWV+/dr9+YXSym8qwkQMqBOZ1kw
         hnmoBM2Av89SxV2dpbXxTG4x6QADGTdf4akHCbXY1BBS5GWFe8fdjWKsFMn1HrAR1vaS
         R48u5FJmqwVd85oN1758+k4nCC0Oy/h1aBZ2lsgOdYb8hjWeCVwbKhiW6W+yu7nIcT0X
         kzHw8HRYlHISJR3oXm3utBQKunns7EkqtrayVBFRPlKxVq2GsOYuLs/vnbckxaFWh2VG
         Wwrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b137wm92;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id r185si786983ywe.2.2019.11.01.17.04.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 17:04:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b137wm92;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id j22so7436702pgh.3
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 17:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=QnWQSV297E8zlFDeL5JqN1rHPyafHzeJtRBYK8JTYdM=;
        b=b137wm92GA4nrggQiVJepW0a00hz0L3TZ9rMN/MXScSQrvYMYSIPTziHsLQ5KV+7+2
         do4Vi9gFoFGVQEwXlPIoCQ1Z03PQRUDMoH78AEHAUEXEif0GbuWtcsVfFSyo95nAbjst
         G23jKW06yV50cfQQJhYzT1i0R3SCLPzZRMrHm8JGv7vgDzGD0BYc8t++BdlHThcMygix
         lueha/vgEdFK0s6qTS2GfQtRSY1DGYavmNznidQVF9GK/Hc+DCVc6qZSpuYKMsh+NjrS
         5wQLyFWd3cSd5BMuBu9hqw0Nu+GnMtr07MPESlmEZWy7peaZOfzWtSiHrlxdhfott14L
         LJWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=QnWQSV297E8zlFDeL5JqN1rHPyafHzeJtRBYK8JTYdM=;
        b=YiVqGr73H8dQbVAvMpBvd3wMsTkQ38jYxeOo+glhTy31gT+Cs8XuftNu4w4fi71ptd
         bjP546qoRPdjRxSyOTUW/fg73Jsc858AAGYIExTDPwlDIqcilzrCwumCCdnXGm7kR1Oq
         Z5gVWBwq6ctGAgxKz6ASabtTz4RYssoiOmdnqTwCTiWCrSJdVgtIMWEVEwnyVSp9VVT4
         ZKZqkR++z4luOr52P3KxfPxP6h51PszbYT7sHRkMbenCpBJKsUtCm+sHCZs0zzKu77v5
         Vlg7reXo279YaGNsp+3jyQEImf/OwfeZ/w+z9baYTwoLBlO+UEiM2oynmzunCuVPmT/b
         G49w==
X-Gm-Message-State: APjAAAV00Mls2f/dGVcq6gy3u6DHDHt+6K2rxqMhUcQxHXFoxevfUCDi
	Xo+LZrymijXHPpu+ShSQHzQ=
X-Received: by 2002:a62:4e96:: with SMTP id c144mr16559169pfb.45.1572653081686;
        Fri, 01 Nov 2019 17:04:41 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id c66sm8239622pfb.25.2019.11.01.17.04.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 17:04:41 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v4 7/8] staging: vc04_services: Remove int typedef
Date: Fri,  1 Nov 2019 17:04:19 -0700
Message-Id: <eab4acbea14fffc2a11b9b709e483767ea07adfd.1572652827.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572652827.git.jamal.k.shareef@gmail.com>
References: <cover.1572652827.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572652827.git.jamal.k.shareef@gmail.com>
References: <cover.1572652827.git.jamal.k.shareef@gmail.com>

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
index 311c7578f02e..b920969b4685 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -248,7 +248,7 @@ struct vchiq_slot_info {
 
 struct vchiq_service {
 	struct vchiq_service_base base;
-	VCHIQ_SERVICE_HANDLE_T handle;
+	unsigned int handle;
 	unsigned int ref_count;
 	int srvstate;
 	void (*userdata_term)(void *userdata);
@@ -520,7 +520,7 @@ extern void
 remote_event_pollall(struct vchiq_state *state);
 
 extern enum vchiq_status
-vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *offset, int size,
+vchiq_bulk_transfer(unsigned int handle, void *offset, int size,
 		    void *userdata, enum vchiq_bulk_mode mode,
 		    enum vchiq_bulk_dir dir);
 
@@ -541,7 +541,7 @@ request_poll(struct vchiq_state *state, struct vchiq_service *service,
 	     int poll_type);
 
 static inline struct vchiq_service *
-handle_to_service(VCHIQ_SERVICE_HANDLE_T handle)
+handle_to_service(unsigned int handle)
 {
 	struct vchiq_state *state = vchiq_states[(handle / VCHIQ_MAX_SERVICES) &
 		(VCHIQ_MAX_STATES - 1)];
@@ -552,18 +552,18 @@ handle_to_service(VCHIQ_SERVICE_HANDLE_T handle)
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


