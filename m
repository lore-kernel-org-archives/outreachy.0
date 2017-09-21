X-GM-THRID: 6468311343549120512
X-Received: by 10.129.46.70 with SMTP id u67mr5665308ywu.230.1506021093673;
        Thu, 21 Sep 2017 12:11:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.146.203 with SMTP id j194ls642123ywg.1.gmail; Thu, 21 Sep
 2017 12:11:32 -0700 (PDT)
X-Received: by 10.129.118.79 with SMTP id j15mr5605375ywk.62.1506021092802;
        Thu, 21 Sep 2017 12:11:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506021092; cv=none;
        d=google.com; s=arc-20160816;
        b=fANpc4g06IMRHBXYvrmrCjWbjMuu5Mkswd+nQQvWWcw7TkWgWu0/bDGPwmIxKzcWQS
         IIMFRPQ4gIYTN/B0zyGjFBVwQbEe3qjPf2YoUZw7PrUdbm8iwEOPMCPlNsZ79SOI8ESv
         uKceF0NwSBjkUstSOVLdrTjY6oKVlvOBAfMRkmKRMUj6UivPlMk85dJCOIO2XGpv43NK
         LOSaXOoJOs5PM8U0PtAt+SP1Nl5HTDgvknTx/0aLDN/QPrRWVXNJOGISEwzPZU7fgeco
         yw80qSyE96hw7O9f5vGc8720e/KBe7uYceIPUgQLW+onYz3/TzRjwcXx/hlodx3wL7/F
         naQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=yne8JLDg6/DVw9FB5uhsICWfnsXq8VnsWYEGcYno+Rs=;
        b=FH5SsdYric0IqS8R9+BFKPxudMVD5r/37V8e2qQx5vwR5ZILaGivrXzWYYtOPoHZE8
         BATLmMvlOSY7v0I8eKjDr4FPhyrre55uS5rgFoidBtZ7Uvv6Fh4BAEgVnfxoGpcDuUGk
         0FCG+K6fpyTm8p9BN9oxPIiVJ2ECK4hZKUbO/5zTNnYE8fBHMxmz7mIsR7QrOUQd8lGJ
         1N2PUfWG9CyFEFrAqQ+WjLHNtYi7N7AxB2+JB9ErjM7SfIblc00Uru0fUrFhPKvJynDg
         2LdgVepLBykKJNBS3OhyQNdvz2rdN4WS95d/IOSEvTckAkhs0jnZEYGRbm/RimV2PLGg
         cCZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=un/onvlA;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id a17si218341pfk.15.2017.09.21.12.11.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Sep 2017 12:11:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=un/onvlA;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id m30so3902490pgn.5
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Sep 2017 12:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=yne8JLDg6/DVw9FB5uhsICWfnsXq8VnsWYEGcYno+Rs=;
        b=un/onvlANXIx053ub/00+a60Xob5nTCf3tFey0PaHr1JfBjefhsUgN4awxA94n/A2N
         6OgThtulGneE/76CLMpLKklDi484YJLU6oCgI2/x0r4J/tF1NXZ8sWLGVQyhNVcqR+ZT
         HecJ8gfGHvIOOkjroMrCf7vyTLlD3NRAzs2aAZJau2IbRVlU+LOghar/Fsr5P+izIoCx
         xvIbc1P+Q7OhEBk5hAYrRd/bjNClMYYO9BhoRJLTLyMcSPcY0uoB/vXBGNIYU2BKFoYX
         zkolZQ2P6QNFiw12l5aibTblsyR4prfPyXBNDkfui1yB5jHOnCSdcdo/9KK1hQkhsLvA
         Y0hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=yne8JLDg6/DVw9FB5uhsICWfnsXq8VnsWYEGcYno+Rs=;
        b=gUYKB8gbGKCekLleUdO3GXlp/6XRSqIwylPhiYFVnBBoTufwv8OsiIPv3n5oXeiVTx
         plncNZmol/tC2TIG1ggiYQjD+yfLuSa3xpljxLt+xOO7zGo7wxXUYP99SZ9GmtGswfm3
         nQLn3dUK1a6EsDSfPMhNd8yADa/LAzBNGOyz4JJvHDzsX8jFNmWP1SIydU40lRM++EEi
         XfDYpiP01xX+dxKjEXtQZCDyAw7g971FYecTlURUVulJ7pAWbRqIBJ8q0hIMFyhXTilV
         1HcHu2zhvaU031pb3DwNv42p5+x2A9lQgZ8gU1ZF06I3ch50FduzPZG/RqbNCbtBBnnW
         9Zgg==
X-Gm-Message-State: AHPjjUi4Ya8xH6vwQmg4BT9iY8UjOuT0uoyYO4U4Q1QXOeJqzgwbGYVQ
	MpDxOArvv/7w1LU8hrtoZMw=
X-Google-Smtp-Source: AOwi7QBuLfdj759j631timfjUwpeMDsfFgvs73JBNZMDrz3+wxyhifQ4dBEvb6Z0EJ1s6W7ufcQCug==
X-Received: by 10.84.209.228 with SMTP id y91mr6497788plh.130.1506021092265;
        Thu, 21 Sep 2017 12:11:32 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id t19sm3505948pfa.73.2017.09.21.12.11.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 21 Sep 2017 12:11:31 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] staging: vc04_services: Remove typedef struct
Date: Fri, 22 Sep 2017 00:39:20 +0530
Message-Id: <1506020960-14190-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove typedef from struct as linux-kernel coding style tends to
avoid using typedefs

Done using following coccinelle semantic patch

@r1@
type T;
@@

typedef struct { ... } T;

@script:python c1@
T2;
T << r1.T;
@@
if T[-2:] =="_t" or T[-2:] == "_T":
        coccinelle.T2 = T[:-2];
else:
        coccinelle.T2 = T;

print T, coccinelle.T2

@r2@
type r1.T;
identifier c1.T2;
@@
-typedef
struct
+ T2
{ ... }
-T
;

@r3@
type r1.T;
identifier c1.T2;
@@
-T
+struct T2

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_shim.c | 44 +++++++++++-----------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 8af95fc..adb602d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -41,14 +41,14 @@
 
 #define vchiq_status_to_vchi(status) ((int32_t)status)
 
-typedef struct {
+struct SHIM_SERVICE {
 	VCHIQ_SERVICE_HANDLE_T handle;
 
 	VCHIU_QUEUE_T queue;
 
 	VCHI_CALLBACK_T callback;
 	void *callback_param;
-} SHIM_SERVICE_T;
+};
 
 /* ----------------------------------------------------------------------
  * return pointer to the mphi message driver function table
@@ -99,7 +99,7 @@ int32_t vchi_msg_peek(VCHI_SERVICE_HANDLE_T handle,
 	uint32_t *msg_size,
 	VCHI_FLAGS_T flags)
 {
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct SHIM_SERVICE *service = (struct SHIM_SERVICE *)handle;
 	VCHIQ_HEADER_T *header;
 
 	WARN_ON((flags != VCHI_FLAGS_NONE) &&
@@ -131,7 +131,7 @@ int32_t vchi_msg_peek(VCHI_SERVICE_HANDLE_T handle,
  ***********************************************************/
 int32_t vchi_msg_remove(VCHI_SERVICE_HANDLE_T handle)
 {
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct SHIM_SERVICE *service = (struct SHIM_SERVICE *)handle;
 	VCHIQ_HEADER_T *header;
 
 	header = vchiu_queue_pop(&service->queue);
@@ -163,7 +163,7 @@ int32_t vchi_msg_queue(VCHI_SERVICE_HANDLE_T handle,
 	void *context,
 	uint32_t data_size)
 {
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct SHIM_SERVICE *service = (struct SHIM_SERVICE *)handle;
 	VCHIQ_STATUS_T status;
 
 	while (1) {
@@ -262,7 +262,7 @@ int32_t vchi_bulk_queue_receive(VCHI_SERVICE_HANDLE_T handle,
 	VCHI_FLAGS_T flags,
 	void *bulk_handle)
 {
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct SHIM_SERVICE *service = (struct SHIM_SERVICE *)handle;
 	VCHIQ_BULK_MODE_T mode;
 	VCHIQ_STATUS_T status;
 
@@ -322,7 +322,7 @@ int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
 	VCHI_FLAGS_T flags,
 	void *bulk_handle)
 {
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct SHIM_SERVICE *service = (struct SHIM_SERVICE *)handle;
 	VCHIQ_BULK_MODE_T mode;
 	VCHIQ_STATUS_T status;
 
@@ -384,7 +384,7 @@ int32_t vchi_msg_dequeue(VCHI_SERVICE_HANDLE_T handle,
 	uint32_t *actual_msg_size,
 	VCHI_FLAGS_T flags)
 {
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct SHIM_SERVICE *service = (struct SHIM_SERVICE *)handle;
 	VCHIQ_HEADER_T *header;
 
 	WARN_ON((flags != VCHI_FLAGS_NONE) &&
@@ -458,7 +458,7 @@ int32_t vchi_msg_hold(VCHI_SERVICE_HANDLE_T handle,
 	VCHI_FLAGS_T flags,
 	VCHI_HELD_MSG_T *message_handle)
 {
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct SHIM_SERVICE *service = (struct SHIM_SERVICE *)handle;
 	VCHIQ_HEADER_T *header;
 
 	WARN_ON((flags != VCHI_FLAGS_NONE) &&
@@ -579,8 +579,8 @@ int32_t vchi_disconnect(VCHI_INSTANCE_T instance_handle)
 static VCHIQ_STATUS_T shim_callback(VCHIQ_REASON_T reason,
 	VCHIQ_HEADER_T *header, VCHIQ_SERVICE_HANDLE_T handle, void *bulk_user)
 {
-	SHIM_SERVICE_T *service =
-		(SHIM_SERVICE_T *)VCHIQ_GET_SERVICE_USERDATA(handle);
+	struct SHIM_SERVICE *service =
+		(struct SHIM_SERVICE *)VCHIQ_GET_SERVICE_USERDATA(handle);
 
 	if (!service->callback)
 		goto release;
@@ -637,10 +637,10 @@ static VCHIQ_STATUS_T shim_callback(VCHIQ_REASON_T reason,
 	return VCHIQ_SUCCESS;
 }
 
-static SHIM_SERVICE_T *service_alloc(VCHIQ_INSTANCE_T instance,
+static struct SHIM_SERVICE *service_alloc(VCHIQ_INSTANCE_T instance,
 	SERVICE_CREATION_T *setup)
 {
-	SHIM_SERVICE_T *service = kzalloc(sizeof(SHIM_SERVICE_T), GFP_KERNEL);
+	struct SHIM_SERVICE *service = kzalloc(sizeof(struct SHIM_SERVICE), GFP_KERNEL);
 
 	(void)instance;
 
@@ -657,7 +657,7 @@ static SHIM_SERVICE_T *service_alloc(VCHIQ_INSTANCE_T instance,
 	return service;
 }
 
-static void service_free(SHIM_SERVICE_T *service)
+static void service_free(struct SHIM_SERVICE *service)
 {
 	if (service) {
 		vchiu_queue_delete(&service->queue);
@@ -670,7 +670,7 @@ int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
 	VCHI_SERVICE_HANDLE_T *handle)
 {
 	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
-	SHIM_SERVICE_T *service = service_alloc(instance, setup);
+	struct SHIM_SERVICE *service = service_alloc(instance, setup);
 
 	*handle = (VCHI_SERVICE_HANDLE_T)service;
 
@@ -703,7 +703,7 @@ int32_t vchi_service_create(VCHI_INSTANCE_T instance_handle,
 	VCHI_SERVICE_HANDLE_T *handle)
 {
 	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
-	SHIM_SERVICE_T *service = service_alloc(instance, setup);
+	struct SHIM_SERVICE *service = service_alloc(instance, setup);
 
 	*handle = (VCHI_SERVICE_HANDLE_T)service;
 
@@ -733,7 +733,7 @@ int32_t vchi_service_create(VCHI_INSTANCE_T instance_handle,
 int32_t vchi_service_close(const VCHI_SERVICE_HANDLE_T handle)
 {
 	int32_t ret = -1;
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct SHIM_SERVICE *service = (struct SHIM_SERVICE *)handle;
 
 	if (service) {
 		VCHIQ_STATUS_T status = vchiq_close_service(service->handle);
@@ -751,7 +751,7 @@ int32_t vchi_service_close(const VCHI_SERVICE_HANDLE_T handle)
 int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle)
 {
 	int32_t ret = -1;
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct SHIM_SERVICE *service = (struct SHIM_SERVICE *)handle;
 
 	if (service) {
 		VCHIQ_STATUS_T status = vchiq_remove_service(service->handle);
@@ -772,7 +772,7 @@ int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
 				int value)
 {
 	int32_t ret = -1;
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct SHIM_SERVICE *service = (struct SHIM_SERVICE *)handle;
 	VCHIQ_SERVICE_OPTION_T vchiq_option;
 
 	switch (option) {
@@ -801,7 +801,7 @@ int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
 int32_t vchi_get_peer_version(const VCHI_SERVICE_HANDLE_T handle, short *peer_version)
 {
 	int32_t ret = -1;
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct SHIM_SERVICE *service = (struct SHIM_SERVICE *)handle;
 
 	if (service)
 	{
@@ -828,7 +828,7 @@ int32_t vchi_service_use(const VCHI_SERVICE_HANDLE_T handle)
 {
 	int32_t ret = -1;
 
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct SHIM_SERVICE *service = (struct SHIM_SERVICE *)handle;
 	if (service)
 		ret = vchiq_status_to_vchi(vchiq_use_service(service->handle));
 	return ret;
@@ -849,7 +849,7 @@ int32_t vchi_service_release(const VCHI_SERVICE_HANDLE_T handle)
 {
 	int32_t ret = -1;
 
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct SHIM_SERVICE *service = (struct SHIM_SERVICE *)handle;
 	if (service)
 		ret = vchiq_status_to_vchi(
 			vchiq_release_service(service->handle));
-- 
1.9.1


