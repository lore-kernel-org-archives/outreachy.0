X-GM-THRID: 6755960127598100480
X-Received: by 2002:aed:22c8:: with SMTP id q8mr21417817qtc.0.1572994553033;
        Tue, 05 Nov 2019 14:55:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3c70:: with SMTP id u45ls29673qte.16.gmail; Tue, 05 Nov
 2019 14:55:51 -0800 (PST)
X-Google-Smtp-Source: APXvYqzapMFBV3xVPaH7c4pd8IXZFWvCs166tzoKlWoXfTyH4Z/pn7hKWmZVrhBbMCk9yMoN+/nv
X-Received: by 2002:ac8:18a9:: with SMTP id s38mr20698936qtj.355.1572994551920;
        Tue, 05 Nov 2019 14:55:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572994551; cv=none;
        d=google.com; s=arc-20160816;
        b=u/zisQD0Mlk/DWpaBNELyBgGM7mpUEgvVdVAgb90NqiyzYA8zoTyFDiwGmNqRT3g7d
         cXL1nSkZQGNNG/bQr3gHY7Yptsluf+X3zoywLSW+zVQKY7yf9aeuq+Zi5/CJmWou65Ul
         I1caQVxoej1A6jRltveFAiDZdwF7fQRv0+PRnXPWdx0X+od0mNTJGySwZFFXW+2Sarzh
         R46FI/zPv1j/C9eEEj4mO9VMuWQ/S0WKmmDt7+qqoSGatKateO19Ms3arzk9WYIWEd/m
         DEtUUA2PTi9PdFhLpGaExs2zC6LiMPbMZ0W79RMq31UEUts+aaKLRSy2MAUHP1wSV9jQ
         WIww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=aH/r5fAU0ilKz/NJUf03KkoFJYIhu5dDbSD30r2ibWA=;
        b=gIqv+mZmL7xqyVE14lrTBo0FQ2BLF09KByBjMPFQprqr8Qgn1bUkN39b733yWY8Mhz
         eit00vujh4kYl/OFBKzyfyJ7b+/qBR5yyq/VS8SKoEEfsfRVJv9x3pp5jzzN83DSyQDc
         8RJWwubkZ4qvX2TNXIqGQ1133LzoRJDXeVzSxyWF2hXE+/UXr/QvewHOp+n8l+d71B9h
         ZNLuaNz0JopVRVN1/LbxnpqnpmkDd1l0OKX+oDknt8gVVBQIvCl+YMc5HF3sDwWrZrpc
         MsVSlrbmg/5zWAZY8rTHsVclKb9Ukugh/9+577S8R7wTdk6S19DvK+dHV9bL3+58Xu83
         9a7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gykc2l01;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id x6si473070qkl.7.2019.11.05.14.55.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 14:55:51 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gykc2l01;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id g9so10436644plp.3
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 14:55:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=aH/r5fAU0ilKz/NJUf03KkoFJYIhu5dDbSD30r2ibWA=;
        b=gykc2l01MI/6En2gYtPZ5ZHG6095gFQbFbJxtl+WHs9i1o0OGDD2bbVLXc2KN8zond
         9ckJ3TAs/yTTpJHFpBQRQSXA5+TcbEjncBpec7sn/5rylwcjk+tdO0t41aFRoKe/qlFt
         heRuP8OssIWzHXkNFZ2i2+XdpJWJkeLS3KfU3lpC8Lemy6Vm/BLdu3GXF/UGpvT1XYcd
         aDzpo8WZpFO6Px4xpGYHLuhwrTo/F+S7qUgQApRm2xN7NgknD2dRG5t/wHxeV7PYQtYI
         nHP1M5QqFC7CfYLTAPiEIzQ+vsTo5D6WCgPdVbTmXfv5ufOJDB/g3TunwzaPnkMf/wTD
         mpxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=aH/r5fAU0ilKz/NJUf03KkoFJYIhu5dDbSD30r2ibWA=;
        b=LcxfYv49J1LONCydj/VVacJ2EydYa4FfcpR9YuiAWM9BNA+Znhg9KZRjdgrirrUOBh
         N/hHx8ZQvsk3ptn/ScTAIOcJcmtMlieHLHgBNdfixZPYi+U4ZQKEV1i6fcmi3/AhH/u4
         ZFjQXHWUuXOs4FlsTQ496kzeUwLnMYPwKA51H+RXldeihhwamRnVw1N+5iXdha6fGkX5
         F7uDcCyhtNHCq0wA+lS5o8gdS6mR8wAZ6bokGYl7dfUiwKEMu1Sugo98MFyLx1Ma3ySZ
         jQr6Boi7vtDS3cAQVDKLVW6IofFDcUisH9N0iYND/02lVmsgTvwjec7LMPFMhKcMuJfs
         cIuQ==
X-Gm-Message-State: APjAAAXeRtg2dXRJYJqjhHUzyzJUV/AAkm/+HyhYMw8QTb/sG1tT1FTr
	sn7XKqhbkaLlUJSp6hJEW0BEOggKjAnKVg==
X-Received: by 2002:a17:902:a717:: with SMTP id w23mr35303277plq.177.1572994550908;
        Tue, 05 Nov 2019 14:55:50 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id 74sm21503600pgb.62.2019.11.05.14.55.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 14:55:50 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 05/14] staging: vc04_services: Replace VCHIQ_BULK_MODE_T enum typedef with enum vchiq_bulk_mode
Date: Tue,  5 Nov 2019 14:55:22 -0800
Message-Id: <667037e1810921e30371dbeb52c1ae489bf31f8c.1572994235.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>

Replaces VCHIQ_BULK_MODE_T enum typedef with enum vchiq_bulk_mode to
match kernel code style. Issue found by checkpatch.

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


