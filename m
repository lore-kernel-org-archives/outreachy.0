X-GM-THRID: 6810978384400613376
X-Received: by 2002:ac8:342b:: with SMTP id u40mr1139471qtb.83.1585804484184;
        Wed, 01 Apr 2020 22:14:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:3284:: with SMTP id z4ls1386551qta.11.gmail; Wed, 01 Apr
 2020 22:14:43 -0700 (PDT)
X-Google-Smtp-Source: APiQypLxXB7ji1hILjpt7OhWzM0x0EmjQa/RcUc1UfK6c/LSO31DAc0k51BnYx/wpxxHK+tY6zNw
X-Received: by 2002:ac8:197d:: with SMTP id g58mr1243150qtk.297.1585804483030;
        Wed, 01 Apr 2020 22:14:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585804483; cv=none;
        d=google.com; s=arc-20160816;
        b=ZgF/f671LOn8pONmeugt3LidWr1EDIknJsQ6wcAlle9hLSqfKBUCuz+3CdSfLimlHO
         Cr1I/n6wlr09lExX5mB+gidpTZ6jyYDill4lTGsZyh2vjugy99xOdewLweshfb6bNsmi
         7Dyt6ke5fYqCZXZ4R2NtkNhz6qOVJH5AWjxrLDrOd7gtNMJniU85d+4o1mQflphWdC12
         OGpKDXbPHI7BZbF9qm3PkSpXyyzJRiU8kLnuykLMvxbaxj/a7deQaBysJHRamlmrI45t
         9REdWTA9UHy4m568NAu26dEutYJgmZClrOUMLIO7G1/UN11w2wlOdxes1kkaz4AwDISo
         hYWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=EEYFpUIa5jxK024FyJCkE9tI3taOjwJwC1YZCIzydIo=;
        b=jBCQZuEPjHLQluJqAKP+MMRzT2njrYwpsESBerZ4h8yadJv5X/efg71Chmx+qv12+C
         FXJEO3IGnVHVLDp7bU4z96OMaU11gPKuWfYdKJH6+L0QWI0WsOI8pXL6diL3UMJ51Us0
         Cy4Si+aUr35Zt2a9/teoDu+sIdMhzq6MhEz1ucDJxhGQuY33ieK2Fi6X+y5jM7OsJfo/
         7QZd+fZz3xKsUfTq3A386xx7ACrHkroXLSYGIgrdyOnASE07ZpF4VrU5d+pHXruTLfLW
         mRdBfTuUl1eO/sCIXa3VpCSjG5Hh3rRJ7q7pFM9W9rPpHFagNwEzEzvJ06l7KTOs6gJU
         zqeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R2Sf6Dm5;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id y81si185257qka.6.2020.04.01.22.14.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 22:14:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R2Sf6Dm5;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id a24so1202203pfc.8
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2020 22:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EEYFpUIa5jxK024FyJCkE9tI3taOjwJwC1YZCIzydIo=;
        b=R2Sf6Dm57Tv/bZ+tS/SRPfSX5uQRS7V8QhOApuB4H+uBap6l7yaN+ghCmSLTIGZzzR
         hfcC9kK3puW6xPrneIsSv6QGJosA/fVQ1iKU9Pd1vgLAUThWmm80AWEuSzR4YQ7o4YFS
         DSkjfwOl+cAnfSlAohIiAOoaSu6YmhvDKl7z5wAbipb0npaF1pf6DbzLTrg0/YC9FPSp
         X5zqAcM6AasuMrwlt9bexHKq4WfUxo6cTjTEWs7t6vceE/amf9s72afxQFbo1U0KLznO
         uJV8Ryn2yCgFaqXhyiGJMcBylwEasxnmzEq/aQgMVtyj8DLZsxMiV0Rpthwn1+2UbQsm
         mwLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EEYFpUIa5jxK024FyJCkE9tI3taOjwJwC1YZCIzydIo=;
        b=Kugoj+olq+9FoRpVaUmQoSxIwnExOFFOaJmMoftdxL1Zj10HDf6ItlGEGrrUxNGaIy
         qzTD/rxyQYT1UxH9F592wdw/TYkLq3AirI0JoA/VktQTS4FUxDNa9Qis/poMnZsuw+N+
         8OdFNk3JDZ0N3RwiehjosHfIrf7P1CEOwVvBmJUg9xXUinHKFc2EEcgyM1MYQD2ptYBB
         OiktOdU0EjMhfKr0Kcmww2NaWvI/nmar5r31dyePPc0IWytcBDch7cYxPFDdCT5nBomM
         iJbQaiNXqnTb5xUMk3BEsYeTpJKafqDNOPOd4C5V1hEMUjWP7gWN19F6eG0oYKf5ui4H
         4HQQ==
X-Gm-Message-State: AGi0PubLXd7eaSNN+6J9navVnQyDSDZJTtZPK+Z4+qNdbvvWg2r7HRQu
	rMm7JVjRsvUsoNmOrwMzqgc=
X-Received: by 2002:a63:2901:: with SMTP id p1mr1702091pgp.444.1585804482081;
        Wed, 01 Apr 2020 22:14:42 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id l1sm2846485pje.9.2020.04.01.22.14.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 22:14:41 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: sbrivio@redhat.com,
	gregkh@linuxfoundation.org,
	julia.lawall@inria.fr,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v4 2/4] Staging: vt6655: Remove CARDvSetLoopbackMode definition.
Date: Wed,  1 Apr 2020 22:14:34 -0700
Message-Id: <b81f06ebc0179fbceb43c085411b372ff909b134.1585802818.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585802818.git.briana.oursler@gmail.com>
References: <cover.1585802818.git.briana.oursler@gmail.com>
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


