X-GM-THRID: 6810236750031486976
X-Received: by 2002:aed:3ecd:: with SMTP id o13mr3438183qtf.88.1585631809792;
        Mon, 30 Mar 2020 22:16:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:38ad:: with SMTP id f42ls8045141qtc.9.gmail; Mon, 30 Mar
 2020 22:16:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtJLS1svj8AGJcni6vgmBG8iP0Z/ZtGCVB18RmakxHkd7mlZ4o4gQSdhN6ahOaFcwduvAvb
X-Received: by 2002:ac8:72da:: with SMTP id o26mr3416171qtp.261.1585631808775;
        Mon, 30 Mar 2020 22:16:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585631808; cv=none;
        d=google.com; s=arc-20160816;
        b=UnYp5rIQR+AFOp5B/gxTrAy6NpCrWoCEZXXAc2VGIQlZRdpwW6EJNe3iowot58ueF8
         itWMyIYdvN1xIjM87uO0O2XYiW2l0R52csEYblbWprVCEcnhdBt4C38XeLYlpszQGbw3
         9XGzBdwNFTSxyObCP32jWxjxed2yg+DhZEnnsZNe8/9U8nELLPd/xToLqkBE+v5gzYRf
         pWOzl4y4N7SzpyvPXY5Wzzj9k8qBpT3NvgmHNcL0zoyNKFJE2OlQFpAUNE7JIkODVlh3
         acoHWTRKaualM99IgbYC094sMKSNJaJuU+djT4642p1CfRUP2pSbNsxXJqUc1G6Ipoo9
         +HMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ATA6dL6rk0fx9hgZ/WOTIchE9LwEyFcES3KgxpIVfzo=;
        b=liBtbf4gzbPPBcvNEwYCfr/yqwfD1gBZOIJwMoplt+kc4u0GMwHRzqceDhhfKxZ5+E
         iA5KsSbVl1QOtoGglu0+/XoQE/MQ1pl552/51Y1wl9+6RXvllTH3sOxLQ5MTVuUMcLRA
         4Pv+3kc04DZlaiYXAzeB3dqk+ZYWMKtinhhHg1QbNjDYamrbk7Mmt4LhXdV9Xj3/jVbe
         jE8B63aoBpRKnqpQikhibT6/RdKyrbCHVaKvj+uv+ORZqr9lj57/nfLG3JFGUaB8wmMl
         uhGorJVc7jWQ5swLxFM6FTasTfH7RYuuHNu37OsZEpSrBCrqjGIY29QhU7HTb+GzsleN
         njsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e0ujNLMg;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id y81si866586qka.6.2020.03.30.22.16.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 22:16:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e0ujNLMg;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42c.google.com with SMTP id 22so9771510pfa.9
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 22:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ATA6dL6rk0fx9hgZ/WOTIchE9LwEyFcES3KgxpIVfzo=;
        b=e0ujNLMgQZ/vWubcvHGwK88bhoXZGV/pMebGqKqK8PqL8Zs0F8vPVAC/VcGTJw/U9W
         3EFVJRp9684eB26etL9TGCO/+XrbHy6F/1Yj5cM7P8SD6md7oDNcg22CZnNolv83zcns
         z4omYJVd0sGKs3wfOIEWlxtnEtC/3SAu8kK+i3P/JQE/T62cKvUC4b/PJjGCxRfdYbAo
         1XrbB9w+SZtWUgdxC5A8lXLceTWn0xuPmbc+p08EY3mS4MSLrpcHsZqCdX2gFISCSwhF
         FxdZDORyX9x9bmNzKQT/DQlJQB1bz76pkhNV7O6qdBZdWjHlJyekUl5kj8GkTG7yB8Ig
         bFwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ATA6dL6rk0fx9hgZ/WOTIchE9LwEyFcES3KgxpIVfzo=;
        b=fnCI4t+N7y9n4p8aXHJQGU1n+QMvxtmu2d26zx/E+54B1YCXXV8PiOMWX4idBJW8Wr
         rDck0oMNF4QBO5J+SJjpousB7q8tf/ESDzVpnNJ6mIwEB8MCZ2KpwHfeB5TtMup/IqBR
         L8posP8cItchRHAnVMPVaetsICUcmpnM6hy0AdqB6GX/G5oJAIRtxv223DLqxACDf5UJ
         w66/frPXveRuRzGCUkcOEkTlj2Q7XSr4vAE30RxD8fsxQel83UWBfgAn1s6R9/kaU+oF
         oQWubrK9+B3wgW1TwQeyP1z2F6BqCLHeprRiSN3GbYfN/Sq+A/bWWYJwZHgEw9np0MxJ
         eD8A==
X-Gm-Message-State: ANhLgQ1A7OxTLGd2scPvCIn+EmMYNpDZ0z8LRQOvhZgoHthKA19qNuR1
	A0Q98jTK5oYyNn5v1ZcGiuA=
X-Received: by 2002:a63:574c:: with SMTP id h12mr16545557pgm.424.1585631807804;
        Mon, 30 Mar 2020 22:16:47 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id q8sm910815pjq.28.2020.03.30.22.16.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 22:16:47 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: julia.lawall@inria.fr,
	sbrivio@redhat.com,
	gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v2 3/3] Staging: vt6655: Remove CARDbRadioPowerOn definition.
Date: Mon, 30 Mar 2020 22:16:40 -0700
Message-Id: <e64c02aadd0b846604c755989b39f374161a87e0.1585630805.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585630805.git.briana.oursler@gmail.com>
References: <cover.1585630805.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove function CARDbRadioPowerOn that is never called, along with
comments related to it.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---

Changes in v2:
	- Update commit description to be more clear, as recommended by
	  Stefano Brivio and Julia Lawall.

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


