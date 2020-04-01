X-GM-THRID: 6810562968301862912
X-Received: by 2002:aa7:962d:: with SMTP id r13mr22137311pfg.244.1585707760923;
        Tue, 31 Mar 2020 19:22:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a507:: with SMTP id s7ls9845011plq.1.gmail; Tue, 31
 Mar 2020 19:22:39 -0700 (PDT)
X-Google-Smtp-Source: APiQypLlA6iXvQHcCQSTvRArF4kckj1QAZp0lJZ59a4m3bZv7R+QViH/m0H+962K4kgrLjq4qgKU
X-Received: by 2002:a17:902:6947:: with SMTP id k7mr7949346plt.222.1585707759363;
        Tue, 31 Mar 2020 19:22:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585707759; cv=none;
        d=google.com; s=arc-20160816;
        b=IZ9IgcaxFl/ly4C8eAKX3P7Fb9s3V2ttL3km/zIHlTcSPsfTW50sQRclBy05Wkx5By
         BDnczGQc17DF5eQtx5iwcShNit6qgnIhIU6qiS+jJ1ebpTfiy2eclzwJiEJ1H6DohBQ/
         dzJnH7LaYxpzg+kCiikIFIr/HFLyiobYybxOxGP8B1qhG4qNnIRXSGG7LL6jbvNPYlhU
         pq017XvVsL5ihnRRkgB2QvyRuPw+XkXbzGyxjIOCkoYLV3Nin+UDNRnd+coWYXhPg7M3
         BV/Lyx3Y9dJP0aIni4rxg9qe3GLpDcHH2GdFhu94Mtfpvsu8aBSuQNMZWHEHIZa66vop
         yUqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=EEYFpUIa5jxK024FyJCkE9tI3taOjwJwC1YZCIzydIo=;
        b=lBFuHyBR6UYhEY+R0XZkL5rJ9NV7vlQ4vemTiVKyeIVVcIWVXw+uSBZL/YKmdq0nnS
         qa/NLGggdpc4HVq5GPjiEPzXkCSaRaC8/UCdj/cPzvQSuFBZxm5ey+qZnWB15TL9Hi9V
         t/W4ZEyTJzBuIZV2r0PTh8v3FfilXaOSlH5j/LGv77wJn87T1lJqiAMDw+doxDwX3zHc
         vXspHSerZk7E63P/GvDV7r5nEUrGeDh2HGKVFNkR9VF2Ew1qTyoSE4h5JTEiQISuhlG5
         mvs1mMBSB1XG+9F0GAkMS6ypC8ElIWlIg/lgT0GoF6uxHu93EaQvSl+FJmN1IokP3iyP
         MFpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D7Oz6meq;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id y1si45008pjv.2.2020.03.31.19.22.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 19:22:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D7Oz6meq;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id np9so1989431pjb.4
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 19:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EEYFpUIa5jxK024FyJCkE9tI3taOjwJwC1YZCIzydIo=;
        b=D7Oz6meq7WbiOGAvYtae/H67PrOVqtDocDnb59EG6m/50/isP0EX6TGkD0c3mae0z0
         qdx+3G3Lkx8P5rZOfwn53UZh8pVwapYd5BWOk1lTcL7+mrhVHCZL3nUM+/ldpg9ppPDG
         WkQKAQzHumeRw7N1UvFwFkwHPcShY4uy6INRnWMsRQNL09zeVGq8hzQzxz9Do3ti+ZtG
         u+zr0Hl2gwITBzDXFrPGLtGVtXMM2xJ5HB+t9ofuW1QICWeSTZrxLfcZDx5DZ06RTLe/
         T5qMTI9YCWOXlihwolH5nbi098N7M2XZ5Y6WrgH1YxQTG11+2s9n6LsqFlKVWGxit5gY
         l5cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EEYFpUIa5jxK024FyJCkE9tI3taOjwJwC1YZCIzydIo=;
        b=BgtoYH5+zcNbaG+u6Ahv5hEcSvocxbFIvodyJeVw7q7ze2ArHekndos8UhT05x92+U
         vHiTyd+QhXP7HpvvesEWkmLXl7JEXP6PHCaT1NuGh/yYvhCaWntw1huOymGS36VAm35Z
         5Uhei/phovHkAeGFVb6/M3IEcsZAsd4asy00bphU6y/qNClifn2q6Ot/qHC4Sflp9b/1
         3pZaGuEwqn3J2fE2dMC4krzylf2hjUXSFvhGEnvnsenX+WLIIWYOmN4Vs2hA008e1D6o
         NwIXyA1xdf+mxHNjKqcy72FKf2rZCpuJUvPAbgSIfG0SumgA+B8G3SbjG8xBZONwVs78
         JsrA==
X-Gm-Message-State: AGi0PuaZscrgfNGW3MObytcxmZg2BM953IW89Jh4Tf+q5O7OeSbAtvEP
	QDSoa3s1lvW9M4y0s7b/IKc=
X-Received: by 2002:a17:90a:c790:: with SMTP id gn16mr2115429pjb.146.1585707758914;
        Tue, 31 Mar 2020 19:22:38 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id m2sm336543pjl.21.2020.03.31.19.22.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2020 19:22:38 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: sbrivio@redhat.com,
	gregkh@linuxfoundation.org,
	julia.lawall@inria.fr,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v3 2/3] Staging: vt6655: Remove CARDvSetLoopbackMode definition.
Date: Tue, 31 Mar 2020 19:22:33 -0700
Message-Id: <b81f06ebc0179fbceb43c085411b372ff909b134.1585707212.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585707212.git.briana.oursler@gmail.com>
References: <cover.1585707212.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove function CARDvSetLoopbackMode that is never called, along with
comments related to it.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
 drivers/staging/vt6655/card.c | 29 -----------------------------
 drivers/staging/vt6655/card.h |  2 --
 2 files changed, 31 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index 52af85fe538d..222b6ef61d9c 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -11,7 +11,6 @@
  *      CARDvUpdateBasicTopRate - Update BasicTopRate
  *      CARDbAddBasicRate - Add to BasicRateSet
  *      CARDbIsOFDMinBasicRate - Check if any OFDM rate is in BasicRateSet
- *      CARDvSetLoopbackMode - Set Loopback mode
  *      CARDqGetTSFOffset - Calculate TSFOffset
  *      CARDbGetCurrentTSF - Read Current NIC TSF counter
  *      CARDqGetNextTBTT - Calculate Next Beacon TSF counter
@@ -814,34 +813,6 @@ unsigned char CARDbyGetPktType(struct vnt_private *priv)
 		return PK_TYPE_11GB;
 }
 
-/*
- * Description: Set NIC Loopback mode
- *
- * Parameters:
- *  In:
- *      priv         - The adapter to be set
- *      wLoopbackMode   - Loopback mode to be set
- *  Out:
- *      none
- *
- * Return Value: none
- */
-void CARDvSetLoopbackMode(struct vnt_private *priv,
-			  unsigned short wLoopbackMode)
-{
-	switch (wLoopbackMode) {
-	case CARD_LB_NONE:
-	case CARD_LB_MAC:
-	case CARD_LB_PHY:
-		break;
-	default:
-		break;
-	}
-	/* set MAC loopback */
-	MACvSetLoopbackMode(priv, LOBYTE(wLoopbackMode));
-	/* set Baseband loopback */
-}
-
 /*
  * Description: Calculate TSF offset of two TSF input
  *              Get TSF Offset from RxBCN's TSF and local TSF
diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index a811ac8942a0..32405027e269 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -44,8 +44,6 @@ struct vnt_private;
 void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type);
 void CARDvUpdateBasicTopRate(struct vnt_private *priv);
 bool CARDbIsOFDMinBasicRate(struct vnt_private *priv);
-void CARDvSetLoopbackMode(struct vnt_private *priv,
-			  unsigned short wLoopbackMode);
 void CARDvSetFirstNextTBTT(struct vnt_private *priv,
 			   unsigned short wBeaconInterval);
 void CARDvUpdateNextTBTT(struct vnt_private *priv, u64 qwTSF,
-- 
2.24.1


