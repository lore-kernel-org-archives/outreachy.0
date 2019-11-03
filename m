X-GM-THRID: 6753896393761357824
X-Received: by 2002:a92:ce11:: with SMTP id b17mr21309961ilo.119.1572755852000;
        Sat, 02 Nov 2019 21:37:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:49:: with SMTP id 70ls2153482ila.16.gmail; Sat, 02 Nov
 2019 21:37:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwrAZwhp23IGLB6g6x+bJ82p7nJSNwJyx+HdRmyCN6JyW9UuPnI8JDkii3xYSylyA2e5LWL
X-Received: by 2002:a92:c08d:: with SMTP id h13mr13019694ile.241.1572755850957;
        Sat, 02 Nov 2019 21:37:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572755850; cv=none;
        d=google.com; s=arc-20160816;
        b=Eyfn7PwindAPMo7UnBaehZWhJfoJzIqWDLs6BTu9uxo3s1lq932KAIqpc6EObZNTON
         wOk8AZH0X+8ih7X9GMrZ8YnR2xxeZo27s0fJ+HLSIr0YOQnLYHb50xt8zUUMTXdLz9cK
         nPfGTFZyhMUksE/OXt/6mNB+GbjZwaRTaJpOke92IC3k5SCtFfeoOxfiVKG59TsviPaK
         9BpVk75hC+9o2Kq9fm3nrzwkih/ThrQGIwdn2KX70ZMthVjBjCzGZej/alRMb5UTztkK
         bLUEx7teSJTczcaVS0yZ06sZ4X3dvniY7FqB2NBsRi1tz2ugeUwxuNySVFovWscxG0c9
         3djw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=GaOXTO/eANQQoGDBZhL691y5Q0nhwt0aZskVv88JIUU=;
        b=uuSAyU9wQfVpiU3phEn4zSchTl+v9SrBCX5so5zGKUczZx0eBxktbbV5aMZ1t1Sz/4
         c4dGT6YjwUcGWj4G01JxEhIAqcluRRaqVRHbfjRlet4f2j8aXlqMlPrx9aBHyzBmhrq1
         8Upeci+6K4HZ5v7hXGcAdQ6uHxKkELCSw6crCcDso8S9n2zrJQMVjWgreQ7mM+uCyzvy
         R7wiEiP6XrzOBFNsXDTbdNV0W5gSJEFpOS8RjzMeA+9d0Unxa3MSisGHc7DaGPSl/03D
         M7C0Yr8ukfHLAg7+SnKxoONHu+iImbR1xgGdpXTJXKNBq3C3SkXz+ILgfcv6nEkZHHfm
         OtCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tJrcDD9y;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id k11si814773ilg.4.2019.11.02.21.37.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 21:37:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tJrcDD9y;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id 3so9855479pfb.10
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Nov 2019 21:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=GaOXTO/eANQQoGDBZhL691y5Q0nhwt0aZskVv88JIUU=;
        b=tJrcDD9yY5v0eXndPgly0O201th9h3e6IswPJJBdffS+SwgInkgV3ErcjGbuk31wxW
         dKMqRw9JQKgiqHIR2RxsZsrbAY2T7zXsLRJ6U4C9sCQd0UyLWh9pUNwYlbSE19feWPNp
         FdaQypBUK6cJPBdaZu7mOenT43sy1IIxxOQqWoMKvgQODY7pAW1K8UUR6Dxf8aK/xt2d
         hzwMk1hC3lwvCtmaLbxzDxTHsZ/bc8MNIxGtQcdxzxFtldppC0gHciyLuA78vcB24rMy
         dNQk5bcWplj8UYBYFdREWfcOL1UeyGR2xfFMO2P7GYWebJ7YbnFk5AODK/ZgcQ1xkJBa
         +s5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=GaOXTO/eANQQoGDBZhL691y5Q0nhwt0aZskVv88JIUU=;
        b=QROByoT9906kmtCsKmbBIqQDEaBqZuBcsnYzJyWnWhARXUWnN0ERLqufR1ZPQwANSS
         Urt58uIXzLstDdK4FGjkjKD3Oqy6roKj5fnKuAoo95L3WPqN2JPFSmzO3brq2J1JN9Ia
         CTLrzlqtAv1FF+9kXPdj16YASwshMLx+jQ/XszzJZQNv8FSgks1Vis5M601kcwLwFu7z
         2z5NgyGxivo+G2dnA+MVyooZJSRftQLY7KL3flQc9jRw9w0tbegNhA/oBDl4nKG0V7Ox
         Dn3Ro2gTTd6V6p9egr9i/xlyTjES8xyIS7/B22uMNGp54YhVQI0PJurvHTLvCkFxUyEJ
         FzCw==
X-Gm-Message-State: APjAAAXHCH5qcdrqnWz+47oWZgm8KFEDAzkGosnrqI9IOty8+RXPr0JX
	qwnZxWe+7w2uzWGprOk7dMI=
X-Received: by 2002:a63:f501:: with SMTP id w1mr23921069pgh.307.1572755850150;
        Sat, 02 Nov 2019 21:37:30 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id d9sm11192781pgc.80.2019.11.02.21.37.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2019 21:37:29 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v5 08/10] staging: vc04_services: Remove int typedef
Date: Sat,  2 Nov 2019 21:37:05 -0700
Message-Id: <1ec0e2ee66d18e1ce65ab8a727521884a55594b4.1572755439.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572755439.git.jamal.k.shareef@gmail.com>
References: <cover.1572755439.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572755439.git.jamal.k.shareef@gmail.com>
References: <cover.1572755439.git.jamal.k.shareef@gmail.com>

Removes unsigned int typedef. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 40 +++++++++---------
 .../interface/vchiq_arm/vchiq_arm.h           |  4 +-
 .../interface/vchiq_arm/vchiq_core.c          | 28 ++++++-------
 .../interface/vchiq_arm/vchiq_core.h          | 12 +++---
 .../interface/vchiq_arm/vchiq_if.h            | 41 +++++++++----------
 .../interface/vchiq_arm/vchiq_shim.c          |  8 ++--
 6 files changed, 65 insertions(+), 68 deletions(-)

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
index af830dccc20c..21c56a1b9b52 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -251,7 +251,7 @@ struct vchiq_slot_info {
 
 struct vchiq_service {
 	struct vchiq_service_base base;
-	VCHIQ_SERVICE_HANDLE_T handle;
+	unsigned int handle;
 	unsigned int ref_count;
 	int srvstate;
 	vchiq_userdata_term userdata_term;
@@ -523,7 +523,7 @@ extern void
 remote_event_pollall(struct vchiq_state *state);
 
 extern enum vchiq_status
-vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *offset, int size,
+vchiq_bulk_transfer(unsigned int handle, void *offset, int size,
 		    void *userdata, enum vchiq_bulk_mode mode,
 		    enum vchiq_bulk_dir dir);
 
@@ -544,7 +544,7 @@ request_poll(struct vchiq_state *state, struct vchiq_service *service,
 	     int poll_type);
 
 static inline struct vchiq_service *
-handle_to_service(VCHIQ_SERVICE_HANDLE_T handle)
+handle_to_service(unsigned int handle)
 {
 	struct vchiq_state *state = vchiq_states[(handle / VCHIQ_MAX_SERVICES) &
 		(VCHIQ_MAX_STATES - 1)];
@@ -555,18 +555,18 @@ handle_to_service(VCHIQ_SERVICE_HANDLE_T handle)
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
index 869ca218c515..7f6b8637b42a 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -61,12 +61,9 @@ struct vchiq_element {
 	unsigned int size;
 };
 
-typedef unsigned int VCHIQ_SERVICE_HANDLE_T;
-
-
 typedef enum vchiq_status (*vchiq_callback)(enum vchiq_reason,
                                              struct vchiq_header *,
-                                             VCHIQ_SERVICE_HANDLE_T, void *);
+                                             unsigned int, void *);
 struct vchiq_service_base {
 	int fourcc;
 	vchiq_callback callback;
@@ -100,49 +97,49 @@ extern enum vchiq_status vchiq_shutdown(VCHIQ_INSTANCE_T instance);
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
 	vchiq_remote_callback callback, void *cb_arg);
 extern enum vchiq_status vchiq_remote_release(VCHIQ_INSTANCE_T instance);
 
-extern enum vchiq_status vchiq_dump_phys_mem(VCHIQ_SERVICE_HANDLE_T service,
+extern enum vchiq_status vchiq_dump_phys_mem(unsigned int service,
 	void *ptr, size_t num_bytes);
 
-extern enum vchiq_status vchiq_get_peer_version(VCHIQ_SERVICE_HANDLE_T handle,
+extern enum vchiq_status vchiq_get_peer_version(unsigned int handle,
       short *peer_version);
 
 #endif /* VCHIQ_IF_H */
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index e247ed1d3037..e14e59125f75 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -12,7 +12,7 @@
 #define vchiq_status_to_vchi(status) ((int32_t)status)
 
 struct shim_service {
-	VCHIQ_SERVICE_HANDLE_T handle;
+	unsigned int handle;
 
 	struct vchiu_queue queue;
 	vchi_callback callback;
@@ -357,7 +357,7 @@ int32_t vchi_held_msg_release(struct vchi_held_msg *message)
 {
 	/*
 	 * Convert the service field pointer back to an
-	 * VCHIQ_SERVICE_HANDLE_T which is an int.
+	 * unsigned int which is an int.
 	 * This pointer is opaque to everything except
 	 * vchi_msg_hold which simply upcasted the int
 	 * to a pointer.
@@ -407,7 +407,7 @@ int32_t vchi_msg_hold(struct vchi_service_handle *handle, void **data,
 	*msg_size = header->size;
 
 	/*
-	 * upcast the VCHIQ_SERVICE_HANDLE_T which is an int
+	 * upcast the unsigned int which is an int
 	 * to a pointer and stuff it in the held message.
 	 * This pointer is opaque to everything except
 	 * vchi_held_msg_release which simply downcasts it back
@@ -502,7 +502,7 @@ EXPORT_SYMBOL(vchi_disconnect);
 
 static enum vchiq_status shim_callback(enum vchiq_reason reason,
 				    struct vchiq_header *header,
-				    VCHIQ_SERVICE_HANDLE_T handle,
+				    unsigned int handle,
 				    void *bulk_user)
 {
 	struct shim_service *service =
-- 
2.17.1


