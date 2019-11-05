X-GM-THRID: 6755960127598100480
X-Received: by 2002:a25:af54:: with SMTP id c20mr4954949ybj.407.1572994559974;
        Tue, 05 Nov 2019 14:55:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:338a:: with SMTP id z132ls73512ybz.14.gmail; Tue, 05 Nov
 2019 14:55:58 -0800 (PST)
X-Google-Smtp-Source: APXvYqwtY9BhErFCrkAIowo6L+Ibu8HPcNFHVT3dJ7vInPVDD/C8nI/48x1z539WhSp069mI+soE
X-Received: by 2002:a25:5c3:: with SMTP id 186mr15389057ybf.150.1572994558930;
        Tue, 05 Nov 2019 14:55:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572994558; cv=none;
        d=google.com; s=arc-20160816;
        b=jw5gp9hGNY/DNS6MRZX7DrCfDoew/W3EkUOhVzfy8Vce+Q57fBhe76tq7dIoXtQUV2
         MFVi8Bw97kNZkbemX/4fMhIlnpcz7w7uKwoqF3z88DlOeStFifhXgqwlhosIqR9BYyjW
         VeudmkVJZGw1qybzRHwM1vP8JNLeCkaSlPS9iTqysLPR5FhFsvL0pgNHNrnIWEJS6zyU
         WkqDKKhBxx1c77wyXyUpvwg18xQ3FGRK6ne2k27NsdxYEccwN2m8GvMvhz/5TXaCE3vg
         OuBFWx/HlThxempxkFJMAulkS0sU7bYkxl72o9EleEiW8woMRKexvETsTmUO5/C8AIvY
         TMBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=VJnedGSMTSmvY2ahjlyqoXYWujm3zHAvGu1hvik9MkA=;
        b=Rf25O5c4dy3twuteWGl/EZE3e5XoCJMNgvTu8J3QEmcvNoD9cAACU/B8ty1uk+mlD+
         J2+6cviFgeEhqPhU+KJp90gR8eK8zt903RIIs1CIXgm/5HYLZX8f7bdR8cckcPOM7HX3
         HoLe8RMYyAPQzUX56EoTDXpw3q2Qt41jJ7lkTBMyM3KUvpTeSOn2tqF47dZbZDAfytKv
         frZ/khh8uDfKc64eO5jjHjnpaTYWfRW8czmmZ06MErHfFfOHH3vx2v/nOWPf0bIfZd7b
         i5BrIe0bZuufRDB3uU1rvJn/nODsttUmH9QtRhvGvkoAQd/nF6W9zcmIdl1zb1pU8kfJ
         d9eQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zhf0cecX;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id c79si555197ywb.3.2019.11.05.14.55.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 14:55:58 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zhf0cecX;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id z24so11101219pgu.4
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 14:55:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=VJnedGSMTSmvY2ahjlyqoXYWujm3zHAvGu1hvik9MkA=;
        b=Zhf0cecX8r7MwprfR3Tw2a1ONwl+5FV8h0ie48n6J/93r4ZwMBhN0sm9pOd4eRrjqU
         mvckghUvwCHstBj0SuPG43420ibPRTfqAz9y1aic7lKAFu6k+91Cob5jUt/qvkVIV3X+
         WDF5AmHQksq5nli3tiQRbop9Rax/OFDxch/hnWMxjwwsIDuFXPjxc1cxaauf8O220JZn
         sIX0ytXG9asPhxjjuS3ZFRQz6r2HlI4RoPJOEQhhXxZ9gpFtr4AXF5JLsi/Owlrm0dXR
         JpZ+S/3/W8SjVRxib0WjVACgosz10dNMuzErN5w8GBIFFHJtQ5AikQVL/l7P3CH6zI91
         5GJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=VJnedGSMTSmvY2ahjlyqoXYWujm3zHAvGu1hvik9MkA=;
        b=gFvW7vtbVYLiSB1Mc08gGParBi/J3VirsL88Os7DE+5Yceh3yuklTS7/9+tej/XVnZ
         rDBftYfVeNpU5AxYlBEvJPQKlwe6GCSI8v82hQY7fBlXJVlPHDlYsNPcaNneEwgj3otY
         6F+cYdm1Aq7xXsZv21PxxWhfabbc0F4y0AIrfgjT7sT4p964reVEiPdV+vw6yFYrL25c
         UdXFxtD6R8k2d40Q8wOErqxCJ++t0JWx1e+aKnKLL0CbD6DhbfcyB6m2hVkScU1ziSFe
         4dJ3DXOv27sXtzMvx50pIjV3kVrmVnpcbmL5u3vndfS+dDhvdLgsr9uC2asBt01EBsCB
         naRQ==
X-Gm-Message-State: APjAAAUUm1ZnyvuafzPu3YYiBJLqpS+pHSem5Jz9LR2EyOLwZO6UQlUh
	qzDPcsHSwaRQ9Wm1xm4R0Zo=
X-Received: by 2002:a63:4d0d:: with SMTP id a13mr38582424pgb.451.1572994558571;
        Tue, 05 Nov 2019 14:55:58 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id gi2sm469623pjb.29.2019.11.05.14.55.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 14:55:58 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 10/14] staging: vc04_services: Rename VCHIQ_CALLBACK_T to vchiq_callback
Date: Tue,  5 Nov 2019 14:55:27 -0800
Message-Id: <6abe37fb39f896b257d7b370e1c2ad861ed8b675.1572994235.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>

Renames VCHIQ_CALLBACK_T to vchiq_callback to match kernel code style.

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


