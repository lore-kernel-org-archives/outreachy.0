X-GM-THRID: 6809434547497730048
X-Received: by 2002:a05:6214:118d:: with SMTP id t13mr5703987qvv.192.1585445031277;
        Sat, 28 Mar 2020 18:23:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:34c6:: with SMTP id x64ls5188233qtd.5.gmail; Sat, 28 Mar
 2020 18:23:50 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtdIKIxazq0jGqUCeDz4AloI0Ud8LZV+5G+dSz2LowIWd9Lyka919vRzASwC3JVYtZ0rdTo
X-Received: by 2002:aed:37c4:: with SMTP id j62mr5979151qtb.279.1585445029953;
        Sat, 28 Mar 2020 18:23:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585445029; cv=none;
        d=google.com; s=arc-20160816;
        b=tfwdi47R86b4Y77ZR5dA4H15NO1ttoYvTA93Pb7hXk6Yg96TndriZkGTHx9ScCpKTK
         wDyFqqPvQCe8crgp8f8qHzVqQbAN8sNVksRtdHBOhAl3wEwEhyAZf/oV1Ld6RahX9Gjm
         ILjYilq6qc95qDvFrifhDE7ZenWQsUFtSDneIKDFXuk5tk+VkK9IXEvKD7xS97SIw0CG
         qGGg8BARYtNn5WqGtRRmwE7Hx1Mk1VjtjbvIcO/lXfiWdM/FzG/BxwBasksujmd+oyr4
         HQCeDYKzZQBgCyW2d9vN68xzCBhtiMU+nd/y9soLZy03hoZOYTgfo2ECo+rJGAOL/ED1
         EQJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=shsaodz3DmqydX97Rx8s+NqW9WkXXa73BBPkH1M/Hh8=;
        b=ob7eQt/s47MIu3kNPMsMAGu4b7cfod8rC/57OozP3ItQDZ3+TLKJ3o3b8xkvWestz4
         uXEUlSmCMb0HpQviQZvL+pxfhJmivfELTlEFbXzlvWr6oq1UMbfZ5BRyrKiQTk6rdpWF
         Mdq8VZdszhdjScWOMB5EtulqvD6TSBNrro9brqwIK43ymewf/PyUVz7cgr/DZyjY6NqZ
         bJADhVqlmlsCCbXLmrcURTyFzrquEuzbSvtCpOKiumJaPyEFsONtzo+5laXyQFGAiDYT
         n0MAZ/YeaaP0trhveYWeVibmEoVxn2j+P6Rdj5PULB8d8eWZlEmvP3at9a7QBdiwv2XT
         h2Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ONTuwP6Z;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id j56si862267qta.0.2020.03.28.18.23.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Mar 2020 18:23:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ONTuwP6Z;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id np9so5837834pjb.4
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2020 18:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=shsaodz3DmqydX97Rx8s+NqW9WkXXa73BBPkH1M/Hh8=;
        b=ONTuwP6Zw8ACal9hfKfDpm2nmdnKcIorWt+i1naTnKDq4SaZjBsk3aPZfuN5F0+I18
         l/kXqwCCaa0o3y2PluHQletX/+hRNP47fDv9xMvD64cj9z96LpCHJvzUOXJb8g5zP8iI
         5ejEwkfI+RV4alE5H9TT6qK5pvqErej9lgJzNRSe5PgqHvRB+AuXh4FyE7DRR7yycKMD
         /ympdeP0mkbbUBvCIsFfRvt/x6x1HM53/pvbw868TEmkXngUnAhKbwGqZQRrGkUJO7jO
         3O+5+rqtSqNvdQSblqIjHczVSga1F7xQW5+RDT9gIE0MgKNXVTb1ZfeQ/SqwWH2kBMQD
         QF/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=shsaodz3DmqydX97Rx8s+NqW9WkXXa73BBPkH1M/Hh8=;
        b=DHx7FX8V+Mrzth8jWXqpV2EsJPpmNA4C4vD8bm8K9/+HkNBMc6X6xYFU+XIZgjcGW3
         PIbr+RKtIyYtJskp925quUQ6yIMWiI8/M0Hzo1Y0mLXI5GcSMxilohmWli8rSCGXK+9x
         MpdNtNa8q8a2JIVc8Oif0B9z1hmZQB7olFOpiKbOlt7mQFm15PI5uFaR6nrvyNp5vGSj
         U1rrHn8pdlSlmHV4AdAgjIsA4qdxFyQSHk8pKdyt+t4AsZSWx88kyuEUWDSIXlF2995L
         UV4knHgr2uig8x6LeIJVNnokiFC9qXgw0wzuwCq/RqzPuCMfpueZG0V9Mh/4ywOOnZAB
         aDQA==
X-Gm-Message-State: ANhLgQ289v77G9z5UgNLRFoDnTCwQ8tUlpjOvPSaEvJ76XiYR9LpI86R
	d0J/MRaiME+6w6v6Fj5+jvo=
X-Received: by 2002:a17:90a:198b:: with SMTP id 11mr8228819pji.23.1585445029024;
        Sat, 28 Mar 2020 18:23:49 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id i34sm6713074pgm.83.2020.03.28.18.23.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Mar 2020 18:23:48 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [PATCH 3/3] Staging: vt6655: Remove CARDbRadioPowerOn definition.
Date: Sat, 28 Mar 2020 18:23:42 -0700
Message-Id: <5be6d1c65a78414b58b073401ebd9466770174fa.1585442480.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585442480.git.briana.oursler@gmail.com>
References: <cover.1585442480.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove uncalled function comments related to it.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
 drivers/staging/vt6655/card.c | 55 -----------------------------------
 drivers/staging/vt6655/card.h |  1 -
 2 files changed, 56 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index 222b6ef61d9c..67b23ab0b0d1 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -17,7 +17,6 @@
  *      CARDvSetFirstNextTBTT - Set NIC Beacon time
  *      CARDvUpdateNextTBTT - Sync. NIC Beacon time
  *      CARDbRadioPowerOff - Turn Off NIC Radio Power
- *      CARDbRadioPowerOn - Turn On NIC Radio Power
  *
  * Revision History:
  *      06-10-2003 Bryan YC Fan:  Re-write codes to support VT3253 spec.
@@ -437,60 +436,6 @@ void CARDbRadioPowerOff(struct vnt_private *priv)
 		      LED_ACTSET);  /* LED issue */
 }
 
-/*
- * Description: Turn on Radio power
- *
- * Parameters:
- *  In:
- *      priv         - The adapter to be turned on
- *  Out:
- *      none
- *
- * Return Value: true if success; otherwise false
- */
-bool CARDbRadioPowerOn(struct vnt_private *priv)
-{
-	bool bResult = true;
-
-	pr_debug("chester power on\n");
-	if (priv->bRadioControlOff) {
-		if (priv->bHWRadioOff)
-			pr_debug("chester bHWRadioOff\n");
-		if (priv->bRadioControlOff)
-			pr_debug("chester bRadioControlOff\n");
-		return false; }
-
-	if (!priv->bRadioOff) {
-		pr_debug("chester pbRadioOff\n");
-		return true; }
-
-	BBvExitDeepSleep(priv, priv->byLocalID);
-
-	MACvRegBitsOn(priv->PortOffset, MAC_REG_HOSTCR, HOSTCR_RXON);
-
-	switch (priv->byRFType) {
-	case RF_RFMD2959:
-		MACvWordRegBitsOn(priv->PortOffset, MAC_REG_SOFTPWRCTL,
-				  SOFTPWRCTL_TXPEINV);
-		MACvWordRegBitsOff(priv->PortOffset, MAC_REG_SOFTPWRCTL,
-				   SOFTPWRCTL_SWPE1);
-		break;
-
-	case RF_AIROHA:
-	case RF_AL2230S:
-	case RF_AIROHA7230:
-		MACvWordRegBitsOn(priv->PortOffset, MAC_REG_SOFTPWRCTL,
-				  (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
-		break;
-	}
-
-	priv->bRadioOff = false;
-	pr_debug("chester power on\n");
-	MACvRegBitsOff(priv->PortOffset, MAC_REG_GPIOCTL0,
-		       LED_ACTSET); /* LED issue */
-	return bResult;
-}
-
 void CARDvSafeResetTx(struct vnt_private *priv)
 {
 	unsigned int uu;
diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index 32405027e269..568a2ddd6588 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -55,7 +55,6 @@ unsigned char CARDbyGetPktType(struct vnt_private *priv);
 void CARDvSafeResetTx(struct vnt_private *priv);
 void CARDvSafeResetRx(struct vnt_private *priv);
 void CARDbRadioPowerOff(struct vnt_private *priv);
-bool CARDbRadioPowerOn(struct vnt_private *priv);
 bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type);
 bool CARDbUpdateTSF(struct vnt_private *priv, unsigned char byRxRate,
 		    u64 qwBSSTimestamp);
-- 
2.24.1


