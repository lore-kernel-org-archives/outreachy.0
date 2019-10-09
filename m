X-GM-THRID: 6743623075363815424
X-Received: by 2002:a5e:d70e:: with SMTP id v14mr1479853iom.100.1570589067137;
        Tue, 08 Oct 2019 19:44:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:db48:: with SMTP id w8ls458534ilq.3.gmail; Tue, 08 Oct
 2019 19:44:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwdp0omgFWJRFxbMcyyztZ95BQWfMg7BHnousuhzUImmQQEm7BwiQqRLnmS+mJqvwU4u0Jf
X-Received: by 2002:a92:9f0d:: with SMTP id u13mr1093927ili.13.1570589066050;
        Tue, 08 Oct 2019 19:44:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570589066; cv=none;
        d=google.com; s=arc-20160816;
        b=vpAcqbkNbldAn4k29YgH3DK9WGK3RsboPJXpKrbk8/QWNE5SIqnIEdoC3MOD/C1DmT
         kBPf8CKvvx0Sy/AopVOxHavXQb6/jcRKnLfE9dXtC7go5Ym8Gdlu+8EVrHQBCyrYimDT
         36mw+IWxcPAjMbW/X34vV817xipGrlG3wsFbQFzLpWBksQcdZy84+uwCWJBSfL9qIZhN
         p7ywwm49hPhV6X8Ekm2tJM3I8YvOL1bD7wiRXoobGJVfKeKe/PdNaqIT6E9Dc6P4AC/D
         7gJqcYIXepjbS5JLdrw4gFWtNYF7/qotaJR7NHB9EYWG9qD3LMRB7XJEu+sgCRXIpcoj
         eEMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=dJDoDGu2qTpToLkU88XiZ+ldViToICCWK2TmjACjmfo=;
        b=VmROi5pkgjSeMOU4IY33u8Ivr2UqgQ7tJ1+Q2VUEUI9iZ9vlrVHd3OXySi4cCjnwv4
         +EdL9TVTEmsQSjq+xNCddti48IrCIqNOBf+RMHAACJSIhwG/7uJ/64uo0f/EAZE55OJ3
         NjD+VtNAiS1M6hoAafxGV2kOqny1LUHyKuqgnRnsx0Jph9329n8QXE9/xfrc6JNw2HDb
         gLIBbi+/up+1x4vSGVF7qlWX6oWTuXOG1iCpF7rpEzmmceJowjy3fLzB8DtSf+qiWTH7
         HR0nAkxEcaQb+CjN65z/ZtzTe0TC8uKRk9esrBF6aQzOp6cOqL6v5BlnmypXvUV9PLPu
         8cfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tQJ6XcAK;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nachukannan@gmail.com>
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com. [2607:f8b0:4864:20::b41])
        by gmr-mx.google.com with ESMTPS id x3si12036iom.2.2019.10.08.19.44.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2019 19:44:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) client-ip=2607:f8b0:4864:20::b41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tQJ6XcAK;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yb1-xb41.google.com with SMTP id m1so250247ybm.1
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Oct 2019 19:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=dJDoDGu2qTpToLkU88XiZ+ldViToICCWK2TmjACjmfo=;
        b=tQJ6XcAK+/L5aN+D4TdlGEdaCy561nnc8FDj0633t8ReMQRW9keehemh/wF56YvEf3
         +73/SthrticZlRm57CoKrEjX6SsPypl91P293yHG6PohSx57SNKZCKUCIVBHJ/xhx6pi
         yXiO8hSnEPFTLzIpy2z/YElqqj5zUn2hEbwcV4JOoZJSWEA2GVRqvZDFViI/fNZvxUXn
         /jJPoj8BeuFY4a3pLXOQpnEsQqZlcXwrnO3WmMTSU+eXLDkN703d+YjaEwdVGGSGBtNp
         h/tmD7FEhpaPlQ/tgWS3hOpiiYE795QKTXVP4uXcazCaboycG6FpQtFKdanXAcI+ogoc
         JXOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=dJDoDGu2qTpToLkU88XiZ+ldViToICCWK2TmjACjmfo=;
        b=iClQPqadvy4XnrZ2AtblwBx9Y12agTs3Qc48YrA7qAlhILLFuWQ9Bgpcn893H3+5Fw
         DRgqwzATznSdSXYx+1K9qf69FcDN3+yYNBXdHUqps8zQ5JYgb1eMHLqB97u8p+gu+IMO
         5Fjnda1DJhvTwpQlb+ZnMlCgWU7wlt2DqhwX0pd+cm2X1vHP56NgBfbU1EYs6unQuN36
         rpWsnuOTnZI4fpJWzDmfL0AvQ9oZFeYk0DOBhupruch4jco3RW64QL1bokLctLMdtLo9
         tXuA7Mw3iCtdOk7nLQ89SrOYV/skLhZ4gz3ZL30ec8R7jUiUJeex29ULLjH31ZuQjRdR
         m6/A==
X-Gm-Message-State: APjAAAUJTBu1O89PDjgZ0JqwjLpvamMPg5GPTP8Vlsz/HyXpXlfv/6es
	nTS43TTIZygI6hUo/r3dzzLU4jWee/puPg==
X-Received: by 2002:a25:6b48:: with SMTP id o8mr580833ybm.337.1570589065451;
        Tue, 08 Oct 2019 19:44:25 -0700 (PDT)
Return-Path: <nachukannan@gmail.com>
Received: from ubuntu ([107.15.113.108])
        by smtp.gmail.com with ESMTPSA id e130sm251622ywh.50.2019.10.08.19.44.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 08 Oct 2019 19:44:24 -0700 (PDT)
From: Nachammai Karuppiah <nachukannan@gmail.com>
To: Eric Anholt <eric@anholt.net>,
	Stefan Wahren <wahrenst@gmx.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	devel@driverdev.osuosl.org,
	Nachammai Karuppiah <nachukannan@gmail.com>
Subject: [PATCH v3] staging: vc04_services: Avoid NULL comparison
Date: Tue,  8 Oct 2019 19:44:15 -0700
Message-Id: <1570589056-14386-1-git-send-email-nachukannan@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove NULL comparison. Issue found using checkpatch.pl

Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>

---

Changes in V2
   - Remove all NULL comparisons in vc04_services/interface directory.
---

changes in V3
   - Fixed warnings. Reported-by: kbuild test robot <lkp@intel.com>
---

Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
---
 .../interface/vchiq_arm/vchiq_2835_arm.c           |  4 ++--
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c  | 22 +++++++++++-----------
 .../vc04_services/interface/vchiq_arm/vchiq_core.c |  4 ++--
 .../vc04_services/interface/vchiq_arm/vchiq_shim.c |  2 +-
 4 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 8dc730c..7cdb21e 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -526,11 +526,11 @@ create_pagelist(char __user *buf, size_t count, unsigned short type)
 			return NULL;
 		}
 
-		WARN_ON(g_free_fragments == NULL);
+		WARN_ON(!g_free_fragments);
 
 		down(&g_free_fragments_mutex);
 		fragments = g_free_fragments;
-		WARN_ON(fragments == NULL);
+		WARN_ON(!fragments);
 		g_free_fragments = *(char **) g_free_fragments;
 		up(&g_free_fragments_mutex);
 		pagelist->type = PAGELIST_READ_WITH_FRAGMENTS +
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index b1595b1..d7d9c7c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -827,7 +827,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		/* Remove all services */
 		i = 0;
 		while ((service = next_service_by_instance(instance->state,
-			instance, &i)) != NULL) {
+			instance, &i))) {
 			status = vchiq_remove_service(service->handle);
 			unlock_service(service);
 			if (status != VCHIQ_SUCCESS)
@@ -907,7 +907,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 				&args.params, srvstate,
 				instance, user_service_free);
 
-		if (service != NULL) {
+		if (service) {
 			user_service->service = service;
 			user_service->userdata = userdata;
 			user_service->instance = instance;
@@ -988,7 +988,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
 
 		service = find_service_for_instance(instance, handle);
-		if (service != NULL) {
+		if (service) {
 			status = (cmd == VCHIQ_IOC_USE_SERVICE)	?
 				vchiq_use_service_internal(service) :
 				vchiq_release_service_internal(service);
@@ -1021,7 +1021,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 
 		service = find_service_for_instance(instance, args.handle);
 
-		if ((service != NULL) && (args.count <= MAX_ELEMENTS)) {
+		if (service && (args.count <= MAX_ELEMENTS)) {
 			/* Copy elements into kernel space */
 			struct vchiq_element elements[MAX_ELEMENTS];
 
@@ -1343,11 +1343,11 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		spin_unlock(&msg_queue_spinlock);
 
 		complete(&user_service->remove_event);
-		if (header == NULL)
+		if (!header)
 			ret = -ENOTCONN;
 		else if (header->size <= args.bufsize) {
 			/* Copy to user space if msgbuf is not NULL */
-			if ((args.buf == NULL) ||
+			if (!args.buf ||
 				(copy_to_user((void __user *)args.buf,
 				header->data,
 				header->size) == 0)) {
@@ -1426,7 +1426,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
 
 		service = find_closed_service_for_instance(instance, handle);
-		if (service != NULL) {
+		if (service) {
 			struct user_service *user_service =
 				(struct user_service *)service->base.userdata;
 			close_delivered(user_service);
@@ -2223,13 +2223,13 @@ struct vchiq_state *
 vchiq_get_state(void)
 {
 
-	if (g_state.remote == NULL)
+	if (!g_state.remote)
 		printk(KERN_ERR "%s: g_state.remote == NULL\n", __func__);
 	else if (g_state.remote->initialised != 1)
 		printk(KERN_NOTICE "%s: g_state.remote->initialised != 1 (%d)\n",
 			__func__, g_state.remote->initialised);
 
-	return ((g_state.remote != NULL) &&
+	return (g_state.remote &&
 		(g_state.remote->initialised == 1)) ? &g_state : NULL;
 }
 
@@ -2924,7 +2924,7 @@ vchiq_instance_get_use_count(VCHIQ_INSTANCE_T instance)
 
 	i = 0;
 	while ((service = next_service_by_instance(instance->state,
-		instance, &i)) != NULL) {
+		instance, &i))) {
 		use_count += service->service_use_count;
 		unlock_service(service);
 	}
@@ -2951,7 +2951,7 @@ vchiq_instance_set_trace(VCHIQ_INSTANCE_T instance, int trace)
 
 	i = 0;
 	while ((service = next_service_by_instance(instance->state,
-		instance, &i)) != NULL) {
+		instance, &i))) {
 		service->trace = trace;
 		unlock_service(service);
 	}
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 56a23a2..4c375cd 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -542,7 +542,7 @@ reserve_space(struct vchiq_state *state, size_t space, int is_blocking)
 	if (space > slot_space) {
 		struct vchiq_header *header;
 		/* Fill the remaining space with padding */
-		WARN_ON(state->tx_data == NULL);
+		WARN_ON(!state->tx_data);
 		header = (struct vchiq_header *)
 			(state->tx_data + (tx_pos & VCHIQ_SLOT_MASK));
 		header->msgid = VCHIQ_MSGID_PADDING;
@@ -3578,7 +3578,7 @@ void vchiq_log_dump_mem(const char *label, u32 addr, const void *void_mem,
 		}
 		*s++ = '\0';
 
-		if ((label != NULL) && (*label != '\0'))
+		if (label && (*label != '\0'))
 			vchiq_log_trace(VCHIQ_LOG_TRACE,
 				"%s: %08x: %s", label, addr, line_buf);
 		else
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 17a4f2c..10be23e 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -628,7 +628,7 @@ int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
 		}
 	}
 
-	return (service != NULL) ? 0 : -1;
+	return service ? 0 : -1;
 }
 EXPORT_SYMBOL(vchi_service_open);
 
-- 
2.7.4


