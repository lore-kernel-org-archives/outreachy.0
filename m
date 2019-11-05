X-GM-THRID: 6753896393761357824
X-Received: by 2002:a05:6214:1c9:: with SMTP id c9mr24904974qvt.128.1572915354229;
        Mon, 04 Nov 2019 16:55:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6214:13b4:: with SMTP id h20ls1772337qvz.0.gmail; Mon,
 04 Nov 2019 16:55:53 -0800 (PST)
X-Google-Smtp-Source: APXvYqw5Mx0Ju7AXPhNXFgoayN7cln6ml97C3sl//i5QynBmnzjbYGnpzKaRnep454CsdKTL5+W2
X-Received: by 2002:a0c:fd63:: with SMTP id k3mr610443qvs.185.1572915353505;
        Mon, 04 Nov 2019 16:55:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572915353; cv=none;
        d=google.com; s=arc-20160816;
        b=yXoDALh0t7SCf3dPjB+LoqhdJh73Gp555QYHy6pZAMCTpZ7e8DWRvjVYNQqJkFHEnK
         U5d6rtmvTNl1b+xc4qY1w9PHV/7l8tJPQJn2t919Vg2x6JgwD1SK0/OBCToj2XlJpQPp
         W0wVxEQKLjSIyeJlbbHkKI3oGbFgbQJGq5FoR/BikALN5gPNudnhgV37C3R3EAOLtnO9
         PkyPNRM7Vddu1iIoTX5ARuXmQoY4Qgf3BVL8zvgoBrFcddkyKL3W4B6sAlM17mra8n8i
         PSMNpihZ7zhfIaq/GHUpv0xC62sCc/93yYYKiHSLzxWdST21GrwWE1SaeHU4IGmQ13To
         1OhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=M/Rw0lTN2ZVFUZj3XihSSDxIs//n0xBQAceW0GA6AFc=;
        b=hm4xs2ts02eTdcnt3AuwNIlXeCas5Yhz1najuiVlJBLAzjvRDKFOIrdl6ckHbC86d0
         BAOpzX/GioMRtnASG6ECEkDMMNXZmLTWt+JKq9dCHA2TqFHFjGNlM6AMNISgevzuH0J+
         CRmne0YEnbNjQ/sjWDapXWgEted6JJnN+LbVw+8YTt2WQRBrfINq8G63hg7Km6KhesFP
         4smdKZuYRaH1mjLu8Ul9pkDaqeHqOhEDzEqQ3iAKi8PH6TR0JzZA+HeD55yv4mrOuGV+
         7jlbTg1UC/T5QhLgisztVsAXpenfpEyEX22e+OTJtR4KmeQ43OKfs13/TWP0ZPao7tsq
         q08A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FgbAZcPc;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id z90si1093204qtc.3.2019.11.04.16.55.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 16:55:53 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FgbAZcPc;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id k7so8535765pll.1
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 16:55:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=M/Rw0lTN2ZVFUZj3XihSSDxIs//n0xBQAceW0GA6AFc=;
        b=FgbAZcPcpQoJTDksvfMaVdhujtOg50A0LsvKCC1IXNOmk9hzn3Tdgs2EmG2kwBSgpd
         j5Kr1erNAyshQ1EqOYeEMm26SnoJ2+HWoom/vzlILkTk7ALoQ8t76jBEMTlWE9i5Kcqg
         h4DNzEfsGZxle7AazF3978Gum+GyFGfetcc2j8oofciBhuwKRVYfysAE4HjSPqXXm+8L
         k3yb4kNmBkLJq5OOPEs3Cl9chS+mhut4XRHRndfytDqoI+3VfBw0VkXiExb74R7YsnNx
         WSZwFsSOY0U73OEcLlRD09GJkYwb/2851P4YoJzOB3Velp3u1YwwAyEzAbtHkcK9lB9p
         q4Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=M/Rw0lTN2ZVFUZj3XihSSDxIs//n0xBQAceW0GA6AFc=;
        b=FZMDSQ2A4iuXkujDPWYw2APIwyUdddLyDnedssj8qBwuh1h1cr5iOOR6BnHVtQT/W4
         mq2mBjJHKOeLHWbvYaddHCKrKtuKcQsLD/E8DZTnHxufBQ3k+GnM2wYtc2Q1IEjQIGAg
         vHJ35WmDK17/4X+vnxz/iKlquZcEIRLXd0c+nsyPAIdCY1NThwsL2mEAicjK82Uu2bBp
         3ZNLMKsmZV6RuTrobrPdf6lpeG9tWVm+opxyXrJBlE/8huEuKDg4dOyGJz7+OZMS3jnx
         bqMEHs69TuDG6YrVWxP8Qlc2JuAYkFEJgWqwSOvmzHjt+CgfB0TqqklYe4YRa4dMnC+L
         iYEw==
X-Gm-Message-State: APjAAAWdP1LfslBlgBUwnmh0yNs+i1P3MiGzfN6kvC1DrsI193QtaoYi
	FdN64sp/n38bJrVZnf3Wadw=
X-Received: by 2002:a17:902:362:: with SMTP id 89mr29504145pld.71.1572915352330;
        Mon, 04 Nov 2019 16:55:52 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id h186sm24056570pfb.63.2019.11.04.16.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 16:55:51 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 12/14] staging: vc04_services: Remove int typedef
Date: Mon,  4 Nov 2019 16:55:22 -0800
Message-Id: <bef0d048e090e654c14f9fb16e483804731bd2e6.1572915104.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>

Removes unsigned int typedef. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 32 +++++++--------
 .../interface/vchiq_arm/vchiq_arm.h           |  4 +-
 .../interface/vchiq_arm/vchiq_core.c          | 26 ++++++------
 .../interface/vchiq_arm/vchiq_core.h          | 12 +++---
 .../interface/vchiq_arm/vchiq_if.h            | 40 +++++++++----------
 .../interface/vchiq_arm/vchiq_shim.c          | 10 ++---
 6 files changed, 61 insertions(+), 63 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 1edfaa80f7c1..add552226eaa 100644
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
 	VCHIQ_INSTANCE_T              instance,
 	const struct vchiq_service_params *params,
-	VCHIQ_SERVICE_HANDLE_T       *phandle)
+	unsigned int       *phandle)
 {
 	enum vchiq_status status;
 	struct vchiq_state *state = instance->state;
@@ -343,7 +343,7 @@ EXPORT_SYMBOL(vchiq_add_service);
 enum vchiq_status vchiq_open_service(
 	VCHIQ_INSTANCE_T              instance,
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
-		VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
+		unsigned int handle = (unsigned int)arg;
 		struct user_service *user_service;
 
 		service = find_service_for_instance(instance, handle);
@@ -985,7 +985,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 
 	case VCHIQ_IOC_USE_SERVICE:
 	case VCHIQ_IOC_RELEASE_SERVICE:	{
-		VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
+		unsigned int handle = (unsigned int)arg;
 
 		service = find_service_for_instance(instance, handle);
 		if (service) {
@@ -1368,7 +1368,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 	} break;
 
 	case VCHIQ_IOC_GET_CLIENT_ID: {
-		VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
+		unsigned int handle = (unsigned int)arg;
 
 		ret = vchiq_get_client_id(handle);
 	} break;
@@ -1423,7 +1423,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 	} break;
 
 	case VCHIQ_IOC_CLOSE_DELIVERED: {
-		VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
+		unsigned int handle = (unsigned int)arg;
 
 		service = find_closed_service_for_instance(instance, handle);
 		if (service) {
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
index bb2645b9ba00..7cdb5d50fb4e 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
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
index d56ee1b99e9c..0339503d57d7 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -250,7 +250,7 @@ struct vchiq_slot_info {
 
 struct vchiq_service {
 	struct vchiq_service_base base;
-	VCHIQ_SERVICE_HANDLE_T handle;
+	unsigned int handle;
 	unsigned int ref_count;
 	int srvstate;
 	vchiq_userdata_term userdata_term;
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
index d9b23af25671..dc3d204e7698 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -61,11 +61,9 @@ struct vchiq_element {
 	unsigned int size;
 };
 
-typedef unsigned int VCHIQ_SERVICE_HANDLE_T;
-
 typedef enum vchiq_status (*vchiq_callback)(enum vchiq_reason,
 					    struct vchiq_header *,
-					    VCHIQ_SERVICE_HANDLE_T, void *);
+					    unsigned int, void *);
 
 struct vchiq_service_base {
 	int fourcc;
@@ -100,49 +98,49 @@ extern enum vchiq_status vchiq_shutdown(VCHIQ_INSTANCE_T instance);
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
index ce11b9adbfa3..3f052cae5bb7 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -12,7 +12,7 @@
 #define vchiq_status_to_vchi(status) ((int32_t)status)
 
 struct shim_service {
-	VCHIQ_SERVICE_HANDLE_T handle;
+	unsigned int handle;
 
 	struct vchiu_queue queue;
 
@@ -360,13 +360,13 @@ int32_t vchi_held_msg_release(struct vchi_held_msg *message)
 {
 	/*
 	 * Convert the service field pointer back to an
-	 * VCHIQ_SERVICE_HANDLE_T which is an int.
+	 * unsigned int which is an int.
 	 * This pointer is opaque to everything except
 	 * vchi_msg_hold which simply upcasted the int
 	 * to a pointer.
 	 */
 
-	vchiq_release_message((VCHIQ_SERVICE_HANDLE_T)(long)message->service,
+	vchiq_release_message((unsigned int)(long)message->service,
 			      (struct vchiq_header *)message->message);
 
 	return 0;
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


