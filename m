X-GM-THRID: 6755960127598100480
X-Received: by 2002:a25:3d43:: with SMTP id k64mr30025387yba.156.1572994558689;
        Tue, 05 Nov 2019 14:55:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:abb2:: with SMTP id v47ls81146ybi.0.gmail; Tue, 05 Nov
 2019 14:55:57 -0800 (PST)
X-Google-Smtp-Source: APXvYqzHOC+eAryZeHJNAVPbTuVmtH32mbkzUQfxJaoUAOze+iYxEMCVFJVjYYxLQnRuGt1aR90t
X-Received: by 2002:a25:3283:: with SMTP id y125mr29585534yby.442.1572994557688;
        Tue, 05 Nov 2019 14:55:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572994557; cv=none;
        d=google.com; s=arc-20160816;
        b=Ch1p5lABgniVNdpojx8eTvI2oaOosn8l6Cv3ack3Kuv8HKOv+LIDlkJFScxBfapNK6
         0Y14BgWOVPrrzr39ERVbc7ZGlgBoRJG60qm/JJw4wPP4j3s9HLpyXdXcJx3xPZITeUOQ
         x//f5O60RNNZjg5cRLvQZ9uidPny9Sz6S+eJFVKCEn8cro5VvTJoq9Vgqaxdq8/crEmC
         uvlVdZN07oC/oRAAggZdcC1MaAf75RVjnnauxO0Lk+5Crg2CK4wQ7aejcgh7kRLLTIMM
         a2+l7qcJjYNbzpTwwcd7VnUB4mMZhQ9kpSaGgpjbpMQbW/7pj8kCKT/qHiBCmYqA8OOE
         NG/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=50cOccupdaeD4UlPEISTSAvT03hvMl/8O3PhjDReK7Y=;
        b=pIv2qV+sWpXB9ab/OsnGLb5cVNLXjPAtJdW8iY8TgNtPvP2mJ9SjY4Ow5dhCHA1o+K
         Md+b+idcpjmO5uceMxaOwXgVjOLPy+25/7c4Aw3DPhyZYythhboBVjxfMVTCCFygp3HY
         6isFsgxLFv1L1cjA97oSZ8aysXcIrpr4wpqmg94ubgTbuRBAz2RVlMPIemHMpX4Wwinn
         97iTqlMdORaW8SiHWhlZZgag0YiY6QIynURcV6+AKVT+EiUUijPo50VNXWg2dZD4Xr+l
         BMNUNuQMnFXrEN7ZuMRPNvPgoNAgHNZQoqbq8jjcxxgSGkTfCWPO+5qUM8GbfDv8dR0S
         w7Vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tpZYiOGV;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id c79si555197ywb.3.2019.11.05.14.55.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 14:55:57 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tpZYiOGV;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id z24so11101219pgu.4
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 14:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=50cOccupdaeD4UlPEISTSAvT03hvMl/8O3PhjDReK7Y=;
        b=tpZYiOGVklIBvJBFZd4RfteekafokXNl1s8VEY80I8soTSqFvuqa5F2yJz2C2Yz0Yp
         YxiZFUQtNj4f/6W12ViGn2+mM4en/siT5aHC+QC831S98bklVCaQ+Qa2IJ1Lxg0bIGdB
         ugSljGBcM74d269awcCHjgbC5TazQEyeX/8HW/QvC3/B1InnfAfo5K35QO29AsfdrtZy
         BKMex/LERh0Xs+yR05JNYqTDH0Nj3TtAgngMjIaA6IhwePhSPhO4uHlwE8MX0vdNlyTS
         nqzoR/7GRXOfp0FwnJql+taJ6GfXlrXWOCptx5Jm0f1t1pF6rPTR9e0k3TNC8RfA0iC1
         8yYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=50cOccupdaeD4UlPEISTSAvT03hvMl/8O3PhjDReK7Y=;
        b=tfj4pqXxJWZV4X5qMf91MPMFeT5XDLTi5jlbC+FkrZzcj1/z+Yg2bJApHVgLpHSNR8
         LGzzhTpiJTcpFasSm8kU4AZfB121M0rzAkbEddyZMqGPdzae8TH4BA4AjmkZYWCh64Yb
         L1ayfk+p3pXLoyjjcDaVNY1QLF7GGIDXAATWi7f2weoDEKRtvVgNniVC39+xB1+mLxJA
         mI1Knbki9quwijyBKx5am+e/LhB58q6uo4+RUCZBQX6NNnpXuEgrVo5to+E/tEox9PS+
         xb3PbossG+MkFCwPe7oLGRiqFdd9eZAAtF5CytrS+n9oOlaafdjWOKTvsUVsNCqDNNQm
         CsbA==
X-Gm-Message-State: APjAAAUf0UlhSm4LMKECE+KhDzjVJFmUwEyNwRZW2p3rvxhjmT4I6VhJ
	WKTIMTFZEaBKd4OB2MKhBU5RIuaePlDB6A==
X-Received: by 2002:a17:90b:300c:: with SMTP id hg12mr1947656pjb.75.1572994556938;
        Tue, 05 Nov 2019 14:55:56 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id z21sm19738802pfa.119.2019.11.05.14.55.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 14:55:56 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 09/14] staging: vc04_services: Rename callback VCHIQ_USERDATA_TERM_T to vchiq_userdata_term
Date: Tue,  5 Nov 2019 14:55:26 -0800
Message-Id: <478914a1e756f78c3277acb3852c1ccdcb2d5750.1572994235.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>

Renames callback VCHIQ_USERDATA_TERM_T to vchiq_userdata_term to match kernel code style.

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


