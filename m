X-GM-THRID: 6755960127598100480
X-Received: by 2002:ac8:4549:: with SMTP id z9mr6012936qtn.106.1572994564997;
        Tue, 05 Nov 2019 14:56:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:18c9:: with SMTP id o9ls41196qtk.3.gmail; Tue, 05 Nov
 2019 14:56:04 -0800 (PST)
X-Google-Smtp-Source: APXvYqwCk/ZX7bRJjOBE38YwRw4L/SbQpYH4dfnI53/5RzVBfBqZzKK3F2wgT3fujwmDqqhf1/lr
X-Received: by 2002:ac8:4546:: with SMTP id z6mr20681725qtn.346.1572994564102;
        Tue, 05 Nov 2019 14:56:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572994564; cv=none;
        d=google.com; s=arc-20160816;
        b=hPuMu2b3rTnDO1+H58cSiIKOOLDOOPPXj/2H/Gyw4gMKHdCp9yosdV7jKLf+U1ofVb
         4Y8k6pRB1z9onfKNkyZwrFU6L/4RPPTwr8rXjvI3NGaEGImK25RaVuIUjvCYvbYjcFOv
         XtKMms0KOGV9HnEPP2178E1iUQA3wl3Jsn1aKmvLpAVU7JdHmOTS5/B3RUC7Eoajdcgc
         rfPUngSGN8drXFjyhw65uZXNsTg7/wyvddsBHvoA9Dh+ZsuwieAiWDc9bYwRTBr8cbKG
         MxUsCSASkc85j2NCbX16r6h+anl6bswCd0briWsAnuCEmHexdpaCAYuoXmD8Bk+3SfFK
         AZ0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=xJ/u3UIFXC1tX9qRvwSJYGxfB1755zqOKlqjiy0/y0Y=;
        b=y3hdzAtavAyZBJWCInksthRHNg9GWXw2Y/wCX/mm+QzP47JiuDotm++awmmz+SQtgP
         oOhpA0/eAb/6C75RH4AGdw6E1zW7F0Ahn5Z2kPi8+esBf9mGyz9lDKo0w/k4Ln3Fa8Ib
         9dJ519Dau0023mJyiCd8DE2QyhylCyxP5sRXAbQp6FNoJBfKSiRKAe9eArTf3H/thLnr
         1m1C+Ti5K4tr62hoYO5HKFDVMj3QVPaPzC0r2AEFt1bWEqiNZgUGaWnFYeLzN16k/ORq
         99fPPc/le90NXttrkwULc+hZMfI4Lx7EWXm+s1BLrVf577dFlqii8GNPJhuFZQ33oYqr
         H/FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="DR/nKl7N";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id o24si1514851qtb.2.2019.11.05.14.56.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 14:56:04 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="DR/nKl7N";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id d29so4068219plj.8
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 14:56:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=xJ/u3UIFXC1tX9qRvwSJYGxfB1755zqOKlqjiy0/y0Y=;
        b=DR/nKl7NaseuCF9hevXaBKwmiHIkcXzILM5kcfpborJmuidL2A2AwC6VmMKAdjls9X
         jX//Rz36G7avhGTch0X4CP4OCnKU085+YUjckiATYI1GID7ttoIIPVCNo7TuobY5mk3M
         fCGPiHYHbb8KULJNjJyoTKxRc4PqQQ1Nr0futr/B0K8x5g1y8TSxc/qYhCpmmAzgGRtq
         z5XbpYLeg4Tjw6TGGS6k+b/YCUOEVAUrMeKg7ay911S5GxSrhxZnycQOOCosTmvCJsuB
         qJZB9+4JIGXCoX2YTXpq68CuqDqtPPX4bOUuetZ3/dIpUNLCktqiHbHwEz1kJg7z/HSu
         yAcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=xJ/u3UIFXC1tX9qRvwSJYGxfB1755zqOKlqjiy0/y0Y=;
        b=SfPM6L8tIzALwzmFVyN48nNh/9pkw2pDoyCjD7utekDWt/bx80LgIpgojyPhcDs7T8
         dvrwDaUjoqM6EXK0dN8egOj/0WbfPe3vGIsUzunTjbPcFf1IgqlBeCXg/KoRBGnkK9J5
         bOQ95mMvNvveMpsZiz2mzx3r+dpTLTaZyRjlWX6HaEMUx2fAQqqUV5bsSI94jpUjEf0A
         tBmzl6LbRnnNvvzFFLG/vN2wc8YlC8xwnHdWNC25hiHmcm9Fg16EzyXnGLunBnik/kQe
         EVygznklw6qDNOGpTfJC7VFtZ9j/qnegXfc229wcycqupC1N8LO2VOMC2O0H0zqEnt9T
         7xVw==
X-Gm-Message-State: APjAAAXGRLPQJLQL9hdmIO+u9AbXMb0p+vh4/cI3z5oPbI//SVBc8qgB
	Ue38S54Cwxl654vf8zaY82B/OQNFTsei5Q==
X-Received: by 2002:a17:902:5a06:: with SMTP id q6mr35176256pli.246.1572994562854;
        Tue, 05 Nov 2019 14:56:02 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id hi2sm420889pjb.22.2019.11.05.14.56.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 14:56:02 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 13/14] staging: vc04_services: Replace VCHIQ_INSTANCE_T typedef with struct vchiq_instance
Date: Tue,  5 Nov 2019 14:55:30 -0800
Message-Id: <ed2b3076f93a920149716687b48e0c5e3ddf0569.1572994235.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>

Replaces  VCHIQ_INSTANCE_T typedef with struct vchiq_instance to match
kernel code style. Issue found by checkpatch.

Additionally, as part of the process renames "struct vchiq_instance_struct" to "struct vchiq_instance".

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 46 +++++++++----------
 .../interface/vchiq_arm/vchiq_arm.h           | 10 ++--
 .../interface/vchiq_arm/vchiq_core.c          | 12 ++---
 .../interface/vchiq_arm/vchiq_core.h          | 16 +++----
 .../interface/vchiq_arm/vchiq_debugfs.c       | 14 +++---
 .../interface/vchiq_arm/vchiq_debugfs.h       |  4 +-
 .../interface/vchiq_arm/vchiq_if.h            | 16 +++----
 .../interface/vchiq_arm/vchiq_shim.c          | 10 ++--
 8 files changed, 64 insertions(+), 64 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index add552226eaa..be8b2a71da2d 100644
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
-	VCHIQ_INSTANCE_T              instance,
+	struct vchiq_instance             *instance,
 	const struct vchiq_service_params *params,
 	unsigned int       *phandle)
 {
@@ -341,7 +341,7 @@ enum vchiq_status vchiq_add_service(
 EXPORT_SYMBOL(vchiq_add_service);
 
 enum vchiq_status vchiq_open_service(
-	VCHIQ_INSTANCE_T              instance,
+	struct vchiq_instance             *instance,
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
index 7cdb5d50fb4e..b9d94f6b9bef 100644
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
 			   vchiq_userdata_term userdata_term)
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
index 0339503d57d7..05b39c3564f6 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -268,7 +268,7 @@ struct vchiq_service {
 	short peer_version;
 
 	struct vchiq_state *state;
-	VCHIQ_INSTANCE_T instance;
+	struct vchiq_instance *instance;
 
 	int service_use_count;
 
@@ -382,7 +382,7 @@ struct vchiq_state {
 
 	/* Mutex protecting services */
 	struct mutex mutex;
-	VCHIQ_INSTANCE_T *instance;
+	struct vchiq_instance **instance;
 
 	/* Processes incoming messages */
 	struct task_struct *slot_handler_thread;
@@ -495,12 +495,12 @@ extern enum vchiq_status
 vchiq_init_state(struct vchiq_state *state, struct vchiq_slot_zero *slot_zero);
 
 extern enum vchiq_status
-vchiq_connect_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance);
+vchiq_connect_internal(struct vchiq_state *state, struct vchiq_instance *instance);
 
 extern struct vchiq_service *
 vchiq_add_service_internal(struct vchiq_state *state,
 			   const struct vchiq_service_params *params,
-			   int srvstate, VCHIQ_INSTANCE_T instance,
+			   int srvstate, struct vchiq_instance *instance,
 			   vchiq_userdata_term userdata_term);
 
 extern enum vchiq_status
@@ -516,7 +516,7 @@ extern void
 vchiq_free_service_internal(struct vchiq_service *service);
 
 extern enum vchiq_status
-vchiq_shutdown_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance);
+vchiq_shutdown_internal(struct vchiq_state *state, struct vchiq_instance *instance);
 
 extern void
 remote_event_pollall(struct vchiq_state *state);
@@ -560,15 +560,15 @@ extern struct vchiq_service *
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
index dc3d204e7698..07c6a3db5ab6 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -90,16 +90,16 @@ struct vchiq_config {
 	short version_min;  /* The minimum compatible version of VCHIQ */
 };
 
-typedef struct vchiq_instance_struct *VCHIQ_INSTANCE_T;
+struct vchiq_instance;
 typedef void (*vchiq_remote_callback)(void *cb_arg);
 
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
@@ -133,9 +133,9 @@ extern void vchiq_get_config(struct vchiq_config *config);
 extern enum vchiq_status vchiq_set_service_option(unsigned int service,
 	enum vchiq_service_option option, int value);
 
-extern enum vchiq_status vchiq_remote_use(VCHIQ_INSTANCE_T instance,
+extern enum vchiq_status vchiq_remote_use(struct vchiq_instance *instance,
 	vchiq_remote_callback callback, void *cb_arg);
-extern enum vchiq_status vchiq_remote_release(VCHIQ_INSTANCE_T instance);
+extern enum vchiq_status vchiq_remote_release(struct vchiq_instance *instance);
 
 extern enum vchiq_status vchiq_dump_phys_mem(unsigned int service,
 	void *ptr, size_t num_bytes);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 3f052cae5bb7..3055e94a53da 100644
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


