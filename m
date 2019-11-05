X-GM-THRID: 6755960127598100480
X-Received: by 2002:a25:7452:: with SMTP id p79mr7542789ybc.462.1572994563602;
        Tue, 05 Nov 2019 14:56:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:9b48:: with SMTP id u8ls78190ybo.6.gmail; Tue, 05 Nov
 2019 14:56:02 -0800 (PST)
X-Google-Smtp-Source: APXvYqx6J3bznZD1zrJedWTtWxpWDSoNXqskRAtCYpYMhNNB1cSZG92LN7z4W+q3p1B0QIxCxwOp
X-Received: by 2002:a25:4258:: with SMTP id p85mr8388847yba.417.1572994562330;
        Tue, 05 Nov 2019 14:56:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572994562; cv=none;
        d=google.com; s=arc-20160816;
        b=zCDLocTQ+YGcQtHmvZXOKFBbPEDOmNBjEhzY3+XduMpbImEVJzYN7La59DVIHr7s3W
         oCNV2TiZ41C+nraa6JCV5mQE/VKFSfU5unNHBaIUaB4KDM/SpdTHwolvKikfoLumXGu2
         2VXg58PvI1qFh2jFb9j6Hdm2FFLkWadogJLsDl8KNy8YoTM2va3otPvuqf9N3yeJ2xdN
         8aYMbDWcWaz1036y+c1G8q9iOIr//gDUWy6o17XP4YGstDVFtAI9st/4kvSavC0+rnVe
         iz+fzz/WwUOxHkrFsAL7X8N7UB/EvalFC+y7sEhTKK1jpnYi8kuxw6eGQP3r64Tzcuqk
         qQ9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=t2g0baDAqSQ8wVg8xTxQJachMaaVK1ZwIkLjqz1lDII=;
        b=Afgjp+Vgy14ib1mTvCuT1/qJaJ3EAm7HKmcSfSClLknfTvch1SCFgWykqq+UnEj+sA
         vXN8Ef5TYs3FgUc03pAHo96cRvuveDhpqr5TOZ5lOWhPOIiLQyTDnLcdEUmsyAHBxqlJ
         7Y9HldaItfmW1c6TbkqHG3CZBJ12rUQM9qfCGV/fCm8TysnaA5WMi0M9cfPbJtmN/0Ia
         fnx+Taypwa7oTDHb2Xedu7/yPs3df7xWqxhyRbPVKBLETOAyazOOlN3aTt21guTzLwrb
         hQ+HcXB1JIk0/5IL57dc6FzSxlucaMovo9izVytU5XhkTMnwft3DwQCnCQbUBaGAW8xy
         zAPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ee2NEltx;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id u8si307701ybc.2.2019.11.05.14.56.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 14:56:02 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ee2NEltx;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id c13so17193565pfp.5
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 14:56:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=t2g0baDAqSQ8wVg8xTxQJachMaaVK1ZwIkLjqz1lDII=;
        b=Ee2NEltxjulWUUUMcTuzNfKJVmsMNTuO1WnfWih57FMuoRKcrorrSf066iwNz1KPWv
         Y9ADwieOEOJWVxGwBgB83rVAQwjQ+sTlWJzsbTGJi89eg85Bv2GhUI+yx6eyD/WFYOR+
         Fd5RCc3BvCEMs7MGtaOCpsBbfZxbLQac2uRafzG/tVFNTVlbulD9JfaJ6Kn/gu/l7aYb
         0WNv0JKpy9a85X6hn7bnZX+WmGuhtr+TL+gGDQnQ86bA+7AKY2nuaoUG9DgmHeaDIqnt
         PoiYvbxfx/L41Qr7zRrjxRBpc45J0Ux8Kfll/bbM8RfuTChbiuEwJRFUMH8/O81cW+Mr
         OPiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=t2g0baDAqSQ8wVg8xTxQJachMaaVK1ZwIkLjqz1lDII=;
        b=UJAjERliUizK0f4NCLik4AqEGcOW6n2J28e7srucbDbs2DR6lFDNcKzjkyhgUZW71f
         HsklMcdkRQaKr/xAcLJ+jML96Kf9l/AGuYpzwl9X4CQhSErGa5CNji+yN++VRgzAkXy8
         6FJjFpasK3uC57GK3Tuc6oNh+zCpvAiS5raz0UzjdVO0Q/MTfRhOyw2BzaYQuEK+MbCZ
         xjEDPJdVhJ5JhZdxT/N/zJ1Q3u1GJqbW/jMFsDoCIGfAZ5IufounWI0ZvkwmvRSVJBY0
         1gDO1MHGkB8SZl5WVnuHqJji+CsL3N7K6dDAUFwjqJdVEjr8/ClJK0DTNgfsnqSq+8mQ
         g9Ow==
X-Gm-Message-State: APjAAAVWdKnDHMGxhd89rvsHbJeQJ98Y9rAs73tOfKlFVPzUQY1enXZS
	wY5BOK3uo4Xkr7GBdhU8u5s=
X-Received: by 2002:a63:e056:: with SMTP id n22mr38103946pgj.73.1572994561245;
        Tue, 05 Nov 2019 14:56:01 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id f189sm30277543pgc.94.2019.11.05.14.56.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 14:56:00 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 12/14] staging: vc04_services: Replace VCHIQ_SERVICE_HANDLE_T typedef with unsigned int
Date: Tue,  5 Nov 2019 14:55:29 -0800
Message-Id: <9d35b9fea684d18cc1e989621808d77eef3081c6.1572994235.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>

Replaces VCHIQ_SERVICE_HANDLE_T typedef with unsigned int to match kernel code style. Issue found by checkpatch.

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


