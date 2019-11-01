X-GM-THRID: 6753896393761357824
X-Received: by 2002:ab0:393:: with SMTP id 19mr4791507uau.58.1572586143254;
        Thu, 31 Oct 2019 22:29:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:2515:: with SMTP id j21ls263023uan.0.gmail; Thu, 31 Oct
 2019 22:29:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxj/umD4W2MHh2GiVrJTIwLSKXEevV0uLfPZ1W0hSHEprg0xbIFeoALvatI7DfOnAD7pFcp
X-Received: by 2002:ab0:76d8:: with SMTP id w24mr4597950uaq.113.1572586142193;
        Thu, 31 Oct 2019 22:29:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572586142; cv=none;
        d=google.com; s=arc-20160816;
        b=wdON6Xb5w3Hq2HRi64Tv+ECNf4BghV6C/1F6xXTb6oq4rTHUfgOQ8c3W56nMUgpEUf
         +jES5PRkGlAaEOEv9ESafm1SA80vqsSUT1JfImebXG4cT3l9JvCUcYS61i1mqBHWgBsX
         pPQpPKMmS1ubaZdQAq3UNwbuCGyB6aOIwoXRtlDpUBaiycG2pICUmminpR5lftTgwjXn
         nK4a11byXuU2L8liqqLnjNC4kO/KTWuVkmrwto6bfdXgzF+qWYGAi0fvS4ARYSFlPJ19
         f1SCxU/PSn1vEWgFdOP2uqjbMxhhJSL5vpP6ZpS1/ue1VRaWCRGtFNuuoXoUSj4ZXT/u
         OJUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=ZzB9j/Y1qS7Slpnhmo6T7eZGXPcDAdTHYVHGoYqmdio=;
        b=dtgyFHl0iFFDMIxuXvF0l1rlWxagAGVhk/kILgfhW2oEGyCpF5tUepTXwcnJSDQ7/T
         nKidiFbRQnpiI7ckrs5kSrK9NGgKet4iABE3odbcjztkOKZQs8nPxa2fCCf4xxipoWhY
         JdmWHTJ7yM89nhBo7JW9bq7AonJwZOpnDaqjlHM9OofHLYQyqgTPH7sbknPb4e1+kBm0
         3tIWsTsz7DMQp+2gTgbPuBFIwUiMjXRHVYrM+HmaljVzyhzoJtGPNWtTkx/2vUKma5cR
         LQYRI7CQoIimRVGzNMtglzyqzA+P1+j27TiVObqtBda2moSats3z4Aqk3sJ405aba3YW
         yIGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vPVJx9Ju;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id a12si592034vkm.1.2019.10.31.22.29.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 22:29:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vPVJx9Ju;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x435.google.com with SMTP id 21so6238218pfj.9
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 22:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=ZzB9j/Y1qS7Slpnhmo6T7eZGXPcDAdTHYVHGoYqmdio=;
        b=vPVJx9JuaMxyCaOsWkykNJU1e5aGd+F4vz0E8+Ibr/zU2I55NxjXDNCgxjqo8hPQOA
         YpFA0f62TL5E5plH0L493Mid/tOGSkf369KfNYAUlFlUvr6i055xybz1sCE04dYdvFvR
         ufc7z4MnY6fq/YGMJ4G+vH9mEb8HRV83DUTFczo0qhrXC6NoO01EWfPa/pDMnmeXbT2+
         jomuU/1nTalg8VwBKUI1AxuJUvLg/ZlFhpmeUTmiinViMO7G5Ua8WseWiRhbp46ltxWp
         G4yyF1gVvMwZREkAFJwb8BmKoLdS6DjRrI4yiO+wjcKDxTly2pgu7dmN6fgAa7+cbdqH
         2UNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=ZzB9j/Y1qS7Slpnhmo6T7eZGXPcDAdTHYVHGoYqmdio=;
        b=Mbeg33Z3x5cFPJGjPo/osZU2qIVQwGuWyAQJzJe8lrPC2Qi4Pa2UWalliywIXD6rQD
         CeTHvuRMsdlIfS4osuxMQoXHEvbX366UrJxl//SXW7fdPnuuNaawmByRjtG4zeGDSV14
         MkQGOKrHU/XTDLFUNaKGj8rTw1Hncv7at5Ik2JLKjoebUETJZNvx03yi/V3NAfzPbSGA
         phmfCLiNzdI+E8AlfybLHIUzrSSRqy3jlmYK4D3xid9reGEViDk8d+XQWdMbAHmjC66z
         c7smHRPP3uz0EF+xd+94s6bBH0KVq8t9rrEcQ7amS2sPS2Xt4uHevJQNL9l0b14dr1Ym
         FFXQ==
X-Gm-Message-State: APjAAAXx0PJe6CnJQQOzPJUhxisKeDu7HFjxUlMN/luj7KVDsjHfp3oV
	v5Ger8xESWSG9OR8ZcI5nXw=
X-Received: by 2002:a63:6607:: with SMTP id a7mr11428706pgc.68.1572586140432;
        Thu, 31 Oct 2019 22:29:00 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id w8sm49510pfi.18.2019.10.31.22.28.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 22:28:59 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 4/7] staging: vc04_services: Remove vchiq_arm enum typedefs
Date: Thu, 31 Oct 2019 22:28:32 -0700
Message-Id: <2e1304587f443973db213590d6cb400d3e5131c5.1572585566.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572585566.git.jamal.k.shareef@gmail.com>
References: <cover.1572585566.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572585566.git.jamal.k.shareef@gmail.com>
References: <cover.1572585566.git.jamal.k.shareef@gmail.com>

Removes enum typedefs from vchiq_arm files. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../interface/vchiq_arm/vchiq_2835_arm.c      |  10 +-
 .../interface/vchiq_arm/vchiq_arm.c           | 118 +++++++++---------
 .../interface/vchiq_arm/vchiq_arm.h           |  18 +--
 .../interface/vchiq_arm/vchiq_core.c          |  82 ++++++------
 .../interface/vchiq_arm/vchiq_core.h          |  52 ++++----
 .../interface/vchiq_arm/vchiq_if.h            |  69 +++++-----
 .../interface/vchiq_arm/vchiq_ioctl.h         |   4 +-
 .../interface/vchiq_arm/vchiq_shim.c          |  28 ++---
 8 files changed, 191 insertions(+), 190 deletions(-)

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
index dc54f443ef3d..0c615099b067 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -172,14 +172,14 @@ static const char *const ioctl_names[] = {
 vchiq_static_assert(ARRAY_SIZE(ioctl_names) ==
 		    (VCHIQ_IOC_MAX + 1));
 
-static VCHIQ_STATUS_T
+static enum vchiq_status
 vchiq_blocking_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *data,
-	unsigned int size, VCHIQ_BULK_DIR_T dir);
+	unsigned int size, enum vchiq_bulk_dir dir);
 
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
-	VCHIQ_INSTANCE_T              instance,
+enum vchiq_status vchiq_add_service(
+	VCHIQ_INSTANCE_T instance,
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
-	VCHIQ_INSTANCE_T              instance,
+enum vchiq_status vchiq_open_service(
+	VCHIQ_INSTANCE_T instance,
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
-	unsigned int size, void *userdata, VCHIQ_BULK_MODE_T mode)
+	unsigned int size, void *userdata, enum vchiq_bulk_mode mode)
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
-	unsigned int size, void *userdata, VCHIQ_BULK_MODE_T mode)
+	unsigned int size, void *userdata, enum vchiq_bulk_mode mode)
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
-	unsigned int size, VCHIQ_BULK_DIR_T dir)
+	unsigned int size, enum vchiq_bulk_dir dir)
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
@@ -952,7 +952,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 
 	case VCHIQ_IOC_CLOSE_SERVICE:
 	case VCHIQ_IOC_REMOVE_SERVICE: {
-		VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
+		VCHIQ_SERVICE_HANDLE_T handle = (unsigned int)arg;
 		struct user_service *user_service;
 
 		service = find_service_for_instance(instance, handle);
@@ -985,7 +985,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 
 	case VCHIQ_IOC_USE_SERVICE:
 	case VCHIQ_IOC_RELEASE_SERVICE:	{
-		VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
+		VCHIQ_SERVICE_HANDLE_T handle = (unsigned int)arg;
 
 		service = find_service_for_instance(instance, handle);
 		if (service) {
@@ -1042,7 +1042,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		struct vchiq_queue_bulk_transfer args;
 		struct bulk_waiter_node *waiter = NULL;
 
-		VCHIQ_BULK_DIR_T dir =
+		enum vchiq_bulk_dir dir =
 			(cmd == VCHIQ_IOC_QUEUE_BULK_TRANSMIT) ?
 			VCHIQ_BULK_TRANSMIT : VCHIQ_BULK_RECEIVE;
 
@@ -1107,7 +1107,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 			}
 			kfree(waiter);
 		} else {
-			const VCHIQ_BULK_MODE_T mode_waiting =
+			const enum vchiq_bulk_mode mode_waiting =
 				VCHIQ_BULK_MODE_WAITING;
 			waiter->pid = current->pid;
 			mutex_lock(&instance->bulk_waiter_list_mutex);
@@ -1368,7 +1368,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 	} break;
 
 	case VCHIQ_IOC_GET_CLIENT_ID: {
-		VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
+		VCHIQ_SERVICE_HANDLE_T handle = (unsigned int)arg;
 
 		ret = vchiq_get_client_id(handle);
 	} break;
@@ -1423,7 +1423,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 	} break;
 
 	case VCHIQ_IOC_CLOSE_DELIVERED: {
-		VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
+		VCHIQ_SERVICE_HANDLE_T handle = (unsigned int)arg;
 
 		service = find_closed_service_for_instance(instance, handle);
 		if (service) {
@@ -1484,7 +1484,7 @@ struct vchiq_create_service32 {
 	struct vchiq_service_params32 params;
 	int is_open;
 	int is_vchi;
-	unsigned int handle; /* OUT */
+	VCHIQ_SERVICE_HANDLE_T handle; /* OUT */
 };
 
 #define VCHIQ_IOC_CREATE_SERVICE32 \
@@ -1544,7 +1544,7 @@ struct vchiq_element32 {
 };
 
 struct vchiq_queue_message32 {
-	unsigned int handle;
+	VCHIQ_SERVICE_HANDLE_T handle;
 	unsigned int count;
 	compat_uptr_t elements;
 };
@@ -1607,11 +1607,11 @@ vchiq_compat_ioctl_queue_message(struct file *file,
 }
 
 struct vchiq_queue_bulk_transfer32 {
-	unsigned int handle;
+	VCHIQ_SERVICE_HANDLE_T handle;
 	compat_uptr_t data;
 	unsigned int size;
 	compat_uptr_t userdata;
-	VCHIQ_BULK_MODE_T mode;
+	enum vchiq_bulk_mode mode;
 };
 
 #define VCHIQ_IOC_QUEUE_BULK_TRANSMIT32 \
@@ -1824,7 +1824,7 @@ vchiq_compat_ioctl_await_completion(struct file *file,
 }
 
 struct vchiq_dequeue_message32 {
-	unsigned int handle;
+	VCHIQ_SERVICE_HANDLE_T handle;
 	int blocking;
 	unsigned int bufsize;
 	compat_uptr_t buf;
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
@@ -3128,8 +3128,8 @@ void vchiq_on_remote_use_active(struct vchiq_state *state)
 }
 
 void vchiq_platform_conn_state_changed(struct vchiq_state *state,
-				       VCHIQ_CONNSTATE_T oldstate,
-				       VCHIQ_CONNSTATE_T newstate)
+				       enum vchiq_connstate oldstate,
+				       enum vchiq_connstate newstate)
 {
 	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
 
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
index e1898cfa5e91..6e4ad0929ba3 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -59,7 +59,7 @@ DEFINE_SPINLOCK(bulk_waiter_spinlock);
 static DEFINE_SPINLOCK(quota_spinlock);
 
 struct vchiq_state *vchiq_states[VCHIQ_MAX_STATES];
-static unsigned int handle_seq;
+static VCHIQ_SERVICE_HANDLE_T handle_seq;
 
 static const char *const srvstate_names[] = {
 	"FREE",
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
@@ -375,9 +375,9 @@ make_service_callback(struct vchiq_service *service, enum vchiq_reason reason,
 }
 
 inline void
-vchiq_set_conn_state(struct vchiq_state *state, VCHIQ_CONNSTATE_T newstate)
+vchiq_set_conn_state(struct vchiq_state *state, enum vchiq_connstate newstate)
 {
-	VCHIQ_CONNSTATE_T oldstate = state->conn_state;
+	enum vchiq_connstate oldstate = state->conn_state;
 
 	vchiq_log_info(vchiq_core_log_level, "%d: %s->%s", state->id,
 		conn_state_names[oldstate],
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
@@ -2078,7 +2078,7 @@ init_bulk_queue(struct vchiq_bulk_queue *queue)
 }
 
 inline const char *
-get_conn_state_name(VCHIQ_CONNSTATE_T conn_state)
+get_conn_state_name(enum vchiq_connstate conn_state)
 {
 	return conn_state_names[conn_state];
 }
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
 
@@ -2281,7 +2281,7 @@ struct vchiq_service *
 vchiq_add_service_internal(struct vchiq_state *state,
 			   const struct vchiq_service_params *params,
 			   int srvstate, VCHIQ_INSTANCE_T instance,
-			   VCHIQ_USERDATA_TERM_T userdata_term)
+			   void (*userdata_term)(void *userdata))
 {
 	struct vchiq_service *service;
 	struct vchiq_service **pservice = NULL;
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
@@ -2952,10 +2952,10 @@ vchiq_remove_service(VCHIQ_SERVICE_HANDLE_T handle)
  * When called in blocking mode, the userdata field points to a bulk_waiter
  * structure.
  */
-VCHIQ_STATUS_T vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
+enum vchiq_status vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
 				   void *offset, int size, void *userdata,
-				   VCHIQ_BULK_MODE_T mode,
-				   VCHIQ_BULK_DIR_T dir)
+				   enum vchiq_bulk_mode mode,
+				   enum vchiq_bulk_dir dir)
 {
 	struct vchiq_service *service = find_service_by_handle(handle);
 	struct vchiq_bulk_queue *queue;
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
-	VCHIQ_SERVICE_OPTION_T option, int value)
+	enum vchiq_service_option option, int value)
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
index 75104986201b..d33d6bd96617 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -169,7 +169,7 @@ enum {
 
 #endif /* VCHIQ_ENABLE_DEBUG */
 
-typedef enum {
+enum vchiq_connstate {
 	VCHIQ_CONNSTATE_DISCONNECTED,
 	VCHIQ_CONNSTATE_CONNECTING,
 	VCHIQ_CONNSTATE_CONNECTED,
@@ -179,7 +179,7 @@ typedef enum {
 	VCHIQ_CONNSTATE_RESUMING,
 	VCHIQ_CONNSTATE_PAUSE_TIMEOUT,
 	VCHIQ_CONNSTATE_RESUME_TIMEOUT
-} VCHIQ_CONNSTATE_T;
+};
 
 enum {
 	VCHIQ_SRVSTATE_FREE,
@@ -202,10 +202,10 @@ enum {
 	VCHIQ_POLL_COUNT
 };
 
-typedef enum {
+enum vchiq_bulk_dir {
 	VCHIQ_BULK_TRANSMIT,
 	VCHIQ_BULK_RECEIVE
-} VCHIQ_BULK_DIR_T;
+};
 
 typedef void (*VCHIQ_USERDATA_TERM_T)(void *userdata);
 
@@ -367,7 +367,7 @@ struct vchiq_slot_zero {
 struct vchiq_state {
 	int id;
 	int initialised;
-	VCHIQ_CONNSTATE_T conn_state;
+	enum vchiq_connstate conn_state;
 	short version_common;
 
 	struct vchiq_shared_state *local;
@@ -467,7 +467,7 @@ struct vchiq_state {
 	struct vchiq_service *services[VCHIQ_MAX_SERVICES];
 	struct vchiq_service_quota service_quotas[VCHIQ_MAX_SERVICES];
 	struct vchiq_slot_info slot_info[VCHIQ_MAX_SLOTS];
-
+	
 	VCHIQ_PLATFORM_STATE_T platform_state;
 };
 
@@ -486,15 +486,15 @@ extern int vchiq_sync_log_level;
 extern struct vchiq_state *vchiq_states[VCHIQ_MAX_STATES];
 
 extern const char *
-get_conn_state_name(VCHIQ_CONNSTATE_T conn_state);
+get_conn_state_name(enum vchiq_connstate conn_state);
 
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
@@ -515,16 +515,16 @@ vchiq_terminate_service_internal(struct vchiq_service *service);
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
-		    void *userdata, VCHIQ_BULK_MODE_T mode,
-		    VCHIQ_BULK_DIR_T dir);
+		    void *userdata, enum vchiq_bulk_mode mode,
+		    enum vchiq_bulk_dir dir);
 
 extern void
 vchiq_dump_state(void *dump_context, struct vchiq_state *state);
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
@@ -627,31 +627,31 @@ vchiq_on_remote_use(struct vchiq_state *state);
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
 vchiq_platform_conn_state_changed(struct vchiq_state *state,
-				  VCHIQ_CONNSTATE_T oldstate,
-				  VCHIQ_CONNSTATE_T newstate);
+				  enum vchiq_connstate oldstate,
+				  enum vchiq_connstate newstate);
 
 extern void
 vchiq_platform_handle_timeout(struct vchiq_state *state);
 
 extern void
-vchiq_set_conn_state(struct vchiq_state *state, VCHIQ_CONNSTATE_T newstate);
+vchiq_set_conn_state(struct vchiq_state *state, enum vchiq_connstate newstate);
 
 extern void
 vchiq_log_dump_mem(const char *label, uint32_t addr, const void *voidMem,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index f911612a6a54..f506858987b7 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -25,26 +25,26 @@ enum vchiq_reason {
 	VCHIQ_BULK_RECEIVE_ABORTED    /* service, -, bulk_userdata */
 };
 
-typedef enum {
+enum vchiq_status {
 	VCHIQ_ERROR   = -1,
 	VCHIQ_SUCCESS = 0,
 	VCHIQ_RETRY   = 1
-} VCHIQ_STATUS_T;
+};
 
-typedef enum {
+enum vchiq_bulk_mode {
 	VCHIQ_BULK_MODE_CALLBACK,
 	VCHIQ_BULK_MODE_BLOCKING,
 	VCHIQ_BULK_MODE_NOCALLBACK,
 	VCHIQ_BULK_MODE_WAITING		/* Reserved for internal use */
-} VCHIQ_BULK_MODE_T;
+};
 
-typedef enum {
+enum vchiq_service_option {
 	VCHIQ_SERVICE_OPTION_AUTOCLOSE,
 	VCHIQ_SERVICE_OPTION_SLOT_QUOTA,
 	VCHIQ_SERVICE_OPTION_MESSAGE_QUOTA,
 	VCHIQ_SERVICE_OPTION_SYNCHRONOUS,
 	VCHIQ_SERVICE_OPTION_TRACE
-} VCHIQ_SERVICE_OPTION_T;
+};
 
 struct vchiq_header {
 	/* The message identifier - opaque to applications. */
@@ -63,9 +63,10 @@ struct vchiq_element {
 
 typedef unsigned int VCHIQ_SERVICE_HANDLE_T;
 
-typedef VCHIQ_STATUS_T (*VCHIQ_CALLBACK_T)(enum vchiq_reason,
-					   struct vchiq_header *,
-					   VCHIQ_SERVICE_HANDLE_T, void *);
+typedef enum vchiq_status (*VCHIQ_CALLBACK_T)(enum vchiq_reason,
+					      struct vchiq_header *,
+					      VCHIQ_SERVICE_HANDLE_T, void *);
+
 
 struct vchiq_service_base {
 	int fourcc;
@@ -95,20 +96,20 @@ struct vchiq_config {
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
@@ -116,33 +117,33 @@ vchiq_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
 		    size_t size);
 extern void           vchiq_release_message(VCHIQ_SERVICE_HANDLE_T service,
 	struct vchiq_header *header);
-extern VCHIQ_STATUS_T vchiq_bulk_transmit(VCHIQ_SERVICE_HANDLE_T service,
+extern enum vchiq_status vchiq_bulk_transmit(VCHIQ_SERVICE_HANDLE_T service,
 	const void *data, unsigned int size, void *userdata,
-	VCHIQ_BULK_MODE_T mode);
-extern VCHIQ_STATUS_T vchiq_bulk_receive(VCHIQ_SERVICE_HANDLE_T service,
+	enum vchiq_bulk_mode mode);
+extern enum vchiq_status vchiq_bulk_receive(VCHIQ_SERVICE_HANDLE_T service,
 	void *data, unsigned int size, void *userdata,
-	VCHIQ_BULK_MODE_T mode);
-extern VCHIQ_STATUS_T vchiq_bulk_transmit_handle(VCHIQ_SERVICE_HANDLE_T service,
+	enum vchiq_bulk_mode mode);
+extern enum vchiq_status vchiq_bulk_transmit_handle(VCHIQ_SERVICE_HANDLE_T service,
 	const void *offset, unsigned int size,
-	void *userdata,	VCHIQ_BULK_MODE_T mode);
-extern VCHIQ_STATUS_T vchiq_bulk_receive_handle(VCHIQ_SERVICE_HANDLE_T service,
+	void *userdata,	enum vchiq_bulk_mode mode);
+extern enum vchiq_status vchiq_bulk_receive_handle(VCHIQ_SERVICE_HANDLE_T service,
 	void *offset, unsigned int size, void *userdata,
-	VCHIQ_BULK_MODE_T mode);
+	enum vchiq_bulk_mode mode);
 extern int   vchiq_get_client_id(VCHIQ_SERVICE_HANDLE_T service);
 extern void *vchiq_get_service_userdata(VCHIQ_SERVICE_HANDLE_T service);
 extern int   vchiq_get_service_fourcc(VCHIQ_SERVICE_HANDLE_T service);
 extern void vchiq_get_config(struct vchiq_config *config);
-extern VCHIQ_STATUS_T vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T service,
-	VCHIQ_SERVICE_OPTION_T option, int value);
+extern enum vchiq_status vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T service,
+	enum vchiq_service_option option, int value);
 
-extern VCHIQ_STATUS_T vchiq_remote_use(VCHIQ_INSTANCE_T instance,
-	VCHIQ_REMOTE_USE_CALLBACK_T callback, void *cb_arg);
-extern VCHIQ_STATUS_T vchiq_remote_release(VCHIQ_INSTANCE_T instance);
+extern enum vchiq_status vchiq_remote_use(VCHIQ_INSTANCE_T instance,
+					  VCHIQ_REMOTE_USE_CALLBACK_T callback, void *cb_arg);
+extern enum vchiq_status vchiq_remote_release(VCHIQ_INSTANCE_T instance);
 
-extern VCHIQ_STATUS_T vchiq_dump_phys_mem(VCHIQ_SERVICE_HANDLE_T service,
+extern enum vchiq_status vchiq_dump_phys_mem(VCHIQ_SERVICE_HANDLE_T service,
 	void *ptr, size_t num_bytes);
 
-extern VCHIQ_STATUS_T vchiq_get_peer_version(VCHIQ_SERVICE_HANDLE_T handle,
+extern enum vchiq_status vchiq_get_peer_version(VCHIQ_SERVICE_HANDLE_T handle,
       short *peer_version);
 
 #endif /* VCHIQ_IF_H */
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
index c2343a1a3a6a..202889b3774f 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
@@ -28,7 +28,7 @@ struct vchiq_queue_bulk_transfer {
 	void *data;
 	unsigned int size;
 	void *userdata;
-	VCHIQ_BULK_MODE_T mode;
+	enum vchiq_bulk_mode mode;
 };
 
 struct vchiq_completion_data {
@@ -60,7 +60,7 @@ struct vchiq_get_config {
 
 struct vchiq_set_service_option {
 	unsigned int handle;
-	VCHIQ_SERVICE_OPTION_T option;
+	enum vchiq_service_option option;
 	int value;
 };
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index e908bc556d63..cbae99dc956e 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -107,7 +107,7 @@ int32_t vchi_msg_queue(struct vchi_service_handle *handle,
 		       void *context, uint32_t data_size)
 {
 	struct shim_service *service = (struct shim_service *)handle;
-	VCHIQ_STATUS_T status;
+	enum vchiq_status status;
 
 	while (1) {
 		status = vchiq_queue_message(service->handle,
@@ -203,8 +203,8 @@ int32_t vchi_bulk_queue_receive(struct vchi_service_handle *handle, void *data_d
 				void *bulk_handle)
 {
 	struct shim_service *service = (struct shim_service *)handle;
-	VCHIQ_BULK_MODE_T mode;
-	VCHIQ_STATUS_T status;
+	enum vchiq_bulk_mode mode;
+	enum vchiq_status status;
 
 	switch ((int)flags) {
 	case VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE
@@ -263,8 +263,8 @@ int32_t vchi_bulk_queue_transmit(struct vchi_service_handle *handle,
 				 void *bulk_handle)
 {
 	struct shim_service *service = (struct shim_service *)handle;
-	VCHIQ_BULK_MODE_T mode;
-	VCHIQ_STATUS_T status;
+	enum vchiq_bulk_mode mode;
+	enum vchiq_status status;
 
 	switch ((int)flags) {
 	case VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE
@@ -366,7 +366,7 @@ int32_t vchi_held_msg_release(struct vchi_held_msg *message)
 	 * to a pointer.
 	 */
 
-	vchiq_release_message((VCHIQ_SERVICE_HANDLE_T)(long)message->service,
+	vchiq_release_message((unsigned int)(long)message->service,
 			      (struct vchiq_header *)message->message);
 
 	return 0;
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
@@ -667,7 +667,7 @@ int32_t vchi_service_set_option(const struct vchi_service_handle *handle,
 {
 	int32_t ret = -1;
 	struct shim_service *service = (struct shim_service *)handle;
-	VCHIQ_SERVICE_OPTION_T vchiq_option;
+	enum vchiq_service_option vchiq_option;
 
 	switch (option) {
 	case VCHI_SERVICE_OPTION_TRACE:
@@ -681,7 +681,7 @@ int32_t vchi_service_set_option(const struct vchi_service_handle *handle,
 		break;
 	}
 	if (service) {
-		VCHIQ_STATUS_T status =
+		enum vchiq_status status =
 			vchiq_set_service_option(service->handle,
 						 vchiq_option,
 						 value);
@@ -699,7 +699,7 @@ int32_t vchi_get_peer_version(const struct vchi_service_handle *handle,
 	struct shim_service *service = (struct shim_service *)handle;
 
 	if (service) {
-		VCHIQ_STATUS_T status;
+		enum vchiq_status status;
 
 		status = vchiq_get_peer_version(service->handle, peer_version);
 		ret = vchiq_status_to_vchi(status);
-- 
2.17.1


