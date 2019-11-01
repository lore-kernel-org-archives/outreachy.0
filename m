X-GM-THRID: 6753896393761357824
X-Received: by 2002:a92:5f06:: with SMTP id t6mr7908960ilb.17.1572643334218;
        Fri, 01 Nov 2019 14:22:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:3552:: with SMTP id c79ls1575444ila.12.gmail; Fri, 01
 Nov 2019 14:22:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxkxYkvYc4JwapMjT2/9mBEou90iULTETrA1qoeUyjJipJ5zzawiuN5uU/01BcGQsPIsYT7
X-Received: by 2002:a92:91d3:: with SMTP id e80mr15515998ill.77.1572643333343;
        Fri, 01 Nov 2019 14:22:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572643333; cv=none;
        d=google.com; s=arc-20160816;
        b=0kXCMVDkVEh0QzyiIAFZxynAVOMaTaSt6UeVdItjsfPWeg7ika41zusPTcDV+7EVPv
         ccFMnqn/NbuSADJVVXg3gMHlxYGUgHTK2j3OBSaEk7NM1oaoBP/U56iOVEdM2fUL0glZ
         6Wt9cz5GVLzaFWuwised4li+4ecxCv+qArteZIv7wRHinrp0sokImnoZZrGm4JLPtYNz
         3SpgQONB6ARhva2Q9h4LMf/D9ew+OZP+cCro11E5CuMgvBV61JRHtK4aXKC6vH1Jde2i
         7FdTT8orfPWyx/ttDXZqJRDwfQ5k+6ZxI8NwKik/uAY3GZgC/q5qeB1yhGv8OoHs+ZKa
         5blg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=1NB9hU9LCCXN9XZSVfmGJ5i7ASBX+gyVW4OtaX/6ixI=;
        b=lTg5lWwcOzAIa5uBxCyDFNw5XwvQB9x4xH7bXCIRdaGol0RXMkUistkuhp/TezNa08
         zNufQNR92sCzRS85Z6bCKuu7lJQUaJH46JYfZNccdKA1BMu2s0wetlkBFCncvwEsillh
         4qvF8+O/hvolCXt+8WNKEyww0W2z5ryE54ETyPoqqHiWq2vfJZ4q5U5om0/14TeQ/k+/
         jkkQo5IslGDYMtPigojYayPXK2RZO5zVA+CKj0ly4wbOcKWl5jG1cr9ntK2jZmFBbZ/P
         jh1vAb8TZemV0xxdig4rWnC62TS/zbMw1lroOCSaVh4Oox1fBy3xISrEuconUcDuVAb9
         aAGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MhwwX0wa;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id a17si480532iok.0.2019.11.01.14.22.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 14:22:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MhwwX0wa;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id j30so3746255pgn.5
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 14:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=1NB9hU9LCCXN9XZSVfmGJ5i7ASBX+gyVW4OtaX/6ixI=;
        b=MhwwX0wapA5GLH+QF/zrcpYAKQWUjgbH03m6vtgnBruJIJJSlsDFE6oeG15nszLftz
         oQe54wVsRUJUFz0SylQ3e3AaV478yqGIfd8NqWef+VL8I+3BhrqPkY2Sm4R9A9yQX6TB
         xxP/kWKuJ/FSQ4EHd3V4IjPJTroJn1Kb1FYEKZdrlo5Fefijw+GLk+Ff35F0YK/UXjFM
         LkrJj9Rsh+MLFZmbIAxD8NuRjLChoSze86c300cTBChAWL2BOVMeBMeFzvqBImZ3eU04
         hU4m7GphcoJ/9IBVQ4kH7O4smmw6TqfS9O3QlOjdLZJWz1mOIfIhnE93uj7c1biDdWYA
         czzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=1NB9hU9LCCXN9XZSVfmGJ5i7ASBX+gyVW4OtaX/6ixI=;
        b=nFWo/2kdhhINcmLjUOpZU7N3DxCP5Hs1i44ANyAz6PmJKt+K+lXWV5cRUEYUBPDagw
         ZeLHEKnuZuqi5YmBo24+GA+PY0T2qZDc/lqDNswluRM5X54fwr5BiQGVlHERRhd2xHSH
         zIDP8Th8KMxp6XnusvQQjmu1Xg1cI7MDkcEw0iW1BTZMt02O/3fhUxFgPV+eMbfWbDOI
         rrl8feqzJUpFk8HlwuDLi0dUWx8XpsY5HzDJK3q+13VvTZ6M7zLHMYYr/G9tAKt+uKnU
         /KzLa8BnxOBGamR8BvYDNnKh01HEpYguFByuFt+c2FyupK6suTf+/cIABsHeCbHTvcw7
         hgdA==
X-Gm-Message-State: APjAAAUpmAIz28lsewXb1GyvvMwmqYu0ZtAuuO4PKj+LLQ4O6UEYp8oM
	eqjdp75K0vcu2OoM9KJ3uwY=
X-Received: by 2002:a62:2f43:: with SMTP id v64mr10273039pfv.13.1572643332812;
        Fri, 01 Nov 2019 14:22:12 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id n15sm8278332pfq.146.2019.11.01.14.22.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 14:22:12 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v3 8/8] staging: vc04_services: Remove struct typedefs vchiq_arm
Date: Fri,  1 Nov 2019 14:21:46 -0700
Message-Id: <e561694ebd053f810a54bbe760a381d07260c4fc.1572642845.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572642845.git.jamal.k.shareef@gmail.com>
References: <cover.1572642845.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572642845.git.jamal.k.shareef@gmail.com>
References: <cover.1572642845.git.jamal.k.shareef@gmail.com>

Removes struct typedefs in vchiq_arm files. Issue found by checkpatch.

Renames "struct vchiq_instance_struct" to "struct vchiq_instance" because of
redundancy and for clarity between header files vchiq_arm.c (line ~103) and
vchiq_if.h (line ~90).

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 46 +++++++++----------
 .../interface/vchiq_arm/vchiq_arm.h           | 10 ++--
 .../interface/vchiq_arm/vchiq_core.c          | 12 ++---
 .../interface/vchiq_arm/vchiq_core.h          | 26 +++++------
 .../interface/vchiq_arm/vchiq_debugfs.c       | 14 +++---
 .../interface/vchiq_arm/vchiq_debugfs.h       |  4 +-
 .../interface/vchiq_arm/vchiq_if.h            | 25 +++++-----
 .../interface/vchiq_arm/vchiq_shim.c          | 10 ++--
 8 files changed, 73 insertions(+), 74 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 1581e9a858d5..bbc51d2a6c6d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -84,7 +84,7 @@ static void suspend_timer_callback(struct timer_list *t);
 struct user_service {
 	struct vchiq_service *service;
 	void *userdata;
-	VCHIQ_INSTANCE_T instance;
+	struct vchiq_instance *instance;
 	char is_vchi;
 	char dequeue_pending;
 	char close_pending;
@@ -103,7 +103,7 @@ struct bulk_waiter_node {
 	struct list_head list;
 };
 
-struct vchiq_instance_struct {
+struct vchiq_instance {
 	struct vchiq_state *state;
 	struct vchiq_completion_data completions[MAX_COMPLETIONS];
 	int completion_insert;
@@ -177,11 +177,11 @@ vchiq_blocking_bulk_transfer(unsigned int handle, void *data,
 	unsigned int size, enum vchiq_bulk_dir dir);
 
 #define VCHIQ_INIT_RETRIES 10
-enum vchiq_status vchiq_initialise(VCHIQ_INSTANCE_T *instance_out)
+enum vchiq_status vchiq_initialise(struct vchiq_instance **instance_out)
 {
 	enum vchiq_status status = VCHIQ_ERROR;
 	struct vchiq_state *state;
-	VCHIQ_INSTANCE_T instance = NULL;
+	struct vchiq_instance *instance = NULL;
 	int i;
 
 	vchiq_log_trace(vchiq_core_log_level, "%s called", __func__);
@@ -230,7 +230,7 @@ enum vchiq_status vchiq_initialise(VCHIQ_INSTANCE_T *instance_out)
 }
 EXPORT_SYMBOL(vchiq_initialise);
 
-enum vchiq_status vchiq_shutdown(VCHIQ_INSTANCE_T instance)
+enum vchiq_status vchiq_shutdown(struct vchiq_instance *instance)
 {
 	enum vchiq_status status;
 	struct vchiq_state *state = instance->state;
@@ -267,12 +267,12 @@ enum vchiq_status vchiq_shutdown(VCHIQ_INSTANCE_T instance)
 }
 EXPORT_SYMBOL(vchiq_shutdown);
 
-static int vchiq_is_connected(VCHIQ_INSTANCE_T instance)
+static int vchiq_is_connected(struct vchiq_instance *instance)
 {
 	return instance->connected;
 }
 
-enum vchiq_status vchiq_connect(VCHIQ_INSTANCE_T instance)
+enum vchiq_status vchiq_connect(struct vchiq_instance *instance)
 {
 	enum vchiq_status status;
 	struct vchiq_state *state = instance->state;
@@ -302,7 +302,7 @@ enum vchiq_status vchiq_connect(VCHIQ_INSTANCE_T instance)
 EXPORT_SYMBOL(vchiq_connect);
 
 enum vchiq_status vchiq_add_service(
-	VCHIQ_INSTANCE_T instance,
+	struct vchiq_instance *instance,
 	const struct vchiq_service_params *params,
 	unsigned int       *phandle)
 {
@@ -341,7 +341,7 @@ enum vchiq_status vchiq_add_service(
 EXPORT_SYMBOL(vchiq_add_service);
 
 enum vchiq_status vchiq_open_service(
-	VCHIQ_INSTANCE_T instance,
+	struct vchiq_instance *instance,
 	const struct vchiq_service_params *params,
 	unsigned int       *phandle)
 {
@@ -433,7 +433,7 @@ static enum vchiq_status
 vchiq_blocking_bulk_transfer(unsigned int handle, void *data,
 	unsigned int size, enum vchiq_bulk_dir dir)
 {
-	VCHIQ_INSTANCE_T instance;
+	struct vchiq_instance *instance;
 	struct vchiq_service *service;
 	enum vchiq_status status;
 	struct bulk_waiter_node *waiter = NULL;
@@ -516,7 +516,7 @@ vchiq_blocking_bulk_transfer(unsigned int handle, void *data,
 ***************************************************************************/
 
 static enum vchiq_status
-add_completion(VCHIQ_INSTANCE_T instance, enum vchiq_reason reason,
+add_completion(struct vchiq_instance *instance, enum vchiq_reason reason,
 	       struct vchiq_header *header, struct user_service *user_service,
 	       void *bulk_userdata)
 {
@@ -593,7 +593,7 @@ service_callback(enum vchiq_reason reason, struct vchiq_header *header,
 	*/
 	struct user_service *user_service;
 	struct vchiq_service *service;
-	VCHIQ_INSTANCE_T instance;
+	struct vchiq_instance *instance;
 	bool skip_completion = false;
 
 	DEBUG_INITIALISE(g_state.local)
@@ -804,7 +804,7 @@ vchiq_ioc_queue_message(unsigned int handle,
 static long
 vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 {
-	VCHIQ_INSTANCE_T instance = file->private_data;
+	struct vchiq_instance *instance = file->private_data;
 	enum vchiq_status status = VCHIQ_SUCCESS;
 	struct vchiq_service *service = NULL;
 	long ret = 0;
@@ -1919,7 +1919,7 @@ vchiq_compat_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 static int vchiq_open(struct inode *inode, struct file *file)
 {
 	struct vchiq_state *state = vchiq_get_state();
-	VCHIQ_INSTANCE_T instance;
+	struct vchiq_instance *instance;
 
 	vchiq_log_info(vchiq_arm_log_level, "vchiq_open");
 
@@ -1951,7 +1951,7 @@ static int vchiq_open(struct inode *inode, struct file *file)
 
 static int vchiq_release(struct inode *inode, struct file *file)
 {
-	VCHIQ_INSTANCE_T instance = file->private_data;
+	struct vchiq_instance *instance = file->private_data;
 	struct vchiq_state *state = vchiq_get_state();
 	struct vchiq_service *service;
 	int ret = 0;
@@ -2130,7 +2130,7 @@ vchiq_dump_platform_instances(void *dump_context)
 
 	for (i = 0; i < state->unused_service; i++) {
 		struct vchiq_service *service = state->services[i];
-		VCHIQ_INSTANCE_T instance;
+		struct vchiq_instance *instance;
 
 		if (service && (service->base.callback == service_callback)) {
 			instance = service->instance;
@@ -2141,7 +2141,7 @@ vchiq_dump_platform_instances(void *dump_context)
 
 	for (i = 0; i < state->unused_service; i++) {
 		struct vchiq_service *service = state->services[i];
-		VCHIQ_INSTANCE_T instance;
+		struct vchiq_instance *instance;
 
 		if (service && (service->base.callback == service_callback)) {
 			instance = service->instance;
@@ -2288,7 +2288,7 @@ vchiq_keepalive_thread_func(void *v)
 	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
 
 	enum vchiq_status status;
-	VCHIQ_INSTANCE_T instance;
+	struct vchiq_instance *instance;
 	unsigned int ka_handle;
 
 	struct vchiq_service_params params = {
@@ -2911,13 +2911,13 @@ vchiq_release_service_internal(struct vchiq_service *service)
 }
 
 struct vchiq_debugfs_node *
-vchiq_instance_get_debugfs_node(VCHIQ_INSTANCE_T instance)
+vchiq_instance_get_debugfs_node(struct vchiq_instance *instance)
 {
 	return &instance->debugfs_node;
 }
 
 int
-vchiq_instance_get_use_count(VCHIQ_INSTANCE_T instance)
+vchiq_instance_get_use_count(struct vchiq_instance *instance)
 {
 	struct vchiq_service *service;
 	int use_count = 0, i;
@@ -2932,19 +2932,19 @@ vchiq_instance_get_use_count(VCHIQ_INSTANCE_T instance)
 }
 
 int
-vchiq_instance_get_pid(VCHIQ_INSTANCE_T instance)
+vchiq_instance_get_pid(struct vchiq_instance *instance)
 {
 	return instance->pid;
 }
 
 int
-vchiq_instance_get_trace(VCHIQ_INSTANCE_T instance)
+vchiq_instance_get_trace(struct vchiq_instance *instance)
 {
 	return instance->trace;
 }
 
 void
-vchiq_instance_set_trace(VCHIQ_INSTANCE_T instance, int trace)
+vchiq_instance_set_trace(struct vchiq_instance *instance, int trace)
 {
 	struct vchiq_service *service;
 	int i;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index 229dd262ec7d..19d2a2eefb6a 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -162,19 +162,19 @@ vchiq_release_internal(struct vchiq_state *state,
 		       struct vchiq_service *service);
 
 extern struct vchiq_debugfs_node *
-vchiq_instance_get_debugfs_node(VCHIQ_INSTANCE_T instance);
+vchiq_instance_get_debugfs_node(struct vchiq_instance *instance);
 
 extern int
-vchiq_instance_get_use_count(VCHIQ_INSTANCE_T instance);
+vchiq_instance_get_use_count(struct vchiq_instance *instance);
 
 extern int
-vchiq_instance_get_pid(VCHIQ_INSTANCE_T instance);
+vchiq_instance_get_pid(struct vchiq_instance *instance);
 
 extern int
-vchiq_instance_get_trace(VCHIQ_INSTANCE_T instance);
+vchiq_instance_get_trace(struct vchiq_instance *instance);
 
 extern void
-vchiq_instance_set_trace(VCHIQ_INSTANCE_T instance, int trace);
+vchiq_instance_set_trace(struct vchiq_instance *instance, int trace);
 
 extern void
 set_suspend_state(struct vchiq_arm_state *arm_state,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 95e892d45242..a5a68dcc5477 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -177,7 +177,7 @@ find_service_by_port(struct vchiq_state *state, int localport)
 }
 
 struct vchiq_service *
-find_service_for_instance(VCHIQ_INSTANCE_T instance,
+find_service_for_instance(struct vchiq_instance *instance,
 	unsigned int handle)
 {
 	struct vchiq_service *service;
@@ -201,7 +201,7 @@ find_service_for_instance(VCHIQ_INSTANCE_T instance,
 }
 
 struct vchiq_service *
-find_closed_service_for_instance(VCHIQ_INSTANCE_T instance,
+find_closed_service_for_instance(struct vchiq_instance *instance,
 	unsigned int handle)
 {
 	struct vchiq_service *service;
@@ -227,7 +227,7 @@ find_closed_service_for_instance(VCHIQ_INSTANCE_T instance,
 }
 
 struct vchiq_service *
-next_service_by_instance(struct vchiq_state *state, VCHIQ_INSTANCE_T instance,
+next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *instance,
 			 int *pidx)
 {
 	struct vchiq_service *service = NULL;
@@ -2280,7 +2280,7 @@ vchiq_init_state(struct vchiq_state *state, struct vchiq_slot_zero *slot_zero)
 struct vchiq_service *
 vchiq_add_service_internal(struct vchiq_state *state,
 			   const struct vchiq_service_params *params,
-			   int srvstate, VCHIQ_INSTANCE_T instance,
+			   int srvstate, struct vchiq_instance *instance,
 			   void (*userdata_term)(void *userdata))
 {
 	struct vchiq_service *service;
@@ -2775,7 +2775,7 @@ vchiq_free_service_internal(struct vchiq_service *service)
 }
 
 enum vchiq_status
-vchiq_connect_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance)
+vchiq_connect_internal(struct vchiq_state *state, struct vchiq_instance *instance)
 {
 	struct vchiq_service *service;
 	int i;
@@ -2811,7 +2811,7 @@ vchiq_connect_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance)
 }
 
 enum vchiq_status
-vchiq_shutdown_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance)
+vchiq_shutdown_internal(struct vchiq_state *state, struct vchiq_instance *instance)
 {
 	struct vchiq_service *service;
 	int i;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 00530d1554b4..aa0f34f1e98a 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -207,8 +207,6 @@ enum vchiq_bulk_dir {
 	VCHIQ_BULK_RECEIVE
 };
 
-typedef void (*VCHIQ_USERDATA_TERM_T)(void *userdata);
-
 struct vchiq_bulk {
 	short mode;
 	short dir;
@@ -236,7 +234,7 @@ struct remote_event {
 	u32 __unused;
 };
 
-typedef struct opaque_platform_state_t *VCHIQ_PLATFORM_STATE_T;
+struct opaque_platform_state;
 
 struct vchiq_slot {
 	char data[VCHIQ_SLOT_SIZE];
@@ -253,7 +251,7 @@ struct vchiq_service {
 	unsigned int handle;
 	unsigned int ref_count;
 	int srvstate;
-	VCHIQ_USERDATA_TERM_T userdata_term;
+	void (*userdata_term)(void *userdata);
 	unsigned int localport;
 	unsigned int remoteport;
 	int public_fourcc;
@@ -268,7 +266,7 @@ struct vchiq_service {
 	short peer_version;
 
 	struct vchiq_state *state;
-	VCHIQ_INSTANCE_T instance;
+	struct vchiq_instance *instance;
 
 	int service_use_count;
 
@@ -382,7 +380,7 @@ struct vchiq_state {
 
 	/* Mutex protecting services */
 	struct mutex mutex;
-	VCHIQ_INSTANCE_T *instance;
+	struct vchiq_instance **instance;
 
 	/* Processes incoming messages */
 	struct task_struct *slot_handler_thread;
@@ -468,7 +466,7 @@ struct vchiq_state {
 	struct vchiq_service_quota service_quotas[VCHIQ_MAX_SERVICES];
 	struct vchiq_slot_info slot_info[VCHIQ_MAX_SLOTS];
 	
-	VCHIQ_PLATFORM_STATE_T platform_state;
+	struct opaque_platform_state *platform_state;
 };
 
 struct bulk_waiter {
@@ -495,13 +493,13 @@ extern enum vchiq_status
 vchiq_init_state(struct vchiq_state *state, struct vchiq_slot_zero *slot_zero);
 
 extern enum vchiq_status
-vchiq_connect_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance);
+vchiq_connect_internal(struct vchiq_state *state, struct vchiq_instance *instance);
 
 extern struct vchiq_service *
 vchiq_add_service_internal(struct vchiq_state *state,
 			   const struct vchiq_service_params *params,
-			   int srvstate, VCHIQ_INSTANCE_T instance,
-			   VCHIQ_USERDATA_TERM_T userdata_term);
+			   int srvstate, struct vchiq_instance *instance,
+			   void (*userdata_term)(void *userdata));
 
 extern enum vchiq_status
 vchiq_open_service_internal(struct vchiq_service *service, int client_id);
@@ -516,7 +514,7 @@ extern void
 vchiq_free_service_internal(struct vchiq_service *service);
 
 extern enum vchiq_status
-vchiq_shutdown_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance);
+vchiq_shutdown_internal(struct vchiq_state *state, struct vchiq_instance *instance);
 
 extern void
 remote_event_pollall(struct vchiq_state *state);
@@ -560,15 +558,15 @@ extern struct vchiq_service *
 find_service_by_port(struct vchiq_state *state, int localport);
 
 extern struct vchiq_service *
-find_service_for_instance(VCHIQ_INSTANCE_T instance,
+find_service_for_instance(struct vchiq_instance *instance,
 	unsigned int handle);
 
 extern struct vchiq_service *
-find_closed_service_for_instance(VCHIQ_INSTANCE_T instance,
+find_closed_service_for_instance(struct vchiq_instance *instance,
 	unsigned int handle);
 
 extern struct vchiq_service *
-next_service_by_instance(struct vchiq_state *state, VCHIQ_INSTANCE_T instance,
+next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *instance,
 			 int *pidx);
 
 extern void
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c
index f217b78d95a0..89cc52211de4 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c
@@ -117,7 +117,7 @@ static const struct file_operations debugfs_log_fops = {
 
 static int debugfs_usecount_show(struct seq_file *f, void *offset)
 {
-	VCHIQ_INSTANCE_T instance = f->private;
+	struct vchiq_instance *instance = f->private;
 	int use_count;
 
 	use_count = vchiq_instance_get_use_count(instance);
@@ -129,7 +129,7 @@ DEFINE_SHOW_ATTRIBUTE(debugfs_usecount);
 
 static int debugfs_trace_show(struct seq_file *f, void *offset)
 {
-	VCHIQ_INSTANCE_T instance = f->private;
+	struct vchiq_instance *instance = f->private;
 	int trace;
 
 	trace = vchiq_instance_get_trace(instance);
@@ -148,7 +148,7 @@ static ssize_t debugfs_trace_write(struct file *file,
 	size_t count, loff_t *ppos)
 {
 	struct seq_file *f = (struct seq_file *)file->private_data;
-	VCHIQ_INSTANCE_T instance = f->private;
+	struct vchiq_instance *instance = f->private;
 	char firstchar;
 
 	if (copy_from_user(&firstchar, buffer, 1))
@@ -184,7 +184,7 @@ static const struct file_operations debugfs_trace_fops = {
 };
 
 /* add an instance (process) to the debugfs entries */
-void vchiq_debugfs_add_instance(VCHIQ_INSTANCE_T instance)
+void vchiq_debugfs_add_instance(struct vchiq_instance *instance)
 {
 	char pidstr[16];
 	struct dentry *top;
@@ -201,7 +201,7 @@ void vchiq_debugfs_add_instance(VCHIQ_INSTANCE_T instance)
 	vchiq_instance_get_debugfs_node(instance)->dentry = top;
 }
 
-void vchiq_debugfs_remove_instance(VCHIQ_INSTANCE_T instance)
+void vchiq_debugfs_remove_instance(struct vchiq_instance *instance)
 {
 	struct vchiq_debugfs_node *node =
 				vchiq_instance_get_debugfs_node(instance);
@@ -242,11 +242,11 @@ void vchiq_debugfs_deinit(void)
 {
 }
 
-void vchiq_debugfs_add_instance(VCHIQ_INSTANCE_T instance)
+void vchiq_debugfs_add_instance(struct vchiq_instance *instance)
 {
 }
 
-void vchiq_debugfs_remove_instance(VCHIQ_INSTANCE_T instance)
+void vchiq_debugfs_remove_instance(struct vchiq_instance *instance)
 {
 }
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.h
index 9b563d105fdb..ec2f033cdf32 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.h
@@ -14,8 +14,8 @@ void vchiq_debugfs_init(void);
 
 void vchiq_debugfs_deinit(void);
 
-void vchiq_debugfs_add_instance(VCHIQ_INSTANCE_T instance);
+void vchiq_debugfs_add_instance(struct vchiq_instance *instance);
 
-void vchiq_debugfs_remove_instance(VCHIQ_INSTANCE_T instance);
+void vchiq_debugfs_remove_instance(struct vchiq_instance *instance);
 
 #endif /* VCHIQ_DEBUGFS_H */
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index cfadb79801c2..9b00f78b0029 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -61,10 +61,11 @@ struct vchiq_element {
 	unsigned int size;
 };
 
+
 struct vchiq_service_base {
 	int fourcc;
 	enum vchiq_status (*callback)(enum vchiq_reason,
-                                      struct vchiq_header *,
+				      struct vchiq_header *,
                                       unsigned int, void *);
 	void *userdata;
 };
@@ -72,8 +73,8 @@ struct vchiq_service_base {
 struct vchiq_service_params {
 	int fourcc;
 	enum vchiq_status (*callback)(enum vchiq_reason,
-				      struct vchiq_header *,
-				      unsigned int, void *);
+                                      struct vchiq_header *,
+                                      unsigned int, void *);
 	void *userdata;
 	short version;       /* Increment for non-trivial changes */
 	short version_min;   /* Update for incompatible changes */
@@ -90,15 +91,15 @@ struct vchiq_config {
 	short version_min;  /* The minimum compatible version of VCHIQ */
 };
 
-typedef struct vchiq_instance_struct *VCHIQ_INSTANCE_T;
+struct vchiq_instance;
 
-extern enum vchiq_status vchiq_initialise(VCHIQ_INSTANCE_T *pinstance);
-extern enum vchiq_status vchiq_shutdown(VCHIQ_INSTANCE_T instance);
-extern enum vchiq_status vchiq_connect(VCHIQ_INSTANCE_T instance);
-extern enum vchiq_status vchiq_add_service(VCHIQ_INSTANCE_T instance,
+extern enum vchiq_status vchiq_initialise(struct vchiq_instance **pinstance);
+extern enum vchiq_status vchiq_shutdown(struct vchiq_instance *instance);
+extern enum vchiq_status vchiq_connect(struct vchiq_instance *instance);
+extern enum vchiq_status vchiq_add_service(struct vchiq_instance *instance,
 	const struct vchiq_service_params *params,
 	unsigned int *pservice);
-extern enum vchiq_status vchiq_open_service(VCHIQ_INSTANCE_T instance,
+extern enum vchiq_status vchiq_open_service(struct vchiq_instance *instance,
 	const struct vchiq_service_params *params,
 	unsigned int *pservice);
 extern enum vchiq_status vchiq_close_service(unsigned int service);
@@ -132,9 +133,9 @@ extern void vchiq_get_config(struct vchiq_config *config);
 extern enum vchiq_status vchiq_set_service_option(unsigned int service,
 	enum vchiq_service_option option, int value);
 
-extern enum vchiq_status vchiq_remote_use(VCHIQ_INSTANCE_T instance,
-					   void (*callback)(void *cb_arg), void *cb_arg);
-extern enum vchiq_status vchiq_remote_release(VCHIQ_INSTANCE_T instance);
+extern enum vchiq_status vchiq_remote_use(struct vchiq_instance *instance,
+					  void (*callback)(void *cb_arg), void *cb_arg);
+extern enum vchiq_status vchiq_remote_release(struct vchiq_instance *instance);
 
 extern enum vchiq_status vchiq_dump_phys_mem(unsigned int service,
 	void *ptr, size_t num_bytes);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index f08819d1e7a1..f7d7b966186d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -440,7 +440,7 @@ EXPORT_SYMBOL(vchi_msg_hold);
 
 int32_t vchi_initialise(struct vchi_instance_handle **instance_handle)
 {
-	VCHIQ_INSTANCE_T instance;
+	struct vchiq_instance *instance;
 	enum vchiq_status status;
 
 	status = vchiq_initialise(&instance);
@@ -464,7 +464,7 @@ EXPORT_SYMBOL(vchi_initialise);
  ***********************************************************/
 int32_t vchi_connect(struct vchi_instance_handle *instance_handle)
 {
-	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
+	struct vchiq_instance *instance = (struct vchiq_instance *)instance_handle;
 
 	return vchiq_connect(instance);
 }
@@ -483,7 +483,7 @@ EXPORT_SYMBOL(vchi_connect);
  ***********************************************************/
 int32_t vchi_disconnect(struct vchi_instance_handle *instance_handle)
 {
-	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
+	struct vchiq_instance *instance = (struct vchiq_instance *)instance_handle;
 
 	return vchiq_status_to_vchi(vchiq_shutdown(instance));
 }
@@ -565,7 +565,7 @@ static enum vchiq_status shim_callback(enum vchiq_reason reason,
 	return VCHIQ_SUCCESS;
 }
 
-static struct shim_service *service_alloc(VCHIQ_INSTANCE_T instance,
+static struct shim_service *service_alloc(struct vchiq_instance *instance,
 	struct service_creation *setup)
 {
 	struct shim_service *service = kzalloc(sizeof(struct shim_service), GFP_KERNEL);
@@ -597,7 +597,7 @@ int32_t vchi_service_open(struct vchi_instance_handle *instance_handle,
 			  struct service_creation *setup,
 			  struct vchi_service_handle **handle)
 {
-	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
+	struct vchiq_instance *instance = (struct vchiq_instance *)instance_handle;
 	struct shim_service *service = service_alloc(instance, setup);
 
 	*handle = (struct vchi_service_handle *)service;
-- 
2.17.1


