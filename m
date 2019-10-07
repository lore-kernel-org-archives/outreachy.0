X-GM-THRID: 6743623075363815424
X-Received: by 2002:a81:9e41:: with SMTP id n1mr20895812ywj.351.1570487378190;
        Mon, 07 Oct 2019 15:29:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1ed6:: with SMTP id e205ls248563ybe.14.gmail; Mon, 07
 Oct 2019 15:29:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwdZAmj4bpFUG8/HVJWZFCNmQfWtNSkkO3DXY1ogIrbrhe2YcB7hCRupIwJME6ESIR1oxIf
X-Received: by 2002:a25:9381:: with SMTP id a1mr13172065ybm.251.1570487376971;
        Mon, 07 Oct 2019 15:29:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570487376; cv=none;
        d=google.com; s=arc-20160816;
        b=e+XkolrHH33132bsAFf8EWuX5f2KysdKd9o4PqgVmlgoV3FlhaDpwi1IB4ADgROtXe
         mOJG881a2EUjtxqMUFzmHNpuF5JCRvL2wNKDMDeQmwQwJC7C/qNnWIfeY0OdbwTIk9lI
         dCtadDKer50vA4eI7fQIX5I2urSTwbvSrNHolOvUCHmkozBGeawYahYz4JIjxWlaus5Q
         50FwFSg9iTa98oVBDuDMDXEott8sGMI7n8Vhn32DY5d+BTFVg8cyHewnjPECL6H+7qDD
         v2sumrPiNv6DUN36Yv0f6FfFXE8nwyBUkR74i5RJLCNuzrlMXlYsG5mt9b2Of8WtKwHQ
         0maQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Vh/BXioQ6oy7rRWMvrPF2n3H3tPYXp6LKVPTrcmyM0Y=;
        b=T42ER7NA1eYQc8azdxhilmNpu+KP6gVChSeUgnLPtckV+Bo4pxRcey9xkuEUDPH7el
         PBBJobWkRIrbM6fnDaKhIpM2JF5GiD8t6F/7fVM0InQKQ1WzZd3D8YrSf19SOj3RoGag
         FAseDopUEwAe/uBfrgEvRLsI7OEZTacfKSVNT+AbH2ksU5ozlT53T7XIJKNznaSmO257
         a8azaM8YXaC9TtHFD/7nBFR0r2Xg7APbezPA0E4jj3MJLnARa0wT4bVt27wtLfWVQ2DY
         9gsw2VC9VIzCfpDzEIenzkkHTVAEgEk15/FxxM9Gl7Mph8we2u9NeqJagj3Q0i8ob/s/
         CXHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UPufEnk+;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nachukannan@gmail.com>
Received: from mail-yw1-xc41.google.com (mail-yw1-xc41.google.com. [2607:f8b0:4864:20::c41])
        by gmr-mx.google.com with ESMTPS id j136si428965ybj.3.2019.10.07.15.29.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 15:29:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) client-ip=2607:f8b0:4864:20::c41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UPufEnk+;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yw1-xc41.google.com with SMTP id w140so4090933ywd.0
        for <outreachy-kernel@googlegroups.com>; Mon, 07 Oct 2019 15:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Vh/BXioQ6oy7rRWMvrPF2n3H3tPYXp6LKVPTrcmyM0Y=;
        b=UPufEnk+whbcuyeXgcOySlxDnPOKp6HR8pcmu/+YFHCmYCIDej+rKuWwfLBHa17+XT
         xm/ZugK8V8kHF+V6g57nicwe/cu9Q2k9L7oWMMOViVP7ykplODU1cmxSwyYWCb0yNUH5
         Rf1Pqj1YD8JyI8ufcd7pBpoSTr7XGF4jg7tlogFcaT5nB9nEsA555EUXYR1oMeVNVR57
         S6bTM8fnSCWDC9VoXgtRKaSsW2HL9DpYGnunJYKoRxn6KSbI1qOZ7A6go0PR/tRiTSD2
         IKxRUVGoUYj6sZnUBXlS70tOtb1eLG3QgCn29SRKKrm5IdyYkk3H2DtWFTKOE2z6rrAu
         6fjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Vh/BXioQ6oy7rRWMvrPF2n3H3tPYXp6LKVPTrcmyM0Y=;
        b=gK2LUfOj2yGcYQ9F2Hs72J7pnd5BjoI0zixs44ssW+Y1CqGld7iWU/vgeDbxDeaGCA
         6uA16SFxXZXrQQPQOhyqWa1PFthYvS/3iN9zwTCwH+c6St090bYcHT2PCMqHt/dBmDkR
         uLaTXKAzozmGayxSsJjiwAKmxYwIH+pkAaT1Kn72ukcNSEoQyfmW2SRewXSxF3nrZ1S8
         aP47LMWkMBnaf41TrxnOFCFVq06XlRCHopQ7uqI93hRRSwN4f95wkqQ5fc3I4SwdUSJs
         DpTohRdBt3w3JX28yYiYXN/vuBkGZ9LJ/yQ2H2aEDZxP1xvwu+kdaDXUG5siw7cNLfvI
         wWDw==
X-Gm-Message-State: APjAAAUBmgpShu5V0VDq7br7cPImDMdTGjGZ8REU3C8XaT+JB75hlKZx
	tHvadqeEYwB42yF3oS/QmGc=
X-Received: by 2002:a81:994a:: with SMTP id q71mr20313699ywg.266.1570487376637;
        Mon, 07 Oct 2019 15:29:36 -0700 (PDT)
Return-Path: <nachukannan@gmail.com>
Received: from ubuntu ([107.15.113.108])
        by smtp.gmail.com with ESMTPSA id l2sm4026015ywd.16.2019.10.07.15.29.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 07 Oct 2019 15:29:35 -0700 (PDT)
From: Nachammai Karuppiah <nachukannan@gmail.com>
To: Eric Anholt <eric@anholt.net>,
	Stefan Wahren <wahrenst@gmx.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com,
	Nachammai Karuppiah <nachukannan@gmail.com>
Subject: [PATCH v2] staging: vc04_services: Avoid NULL comparison
Date: Mon,  7 Oct 2019 15:29:28 -0700
Message-Id: <1570487369-35454-1-git-send-email-nachukannan@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove NULL comparison. Issue found using checkpatch.pl

Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>

---

Changes in V2
   - Remove all NULL comparisons in vc04_services/interface directory.
---
 .../interface/vchiq_arm/vchiq_2835_arm.c           |  4 ++--
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c  | 28 +++++++++++-----------
 .../vc04_services/interface/vchiq_arm/vchiq_core.c |  4 ++--
 .../vc04_services/interface/vchiq_arm/vchiq_shim.c |  2 +-
 4 files changed, 19 insertions(+), 19 deletions(-)

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
index b1595b1..b930148 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -826,8 +826,8 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 
 		/* Remove all services */
 		i = 0;
-		while ((service = next_service_by_instance(instance->state,
-			instance, &i)) != NULL) {
+		while (service = next_service_by_instance(instance->state,
+			instance, &i)) {
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
 
@@ -2923,8 +2923,8 @@ vchiq_instance_get_use_count(VCHIQ_INSTANCE_T instance)
 	int use_count = 0, i;
 
 	i = 0;
-	while ((service = next_service_by_instance(instance->state,
-		instance, &i)) != NULL) {
+	while (service = next_service_by_instance(instance->state,
+		instance, &i)) {
 		use_count += service->service_use_count;
 		unlock_service(service);
 	}
@@ -2950,8 +2950,8 @@ vchiq_instance_set_trace(VCHIQ_INSTANCE_T instance, int trace)
 	int i;
 
 	i = 0;
-	while ((service = next_service_by_instance(instance->state,
-		instance, &i)) != NULL) {
+	while (service = next_service_by_instance(instance->state,
+		instance, &i)) {
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


