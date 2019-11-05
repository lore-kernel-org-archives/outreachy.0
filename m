X-GM-THRID: 6753896393761357824
X-Received: by 2002:a9d:17e9:: with SMTP id j96mr20050412otj.298.1572915343875;
        Mon, 04 Nov 2019 16:55:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7085:: with SMTP id l5ls1573201otj.11.gmail; Mon, 04 Nov
 2019 16:55:42 -0800 (PST)
X-Google-Smtp-Source: APXvYqyp/x2q6a7FdPAmfm5HKwO6n2XkkUoqUHj30ui1c+05OgpGGUlBo2mHRismNs4oTaEKqP9a
X-Received: by 2002:a9d:7284:: with SMTP id t4mr526088otj.259.1572915342867;
        Mon, 04 Nov 2019 16:55:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572915342; cv=none;
        d=google.com; s=arc-20160816;
        b=AloDWzupEgHjMX4AdO9XlvUUXtALZQ8jEn5q4IhSxpB7QeePwo0eqZJZTYkuoFRp4w
         sj2s3A1CC4WaU2LGAnzYL1Btvn8yuHR2ufHEKRlgH6nhMF+pxt4WdPE4Wua1FogpXwK+
         bTlQ7ggiHBQkQuZkPNQ1TwSED0+v2NOG3E8NYUsn0gZp9SoQel2Fu/GXP5gpIctwxv8Q
         jp79xQRKr0xiVqDBzs+a/O2Z1nSmqJysyMzb/vp4r3YOw/4mEwAq6KXetUknuGrIvS6S
         A0CijeKpr4tAbtxD13Q7THOxhJWAtkwdN4AM2+4bSGY7gTfCGF7BRH+v4HpUcT56zIGt
         8kbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=dRAnnpc6OSPu/+wTRaZ5KuiqCZzEfy/kCq4w7L447aQ=;
        b=TDPTSAJ4FDAJM5janCDdiyJnDjcMqhrtJG7BJcCo8daeg3+srSdw6dZ6+uEQ2jW4Gp
         5ih61xFpPXc7HaC7mX0SZGqzAxkKK5G2MDb0vvmq8w/fzBMZilNracgi7CYBluyzhivs
         /EAfeifeVEXuZupoNHthTu+d+of7hz/NUYiOM3N2869zL9OWP4Ru4SEdFdIj9zqgu7l3
         ntrAjDvj/W40yDBZ+02601bdili7XSy6h1cpsjoBvPJKs+bJxR0MICP+G4pLjdsnD60a
         1afUHj2PX84qU5RsD3gV7O3JMklPOnrsskytnULMAQPEAHQhodlWNtieVq3R6oo2ZbZT
         thng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MPZ0oi9v;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id x65si450477oig.5.2019.11.04.16.55.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 16:55:42 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MPZ0oi9v;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id z4so7802614pfn.12
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 16:55:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=dRAnnpc6OSPu/+wTRaZ5KuiqCZzEfy/kCq4w7L447aQ=;
        b=MPZ0oi9vwRnH7RRWCZbj+Oz5PdN72+TMoe5YJcJ7+I7FOFNCMwLMDwrMzpXiwa98UL
         J4jcEWUOoZv/NJwrLH26howyeB3dEkgLsHldBo9owC4zFs2JdGgBO2GWJHmal+jg/byS
         Aon6c1uOepFJJ9ZmJmwnItkMRJLaHRKm0Z+ReHccYPpataL6tPu86oMoMaKw7MGjoSKs
         xeDFWgWTb+yuqnHeuO5ZoeJyHzE8V9p8ud3wTNN431D4/5G1PXdt6/EGrecK5HI9dxie
         ESNbSZrpeaZMvxVr1NVVrazu71wcu1VEOMOqYRbmPH9OX8oEdsI3M1L9HqwngU0wyaWY
         zPZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=dRAnnpc6OSPu/+wTRaZ5KuiqCZzEfy/kCq4w7L447aQ=;
        b=POS2SEwavmek4NnOp8RFHn8SMSCMm/mgS1VE58steLU3Y5KCUCL/Dw98+x6APN+xte
         bD2W+mj17d24o9oDtaMSR1YrOo4pvKqjUw9as/FgbdtMhWdRuxIDSAuNDy8HF5aAlAb5
         j0onrUgvqj9WXybCFJaPriRsysZMxLmZXpLqicMAFesennNGWv/fTAu2rWpkhXgjAM/t
         dr3lvxnFuHH6KmS/TdrNb+/bsmJfFCZbY9O8+A8dX0SBPAxyDPI+2q+tyvD7GAGYqXZI
         Aw25ROuJhFSl57tnEqHoTflcqCKCve7iVHdLPhv7KEAt+giFygfe2FQ+GHurwsIIc1DX
         r+Qg==
X-Gm-Message-State: APjAAAVmOhEf+HgkXM2w8bHSEgav+0+O9zjMafVYmoyUhHBAvanvA4Yy
	hemT0ltHhJG3QFso8axORAskQbQKO/4=
X-Received: by 2002:a63:456:: with SMTP id 83mr32658288pge.77.1572915342503;
        Mon, 04 Nov 2019 16:55:42 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id u36sm17654015pgn.29.2019.11.04.16.55.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 16:55:41 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 06/14] staging: vc04_services: Remove option enum typedef
Date: Mon,  4 Nov 2019 16:55:16 -0800
Message-Id: <63d20365b681b4d6119b1263e995f2695902b7a7.1572915104.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>

Removes service option enum typedef. Issue found by checkpatch.

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


