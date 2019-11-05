X-GM-THRID: 6753896393761357824
X-Received: by 2002:a9d:518e:: with SMTP id y14mr7128095otg.75.1572915348801;
        Mon, 04 Nov 2019 16:55:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5f56:: with SMTP id t83ls374914oib.5.gmail; Mon, 04 Nov
 2019 16:55:47 -0800 (PST)
X-Google-Smtp-Source: APXvYqyO8fCxJkODR9qqsPPOO+tuYH/ObI8A0j3jESVNR1aS+f8fDIdGODTu6BpeTWPJf6dj5VnH
X-Received: by 2002:aca:4f51:: with SMTP id d78mr1676288oib.40.1572915347808;
        Mon, 04 Nov 2019 16:55:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572915347; cv=none;
        d=google.com; s=arc-20160816;
        b=lMcF6Ko4yT4fK8GgvS28dM6WwJqrhn4oMSegivZ/89iTBDasv9hiVjIfA8rk5oK9eV
         LXe5pv/FMlxgpr5lizoUThx+F4iKB9/GZJSdRBgyjIV64VAlvomv0tqVoZ0rg06v2lTx
         z4mdNlzZHUy6v/qcsCUrYDSKy2YkW1LBy4MRLvrhofZGcZINXyNDzDHMKSc/4D3szEEL
         cNWXyWSpM2JkxVJ1KoP2U6NxxlAYZ7hQ6LjaI3i93EmvQ215fzQ5mRp325gLLXOCp0zU
         VHqAESBIbonKQ5JBN+bTWxMRB/2zNWAZO75aNulYFf+MgZVYg6hDPyh19LlgMp0iUSdV
         fVMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=TeKxQw2DrByIm2IAwDf+rZ3tIhwXGs2gYUrAkJNO6lE=;
        b=rtQUCRvF6Ycyso4w9Zvb1LkHuJBuyArTpQlheCO6PeCVDO3G2cSS2j26NVOsej5od2
         kAVPB9B605goft90HMeQKWXIs+LtJYQAQuhBZAC05qOw/LCepOEuURVsu8Kp76jACGkp
         o1GhZdV2/QD4JZkYNFWPQTwA+p24RoL9r5g7lKa/0ny8og6SDoJyTSu+rQCKqNIienbE
         hz54jEw8DnMmm0o7UQp0wRi8quSXTQuR5LHGT2s6yZyNTap0yqOi4ulcKdQ1nfINf6QH
         p187/fxOElZbWtNL9kjKceP2rsJ0uOLfupEe63J3OUdQHBovk4mB+NpCoMhhKvi0mKv9
         5oAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WDDLsOP0;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id n18si115809otr.3.2019.11.04.16.55.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 16:55:47 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WDDLsOP0;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id g9so8525332plp.3
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 16:55:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=TeKxQw2DrByIm2IAwDf+rZ3tIhwXGs2gYUrAkJNO6lE=;
        b=WDDLsOP0V6yXx19MvgFe/TAgbQmYr3ag1mx7YamH449R4Y36dxdBYV51XGNoYfCdks
         RaKEWU+K65tx6aCgSRfRtL5DbSb68IzZTooZ5/tipEEueivF4exX3zhrbGieNh5nodqE
         h+UiYQs5Yaw/yOqHzA2IiQ25bx6W6MsnWJUJRGIrI+oNdAlIrp5jYQM2maYsGS9g9tsi
         G7ySEQBfclZ+2LkEgc5LVggaO2jCBUZgZ0lKZaQ2bjlz0d5hjBLuokBFAvIUPlRiVCaZ
         fMoLCIJxnRJoCkw/mET6gU64oTKJBrQkkYmQmoXqRPyaTU7qPpmBijFTFAhN/9NyWzch
         mzZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=TeKxQw2DrByIm2IAwDf+rZ3tIhwXGs2gYUrAkJNO6lE=;
        b=NzWln2nRdDj7mb8cIpTtAx4/8jmnBKk5ES89XOnen8FMns3Ut/aoRss7UEOfxBlZEl
         3jirNBhi2OReg9/cxD/UqygeA/b8MzR36h5HPTPWID9lEEtjCKI9zx+BNrov9PzwAJqk
         09nfzktt7Im1cpnR5cARA62VxzdcHXRJpBUm0LAGwHwNzr+MSime+4a1NmvYoakirenr
         gBXrfEuw8BsuZ2R6GwzUejqYdzTOIEJix++leRw0bOfkEz0PhBSmCsHf+1ZNvy/MkLq7
         WjxjH8Pnur+by8nT88yZ5uiuqERXkRmiNJzhg49caM2Wdl3dK4FiNx1zCTOvJYRgqPwy
         r9NQ==
X-Gm-Message-State: APjAAAVAZYMGdunlh3JM0aG27vmKVX8JtZQlMWUXPx0jZ7fh+IrhlKio
	rtfWhWJxEEEbmxwo6Kws5t0=
X-Received: by 2002:a17:902:860a:: with SMTP id f10mr23619859plo.233.1572915347440;
        Mon, 04 Nov 2019 16:55:47 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id y2sm18177057pfe.126.2019.11.04.16.55.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 16:55:46 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 09/14] staging: vc04_services: Rename userdata callback
Date: Mon,  4 Nov 2019 16:55:19 -0800
Message-Id: <b558dc2d6cdf39d9d1ed45eb8bb8505ff1839fa0.1572915104.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>

Renames userdata callback function pointer to match kernel code style.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_core.c  | 2 +-
 .../staging/vc04_services/interface/vchiq_arm/vchiq_core.h  | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 4392dad352da..bb2645b9ba00 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -2281,7 +2281,7 @@ struct vchiq_service *
 vchiq_add_service_internal(struct vchiq_state *state,
 			   const struct vchiq_service_params *params,
 			   int srvstate, VCHIQ_INSTANCE_T instance,
-			   VCHIQ_USERDATA_TERM_T userdata_term)
+			   vchiq_userdata_term userdata_term)
 {
 	struct vchiq_service *service;
 	struct vchiq_service **pservice = NULL;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index d8ecc2fd1677..d56ee1b99e9c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -207,7 +207,7 @@ enum vchiq_bulk_dir {
 	VCHIQ_BULK_RECEIVE
 };
 
-typedef void (*VCHIQ_USERDATA_TERM_T)(void *userdata);
+typedef void (*vchiq_userdata_term)(void *userdata);
 
 struct vchiq_bulk {
 	short mode;
@@ -253,7 +253,7 @@ struct vchiq_service {
 	VCHIQ_SERVICE_HANDLE_T handle;
 	unsigned int ref_count;
 	int srvstate;
-	VCHIQ_USERDATA_TERM_T userdata_term;
+	vchiq_userdata_term userdata_term;
 	unsigned int localport;
 	unsigned int remoteport;
 	int public_fourcc;
@@ -501,7 +501,7 @@ extern struct vchiq_service *
 vchiq_add_service_internal(struct vchiq_state *state,
 			   const struct vchiq_service_params *params,
 			   int srvstate, VCHIQ_INSTANCE_T instance,
-			   VCHIQ_USERDATA_TERM_T userdata_term);
+			   vchiq_userdata_term userdata_term);
 
 extern enum vchiq_status
 vchiq_open_service_internal(struct vchiq_service *service, int client_id);
-- 
2.17.1


