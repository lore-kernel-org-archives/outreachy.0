X-GM-THRID: 6809434547497730048
X-Received: by 2002:a17:90b:4906:: with SMTP id kr6mr8109707pjb.13.1585445029890;
        Sat, 28 Mar 2020 18:23:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:982:: with SMTP id 2ls11812814pjo.1.gmail; Sat, 28
 Mar 2020 18:23:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuLrVKGYCwDnFfWiDWZMbUkZBQI3PFcRYDE+vBnZ4eP0+X1VYSDbvjdcdSAQPM22bdvdW6V
X-Received: by 2002:a17:902:b205:: with SMTP id t5mr5511126plr.10.1585445028593;
        Sat, 28 Mar 2020 18:23:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585445028; cv=none;
        d=google.com; s=arc-20160816;
        b=H4jRGHxLkx01fAg82e2sG7rcXnXKvR+XwrL4PwCISTf1HPCAU8sABfmgb6O3VDqeF/
         pM0V8uppkPdOZ57F1Xml4qIdog8qC+BzgNMsnRuTj7G7MgG9O6E5tmtzI1uYv3A8uTy+
         5Wk4YZNGjm8TV5jW4f9luZ01DtFtcNsD5Q30p0SjrWLwWuVrbDFm/+Fe7KUXAfsklfj+
         t0hBDsM6oKI6wRjSkLoQU4lXH/oD7/DoqWMn2Cm/OsMiJDZh+iRC1lwz5lUbcQXQsKVO
         CUUJY2Rv6uktoY5Rb3VJkl+Od+ZhR4wj8+5hGM3cLRNAihPO8tqXS0MyF3ft2pcIgZ/H
         RrwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=19pTQHiwvTPrI7tWD2nbK9H2BVWmf8Ah3/fO8X3fCeU=;
        b=b5ER2Bqh1XakEDPFhuiMOfyUtApVKx16KfkHeOeK5+w7x+o0yoy2awWlx12KTcGrZ/
         mJkay4kF92IbP6DI57Zqq8tGC4uSLTzaTGVyqUdn1UsMrf7tEaALqP4frspGds+zzjaX
         7aNfy2Obd75IRu8nlYU2zXFPCzfag9fRHuOMMHfoQwcerIsolo14haI5COArPCoR7gH6
         avOljFXxASIeN1tH5Cad7Vt45MEjiADouVEX8lNEdnJAECmUytxqMHlG+v7yc3kLnP1R
         lDx4MJiN51VvcDmIYxTUsEcv6qdbDNekSk3T4rin1nsCmWtACgVbv9oYuE9IDSJqYY+T
         E5gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TDgF55fb;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id k3si567918plt.1.2020.03.28.18.23.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Mar 2020 18:23:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TDgF55fb;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id d17so6813690pgo.0
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2020 18:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=19pTQHiwvTPrI7tWD2nbK9H2BVWmf8Ah3/fO8X3fCeU=;
        b=TDgF55fb+0taGo7WfzLDTtIob2wH29FEjwXWQbd6c/0Mn/oFQmJLtw08qprupHzzJj
         UAs+f0MCT2EvlrD3GaUhlopV9N3IDCjJg2hkVWO0DkRqWEER7PJSv3+ex/AhGNGNxCj2
         uNVC10Uh5UKTM/Lz0N8WI+9bN8fx1CesO7PCMqmfut+FqcOMgHuTTZvrE+rX1chZ8owQ
         AkFNFpE5HR/LWViWeQjEp2fbm055wCdiWx4K1peP/J8nmRFDaxlivy/sMeLqKpVF7KVm
         KJcGvjwFzU0rBQrtHzt8bVU2iAUS5J+g/30pjHz/0rE9OxORx2JK4tLvllSC49o4MHMt
         7FIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=19pTQHiwvTPrI7tWD2nbK9H2BVWmf8Ah3/fO8X3fCeU=;
        b=Y5QvFtt6y4/YnERKmEyxL8x6PqS2WcZGKq9GPJE+RZZCO+I/jOjvwFPjmTAtL5Jum9
         jrDSrmQwVJtRmc2CkNTkUHaM6044BNAFXBabSef5PJcl8cCtjxEXwmykY+mDD//YDOQ9
         sD04WOM4AAjIw0scS1hVb16jRWFPA6ufIoJY0W4XW8WpVipt4nK5jRR85jiM/cUNTgd8
         dWJNCCgBYe7HQB2PygQwINHyxBhDSDXWKpV9ZubD2yI7JYvPNQ/DCAXw0Uq/nrOCePMk
         tznQGMf8JrvzcvzHLI9UaA8MPqYNl2VxNU/MWRj0WUTc0KINSdiq4ob9LItEQTXUSU9P
         L0/Q==
X-Gm-Message-State: ANhLgQ3cug9DRUtXQptX8HWCGV3NXeuv9NvPsMp4+1mWY7xcsXk0ZpBc
	j7pX5g8fzk7upTQwfL0Wrak=
X-Received: by 2002:a63:2642:: with SMTP id m63mr6576764pgm.258.1585445028268;
        Sat, 28 Mar 2020 18:23:48 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id i34sm6713074pgm.83.2020.03.28.18.23.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Mar 2020 18:23:47 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [PATCH 2/3] Staging: vt6655: Remove CARDvSetLoopbackMode definition.
Date: Sat, 28 Mar 2020 18:23:41 -0700
Message-Id: <04ebae0d0a31c66e1ac965bc872e4ea1c6900bed.1585442480.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585442480.git.briana.oursler@gmail.com>
References: <cover.1585442480.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove uncalled function CARDvSetLoopbackMode and comments related to
it.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
 drivers/staging/vt6655/card.c | 30 ------------------------------
 drivers/staging/vt6655/card.h |  2 --
 2 files changed, 32 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index 135010d2c7d3..222b6ef61d9c 100644
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
@@ -814,35 +813,6 @@ unsigned char CARDbyGetPktType(struct vnt_private *priv)
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


