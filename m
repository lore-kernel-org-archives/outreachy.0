X-GM-THRID: 6753896393761357824
X-Received: by 2002:a0d:e5c3:: with SMTP id o186mr21200702ywe.360.1572915351470;
        Mon, 04 Nov 2019 16:55:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:6e54:: with SMTP id j81ls3010879ybc.11.gmail; Mon, 04
 Nov 2019 16:55:50 -0800 (PST)
X-Google-Smtp-Source: APXvYqygFReiFCuD8O6qfVX+w2byK2hbPXDc+SIXB7J1c1fn4h20AKG5Ul6BlS1HbHcVCYYCzXh+
X-Received: by 2002:a25:ca4c:: with SMTP id a73mr26921115ybg.234.1572915350181;
        Mon, 04 Nov 2019 16:55:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572915350; cv=none;
        d=google.com; s=arc-20160816;
        b=ynfY9rlFFz66e660zimRm3MiS3KlEQHBdK60pUTngvZS2qAs6mLdnP/lEN6oswT+ii
         ROOi6GP9M/SjDeTlBfZ+CAl48R8RuixZIah9pcmFZ/wXSyjUPy9i1svErdYv6y5hDIj7
         feX4lkSYFjVloNmBTzj4d7WE5MrlGxWoZxdUbBkdrRzprG0yBToNVnuEnehEI+MvMTGW
         FgOcDG9afcuFwoqwsFmLXyi4YqHkbIgitRWmpkxhdDV3oXIiuETI5kBIAK7b/5HHQm5C
         JQUkzzmNmLc78kU3d+hyVBwsSC0SRPDZsGMwe48nWJNLmjn+xLGmkumZ3ukouBdP347t
         wyfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=OdknX4PNYRwXRCVTk3VXj1ekcL7xoAFt72TEQP51lzk=;
        b=rEqBqEXy83jUs4zO1SbzNnbthHBfh/jFXGzbXaLIXJe4/c8BNuir9qFvvCsTu9ZBcr
         P1A5VlZBEyXsK1Um3fV2vFM3QegYWvhdWeyFO0bdJ3Fq6d/H3asNAnHY/Dezrhuo14qQ
         Q/UhK39au4NvDmyuWU13WHgEGgmfL4qf8ylkAxMfQw2wXXtwVtDJbB0ykU8V673ID9oR
         XhP8heX/2/oqJwAfGv+RyreI/ux9xwpp+nVB0zr07V1NDfavBE25nM8w80hCqMZOTA7e
         RBdV8r+AkJlo/e7rWrbmThU9qqr8kCzyPdKq2gx1z/HfYYK/hyx1BfmZQwamT+yYskeh
         5o/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A8OLajc0;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id d192si1156083ywb.1.2019.11.04.16.55.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 16:55:50 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A8OLajc0;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id r4so13830188pfl.7
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 16:55:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=OdknX4PNYRwXRCVTk3VXj1ekcL7xoAFt72TEQP51lzk=;
        b=A8OLajc0uKpUW0USdFIrg7oQX/bz/4pyQxN44lE3kNLA5hD54dih16MRwWWuR0Ec8u
         w78/X9H0qTalUu2wWkN2eW8QSrY/PeUUIrd/LbgsNkDP8KRchLrmfBDwSST4lUr2OtfH
         GIMroW8Lo0YyUlfo/nADIIHSnOirikynNE/OWSEDtfWZFrE/QdoCEajHHsmTtxUMcEUZ
         shLgGHZ+457eD5frSFbpG1uhKrmHOwUUHNuDcqkx59HShf3SF4ZMWvTG9TVHXa1nojLi
         FfJAlzC+A435j1ecAkum3rWuIXWPzezbcNdCqAGfa1YQCHiKb1J3qSqoU+IZttiozsgE
         MYoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=OdknX4PNYRwXRCVTk3VXj1ekcL7xoAFt72TEQP51lzk=;
        b=CLubTDVSFJTgPzjxh1BSipXIJV2U0Q7oa6sAc/SaB8mPVHxf+nHA7qEPUSS9ZRW0YC
         44fg0sf8lF2wVzWVwDznzRfUqAp2BGlAC045dNAih3rOc+NJeBu0A7g/0KOoUccsPilB
         o3GEMkRaYs+QgO/xYC87/FuaL6phJ/PMaQingTvFpETRodD6A51u47VlG3fxtsaN97J+
         mMHTaENLagrlH6gfRKMDfbL0bYP2R4F7QP0Rx7sH8xOyJXE1JTAFnajE2vROjCefQZPt
         7QZv1RCe05PYWnEmsC/VuKXOEc3kvFzF5FRy6Z36DOIuvj//NOL1y1QlcYnAtB52shQu
         Nxrw==
X-Gm-Message-State: APjAAAV+uaqkefgnGmkVDeXg5koJEFKcrgPfhIoV9y9y5PxWYWEzo3Mg
	Nk6mhFD2ayPGLmA+4kqlzAQ=
X-Received: by 2002:a17:90a:b30d:: with SMTP id d13mr2693998pjr.49.1572915349380;
        Mon, 04 Nov 2019 16:55:49 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id x20sm16237927pfa.186.2019.11.04.16.55.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 16:55:48 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 10/14] staging: vc04_services: Rename vchiq callback
Date: Mon,  4 Nov 2019 16:55:20 -0800
Message-Id: <f74276933715bac97c93d803930ba250abbfa4da.1572915104.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>

Renames vchiq callback function to match kernel code style.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_if.h       | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index 91cfb1cfafa7..a6f17b91ff78 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -63,19 +63,19 @@ struct vchiq_element {
 
 typedef unsigned int VCHIQ_SERVICE_HANDLE_T;
 
-typedef enum vchiq_status (*VCHIQ_CALLBACK_T)(enum vchiq_reason,
-					   struct vchiq_header *,
-					   VCHIQ_SERVICE_HANDLE_T, void *);
+typedef enum vchiq_status (*vchiq_callback)(enum vchiq_reason,
+					    struct vchiq_header *,
+					    VCHIQ_SERVICE_HANDLE_T, void *);
 
 struct vchiq_service_base {
 	int fourcc;
-	VCHIQ_CALLBACK_T callback;
+	vchiq_callback callback;
 	void *userdata;
 };
 
 struct vchiq_service_params {
 	int fourcc;
-	VCHIQ_CALLBACK_T callback;
+	vchiq_callback callback;
 	void *userdata;
 	short version;       /* Increment for non-trivial changes */
 	short version_min;   /* Update for incompatible changes */
-- 
2.17.1


