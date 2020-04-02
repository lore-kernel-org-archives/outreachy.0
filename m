X-GM-THRID: 6810978384400613376
X-Received: by 2002:ab0:18a8:: with SMTP id t40mr1353565uag.115.1585804485153;
        Wed, 01 Apr 2020 22:14:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:ae95:: with SMTP id x143ls160643vke.3.gmail; Wed, 01 Apr
 2020 22:14:44 -0700 (PDT)
X-Google-Smtp-Source: APiQypLGS6SQtCROJOyAlNDfSEEQao3RoEURPxprCv/7+/Bvpkd/7Z6F4sGVdKXTr7om+pl/8elZ
X-Received: by 2002:a1f:60d5:: with SMTP id u204mr878813vkb.55.1585804484067;
        Wed, 01 Apr 2020 22:14:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585804484; cv=none;
        d=google.com; s=arc-20160816;
        b=dY77aqZEVqd6/Qnm0bvEvGSH+Tg8bcu4ur7aCYZkIMRhvyt5RqYGRF2ODU06KH0GWL
         Bp+i/LVp+MLkREPM8LZHsBWE1yOQfYKyFrk7hVV4Mts/K/AEfi2OlqjtjOWaRR7iVm+6
         8bQJusDF37XpWY1Wpuz9xsocQGx2YcHVkLmZFtwswrffOz23Mr9XrMRFIPgZ5qy2eH+k
         fSTmduoWxe33ZMKCwha8kUKcSw/2VhbcNsej0RhMR91Eb6htcUe/Q/omaxNSajunaptc
         dXJbtlM6IHFIcSWfdI2v4dcAyAv47+azhKewdIbfMAGk6LS1FF+kMVh62BZzViWwla2U
         K7fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7PZ0ZpP4Sngrsj5xcVGjvO5rL4+T5Vcl4somhkfq7Uc=;
        b=i9QwUKcVOMz7TVCevnUHWnEyjfO9Bhx1FpAOGsx5MXGy6zL3/wgXObDg1b14WHXrP9
         wALaSLT+mZ88A48T1r9KsUUdlYIes5/ZRjW4AHkPFkxW8s4PiIt5zoGxTk6TWEh5JV1A
         QCIekYmu+hPcXzbWBzmKmCohxJPEySeKUuMhO06x5zNSMjPXELMNd11RxcyqYxajP9G2
         L4xB7VhYo0gsDXaSa0HIX1Cr4hbozD9RzVR1JuRh8wZaI6OYcx8/Kmh+zjP0cuOy4clt
         /waeW4XU3OhFmpHCzIP5TH3NCj+9K/g6pvA9F+IBcyzPsryXF7vnMU5V8CUcgyDapGa/
         oEdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vU4FEc3u;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id t191si322025vkt.0.2020.04.01.22.14.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 22:14:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vU4FEc3u;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62b.google.com with SMTP id h11so889615plr.11
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2020 22:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7PZ0ZpP4Sngrsj5xcVGjvO5rL4+T5Vcl4somhkfq7Uc=;
        b=vU4FEc3ulEcjRpNhogXjncAkceqwO+LSWkg1XI/Q7oOFTL0f1snE/0gPW3Ha+C+iWc
         gzq/gCZQ6RcrSASueBKu2UePLMuCCO1f4EUg3Doodq92F/fmEsxcEKTXjC0OTogE2kXU
         Wj9J9pd0mko76BKiXfmZreDtrE+j5WEEowbWIbGkza33uxLoYEZJPdraPzCsJ3j+/mUG
         cis3bvgbCL3RVzo9G21ZIxf1QVqD+OQTfcAr5exHPOu1NZdwppl0VUgyhlB8aoiu+C2z
         Q7YyWAeGknr8dSvuHat/iHxWsKBQBd3DuQN6Uq67z9UWqzgYpebAuuwsUmi1cvniDYdk
         +NKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7PZ0ZpP4Sngrsj5xcVGjvO5rL4+T5Vcl4somhkfq7Uc=;
        b=dBjPRf501Dg6zLsZ8rb0g6GMoK9AlgXCHT/jIqZhHtumasKXolqPbk1tVxPOAVRDbx
         j3Ip9xq436t0tZbbh1/7+SwXtbp/o4uX9bKcIqObHMwKm0qLqtOT+G26Ov0H4vIq6qMF
         GLiZ9HWuJ6Y6qENK3J6bpPmGoVPv7RGwAsID79WA5WbNyWbUUGm/7TRiyS/nXWcCzNxW
         i41VUzI8TJtcOwfPLANHkVNq02o2zCrKk/12egvNGANLdDzDJ6CuCU9yOwNfBy5LBr6t
         pevBmvmksnjgiZLl8w0Qu724xqwxaD7CynR1LvsMErOyhkWN/1vhBe3yX8BgOy1NUSn5
         MzzQ==
X-Gm-Message-State: AGi0PuZ42zwMMko1JmmWTsbUCWcEv5MzyOwlljhKMHliVCfnwuNL2off
	V5IajPDDwjx0TsUniOpc+YQ=
X-Received: by 2002:a17:902:9a45:: with SMTP id x5mr1234988plv.296.1585804483071;
        Wed, 01 Apr 2020 22:14:43 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id l1sm2846485pje.9.2020.04.01.22.14.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 22:14:42 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: sbrivio@redhat.com,
	gregkh@linuxfoundation.org,
	julia.lawall@inria.fr,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v4 3/4] Staging: vt6655: Remove CARDbRadioPowerOn definition.
Date: Wed,  1 Apr 2020 22:14:35 -0700
Message-Id: <e64c02aadd0b846604c755989b39f374161a87e0.1585802818.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585802818.git.briana.oursler@gmail.com>
References: <cover.1585802818.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove function CARDbRadioPowerOn that is never called, along with
comments related to it.

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


