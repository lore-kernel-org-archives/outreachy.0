X-GM-THRID: 6755960127598100480
X-Received: by 2002:a5d:8043:: with SMTP id b3mr30420881ior.146.1572994553624;
        Tue, 05 Nov 2019 14:55:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:9a0d:: with SMTP id t13ls74029ili.0.gmail; Tue, 05 Nov
 2019 14:55:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqynNhQtd44daCJUYMTSF1c0wubmU4MpWYQqvX5kZSOgd1hht+xidbvhUUXJLaSwbU8G4lUY
X-Received: by 2002:a92:a30c:: with SMTP id a12mr35081237ili.150.1572994552946;
        Tue, 05 Nov 2019 14:55:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572994552; cv=none;
        d=google.com; s=arc-20160816;
        b=GZmaXC4vJX/0qX7B6flzxzx3CDC4D1kQXApp5b/xD1OmekQsQGTxnB4YKQQNe9vu3z
         wEyzpY9ro9SbEWl9XymS9T8SmM/4cTNhiMzRyBvvk+WvVGAF/VSlCAHLdGsUAomW6JsS
         QPGxfcU/Q2bAML3VLlebHHhGVWJvT+yaXmLAJtDTqcDFpbuKNzWqYAhrR/NFfxFLZDiQ
         Bz+qiyowi4I01z994+fGHx0S47GdxzMoCdGILaWyvy9XofWWhN8ujPnKnVK01GH1oueB
         S30byZGBe5oTM1eciUxxBPBPfgNNJJp31/QBJZWXLW/lqSexZ+o9rbn/3RvxOw5YiNag
         hopQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=an3ySdS8OH/HkVY+hVov/dcRXc3057yL3duFOlJHsHg=;
        b=M7jBpf+5kXmgTdIHgqsjIUnBNNwp6MOAojhbYmhTVIhOrH7+t8pWAtABmU259Ol68B
         pby44TE2/T4bSqaVODKSnv5NyYBYde0B+WDriQlJcUKBe8mY4HGEyqROpQSOBTRiV1in
         MDa39d96VMpDF+1aaKzmuufoQyb5zHo7eABVmvhKGCQa6Ockp0WzwWBC3C80khw09lTU
         1HTJYXk8OgT/QqaxLQCaGpm3fOx0ylENjyJ7rRmtXgz8Nt8JrHyY9ypSlI3mYQ2TG86s
         oJq5DlIPGRdEpR8+4V7KLxM3ia3I6QHGWKzsZMVzO5d/PlTSlXdzFfSbEbfnbTR1okAV
         oQNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ebQ1vMOe;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id t64si1315739ill.0.2019.11.05.14.55.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 14:55:52 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ebQ1vMOe;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id 15so15650869pgt.7
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 14:55:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=an3ySdS8OH/HkVY+hVov/dcRXc3057yL3duFOlJHsHg=;
        b=ebQ1vMOenf+APU9R9dVOXLZ5tro4+hM776hxPwY6cn2hZbJZM6OTP0jIGEJ9IXxOJE
         ycg5Mi++HNQSlHjXebwKa07H2zmIpCz06QQ8Upgf9UJwIfKY+qi+M/6KLQIz8kPjSksc
         XRKZ2h8Bkb9exg0Koh6utMtISYn75QP4QvBmmrz9lN6GlmyFO0Ho3OxFmaWsSeuG/JkA
         iYWz9kb1E1LJD8/qqFWw5HT0bBTCIoFT2WSI6duTElAY2lSpx117nNFbuJlXpX9+CZCe
         co9HDCApYKaozWvQeYAcA/MfWRYAXe27Kml+ADx006slLmxRbmmDbIcy5sGl2XPT4AFo
         rd5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=an3ySdS8OH/HkVY+hVov/dcRXc3057yL3duFOlJHsHg=;
        b=gqzXFxbYIBsjHmk+J3EY06pMKMGFa/aUsk+1pFE3XEw3yzNNUMd0aGa6Fyt0eMrC2J
         0c7KOTTJ4NF+8oyuvuP81Y6BNYiS31YjrVVbcgkRFLeBZ3uXQQQvOIGVz3v5PIQ0tH7p
         rzGcmbHHGlzQsgC1zTO3mMw20znfsjkI9tpNueDoh4LmfXawXUS+xPBwNycHo2l2LHGO
         DKJgf3wPi8mlUMElIT3MPMnrWUoyGlBhN8ttA5owP3iiyxQV5l/GX39fFibbtBqkAtfN
         dTzDW49eLd79W/A7JdIJEq3OBJS4by/d4V8cVLv5SXyi+kYsTDyE3F47y8dnoXkyLRNZ
         0OsQ==
X-Gm-Message-State: APjAAAU9fJ5dNuQS7oyo6dTxFielGyKxdTwWuEJLtTZOhzPGNesLHUvy
	DCn0zTrTEezGkdlPPPhHtDY=
X-Received: by 2002:a63:7319:: with SMTP id o25mr38697955pgc.339.1572994552338;
        Tue, 05 Nov 2019 14:55:52 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id f26sm19792793pgf.22.2019.11.05.14.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 14:55:51 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 06/14] staging: vc04_services: Replace VCHIQ_SERVICE_OPTION_T enum typedef with enum vchiq_service_option
Date: Tue,  5 Nov 2019 14:55:23 -0800
Message-Id: <f8e9c9170ed008043186dda99d40b60fb16c1d85.1572994235.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>

Replaces VCHIQ_SERVICE_OPTION_T enum typedef with enum vchiq_service_option to match kernel code style. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_core.c  | 2 +-
 .../staging/vc04_services/interface/vchiq_arm/vchiq_if.h    | 6 +++---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h | 2 +-
 .../staging/vc04_services/interface/vchiq_arm/vchiq_shim.c  | 2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 380f93a6c107..d72d160c32f8 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -3223,7 +3223,7 @@ void vchiq_get_config(struct vchiq_config *config)
 
 enum vchiq_status
 vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T handle,
-	VCHIQ_SERVICE_OPTION_T option, int value)
+	enum vchiq_service_option option, int value)
 {
 	struct vchiq_service *service = find_service_by_handle(handle);
 	enum vchiq_status status = VCHIQ_ERROR;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index 5404e51f04a1..91cfb1cfafa7 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -38,13 +38,13 @@ enum vchiq_bulk_mode {
 	VCHIQ_BULK_MODE_WAITING		/* Reserved for internal use */
 };
 
-typedef enum {
+enum vchiq_service_option {
 	VCHIQ_SERVICE_OPTION_AUTOCLOSE,
 	VCHIQ_SERVICE_OPTION_SLOT_QUOTA,
 	VCHIQ_SERVICE_OPTION_MESSAGE_QUOTA,
 	VCHIQ_SERVICE_OPTION_SYNCHRONOUS,
 	VCHIQ_SERVICE_OPTION_TRACE
-} VCHIQ_SERVICE_OPTION_T;
+};
 
 struct vchiq_header {
 	/* The message identifier - opaque to applications. */
@@ -133,7 +133,7 @@ extern void *vchiq_get_service_userdata(VCHIQ_SERVICE_HANDLE_T service);
 extern int   vchiq_get_service_fourcc(VCHIQ_SERVICE_HANDLE_T service);
 extern void vchiq_get_config(struct vchiq_config *config);
 extern enum vchiq_status vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T service,
-	VCHIQ_SERVICE_OPTION_T option, int value);
+	enum vchiq_service_option option, int value);
 
 extern enum vchiq_status vchiq_remote_use(VCHIQ_INSTANCE_T instance,
 	VCHIQ_REMOTE_USE_CALLBACK_T callback, void *cb_arg);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
index b991ce353a63..202889b3774f 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
@@ -60,7 +60,7 @@ struct vchiq_get_config {
 
 struct vchiq_set_service_option {
 	unsigned int handle;
-	VCHIQ_SERVICE_OPTION_T option;
+	enum vchiq_service_option option;
 	int value;
 };
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index ed6e42e3fa8d..ce11b9adbfa3 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -667,7 +667,7 @@ int32_t vchi_service_set_option(const struct vchi_service_handle *handle,
 {
 	int32_t ret = -1;
 	struct shim_service *service = (struct shim_service *)handle;
-	VCHIQ_SERVICE_OPTION_T vchiq_option;
+	enum vchiq_service_option vchiq_option;
 
 	switch (option) {
 	case VCHI_SERVICE_OPTION_TRACE:
-- 
2.17.1


