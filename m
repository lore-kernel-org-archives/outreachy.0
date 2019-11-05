X-GM-THRID: 6753896393761357824
X-Received: by 2002:aca:1c06:: with SMTP id c6mr1539479oic.84.1572915341956;
        Mon, 04 Nov 2019 16:55:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:b4d7:: with SMTP id d206ls372981oif.10.gmail; Mon, 04
 Nov 2019 16:55:41 -0800 (PST)
X-Google-Smtp-Source: APXvYqxq3ZIwFjlpst/ZO/dXcVJ2MRHFkjMyFwbswdborT+2u/foy48HPsyycECFEyjA3XWJfy3D
X-Received: by 2002:a54:4416:: with SMTP id k22mr1600617oiw.168.1572915341273;
        Mon, 04 Nov 2019 16:55:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572915341; cv=none;
        d=google.com; s=arc-20160816;
        b=Iy+gYkv/MEKJdYzW2jCARFNAKF4bo5thWO0pTUIIefepIo6Ia0fj1uIl4EPeZLNdOY
         vUO2e8wfd8xI9GTQn3Wlsn9RhYt4NnWT6yDWhuMZYkCc2XIGLEi7l/HCPJYogWgHCpve
         S/rALp4qeYyRlTvhsF6m8mSnKDC5TgEjpStksh5FrYJL7G6S7j+rqOYq1o+fyFDI26GN
         dy7eB3C7J0PdzJI83WurJcuxEbsiYiECxraXDrcj2Vy7QNDGY18ehI5ADZP0jQ8E+pgb
         gCtTUVJKoFUy3n86zVcVBsEabYCA5feQ2GFZ+mjXY4XAEKzJxE3dc92TNSpuxCeVMEjQ
         DfMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=0hEul2a8RV1UNAewxvegGOoc86VV2YDrr9Eigy6cYGA=;
        b=gFXuT31UKsbZS4RRuNiT/zu5Bf0sEGePaKVOglbAhCTrbf3noEEsQcghvxf09/xccB
         Ig+DVZFsRMbI9pbieOgrBYHMOoUq9AQYtFlKwirHZjwCehkq0XARztOwB7x9yFUMz0pd
         bG19RylsxExJ/1uXZ/UGESWK7Ax+Kl0j9E402qhBxW9y2TEzh+KlqCmPCeHN69F3R1Kw
         0eTKK07SPWJZu9BvCFbZGplatpP96cDFqDx8+HvErHL1cE4u/nbdrLfp2Ifc0d0sTdOX
         WVx0/m95L112meP3mamBVuSaKX6rRyE4NEFUMB7fLv1OSdtUN0w9A0pliA6ymtaZ1VIT
         0o2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QNxQa7WE;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id x65si450477oig.5.2019.11.04.16.55.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 16:55:41 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QNxQa7WE;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id z4so7802614pfn.12
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 16:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=0hEul2a8RV1UNAewxvegGOoc86VV2YDrr9Eigy6cYGA=;
        b=QNxQa7WEZLPNtiqoUeSbhcmVWRZHaEZAZuJAAk+JFeLasd1o5j15r4WnhKhzLSvvgh
         ZHqZaXPdwNshI9RK3u2aaQC2dinAplQVvln5VgkK4PxY0CxPJ5U1NodSuNF5J2VaQyuS
         CdHYufYEQzCRRL98ncamQWdp3/xgQV49BB3bph8vyo71DYy0xiaIykfYW+pYz7E2C0d3
         MaGuKe7WrC5375zGs66u1/vSKZLNI4Els2vqKJzikQkep97Y7Q/weaMhlAueeltyl0i4
         TvlZU+Hl9iNL+F+IU2aYTvubH7BsFAiJhyF1PUgfL+1QFeDmWt+G21t8gbws2r3vtoOy
         rlNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=0hEul2a8RV1UNAewxvegGOoc86VV2YDrr9Eigy6cYGA=;
        b=c4bVNOTnnLwu6Cpx+goRyTd2aqPISSqRPd+OR8j7QwiDYQ+EUY5kqAzsuJQealIH3G
         F1UU5l+lVJZ3+6vNi01evMseXoLxxTOdXmsTvSeDtjlaoxSLQ1yA7/LZgQ1odvHeWRwK
         oCmnQqh123OuKMYjnzOSY2cDlLS1dKbZjDjXnKpLp81oTo0qs14oJ6AQm2sMjOHgZT1h
         da/nIKjne2jT9bOfD81Xak1SsRV2P1WSwKCNiTlrn4SaYTgrtft7qNPKfkZRrZQu6bR6
         +/KnsAlPqcYMBMK7bI0fzoDtwYvv/za5RlMN4AiCzf2CJLRiRrNmINozOFWq6VWFbgEv
         4cxg==
X-Gm-Message-State: APjAAAUNcQE9wsKX34A2xsrTHLAEWItk9MR8mug6/26mpnsnNukxz/CN
	tYIJ4rFud1Dd0FBOHyVTHXM=
X-Received: by 2002:a63:3443:: with SMTP id b64mr32342388pga.93.1572915340435;
        Mon, 04 Nov 2019 16:55:40 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id 82sm20766697pfa.115.2019.11.04.16.55.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 16:55:39 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 05/14] staging: vc04_services: Remove bulk mode enum typedef
Date: Mon,  4 Nov 2019 16:55:15 -0800
Message-Id: <d4e6589a37016bb0023f14aac17e982a2d009875.1572915104.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>

Removes vchiq bulk mode enum typedefs. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c    |  8 ++++----
 .../vc04_services/interface/vchiq_arm/vchiq_core.c   |  2 +-
 .../vc04_services/interface/vchiq_arm/vchiq_core.h   |  2 +-
 .../vc04_services/interface/vchiq_arm/vchiq_if.h     | 12 ++++++------
 .../vc04_services/interface/vchiq_arm/vchiq_ioctl.h  |  2 +-
 .../vc04_services/interface/vchiq_arm/vchiq_shim.c   |  4 ++--
 6 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index edc77280585e..8c791e9d5c6a 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -382,7 +382,7 @@ EXPORT_SYMBOL(vchiq_open_service);
 
 enum vchiq_status
 vchiq_bulk_transmit(VCHIQ_SERVICE_HANDLE_T handle, const void *data,
-	unsigned int size, void *userdata, VCHIQ_BULK_MODE_T mode)
+	unsigned int size, void *userdata, enum vchiq_bulk_mode mode)
 {
 	enum vchiq_status status;
 
@@ -407,7 +407,7 @@ EXPORT_SYMBOL(vchiq_bulk_transmit);
 
 enum vchiq_status
 vchiq_bulk_receive(VCHIQ_SERVICE_HANDLE_T handle, void *data,
-	unsigned int size, void *userdata, VCHIQ_BULK_MODE_T mode)
+	unsigned int size, void *userdata, enum vchiq_bulk_mode mode)
 {
 	enum vchiq_status status;
 
@@ -1107,7 +1107,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 			}
 			kfree(waiter);
 		} else {
-			const VCHIQ_BULK_MODE_T mode_waiting =
+			const enum vchiq_bulk_mode mode_waiting =
 				VCHIQ_BULK_MODE_WAITING;
 			waiter->pid = current->pid;
 			mutex_lock(&instance->bulk_waiter_list_mutex);
@@ -1611,7 +1611,7 @@ struct vchiq_queue_bulk_transfer32 {
 	compat_uptr_t data;
 	unsigned int size;
 	compat_uptr_t userdata;
-	VCHIQ_BULK_MODE_T mode;
+	enum vchiq_bulk_mode mode;
 };
 
 #define VCHIQ_IOC_QUEUE_BULK_TRANSMIT32 \
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 55caf0f1ae98..380f93a6c107 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -2954,7 +2954,7 @@ vchiq_remove_service(VCHIQ_SERVICE_HANDLE_T handle)
  */
 enum vchiq_status vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
 				   void *offset, int size, void *userdata,
-				   VCHIQ_BULK_MODE_T mode,
+				   enum vchiq_bulk_mode mode,
 				   VCHIQ_BULK_DIR_T dir)
 {
 	struct vchiq_service *service = find_service_by_handle(handle);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index bfee311e6410..6a6ae0c01061 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -523,7 +523,7 @@ remote_event_pollall(struct vchiq_state *state);
 
 extern enum vchiq_status
 vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *offset, int size,
-		    void *userdata, VCHIQ_BULK_MODE_T mode,
+		    void *userdata, enum vchiq_bulk_mode mode,
 		    VCHIQ_BULK_DIR_T dir);
 
 extern void
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index 89646d281898..5404e51f04a1 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -31,12 +31,12 @@ enum vchiq_status {
 	VCHIQ_RETRY   = 1
 };
 
-typedef enum {
+enum vchiq_bulk_mode {
 	VCHIQ_BULK_MODE_CALLBACK,
 	VCHIQ_BULK_MODE_BLOCKING,
 	VCHIQ_BULK_MODE_NOCALLBACK,
 	VCHIQ_BULK_MODE_WAITING		/* Reserved for internal use */
-} VCHIQ_BULK_MODE_T;
+};
 
 typedef enum {
 	VCHIQ_SERVICE_OPTION_AUTOCLOSE,
@@ -118,16 +118,16 @@ extern void           vchiq_release_message(VCHIQ_SERVICE_HANDLE_T service,
 	struct vchiq_header *header);
 extern enum vchiq_status vchiq_bulk_transmit(VCHIQ_SERVICE_HANDLE_T service,
 	const void *data, unsigned int size, void *userdata,
-	VCHIQ_BULK_MODE_T mode);
+	enum vchiq_bulk_mode mode);
 extern enum vchiq_status vchiq_bulk_receive(VCHIQ_SERVICE_HANDLE_T service,
 	void *data, unsigned int size, void *userdata,
-	VCHIQ_BULK_MODE_T mode);
+	enum vchiq_bulk_mode mode);
 extern enum vchiq_status vchiq_bulk_transmit_handle(VCHIQ_SERVICE_HANDLE_T service,
 	const void *offset, unsigned int size,
-	void *userdata,	VCHIQ_BULK_MODE_T mode);
+	void *userdata,	enum vchiq_bulk_mode mode);
 extern enum vchiq_status vchiq_bulk_receive_handle(VCHIQ_SERVICE_HANDLE_T service,
 	void *offset, unsigned int size, void *userdata,
-	VCHIQ_BULK_MODE_T mode);
+	enum vchiq_bulk_mode mode);
 extern int   vchiq_get_client_id(VCHIQ_SERVICE_HANDLE_T service);
 extern void *vchiq_get_service_userdata(VCHIQ_SERVICE_HANDLE_T service);
 extern int   vchiq_get_service_fourcc(VCHIQ_SERVICE_HANDLE_T service);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
index c2343a1a3a6a..b991ce353a63 100644
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
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index d186c38a43cc..ed6e42e3fa8d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -203,7 +203,7 @@ int32_t vchi_bulk_queue_receive(struct vchi_service_handle *handle, void *data_d
 				void *bulk_handle)
 {
 	struct shim_service *service = (struct shim_service *)handle;
-	VCHIQ_BULK_MODE_T mode;
+	enum vchiq_bulk_mode mode;
 	enum vchiq_status status;
 
 	switch ((int)flags) {
@@ -263,7 +263,7 @@ int32_t vchi_bulk_queue_transmit(struct vchi_service_handle *handle,
 				 void *bulk_handle)
 {
 	struct shim_service *service = (struct shim_service *)handle;
-	VCHIQ_BULK_MODE_T mode;
+	enum vchiq_bulk_mode mode;
 	enum vchiq_status status;
 
 	switch ((int)flags) {
-- 
2.17.1


