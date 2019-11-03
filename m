X-GM-THRID: 6753896393761357824
X-Received: by 2002:a9d:6214:: with SMTP id g20mr7556157otj.302.1572755854536;
        Sat, 02 Nov 2019 21:37:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:1211:: with SMTP id 17ls2312881ois.4.gmail; Sat, 02 Nov
 2019 21:37:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwGJj2iVY4GRTnvLRT1Uq9gLEDCWiwDZ3i+cgsSNAoms9hCroKHMY8Mnu343LDAKiZmI18a
X-Received: by 2002:aca:cfd8:: with SMTP id f207mr8274289oig.145.1572755853827;
        Sat, 02 Nov 2019 21:37:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572755853; cv=none;
        d=google.com; s=arc-20160816;
        b=uaoLiSziJ63gLITD+UQD+wP0l6Qmo7zIn/RS9j0goqWUUYlHJe5WSK+t/ErifKD/c8
         XDi8y3yBJmnEtUh+yeUJm821i0JWKvJalvMMTqR1OX3QYg2KsX1cLAXh8oZrjf+uUdt5
         3RPcApcU1tRSL3rXWCluwQTWXwAgy8BQWH4Wb6R9LT6DBk3zw4pDcpOALlFHe5MevFed
         ndTL/tXnD33Z8j7StfyW13o7BwfqfEkn5m/WAowezf4N2+dciIlhIMiSQNusqhtD/tNS
         hLcXcUFvtrxelpEofyjKCKAIi2wD6GfYZ6apstPeaghXlXlkDGzlngA4H3KvFV99ewxJ
         rZng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=jANg4hF8dBvr7Q+6Rt0eXpNrCG0TtBGR32jMDP+GdAE=;
        b=cch0sw/S+LtdVyE8OG0HwTlvEiGoFS0c033BQ8i4nJFjMgboQfEVgNPETP8FTBweKQ
         /GXfMq5pMyGmiKj7XFa8chZwW5XjqZoFnvUbmV8Mi7v5OxbxVtNJ+x3897YfzdZPw3wB
         TpVqGE9i9xZciPKStfh+/WeKRdzxsbYl6tq+DuTb8ORFRUJHcJQtparuS0ynYvbnAduF
         iFksQtaiR36ABsFDEnjPCqwolY2M6I5PK/cLDaHFqoiDG/K+O/tnWAW6dsmETjxnSLxN
         j5klmMx37xEVNg+mJ2/3BFg30Sxd/vP8dnpGvOZby1PLm1ZGV0S9KsJ0MPwjiIorK+sQ
         p1ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u6fYyCd6;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id x65si161399oig.5.2019.11.02.21.37.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 21:37:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u6fYyCd6;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id x28so6654745pfo.6
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Nov 2019 21:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=jANg4hF8dBvr7Q+6Rt0eXpNrCG0TtBGR32jMDP+GdAE=;
        b=u6fYyCd6uPKbkpYczBZNj+0UNAyg3+CleBJabnDPmVPxKiryoOi3D0HjXyBpuMthgt
         4L9Bkomd8iDSuzp/gzOAXPCiTtZdT0tue7W+7WxYb9pvvkQFa9o2A9pzB77K5kyyQPLb
         YjGgm+wsxOW6ijQ2u82L+TRZYd6LErZV6OyegZSgPcfTOnb2jaGSdPZ6oZbwNQb1lzrI
         wjGHyyem1W04HpqTFKp2TxdftmgatH31CU4d5EametTFkfo8XzoS57JwPbrUbOkSj+W2
         tVTVaJL08DR+sW5h58mGBtNek4groE4YVCi30dMphBPaePbwe4GMM/KSHyd1st8ywcYo
         SQYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=jANg4hF8dBvr7Q+6Rt0eXpNrCG0TtBGR32jMDP+GdAE=;
        b=Cw+/CyCNzFuyBLeCLHNEmiF9bNRJXQcdMOdBscFT9AUcb13gooeEEfOFM8+GBVpf8D
         l3EXAxOfME8MOqcBGVnP7iBeZoZsx4Pj4sXwkvIkFEtf0Rzmm0bKnSz9RTyUOLHSqxRB
         dY5FQMD5CBiIC1aD7LLT7f5nAvFBup2nA+e7F75/5+TtBX66MEG8eSLR1TF+IUYUpXCb
         nOuypf2pN8gSPlkdZQODn9VSXAkWFnwvOnWJ6cmdUfbF+4DDGW51iJ779xM5cuyyrS0h
         LfQGGFUjz6c2ZPw9lb2Q5zgCl8/9XXR5V1skvSwhcHS1ZZRnqmAgsFerJi8fzhIVadwK
         rkiw==
X-Gm-Message-State: APjAAAULCrNL0T8xKwGGM1zKLauTrYzIDVTdz1FX5Ym8mC06cF1vrZi4
	qsPjJQzVJw/mnad10gpBkuA=
X-Received: by 2002:a63:9302:: with SMTP id b2mr22952224pge.342.1572755852911;
        Sat, 02 Nov 2019 21:37:32 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id d4sm13570804pjs.9.2019.11.02.21.37.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2019 21:37:32 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v5 10/10] staging: vc04_services: Removes platform struct typedef
Date: Sat,  2 Nov 2019 21:37:07 -0700
Message-Id: <a78981f351beff822a8fe0aaecfb9132314636a5.1572755439.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572755439.git.jamal.k.shareef@gmail.com>
References: <cover.1572755439.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572755439.git.jamal.k.shareef@gmail.com>
References: <cover.1572755439.git.jamal.k.shareef@gmail.com>

Removes opaque platform struct typedef. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_core.h    | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 5bc5c816bd1c..e1d97ddd88b1 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -237,7 +237,7 @@ struct remote_event {
 	u32 __unused;
 };
 
-typedef struct opaque_platform_state_t *VCHIQ_PLATFORM_STATE_T;
+struct opaque_platform_state;
 
 struct vchiq_slot {
 	char data[VCHIQ_SLOT_SIZE];
@@ -469,7 +469,7 @@ struct vchiq_state {
 	struct vchiq_service_quota service_quotas[VCHIQ_MAX_SERVICES];
 	struct vchiq_slot_info slot_info[VCHIQ_MAX_SLOTS];
 	
-	VCHIQ_PLATFORM_STATE_T platform_state;
+	struct opaque_platform_state *platform_state;
 };
 
 struct bulk_waiter {
-- 
2.17.1


