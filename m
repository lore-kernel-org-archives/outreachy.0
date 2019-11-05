X-GM-THRID: 6753896393761357824
X-Received: by 2002:ab0:2381:: with SMTP id b1mr13170584uan.106.1572915341508;
        Mon, 04 Nov 2019 16:55:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:43cb:: with SMTP id q194ls557406vka.2.gmail; Mon, 04 Nov
 2019 16:55:40 -0800 (PST)
X-Google-Smtp-Source: APXvYqyPjgOSQvBNSFgofoiRYyZ10EiRVQ75sY8MRW8/WX02/3EDCsBzYOoccW78WSckPdWymCsR
X-Received: by 2002:a05:6122:11af:: with SMTP id y15mr306010vkn.68.1572915340050;
        Mon, 04 Nov 2019 16:55:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572915340; cv=none;
        d=google.com; s=arc-20160816;
        b=shPiY7OCUEpJbuNPnysnJsyZNqTb4cvMDk1z9CZ0eQI4Q48mShUbBQeyta9sA7x2SL
         kSn/WJJmwFHoqXd2o2Nd8onV+No/kR8apM4OSM+d+eIFl4+RCmmm+o19JP6HRF7MJwzK
         8lrUe4l4lcvtR/zV+o/sbZQ9TrEn8jKLeSTTpUtWoaTpsUkuYwuDUMTxfPThrbZ8uIGv
         ujn39qmq/aJvUjsavZV1ktWcKCQD8Xo8wNYggTmZy6MjXcPJ4sR50FfuT/SKx2lxr75B
         iG2iCFIR5JNqEYxn8dbRzEkg26HH76fkbJDgRtmnqg5Ycjt4qavMC/6raeg6CyW6BlNv
         omkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=aPU67QJzUBUBUhNAWkxtF2C6fAXem6zOH8OXpfTCCTU=;
        b=YFvOMa4tQam8ONMbeVFxsneMKQtn3uXy1rUxbAYijAmenx9qcixG+NwTpxWb/JYV+g
         VJuAWdPI3H4v1EZBopHJeIELeH9ywY5n47kTg3jfmsn8NXaoFtARKv0J5a5UqcFqBxnM
         DnXyJSi4BDbB98AUnSoUVo9Jm4J6PVx/t5s+jcvO2yALWhshNbrowsLN7rqfrx5NYHmC
         mPrPP77o1RKKeoWtglykYVQgDl+FycL4Fhq4mjzjtXbVQ6Q3En933o/4Khkktf9cWgL+
         u8b0EZiTo0qOYFXiCsoKag6JFPjQFXw61oBR04sdII/6y6V+8HoJkXzp7tY4EsHUMiym
         ohpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cbJsaycz;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id p21si373607vsf.2.2019.11.04.16.55.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 16:55:40 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cbJsaycz;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id q22so5152838pgk.2
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 16:55:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=aPU67QJzUBUBUhNAWkxtF2C6fAXem6zOH8OXpfTCCTU=;
        b=cbJsaycz56waDeY91W0pamsNCsY3ezqZiZsERGGNHk95uWo1m3r2Zrh1aqF9vAomiZ
         xAjMu5Hk1Ih2j+aLe7YobDSWKPBa0xF7M/HTcrAk3glpUSjuh6k7ubHeP3kEHise+paI
         JYjFSC6dHdvXkeIAau/e/K4f1LGBD0NaOHgiDw/BKLP/wF/Eo1x+sja2VcxSKTaUapJx
         E/9N6rhmiu+5Ca8AqnqB3jQ6Kd3JpX7L8F+Hx6j0lu55hSTbupO3hRzHYW0FNEDwUeMk
         kCEluJkTSF9uVFT41ZbO/C1z8LUlg6a7iv5oG4LYgXvf6ozmakWNXhpJzp7rMjIgWGMs
         sj+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=aPU67QJzUBUBUhNAWkxtF2C6fAXem6zOH8OXpfTCCTU=;
        b=nCqHn6TYcfk2Hr0sLWK4AD9F3bFepqO6vjGmAxmWO4NBt7J3PydYoQhYJAZlssr+KT
         tlagJx/h6hLLs95fCpYYDlejSgxSCT2GfiQCZWUofRAPTnuPn5rrmD77ofZ6O79iCuJw
         Q3TvjYRTxg7cMH0S5x9vovO6wU96beElPhyB4Eu2rddUHP5Pcn6JGfJPfHy7+Ar8g05u
         OESYbDKukLH1yz+KFph2VSZAinmKAlme4MgjtCF5m3O3dfAmoIM9eu5JaC/nlOiOrDVn
         CYGYpl7q0MUzHiNkYXWIIVgVtPLlf/cmFCLLlxnnAqUR0S8CH4sy0VNebfC/44cT/dwi
         HDgA==
X-Gm-Message-State: APjAAAUWS4Jy/01TRfbiEy50QCUk/G2RJuNb5qlBqSusV3SIBot4dMmw
	PCO2+ez0sltFTx30u+KbQrI=
X-Received: by 2002:aa7:82cd:: with SMTP id f13mr34995630pfn.69.1572915338745;
        Mon, 04 Nov 2019 16:55:38 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id t8sm18807414pjv.18.2019.11.04.16.55.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 16:55:38 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 04/14] staging: vc04_services: Remove status enum typedef
Date: Mon,  4 Nov 2019 16:55:14 -0800
Message-Id: <2a247aa8003e87db60c521ee419db29cfdd517e0.1572915104.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>

Removes vchiq status enum typedef. Issue found by checkpatch.

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


