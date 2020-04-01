X-GM-THRID: 6810562968301862912
X-Received: by 2002:a4a:a226:: with SMTP id m38mr15446150ool.94.1585707762112;
        Tue, 31 Mar 2020 19:22:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:3089:: with SMTP id f9ls8764353ots.0.gmail; Tue, 31
 Mar 2020 19:22:40 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvg24FjFV89zXErhptYZ5AmMSgoEsAqkLvBpETJEo495+kyVMGclq2VTXHX5lzwmJ2y7C9V
X-Received: by 2002:a05:6830:19ee:: with SMTP id t14mr16214035ott.287.1585707760659;
        Tue, 31 Mar 2020 19:22:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585707760; cv=none;
        d=google.com; s=arc-20160816;
        b=NdnIuKrZHzP6f8LAR4CfkxJlJpym1ih47VBjNLmUtLoWJc6paqA6HVZ21S9ok1joTp
         En/BkEuW9d7tiD8skdzpd58irpCEIwyTtBs/iqS4a8bl5ic/4B2bFGcnMyK8HnBbmkOH
         wT4f/jZ6Eg7xsbf8nWj4gDkNmbMpPMJmOKKCCcaaEM+AeomMYZukts+SKNNqRopYsMRv
         QUZ7+cWrJ9zXGPlJBeZHcpORzZRMofcnS5/YB9pt1fnfyWxZf2i5XWoKlq/vP3Cny5L5
         v4bFNzirwvssYYNZBE89VSVdI/TZ1d1hW4QBU5U8a7l8PTa0RjB18t1XKSas1qWWPTg1
         QexA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7PZ0ZpP4Sngrsj5xcVGjvO5rL4+T5Vcl4somhkfq7Uc=;
        b=GwrqfzIGUnY7znlfkH2rWhS5L61R62Q2yIyTsuQxAmJwJyk4Xt6KfLwC8QsEXsWjut
         Wp69aC1O/xJauVnr9XKDNwQJOCQwHmKBN0rSozCU629/4vemUG+zCF+o83vKT4GE6EUU
         Dr+g/O315+uREkMFhriwH2Y93MntdTwuFFCp49XUo5iUlYmE/bsUQzwfcKJXcYyJLwYb
         kS3epRMnZMgusMcDzKb/FA3rX2w8goZbvr5iPjL2rADJHZhcxw0JtemD4a+O+Ts4NsH3
         Oj4wlRHqyKmu3wUE3B1/6JlaToJAYWMylSc1PLuw25xHfsF4viKpi2t+K7zPD5SjNnXU
         Q5oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GPiRuxlx;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id t81si48854oie.5.2020.03.31.19.22.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 19:22:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GPiRuxlx;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1035.google.com with SMTP id jz1so1598511pjb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 19:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7PZ0ZpP4Sngrsj5xcVGjvO5rL4+T5Vcl4somhkfq7Uc=;
        b=GPiRuxlxssCfpoZwf74ufJGhSKL8MBk+91Y0sWEV2BE8PKUs9SrkAaifu/shE8xVR2
         QEpmVqMqpoTELga/Edtf2Mhnn1t5uTksDSc6I3uUFDzwPB+3JueIZqKYzdlwr9P/l48r
         Y+TI9pYdyCgNCVcgdeDZOUvVePlpOcw9JwifATHX+WLKg57JuolSgoW7m/5XNcnQMjT1
         1BSK6gzZThmF/1e1wUjpe0wN+Zln0ISHI7iHcPwxyGwIuaYZvjKM/T+1/sN7lmwiMSyB
         uZDuooSzr4uxiThhULWPlb8nT7FqIyOIqammjejkIfS9VqpztJlCEwQeS6ftfOPkF0fl
         NJeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7PZ0ZpP4Sngrsj5xcVGjvO5rL4+T5Vcl4somhkfq7Uc=;
        b=KzGtoDNjheyK7N9B/JaH+hrMO647bvSLC3u4zGA7iEPu/4wJN8GHlrR1fHpwfzeFJH
         y+HGfYE6ijxW+hpt+ICKwRxegSVdJb+Orq+swg+0jMfTKxivkFpGccj+oI2IJcpNhQXd
         GNlBoPVaFF0LoB4fs9pQKWce2YDdHa+UkcAd92Sgw3j2FzpdkG62TL4wdpQ74B7dvQyq
         ktwtA5Id0JfpvAvFOtcbsR2GBaP7O2LsOX7kpqH0S+al6Jq+9siOMjdZ1nYaHTp2c6LD
         WsbAggJDFEu3y9jofZuGXAHMA/7+DWIRWezacqE69SyTrj6O+d1IKHbQ2nama/2U1mfx
         bh+A==
X-Gm-Message-State: AGi0PuZ1TX62JrXsZRAYWzZHlo9eAhto9tEIQTH/Bn3sjBzmhYUKLMAv
	8Spnnt4oNJ/4I/8PiryCSBw=
X-Received: by 2002:a17:90a:e983:: with SMTP id v3mr2082902pjy.62.1585707759897;
        Tue, 31 Mar 2020 19:22:39 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id m2sm336543pjl.21.2020.03.31.19.22.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2020 19:22:39 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: sbrivio@redhat.com,
	gregkh@linuxfoundation.org,
	julia.lawall@inria.fr,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v3 3/3] Staging: vt6655: Remove CARDbRadioPowerOn definition.
Date: Tue, 31 Mar 2020 19:22:34 -0700
Message-Id: <e64c02aadd0b846604c755989b39f374161a87e0.1585707212.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585707212.git.briana.oursler@gmail.com>
References: <cover.1585707212.git.briana.oursler@gmail.com>
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


