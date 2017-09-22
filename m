X-GM-THRID: 6468311343549120512
X-Received: by 10.202.77.215 with SMTP id a206mr6012894oib.119.1506065988110;
        Fri, 22 Sep 2017 00:39:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.114.89 with SMTP id c25ls1332462pgn.25.gmail; Fri, 22 Sep
 2017 00:39:47 -0700 (PDT)
X-Received: by 10.101.70.71 with SMTP id k7mr5110427pgr.21.1506065987026;
        Fri, 22 Sep 2017 00:39:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506065987; cv=none;
        d=google.com; s=arc-20160816;
        b=nfUO9aANtP2JKTKhdEVQGsbo3WAQ/cRUA6ekmHzv9jnGfgeSKQo8yircNEF1eEsfDI
         UD1H65wfUDC5CFjW2A74/4dJt1RkCAeebztxWngJEl569Kg/pdAnLbmePNuqNGoOD4kh
         aQeML3ZlWdonBctpbPqHiWBvQ4pL7sUiEZ3ImeQrSQOtJHkIo/TCWYo4v8PU0DoTLz5u
         mz33bhEU2O7wGxxaSmNPDiN1L7jiCnG4qzJiNKsGi7B4kdKYidANAGbgYvyE03oc9CUB
         JtXhOLP++YTq1u19Hwwc8t0RwLhRIrUghzja2/2NrP/kS+T7FNP38FzL/+JqrE84tilY
         uOOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=miMIMNvi4S9QcpPZdVKgjRlbBPMCCsZ1bfWYTSKoedU=;
        b=VLz7GevnXVMtWEVgFiESOPRn5be5mjDM7tPrSxUPAM3Sk6D0nKyNBbh21EP+U9Ae9l
         grfEM90mjwGBqjefNrDZ9wTAVOnC2T4BUODQjc0U5vrbKVOeYza5DJuLFz6/wY0vrwlJ
         QQ5u+L1ut9U7kRh4Q+F/h3LZhcFIZVH+IJrtczufphmdQNqPYJX3dNcRZS061gBlcxCG
         G/5MSvFPj5/PnxZ1BADe6qFhubpkVk1CkYKYVVQPcqPWcu28l7EQ/7oIZ6+tSxc3IRox
         Z75+nfyaF1mZHkvLLHSTAoc6ahNz93bsFttvkBgYAgjNJeVehB3ivErb8s9s2gRaguT2
         c2rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=riCcxf3S;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id s81si329818pfg.19.2017.09.22.00.39.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 00:39:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=riCcxf3S;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id i130so221199pgc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 00:39:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=miMIMNvi4S9QcpPZdVKgjRlbBPMCCsZ1bfWYTSKoedU=;
        b=riCcxf3SYygG8Kf0fPDOd6wzHwir/CxoSUiSkJcju32oyHyHekkai0SDgd4PHnCuX/
         /RG28V490s2XubE+QD7+njCgpEu0mqz30UVMV0iX+iWTwUzIPxwA7alpK9bkYM212YEk
         n6xHrlMDpuSS9G0o+JZF5cPwalQeszQz99eegEPvJ896vgSwYElXrfRwhKkUX1iaezsn
         mB1oWvSuxINaAbISckq1QZa4WuObE5DFlbDqJKfg3SUcXeL45GIVVn2AmNXWMWIbXmrS
         T5YXLW0JjCE15ldatzOD5Gp/MEwIchH0YMZ2pBJ44zoJQiyBZB02++ji+Ap+PQ3sbl3a
         oVKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=miMIMNvi4S9QcpPZdVKgjRlbBPMCCsZ1bfWYTSKoedU=;
        b=GVmdoq6iiH1AzquEW73BFXaNtwmhyjiCbrjMuQDfdV24Vy+aBxSzgQJXJlPAeP2h+Q
         aF3VqQ/kFMHr+mLX+gwu5qxhwYVtvrB7+Fz85VtQX2q7bMlmimtN8UwcOxw4y6d8XXRt
         rZ8lOqkaa14oaBaTJII2pvXGKKFX00RDbfCRt0wtPr5W54UAwWpIIPIbpICsUmfiqAo8
         mfnN+c76Ctt60kKHjR2LXAjVgaNPuLJetdU3vY618g9XRI4pf9BLOSR37xLQHe0MBLVB
         ZlBctefUbfFbtRP44Cm+2lrIUNJ6WERnDJgYEEVd7nh2ZcAPFSn+VDPRT5Fhbnr/o0iI
         m3wA==
X-Gm-Message-State: AHPjjUgq179rbro9d8+NCl3oIVd17/ORZbF6s3UnAERMtk7A8gMsFuZm
	HN7H3mctNNIQAuWzRLpzwtA=
X-Google-Smtp-Source: AOwi7QBFyGGqGpzXo4ckn9qPwCNgG4EStd6GaYtABq3MdpkzKefQ+KZuwCyqjeuPsrE3+GPOeAM9KA==
X-Received: by 10.98.65.27 with SMTP id o27mr8398459pfa.205.1506065986700;
        Fri, 22 Sep 2017 00:39:46 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id b65sm2586017pfj.97.2017.09.22.00.39.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 22 Sep 2017 00:39:46 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v2] staging: vc04_services: Remove typedef struct
Date: Fri, 22 Sep 2017 13:07:03 +0530
Message-Id: <1506065823-22769-1-git-send-email-harshasharmaiitr@gmail.com>
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
Changes in v2:
 -Convert structure name to lowercase

 .../vc04_services/interface/vchiq_arm/vchiq_shim.c | 44 +++++++++++-----------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 8af95fc..2c09d5e 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -41,14 +41,14 @@
 
 #define vchiq_status_to_vchi(status) ((int32_t)status)
 
-typedef struct {
+struct shim_service {
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
+	struct shim_service *service = (struct shim_service *)handle;
 	VCHIQ_HEADER_T *header;
 
 	WARN_ON((flags != VCHI_FLAGS_NONE) &&
@@ -131,7 +131,7 @@ int32_t vchi_msg_peek(VCHI_SERVICE_HANDLE_T handle,
  ***********************************************************/
 int32_t vchi_msg_remove(VCHI_SERVICE_HANDLE_T handle)
 {
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct shim_service *service = (struct shim_service *)handle;
 	VCHIQ_HEADER_T *header;
 
 	header = vchiu_queue_pop(&service->queue);
@@ -163,7 +163,7 @@ int32_t vchi_msg_queue(VCHI_SERVICE_HANDLE_T handle,
 	void *context,
 	uint32_t data_size)
 {
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct shim_service *service = (struct shim_service *)handle;
 	VCHIQ_STATUS_T status;
 
 	while (1) {
@@ -262,7 +262,7 @@ int32_t vchi_bulk_queue_receive(VCHI_SERVICE_HANDLE_T handle,
 	VCHI_FLAGS_T flags,
 	void *bulk_handle)
 {
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct shim_service *service = (struct shim_service *)handle;
 	VCHIQ_BULK_MODE_T mode;
 	VCHIQ_STATUS_T status;
 
@@ -322,7 +322,7 @@ int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
 	VCHI_FLAGS_T flags,
 	void *bulk_handle)
 {
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct shim_service *service = (struct shim_service *)handle;
 	VCHIQ_BULK_MODE_T mode;
 	VCHIQ_STATUS_T status;
 
@@ -384,7 +384,7 @@ int32_t vchi_msg_dequeue(VCHI_SERVICE_HANDLE_T handle,
 	uint32_t *actual_msg_size,
 	VCHI_FLAGS_T flags)
 {
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct shim_service *service = (struct shim_service *)handle;
 	VCHIQ_HEADER_T *header;
 
 	WARN_ON((flags != VCHI_FLAGS_NONE) &&
@@ -458,7 +458,7 @@ int32_t vchi_msg_hold(VCHI_SERVICE_HANDLE_T handle,
 	VCHI_FLAGS_T flags,
 	VCHI_HELD_MSG_T *message_handle)
 {
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct shim_service *service = (struct shim_service *)handle;
 	VCHIQ_HEADER_T *header;
 
 	WARN_ON((flags != VCHI_FLAGS_NONE) &&
@@ -579,8 +579,8 @@ int32_t vchi_disconnect(VCHI_INSTANCE_T instance_handle)
 static VCHIQ_STATUS_T shim_callback(VCHIQ_REASON_T reason,
 	VCHIQ_HEADER_T *header, VCHIQ_SERVICE_HANDLE_T handle, void *bulk_user)
 {
-	SHIM_SERVICE_T *service =
-		(SHIM_SERVICE_T *)VCHIQ_GET_SERVICE_USERDATA(handle);
+	struct shim_service *service =
+		(struct shim_service *)VCHIQ_GET_SERVICE_USERDATA(handle);
 
 	if (!service->callback)
 		goto release;
@@ -637,10 +637,10 @@ static VCHIQ_STATUS_T shim_callback(VCHIQ_REASON_T reason,
 	return VCHIQ_SUCCESS;
 }
 
-static SHIM_SERVICE_T *service_alloc(VCHIQ_INSTANCE_T instance,
+static struct shim_service *service_alloc(VCHIQ_INSTANCE_T instance,
 	SERVICE_CREATION_T *setup)
 {
-	SHIM_SERVICE_T *service = kzalloc(sizeof(SHIM_SERVICE_T), GFP_KERNEL);
+	struct shim_service *service = kzalloc(sizeof(struct shim_service), GFP_KERNEL);
 
 	(void)instance;
 
@@ -657,7 +657,7 @@ static SHIM_SERVICE_T *service_alloc(VCHIQ_INSTANCE_T instance,
 	return service;
 }
 
-static void service_free(SHIM_SERVICE_T *service)
+static void service_free(struct shim_service *service)
 {
 	if (service) {
 		vchiu_queue_delete(&service->queue);
@@ -670,7 +670,7 @@ int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
 	VCHI_SERVICE_HANDLE_T *handle)
 {
 	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
-	SHIM_SERVICE_T *service = service_alloc(instance, setup);
+	struct shim_service *service = service_alloc(instance, setup);
 
 	*handle = (VCHI_SERVICE_HANDLE_T)service;
 
@@ -703,7 +703,7 @@ int32_t vchi_service_create(VCHI_INSTANCE_T instance_handle,
 	VCHI_SERVICE_HANDLE_T *handle)
 {
 	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
-	SHIM_SERVICE_T *service = service_alloc(instance, setup);
+	struct shim_service *service = service_alloc(instance, setup);
 
 	*handle = (VCHI_SERVICE_HANDLE_T)service;
 
@@ -733,7 +733,7 @@ int32_t vchi_service_create(VCHI_INSTANCE_T instance_handle,
 int32_t vchi_service_close(const VCHI_SERVICE_HANDLE_T handle)
 {
 	int32_t ret = -1;
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct shim_service *service = (struct shim_service *)handle;
 
 	if (service) {
 		VCHIQ_STATUS_T status = vchiq_close_service(service->handle);
@@ -751,7 +751,7 @@ int32_t vchi_service_close(const VCHI_SERVICE_HANDLE_T handle)
 int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle)
 {
 	int32_t ret = -1;
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct shim_service *service = (struct shim_service *)handle;
 
 	if (service) {
 		VCHIQ_STATUS_T status = vchiq_remove_service(service->handle);
@@ -772,7 +772,7 @@ int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
 				int value)
 {
 	int32_t ret = -1;
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct shim_service *service = (struct shim_service *)handle;
 	VCHIQ_SERVICE_OPTION_T vchiq_option;
 
 	switch (option) {
@@ -801,7 +801,7 @@ int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
 int32_t vchi_get_peer_version(const VCHI_SERVICE_HANDLE_T handle, short *peer_version)
 {
 	int32_t ret = -1;
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct shim_service *service = (struct shim_service *)handle;
 
 	if (service)
 	{
@@ -828,7 +828,7 @@ int32_t vchi_service_use(const VCHI_SERVICE_HANDLE_T handle)
 {
 	int32_t ret = -1;
 
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct shim_service *service = (struct shim_service *)handle;
 	if (service)
 		ret = vchiq_status_to_vchi(vchiq_use_service(service->handle));
 	return ret;
@@ -849,7 +849,7 @@ int32_t vchi_service_release(const VCHI_SERVICE_HANDLE_T handle)
 {
 	int32_t ret = -1;
 
-	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
+	struct shim_service *service = (struct shim_service *)handle;
 	if (service)
 		ret = vchiq_status_to_vchi(
 			vchiq_release_service(service->handle));
-- 
1.9.1


