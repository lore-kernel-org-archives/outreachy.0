X-GM-THRID: 6755960127598100480
X-Received: by 2002:a6b:5a05:: with SMTP id o5mr1315827iob.209.1572994551953;
        Tue, 05 Nov 2019 14:55:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:b7c5:: with SMTP id h188ls13664iof.9.gmail; Tue, 05 Nov
 2019 14:55:50 -0800 (PST)
X-Google-Smtp-Source: APXvYqxHuCkLuIIoAPXFGRw8Jbsea11Jvw0Lp+JP4Q+v4hVqbicE9Z051KQs6oAKTB1384bcCPd9
X-Received: by 2002:a5d:8591:: with SMTP id f17mr24660894ioj.198.1572994550491;
        Tue, 05 Nov 2019 14:55:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572994550; cv=none;
        d=google.com; s=arc-20160816;
        b=nqEDelcHTs+ik23z4hxtm4F+jcmrnF75Yv0donskPfFRVu024zvSRyIZhXxGjtXqvO
         XSxF3eA8h7szWN8s6X5y2R+A9r61fTIhlC5RcRGPmlJKAvQRk3fHEghey68WGbJ+Xoz+
         EYDa1HgijJYxQ2ZZu6GwdXDW2mk7KtqEpaPM23/Yn7wuRN/7LThxgPfOY6OYfTQqShtM
         7EHhxLLt6adD9vzifJKHHz1/WgbYFgTYpK6fRe9fLwPO0QxXUzyC3AHUmS/kulCfb3SJ
         qQzGYVXwF3oQGLBJThGJHVoSkpO9BdYJsaTuo6O5bD3442dMCDcZLGm4dd0iqF/wR0Uh
         71XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=n2xvvY2krSKNpr1Z81jBq1BeZJv6989mD0jw1Ttyixc=;
        b=Feaa1PS1fcNi0Q7Bu/jHOlOeqheYhJUVEnb+K6jYJzjULGgNmb1dS7m7MoYFEQ2Dd1
         YkjmBsTstKm++7SbqmtQWXNU2ns0aQ/S2+WzvjgKVVnEWrdb8TvAxP1q4RWrSDM1LlV1
         U048b8Va4NIskxw5q1A/amDXJqRXec9f7c+Sqfn97faY+kYRbul7T3zP7TT72bo854xX
         cV1h7SMunJ7H/8BulEly19vNtIKMGGxheo9KduBWxPWX23KBz7dh79Ap7ccxhJM7Cnn8
         Pl4Suu00g0hIC1BIKv+gCybQy8dWMwQ3hguW9KivzIUHl+mgU+PDrn0GDberkn7IMk9v
         9t+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QcBcGHHZ;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id a17si213800iok.0.2019.11.05.14.55.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 14:55:50 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QcBcGHHZ;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id l24so15643744pgh.10
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 14:55:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=n2xvvY2krSKNpr1Z81jBq1BeZJv6989mD0jw1Ttyixc=;
        b=QcBcGHHZCkU87qBRb9V2KCg/uwYDLgPsycNqItooygAB+J0Fu50Y8Lhi5AVzF2amLN
         hcCZjlHk8/xGOGbsD2SuRGIj6LQlOXppbLlVv3r4kowEQCE5YEHVHEgPZghXPU2rS+y2
         iJuma/+t+9z5Be2hGXYR4jy8QJfEEb2bLuGqGEgn5nIlBwpx8qVQ0oZYCdhpUQvhT7vA
         Yp5hOtdsu+574c5KmAGS51GUFuQjgdlV2hd8+ZsnmXOaV17ohDqOz/dvLFw5sCaDyZvc
         9T9aHa0ZxYoQxpKGa8WLIVWlGJTa3UlYJBNNjFsr4TJy7Ds0Rbt/gQm3XYSfko7b25jy
         DVAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=n2xvvY2krSKNpr1Z81jBq1BeZJv6989mD0jw1Ttyixc=;
        b=LnHcXkRdN90PimjE7yA9CtkSGJYfa4F8cqsb0ggm8Ojj6AaLZmCk7POUYH8Qo8RgGT
         RGycoz2ZZbNgpCuvFdv5GKppTPy2eWtWkY/oMmB7qwWIwJXQcgR5/dClGRDXYNpRv30f
         sVtTQjZgoRGB1mz8ePU0f79S5K5HXym6+636P12UrpNUFyW7Q6RXRVyExkc+iEer+eP9
         oSIBqKZcTAYcHd4RfKyOZupwtNwB8X5lDK01y7NI8urvu0TeElU1a/b+xy16VM3h1bKF
         C/S0vWkI8vhFezkw8ENe9yXDMx1xONnZNFlO247AjjIs+QVcHR1yvrbgoOurTK40mRjo
         FTTg==
X-Gm-Message-State: APjAAAVNorXEAS6Z+H5nl+wMipLiRiA8ClTVgkV3F0u9ohdMV3rl34W2
	cPdbdPnJcuEU4U1xYCTqwLQ=
X-Received: by 2002:a63:e853:: with SMTP id a19mr38940763pgk.192.1572994549405;
        Tue, 05 Nov 2019 14:55:49 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id e11sm11684019pff.104.2019.11.05.14.55.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 14:55:49 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 04/14] staging: vc04_services: Replace VCHIQ_STATUS_T enum typedef with enum vchiq_status
Date: Tue,  5 Nov 2019 14:55:21 -0800
Message-Id: <7509cfa679c6d383ad979282f3d33b227d4d7f87.1572994235.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>

Replaces VCHIQ_STATUS_T enum typedef with enum vchiq_status to match kernel code style. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../interface/vchiq_arm/vchiq_2835_arm.c      | 10 +--
 .../interface/vchiq_arm/vchiq_arm.c           | 80 +++++++++----------
 .../interface/vchiq_arm/vchiq_arm.h           | 18 ++---
 .../interface/vchiq_arm/vchiq_core.c          | 66 +++++++--------
 .../interface/vchiq_arm/vchiq_core.h          | 28 +++----
 .../interface/vchiq_arm/vchiq_if.h            | 44 +++++-----
 .../interface/vchiq_arm/vchiq_shim.c          | 20 ++---
 7 files changed, 133 insertions(+), 133 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index b86d7e436357..e568e9e6eb95 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -168,10 +168,10 @@ int vchiq_platform_init(struct platform_device *pdev, struct vchiq_state *state)
 	return 0;
 }
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_platform_init_state(struct vchiq_state *state)
 {
-	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
+	enum vchiq_status status = VCHIQ_SUCCESS;
 	struct vchiq_2835_state *platform_state;
 
 	state->platform_state = kzalloc(sizeof(*platform_state), GFP_KERNEL);
@@ -214,7 +214,7 @@ remote_event_signal(struct remote_event *event)
 		writel(0, g_regs + BELL2); /* trigger vc interrupt */
 }
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_prepare_bulk_data(struct vchiq_bulk *bulk, void *offset, int size,
 			int dir)
 {
@@ -258,13 +258,13 @@ vchiq_dump_platform_state(void *dump_context)
 	vchiq_dump(dump_context, buf, len + 1);
 }
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_platform_suspend(struct vchiq_state *state)
 {
 	return VCHIQ_ERROR;
 }
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_platform_resume(struct vchiq_state *state)
 {
 	return VCHIQ_SUCCESS;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index dc54f443ef3d..edc77280585e 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -172,14 +172,14 @@ static const char *const ioctl_names[] = {
 vchiq_static_assert(ARRAY_SIZE(ioctl_names) ==
 		    (VCHIQ_IOC_MAX + 1));
 
-static VCHIQ_STATUS_T
+static enum vchiq_status
 vchiq_blocking_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *data,
 	unsigned int size, VCHIQ_BULK_DIR_T dir);
 
 #define VCHIQ_INIT_RETRIES 10
-VCHIQ_STATUS_T vchiq_initialise(VCHIQ_INSTANCE_T *instance_out)
+enum vchiq_status vchiq_initialise(VCHIQ_INSTANCE_T *instance_out)
 {
-	VCHIQ_STATUS_T status = VCHIQ_ERROR;
+	enum vchiq_status status = VCHIQ_ERROR;
 	struct vchiq_state *state;
 	VCHIQ_INSTANCE_T instance = NULL;
 	int i;
@@ -230,9 +230,9 @@ VCHIQ_STATUS_T vchiq_initialise(VCHIQ_INSTANCE_T *instance_out)
 }
 EXPORT_SYMBOL(vchiq_initialise);
 
-VCHIQ_STATUS_T vchiq_shutdown(VCHIQ_INSTANCE_T instance)
+enum vchiq_status vchiq_shutdown(VCHIQ_INSTANCE_T instance)
 {
-	VCHIQ_STATUS_T status;
+	enum vchiq_status status;
 	struct vchiq_state *state = instance->state;
 
 	vchiq_log_trace(vchiq_core_log_level,
@@ -272,9 +272,9 @@ static int vchiq_is_connected(VCHIQ_INSTANCE_T instance)
 	return instance->connected;
 }
 
-VCHIQ_STATUS_T vchiq_connect(VCHIQ_INSTANCE_T instance)
+enum vchiq_status vchiq_connect(VCHIQ_INSTANCE_T instance)
 {
-	VCHIQ_STATUS_T status;
+	enum vchiq_status status;
 	struct vchiq_state *state = instance->state;
 
 	vchiq_log_trace(vchiq_core_log_level,
@@ -301,12 +301,12 @@ VCHIQ_STATUS_T vchiq_connect(VCHIQ_INSTANCE_T instance)
 }
 EXPORT_SYMBOL(vchiq_connect);
 
-VCHIQ_STATUS_T vchiq_add_service(
+enum vchiq_status vchiq_add_service(
 	VCHIQ_INSTANCE_T              instance,
 	const struct vchiq_service_params *params,
 	VCHIQ_SERVICE_HANDLE_T       *phandle)
 {
-	VCHIQ_STATUS_T status;
+	enum vchiq_status status;
 	struct vchiq_state *state = instance->state;
 	struct vchiq_service *service = NULL;
 	int srvstate;
@@ -340,12 +340,12 @@ VCHIQ_STATUS_T vchiq_add_service(
 }
 EXPORT_SYMBOL(vchiq_add_service);
 
-VCHIQ_STATUS_T vchiq_open_service(
+enum vchiq_status vchiq_open_service(
 	VCHIQ_INSTANCE_T              instance,
 	const struct vchiq_service_params *params,
 	VCHIQ_SERVICE_HANDLE_T       *phandle)
 {
-	VCHIQ_STATUS_T   status = VCHIQ_ERROR;
+	enum vchiq_status   status = VCHIQ_ERROR;
 	struct vchiq_state   *state = instance->state;
 	struct vchiq_service *service = NULL;
 
@@ -380,11 +380,11 @@ VCHIQ_STATUS_T vchiq_open_service(
 }
 EXPORT_SYMBOL(vchiq_open_service);
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_bulk_transmit(VCHIQ_SERVICE_HANDLE_T handle, const void *data,
 	unsigned int size, void *userdata, VCHIQ_BULK_MODE_T mode)
 {
-	VCHIQ_STATUS_T status;
+	enum vchiq_status status;
 
 	switch (mode) {
 	case VCHIQ_BULK_MODE_NOCALLBACK:
@@ -405,11 +405,11 @@ vchiq_bulk_transmit(VCHIQ_SERVICE_HANDLE_T handle, const void *data,
 }
 EXPORT_SYMBOL(vchiq_bulk_transmit);
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_bulk_receive(VCHIQ_SERVICE_HANDLE_T handle, void *data,
 	unsigned int size, void *userdata, VCHIQ_BULK_MODE_T mode)
 {
-	VCHIQ_STATUS_T status;
+	enum vchiq_status status;
 
 	switch (mode) {
 	case VCHIQ_BULK_MODE_NOCALLBACK:
@@ -429,13 +429,13 @@ vchiq_bulk_receive(VCHIQ_SERVICE_HANDLE_T handle, void *data,
 }
 EXPORT_SYMBOL(vchiq_bulk_receive);
 
-static VCHIQ_STATUS_T
+static enum vchiq_status
 vchiq_blocking_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *data,
 	unsigned int size, VCHIQ_BULK_DIR_T dir)
 {
 	VCHIQ_INSTANCE_T instance;
 	struct vchiq_service *service;
-	VCHIQ_STATUS_T status;
+	enum vchiq_status status;
 	struct bulk_waiter_node *waiter = NULL;
 
 	service = find_service_by_handle(handle);
@@ -515,7 +515,7 @@ vchiq_blocking_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *data,
 *
 ***************************************************************************/
 
-static VCHIQ_STATUS_T
+static enum vchiq_status
 add_completion(VCHIQ_INSTANCE_T instance, enum vchiq_reason reason,
 	       struct vchiq_header *header, struct user_service *user_service,
 	       void *bulk_userdata)
@@ -582,7 +582,7 @@ add_completion(VCHIQ_INSTANCE_T instance, enum vchiq_reason reason,
 *
 ***************************************************************************/
 
-static VCHIQ_STATUS_T
+static enum vchiq_status
 service_callback(enum vchiq_reason reason, struct vchiq_header *header,
 		 VCHIQ_SERVICE_HANDLE_T handle, void *bulk_userdata)
 {
@@ -630,7 +630,7 @@ service_callback(enum vchiq_reason reason, struct vchiq_header *header,
 			*/
 			if ((user_service->message_available_pos -
 				instance->completion_remove) < 0) {
-				VCHIQ_STATUS_T status;
+				enum vchiq_status status;
 
 				vchiq_log_info(vchiq_arm_log_level,
 					"Inserting extra MESSAGE_AVAILABLE");
@@ -772,7 +772,7 @@ static ssize_t vchiq_ioc_copy_element_data(void *context, void *dest,
  *   vchiq_ioc_queue_message
  *
  **************************************************************************/
-static VCHIQ_STATUS_T
+static enum vchiq_status
 vchiq_ioc_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
 			struct vchiq_element *elements,
 			unsigned long count)
@@ -805,7 +805,7 @@ static long
 vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 {
 	VCHIQ_INSTANCE_T instance = file->private_data;
-	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
+	enum vchiq_status status = VCHIQ_SUCCESS;
 	struct vchiq_service *service = NULL;
 	long ret = 0;
 	int i, rc;
@@ -2270,7 +2270,7 @@ vchiq_videocore_wanted(struct vchiq_state *state)
 		return 1;
 }
 
-static VCHIQ_STATUS_T
+static enum vchiq_status
 vchiq_keepalive_vchiq_callback(enum vchiq_reason reason,
 	struct vchiq_header *header,
 	VCHIQ_SERVICE_HANDLE_T service_user,
@@ -2287,7 +2287,7 @@ vchiq_keepalive_thread_func(void *v)
 	struct vchiq_state *state = (struct vchiq_state *)v;
 	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
 
-	VCHIQ_STATUS_T status;
+	enum vchiq_status status;
 	VCHIQ_INSTANCE_T instance;
 	VCHIQ_SERVICE_HANDLE_T ka_handle;
 
@@ -2361,7 +2361,7 @@ vchiq_keepalive_thread_func(void *v)
 	return 0;
 }
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_arm_init_state(struct vchiq_state *state,
 		     struct vchiq_arm_state *arm_state)
 {
@@ -2563,10 +2563,10 @@ unblock_resume(struct vchiq_arm_state *arm_state)
 
 /* Initiate suspend via slot handler. Should be called with the write lock
  * held */
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_arm_vcsuspend(struct vchiq_state *state)
 {
-	VCHIQ_STATUS_T status = VCHIQ_ERROR;
+	enum vchiq_status status = VCHIQ_ERROR;
 	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
 
 	if (!arm_state)
@@ -2684,12 +2684,12 @@ vchiq_check_resume(struct vchiq_state *state)
 	return resume;
 }
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 		   enum USE_TYPE_E use_type)
 {
 	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
-	VCHIQ_STATUS_T ret = VCHIQ_SUCCESS;
+	enum vchiq_status ret = VCHIQ_SUCCESS;
 	char entity[16];
 	int *entity_uc;
 	int local_uc, local_entity_uc;
@@ -2798,7 +2798,7 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 	}
 
 	if (ret == VCHIQ_SUCCESS) {
-		VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
+		enum vchiq_status status = VCHIQ_SUCCESS;
 		long ack_cnt = atomic_xchg(&arm_state->ka_use_ack_count, 0);
 
 		while (ack_cnt && (status == VCHIQ_SUCCESS)) {
@@ -2817,11 +2817,11 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 	return ret;
 }
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_release_internal(struct vchiq_state *state, struct vchiq_service *service)
 {
 	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
-	VCHIQ_STATUS_T ret = VCHIQ_SUCCESS;
+	enum vchiq_status ret = VCHIQ_SUCCESS;
 	char entity[16];
 	int *entity_uc;
 
@@ -2898,13 +2898,13 @@ vchiq_on_remote_release(struct vchiq_state *state)
 	complete(&arm_state->ka_evt);
 }
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_use_service_internal(struct vchiq_service *service)
 {
 	return vchiq_use_internal(service->state, service, USE_TYPE_SERVICE);
 }
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_release_service_internal(struct vchiq_service *service)
 {
 	return vchiq_release_internal(service->state, service);
@@ -2969,10 +2969,10 @@ static void suspend_timer_callback(struct timer_list *t)
 	vchiq_check_suspend(state);
 }
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_use_service(VCHIQ_SERVICE_HANDLE_T handle)
 {
-	VCHIQ_STATUS_T ret = VCHIQ_ERROR;
+	enum vchiq_status ret = VCHIQ_ERROR;
 	struct vchiq_service *service = find_service_by_handle(handle);
 
 	if (service) {
@@ -2983,10 +2983,10 @@ vchiq_use_service(VCHIQ_SERVICE_HANDLE_T handle)
 	return ret;
 }
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_release_service(VCHIQ_SERVICE_HANDLE_T handle)
 {
-	VCHIQ_STATUS_T ret = VCHIQ_ERROR;
+	enum vchiq_status ret = VCHIQ_ERROR;
 	struct vchiq_service *service = find_service_by_handle(handle);
 
 	if (service) {
@@ -3088,11 +3088,11 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 	vchiq_dump_platform_use_state(state);
 }
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_check_service(struct vchiq_service *service)
 {
 	struct vchiq_arm_state *arm_state;
-	VCHIQ_STATUS_T ret = VCHIQ_ERROR;
+	enum vchiq_status ret = VCHIQ_ERROR;
 
 	if (!service || !service->state)
 		goto out;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index b424323e9613..ebab08b567fa 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -109,13 +109,13 @@ int vchiq_platform_init(struct platform_device *pdev,
 extern struct vchiq_state *
 vchiq_get_state(void);
 
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_arm_vcsuspend(struct vchiq_state *state);
 
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_arm_vcresume(struct vchiq_state *state);
 
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_arm_init_state(struct vchiq_state *state,
 		     struct vchiq_arm_state *arm_state);
 
@@ -124,16 +124,16 @@ vchiq_check_resume(struct vchiq_state *state);
 
 extern void
 vchiq_check_suspend(struct vchiq_state *state);
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_use_service(VCHIQ_SERVICE_HANDLE_T handle);
 
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_release_service(VCHIQ_SERVICE_HANDLE_T handle);
 
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_check_service(struct vchiq_service *service);
 
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_platform_suspend(struct vchiq_state *state);
 
 extern int
@@ -154,10 +154,10 @@ vchiq_platform_get_arm_state(struct vchiq_state *state);
 extern int
 vchiq_videocore_wanted(struct vchiq_state *state);
 
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 		   enum USE_TYPE_E use_type);
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_release_internal(struct vchiq_state *state,
 		       struct vchiq_service *service);
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index e1898cfa5e91..55caf0f1ae98 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -354,11 +354,11 @@ mark_service_closing(struct vchiq_service *service)
 	mark_service_closing_internal(service, 0);
 }
 
-static inline VCHIQ_STATUS_T
+static inline enum vchiq_status
 make_service_callback(struct vchiq_service *service, enum vchiq_reason reason,
 		      struct vchiq_header *header, void *bulk_userdata)
 {
-	VCHIQ_STATUS_T status;
+	enum vchiq_status status;
 
 	vchiq_log_trace(vchiq_core_log_level, "%d: callback:%d (%s, %pK, %pK)",
 		service->state->id, service->localport, reason_names[reason],
@@ -779,7 +779,7 @@ copy_message_data(
 }
 
 /* Called by the slot handler and application threads */
-static VCHIQ_STATUS_T
+static enum vchiq_status
 queue_message(struct vchiq_state *state, struct vchiq_service *service,
 	      int msgid,
 	      ssize_t (*copy_callback)(void *context, void *dest,
@@ -1027,7 +1027,7 @@ queue_message(struct vchiq_state *state, struct vchiq_service *service,
 }
 
 /* Called by the slot handler and application threads */
-static VCHIQ_STATUS_T
+static enum vchiq_status
 queue_message_sync(struct vchiq_state *state, struct vchiq_service *service,
 		   int msgid,
 		   ssize_t (*copy_callback)(void *context, void *dest,
@@ -1178,11 +1178,11 @@ release_slot(struct vchiq_state *state, struct vchiq_slot_info *slot_info,
 }
 
 /* Called by the slot handler - don't hold the bulk mutex */
-static VCHIQ_STATUS_T
+static enum vchiq_status
 notify_bulks(struct vchiq_service *service, struct vchiq_bulk_queue *queue,
 	     int retry_poll)
 {
-	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
+	enum vchiq_status status = VCHIQ_SUCCESS;
 
 	vchiq_log_trace(vchiq_core_log_level,
 		"%d: nb:%d %cx - p=%x rn=%x r=%x",
@@ -2123,12 +2123,12 @@ vchiq_init_slots(void *mem_base, int mem_size)
 	return slot_zero;
 }
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_init_state(struct vchiq_state *state, struct vchiq_slot_zero *slot_zero)
 {
 	struct vchiq_shared_state *local;
 	struct vchiq_shared_state *remote;
-	VCHIQ_STATUS_T status;
+	enum vchiq_status status;
 	char threadname[16];
 	int i;
 
@@ -2409,7 +2409,7 @@ vchiq_add_service_internal(struct vchiq_state *state,
 	return service;
 }
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_open_service_internal(struct vchiq_service *service, int client_id)
 {
 	struct vchiq_open_payload payload = {
@@ -2418,7 +2418,7 @@ vchiq_open_service_internal(struct vchiq_service *service, int client_id)
 		service->version,
 		service->version_min
 	};
-	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
+	enum vchiq_status status = VCHIQ_SUCCESS;
 
 	service->client_id = client_id;
 	vchiq_use_service_internal(service);
@@ -2516,7 +2516,7 @@ release_service_messages(struct vchiq_service *service)
 static int
 do_abort_bulks(struct vchiq_service *service)
 {
-	VCHIQ_STATUS_T status;
+	enum vchiq_status status;
 
 	/* Abort any outstanding bulk transfers */
 	if (mutex_lock_killable(&service->bulk_mutex))
@@ -2532,10 +2532,10 @@ do_abort_bulks(struct vchiq_service *service)
 	return (status == VCHIQ_SUCCESS);
 }
 
-static VCHIQ_STATUS_T
+static enum vchiq_status
 close_service_complete(struct vchiq_service *service, int failstate)
 {
-	VCHIQ_STATUS_T status;
+	enum vchiq_status status;
 	int is_server = (service->public_fourcc != VCHIQ_FOURCC_INVALID);
 	int newstate;
 
@@ -2594,11 +2594,11 @@ close_service_complete(struct vchiq_service *service, int failstate)
 }
 
 /* Called by the slot handler */
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_close_service_internal(struct vchiq_service *service, int close_recvd)
 {
 	struct vchiq_state *state = service->state;
-	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
+	enum vchiq_status status = VCHIQ_SUCCESS;
 	int is_server = (service->public_fourcc != VCHIQ_FOURCC_INVALID);
 
 	vchiq_log_info(vchiq_core_log_level, "%d: csi:%d,%d (%s)",
@@ -2774,7 +2774,7 @@ vchiq_free_service_internal(struct vchiq_service *service)
 	unlock_service(service);
 }
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_connect_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance)
 {
 	struct vchiq_service *service;
@@ -2810,7 +2810,7 @@ vchiq_connect_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance)
 	return VCHIQ_SUCCESS;
 }
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_shutdown_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance)
 {
 	struct vchiq_service *service;
@@ -2827,12 +2827,12 @@ vchiq_shutdown_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance)
 	return VCHIQ_SUCCESS;
 }
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_close_service(VCHIQ_SERVICE_HANDLE_T handle)
 {
 	/* Unregister the service */
 	struct vchiq_service *service = find_service_by_handle(handle);
-	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
+	enum vchiq_status status = VCHIQ_SUCCESS;
 
 	if (!service)
 		return VCHIQ_ERROR;
@@ -2886,12 +2886,12 @@ vchiq_close_service(VCHIQ_SERVICE_HANDLE_T handle)
 	return status;
 }
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_remove_service(VCHIQ_SERVICE_HANDLE_T handle)
 {
 	/* Unregister the service */
 	struct vchiq_service *service = find_service_by_handle(handle);
-	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
+	enum vchiq_status status = VCHIQ_SUCCESS;
 
 	if (!service)
 		return VCHIQ_ERROR;
@@ -2952,7 +2952,7 @@ vchiq_remove_service(VCHIQ_SERVICE_HANDLE_T handle)
  * When called in blocking mode, the userdata field points to a bulk_waiter
  * structure.
  */
-VCHIQ_STATUS_T vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
+enum vchiq_status vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
 				   void *offset, int size, void *userdata,
 				   VCHIQ_BULK_MODE_T mode,
 				   VCHIQ_BULK_DIR_T dir)
@@ -2965,7 +2965,7 @@ VCHIQ_STATUS_T vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
 	const char dir_char = (dir == VCHIQ_BULK_TRANSMIT) ? 't' : 'r';
 	const int dir_msgtype = (dir == VCHIQ_BULK_TRANSMIT) ?
 		VCHIQ_MSG_BULK_TX : VCHIQ_MSG_BULK_RX;
-	VCHIQ_STATUS_T status = VCHIQ_ERROR;
+	enum vchiq_status status = VCHIQ_ERROR;
 	int payload[2];
 
 	if (!service || service->srvstate != VCHIQ_SRVSTATE_OPEN ||
@@ -3100,7 +3100,7 @@ VCHIQ_STATUS_T vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
 	return status;
 }
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
 		    ssize_t (*copy_callback)(void *context, void *dest,
 					     size_t offset, size_t maxsize),
@@ -3108,7 +3108,7 @@ vchiq_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
 		    size_t size)
 {
 	struct vchiq_service *service = find_service_by_handle(handle);
-	VCHIQ_STATUS_T status = VCHIQ_ERROR;
+	enum vchiq_status status = VCHIQ_ERROR;
 
 	if (!service ||
 		(vchiq_check_service(service) != VCHIQ_SUCCESS))
@@ -3192,10 +3192,10 @@ release_message_sync(struct vchiq_state *state, struct vchiq_header *header)
 	remote_event_signal(&state->remote->sync_release);
 }
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_get_peer_version(VCHIQ_SERVICE_HANDLE_T handle, short *peer_version)
 {
-	VCHIQ_STATUS_T status = VCHIQ_ERROR;
+	enum vchiq_status status = VCHIQ_ERROR;
 	struct vchiq_service *service = find_service_by_handle(handle);
 
 	if (!service ||
@@ -3221,12 +3221,12 @@ void vchiq_get_config(struct vchiq_config *config)
 	config->version_min            = VCHIQ_VERSION_MIN;
 }
 
-VCHIQ_STATUS_T
+enum vchiq_status
 vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T handle,
 	VCHIQ_SERVICE_OPTION_T option, int value)
 {
 	struct vchiq_service *service = find_service_by_handle(handle);
-	VCHIQ_STATUS_T status = VCHIQ_ERROR;
+	enum vchiq_status status = VCHIQ_ERROR;
 
 	if (service) {
 		switch (option) {
@@ -3524,9 +3524,9 @@ vchiq_loud_error_footer(void)
 		"================");
 }
 
-VCHIQ_STATUS_T vchiq_send_remote_use(struct vchiq_state *state)
+enum vchiq_status vchiq_send_remote_use(struct vchiq_state *state)
 {
-	VCHIQ_STATUS_T status = VCHIQ_RETRY;
+	enum vchiq_status status = VCHIQ_RETRY;
 
 	if (state->conn_state != VCHIQ_CONNSTATE_DISCONNECTED)
 		status = queue_message(state, NULL,
@@ -3535,9 +3535,9 @@ VCHIQ_STATUS_T vchiq_send_remote_use(struct vchiq_state *state)
 	return status;
 }
 
-VCHIQ_STATUS_T vchiq_send_remote_use_active(struct vchiq_state *state)
+enum vchiq_status vchiq_send_remote_use_active(struct vchiq_state *state)
 {
-	VCHIQ_STATUS_T status = VCHIQ_RETRY;
+	enum vchiq_status status = VCHIQ_RETRY;
 
 	if (state->conn_state != VCHIQ_CONNSTATE_DISCONNECTED)
 		status = queue_message(state, NULL,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 75104986201b..bfee311e6410 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -491,10 +491,10 @@ get_conn_state_name(VCHIQ_CONNSTATE_T conn_state);
 extern struct vchiq_slot_zero *
 vchiq_init_slots(void *mem_base, int mem_size);
 
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_init_state(struct vchiq_state *state, struct vchiq_slot_zero *slot_zero);
 
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_connect_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance);
 
 extern struct vchiq_service *
@@ -503,10 +503,10 @@ vchiq_add_service_internal(struct vchiq_state *state,
 			   int srvstate, VCHIQ_INSTANCE_T instance,
 			   VCHIQ_USERDATA_TERM_T userdata_term);
 
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_open_service_internal(struct vchiq_service *service, int client_id);
 
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_close_service_internal(struct vchiq_service *service, int close_recvd);
 
 extern void
@@ -515,13 +515,13 @@ vchiq_terminate_service_internal(struct vchiq_service *service);
 extern void
 vchiq_free_service_internal(struct vchiq_service *service);
 
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_shutdown_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance);
 
 extern void
 remote_event_pollall(struct vchiq_state *state);
 
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *offset, int size,
 		    void *userdata, VCHIQ_BULK_MODE_T mode,
 		    VCHIQ_BULK_DIR_T dir);
@@ -580,7 +580,7 @@ unlock_service(struct vchiq_service *service);
 /* The following functions are called from vchiq_core, and external
 ** implementations must be provided. */
 
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_prepare_bulk_data(struct vchiq_bulk *bulk, void *offset, int size,
 			int dir);
 
@@ -596,7 +596,7 @@ vchiq_platform_check_suspend(struct vchiq_state *state);
 extern void
 vchiq_platform_paused(struct vchiq_state *state);
 
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_platform_resume(struct vchiq_state *state);
 
 extern void
@@ -615,10 +615,10 @@ extern void
 vchiq_dump_platform_service_state(void *dump_context,
 	struct vchiq_service *service);
 
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_use_service_internal(struct vchiq_service *service);
 
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_release_service_internal(struct vchiq_service *service);
 
 extern void
@@ -627,19 +627,19 @@ vchiq_on_remote_use(struct vchiq_state *state);
 extern void
 vchiq_on_remote_release(struct vchiq_state *state);
 
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_platform_init_state(struct vchiq_state *state);
 
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_check_service(struct vchiq_service *service);
 
 extern void
 vchiq_on_remote_use_active(struct vchiq_state *state);
 
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_send_remote_use(struct vchiq_state *state);
 
-extern VCHIQ_STATUS_T
+extern enum vchiq_status
 vchiq_send_remote_use_active(struct vchiq_state *state);
 
 extern void
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index f911612a6a54..89646d281898 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -25,11 +25,11 @@ enum vchiq_reason {
 	VCHIQ_BULK_RECEIVE_ABORTED    /* service, -, bulk_userdata */
 };
 
-typedef enum {
+enum vchiq_status {
 	VCHIQ_ERROR   = -1,
 	VCHIQ_SUCCESS = 0,
 	VCHIQ_RETRY   = 1
-} VCHIQ_STATUS_T;
+};
 
 typedef enum {
 	VCHIQ_BULK_MODE_CALLBACK,
@@ -63,7 +63,7 @@ struct vchiq_element {
 
 typedef unsigned int VCHIQ_SERVICE_HANDLE_T;
 
-typedef VCHIQ_STATUS_T (*VCHIQ_CALLBACK_T)(enum vchiq_reason,
+typedef enum vchiq_status (*VCHIQ_CALLBACK_T)(enum vchiq_reason,
 					   struct vchiq_header *,
 					   VCHIQ_SERVICE_HANDLE_T, void *);
 
@@ -95,20 +95,20 @@ struct vchiq_config {
 typedef struct vchiq_instance_struct *VCHIQ_INSTANCE_T;
 typedef void (*VCHIQ_REMOTE_USE_CALLBACK_T)(void *cb_arg);
 
-extern VCHIQ_STATUS_T vchiq_initialise(VCHIQ_INSTANCE_T *pinstance);
-extern VCHIQ_STATUS_T vchiq_shutdown(VCHIQ_INSTANCE_T instance);
-extern VCHIQ_STATUS_T vchiq_connect(VCHIQ_INSTANCE_T instance);
-extern VCHIQ_STATUS_T vchiq_add_service(VCHIQ_INSTANCE_T instance,
+extern enum vchiq_status vchiq_initialise(VCHIQ_INSTANCE_T *pinstance);
+extern enum vchiq_status vchiq_shutdown(VCHIQ_INSTANCE_T instance);
+extern enum vchiq_status vchiq_connect(VCHIQ_INSTANCE_T instance);
+extern enum vchiq_status vchiq_add_service(VCHIQ_INSTANCE_T instance,
 	const struct vchiq_service_params *params,
 	VCHIQ_SERVICE_HANDLE_T *pservice);
-extern VCHIQ_STATUS_T vchiq_open_service(VCHIQ_INSTANCE_T instance,
+extern enum vchiq_status vchiq_open_service(VCHIQ_INSTANCE_T instance,
 	const struct vchiq_service_params *params,
 	VCHIQ_SERVICE_HANDLE_T *pservice);
-extern VCHIQ_STATUS_T vchiq_close_service(VCHIQ_SERVICE_HANDLE_T service);
-extern VCHIQ_STATUS_T vchiq_remove_service(VCHIQ_SERVICE_HANDLE_T service);
-extern VCHIQ_STATUS_T vchiq_use_service(VCHIQ_SERVICE_HANDLE_T service);
-extern VCHIQ_STATUS_T vchiq_release_service(VCHIQ_SERVICE_HANDLE_T service);
-extern VCHIQ_STATUS_T
+extern enum vchiq_status vchiq_close_service(VCHIQ_SERVICE_HANDLE_T service);
+extern enum vchiq_status vchiq_remove_service(VCHIQ_SERVICE_HANDLE_T service);
+extern enum vchiq_status vchiq_use_service(VCHIQ_SERVICE_HANDLE_T service);
+extern enum vchiq_status vchiq_release_service(VCHIQ_SERVICE_HANDLE_T service);
+extern enum vchiq_status
 vchiq_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
 		    ssize_t (*copy_callback)(void *context, void *dest,
 					     size_t offset, size_t maxsize),
@@ -116,33 +116,33 @@ vchiq_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
 		    size_t size);
 extern void           vchiq_release_message(VCHIQ_SERVICE_HANDLE_T service,
 	struct vchiq_header *header);
-extern VCHIQ_STATUS_T vchiq_bulk_transmit(VCHIQ_SERVICE_HANDLE_T service,
+extern enum vchiq_status vchiq_bulk_transmit(VCHIQ_SERVICE_HANDLE_T service,
 	const void *data, unsigned int size, void *userdata,
 	VCHIQ_BULK_MODE_T mode);
-extern VCHIQ_STATUS_T vchiq_bulk_receive(VCHIQ_SERVICE_HANDLE_T service,
+extern enum vchiq_status vchiq_bulk_receive(VCHIQ_SERVICE_HANDLE_T service,
 	void *data, unsigned int size, void *userdata,
 	VCHIQ_BULK_MODE_T mode);
-extern VCHIQ_STATUS_T vchiq_bulk_transmit_handle(VCHIQ_SERVICE_HANDLE_T service,
+extern enum vchiq_status vchiq_bulk_transmit_handle(VCHIQ_SERVICE_HANDLE_T service,
 	const void *offset, unsigned int size,
 	void *userdata,	VCHIQ_BULK_MODE_T mode);
-extern VCHIQ_STATUS_T vchiq_bulk_receive_handle(VCHIQ_SERVICE_HANDLE_T service,
+extern enum vchiq_status vchiq_bulk_receive_handle(VCHIQ_SERVICE_HANDLE_T service,
 	void *offset, unsigned int size, void *userdata,
 	VCHIQ_BULK_MODE_T mode);
 extern int   vchiq_get_client_id(VCHIQ_SERVICE_HANDLE_T service);
 extern void *vchiq_get_service_userdata(VCHIQ_SERVICE_HANDLE_T service);
 extern int   vchiq_get_service_fourcc(VCHIQ_SERVICE_HANDLE_T service);
 extern void vchiq_get_config(struct vchiq_config *config);
-extern VCHIQ_STATUS_T vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T service,
+extern enum vchiq_status vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T service,
 	VCHIQ_SERVICE_OPTION_T option, int value);
 
-extern VCHIQ_STATUS_T vchiq_remote_use(VCHIQ_INSTANCE_T instance,
+extern enum vchiq_status vchiq_remote_use(VCHIQ_INSTANCE_T instance,
 	VCHIQ_REMOTE_USE_CALLBACK_T callback, void *cb_arg);
-extern VCHIQ_STATUS_T vchiq_remote_release(VCHIQ_INSTANCE_T instance);
+extern enum vchiq_status vchiq_remote_release(VCHIQ_INSTANCE_T instance);
 
-extern VCHIQ_STATUS_T vchiq_dump_phys_mem(VCHIQ_SERVICE_HANDLE_T service,
+extern enum vchiq_status vchiq_dump_phys_mem(VCHIQ_SERVICE_HANDLE_T service,
 	void *ptr, size_t num_bytes);
 
-extern VCHIQ_STATUS_T vchiq_get_peer_version(VCHIQ_SERVICE_HANDLE_T handle,
+extern enum vchiq_status vchiq_get_peer_version(VCHIQ_SERVICE_HANDLE_T handle,
       short *peer_version);
 
 #endif /* VCHIQ_IF_H */
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index dd35147df3ac..d186c38a43cc 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -106,7 +106,7 @@ int32_t vchi_msg_queue(struct vchi_service_handle *handle,
 	uint32_t data_size)
 {
 	struct shim_service *service = (struct shim_service *)handle;
-	VCHIQ_STATUS_T status;
+	enum vchiq_status status;
 
 	while (1) {
 		status = vchiq_queue_message(service->handle,
@@ -204,7 +204,7 @@ int32_t vchi_bulk_queue_receive(struct vchi_service_handle *handle, void *data_d
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	VCHIQ_BULK_MODE_T mode;
-	VCHIQ_STATUS_T status;
+	enum vchiq_status status;
 
 	switch ((int)flags) {
 	case VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE
@@ -264,7 +264,7 @@ int32_t vchi_bulk_queue_transmit(struct vchi_service_handle *handle,
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	VCHIQ_BULK_MODE_T mode;
-	VCHIQ_STATUS_T status;
+	enum vchiq_status status;
 
 	switch ((int)flags) {
 	case VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE
@@ -441,7 +441,7 @@ EXPORT_SYMBOL(vchi_msg_hold);
 int32_t vchi_initialise(struct vchi_instance_handle **instance_handle)
 {
 	VCHIQ_INSTANCE_T instance;
-	VCHIQ_STATUS_T status;
+	enum vchiq_status status;
 
 	status = vchiq_initialise(&instance);
 
@@ -503,7 +503,7 @@ EXPORT_SYMBOL(vchi_disconnect);
  *
  ***********************************************************/
 
-static VCHIQ_STATUS_T shim_callback(enum vchiq_reason reason,
+static enum vchiq_status shim_callback(enum vchiq_reason reason,
 				    struct vchiq_header *header,
 				    VCHIQ_SERVICE_HANDLE_T handle,
 				    void *bulk_user)
@@ -604,7 +604,7 @@ int32_t vchi_service_open(struct vchi_instance_handle *instance_handle,
 
 	if (service) {
 		struct vchiq_service_params params;
-		VCHIQ_STATUS_T status;
+		enum vchiq_status status;
 
 		memset(&params, 0, sizeof(params));
 		params.fourcc = setup->service_id;
@@ -632,7 +632,7 @@ int32_t vchi_service_close(const struct vchi_service_handle *handle)
 	struct shim_service *service = (struct shim_service *)handle;
 
 	if (service) {
-		VCHIQ_STATUS_T status = vchiq_close_service(service->handle);
+		enum vchiq_status status = vchiq_close_service(service->handle);
 		if (status == VCHIQ_SUCCESS)
 			service_free(service);
 
@@ -648,7 +648,7 @@ int32_t vchi_service_destroy(const struct vchi_service_handle *handle)
 	struct shim_service *service = (struct shim_service *)handle;
 
 	if (service) {
-		VCHIQ_STATUS_T status = vchiq_remove_service(service->handle);
+		enum vchiq_status status = vchiq_remove_service(service->handle);
 
 		if (status == VCHIQ_SUCCESS) {
 			service_free(service);
@@ -681,7 +681,7 @@ int32_t vchi_service_set_option(const struct vchi_service_handle *handle,
 		break;
 	}
 	if (service) {
-		VCHIQ_STATUS_T status =
+		enum vchiq_status status =
 			vchiq_set_service_option(service->handle,
 						vchiq_option,
 						value);
@@ -698,7 +698,7 @@ int32_t vchi_get_peer_version(const struct vchi_service_handle *handle, short *p
 	struct shim_service *service = (struct shim_service *)handle;
 
 	if (service) {
-		VCHIQ_STATUS_T status;
+		enum vchiq_status status;
 
 		status = vchiq_get_peer_version(service->handle, peer_version);
 		ret = vchiq_status_to_vchi(status);
-- 
2.17.1


