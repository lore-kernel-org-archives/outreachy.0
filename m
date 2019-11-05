X-GM-THRID: 6753896393761357824
X-Received: by 2002:a05:6830:1518:: with SMTP id k24mr20028954otp.213.1572915338552;
        Mon, 04 Nov 2019 16:55:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:cf8f:: with SMTP id f137ls372839oig.8.gmail; Mon, 04 Nov
 2019 16:55:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqxbj2jJ2NogepIWMdUjcATCzkq36143HiW/xbMY+WM+DMCegeMxq3Dbx5PFiQgwAGxM0Vcl
X-Received: by 2002:aca:494e:: with SMTP id w75mr1603345oia.159.1572915337480;
        Mon, 04 Nov 2019 16:55:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572915337; cv=none;
        d=google.com; s=arc-20160816;
        b=zWDX2QE4TL4Bu70jbkmPf2Bx5REbrEmZVolUdwYNZYDTA+bkylQVp2pxxirzV5y6fK
         MyrXGTIRvtd3OSHYU+ozPXVGE0ZRwht/WROrP2f3vt/N1qfPFWxg/ziNWcVggydOt4db
         Fv34KuLe+570yNpWuhNvAvu73m/YFNkCUxAUwRTBsSAOAlL3/uNQEfPijNvIqYCeZf0K
         QuITuv3/rdd/GUKtAGM7IvUzUwBXpzJ5xrvsIWAUlhq7u5K5Z6KmXv2fxyudaIYG8ktb
         +YLe5QDmOcGJyBLQHT3m3cPuI4sS1D8YvU4iws0HWX6SjeLWRF8qConE5WkRChaGNr2J
         YmXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=oxUrVhGrSoIhPk2mWkW8/yGAoO50KR5Au37YGXyFmn8=;
        b=HpQetQn8QyXNtU//7lU82jRFf7LM/3SBKsdSB3I1LP0CYJkq4oBQaqz6Gyrdi5RpRM
         qAPdX4bojtJAZrW8GSf7AqDB6CsazMpTMkGx3P6TDKUKJlaoAX0QlSs3XQDsdLjmWlpf
         qd4uWnLG1KVZTM/yo2sA/aJoRKwN9nEwODnY6SrTyo0M83EsAQxsFhtw+P2d+DtRMO0L
         qtveBknP4ZHl7qF/+F1r5OJBWRXSYSnrtN2AMNuXye/fG+RAeAlHjGb7pY7W5HTMpAxM
         a5dethyNNYz2B/uhIq1sIaYgFMhHg9wMI8T6mbcTRvPldN7blVIlwRlBNNQWBEcm+93W
         RRYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hSc+0z0y;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id n63si1024965oib.3.2019.11.04.16.55.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 16:55:37 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hSc+0z0y;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id j30so9278993pgn.5
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 16:55:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=oxUrVhGrSoIhPk2mWkW8/yGAoO50KR5Au37YGXyFmn8=;
        b=hSc+0z0yvikvkp21gc/iGbsEbys12hoP248pGYxYMDnxn62Ipl9IHxk2gs44RkfAPr
         rhvXPynetB4AJO7yy6aIhyx8+F60Qq39Bp9dDEBCVFFD36TvISiu+JmF+MsZjKDhqhPU
         728qGfdPst/bLumnmONo/HZ2LkvEW93z/bPnblfmfw6KTUGcEXZ2O1DNs9++0VAZZPxv
         LNTZm3d2tJKAp//EKt1JsAnSo3yeROMKTOukWpef7FmC6b+7OSI6a1HaORJfipunv4gx
         4bAFbBCvpsmcxlorGNdQGmYkTCN8ZBzL6eprHwvkWTMweof/ClRexeSKNFnvv34bLOcV
         dwfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=oxUrVhGrSoIhPk2mWkW8/yGAoO50KR5Au37YGXyFmn8=;
        b=oQM9kZ116zwLDp8RjjUY33Zkxi7kdZCuMXBZ6oaM4CmmkkgCyMjIsJ/OSnlkTIWJpI
         8jx2hi2Q1Z6yxps69p0I/PZ9YvnuSXFDt6AHWcmdRZRI0Vi4vYBzdUrd09MruNI/v0zI
         ZfdXWa3G9HF98tXZoXINRQ24FQQWG4lfbQ10ms3siPlkoBOK7hGnqRgX7o8hdFsE9dYv
         esGqkKpkxtfF0nW2MzUpPm3hIY1ggjUM4Kl9hm1wnaNNEYF2jPM+cnLSBrOUdAP+LU7U
         HoJkGpNSkLN8YABY28JhufvBv51buj2ad/bnEyEWeGbWYLEGDpNlGh2BSeJxtwXUTdTg
         QFgg==
X-Gm-Message-State: APjAAAXu83oCBycH+V56a36KHRa9bw0/JYia2ZWYuYnsoJYVqXUxPjsy
	+QVx/FgE0TxTXsjsmkQBSNo=
X-Received: by 2002:a17:90a:19d1:: with SMTP id 17mr2719482pjj.52.1572915336792;
        Mon, 04 Nov 2019 16:55:36 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id g9sm16847625pjl.20.2019.11.04.16.55.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 16:55:36 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 03/14] staging: vc04_services: Rename function pointer typedef
Date: Mon,  4 Nov 2019 16:55:13 -0800
Message-Id: <b597d8f57ba7b2605ee70ee50adff80293f6cc8c.1572915104.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>

Renames callback function pointer typedef to better match kernel code
style.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/vc04_services/interface/vchi/vchi.h         | 2 +-
 drivers/staging/vc04_services/interface/vchi/vchi_common.h  | 6 +++---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_shim.c  | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 05fb5c3e8ba0..56b1037d8e25 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -45,7 +45,7 @@ struct vchi_held_msg {
 struct service_creation {
 	struct vchi_version version;
 	int32_t service_id;
-	VCHI_CALLBACK_T callback;
+	vchi_callback callback;
 	void *callback_param;
 };
 
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index c99735fc0308..141af16ce031 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -86,9 +86,9 @@ enum vchi_service_option {
 };
 
 //Callback used by all services / bulk transfers
-typedef void (*VCHI_CALLBACK_T)(void *callback_param, //my service local param
-				enum vchi_callback_reason reason,
-				void *handle); //for transmitting msg's only
+typedef void (*vchi_callback)(void *callback_param, //my service local param
+			      enum vchi_callback_reason reason,
+			      void *handle); //for transmitting msg's only
 
 /*
  * Define vector struct for scatter-gather (vector) operations
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index fe2bb49815ae..dd35147df3ac 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -16,7 +16,7 @@ struct shim_service {
 
 	struct vchiu_queue queue;
 
-	VCHI_CALLBACK_T callback;
+	vchi_callback callback;
 	void *callback_param;
 };
 
-- 
2.17.1


