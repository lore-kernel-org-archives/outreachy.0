X-GM-THRID: 6809468497850007552
X-Received: by 2002:a25:7a41:: with SMTP id v62mr11817004ybc.202.1585471416349;
        Sun, 29 Mar 2020 01:43:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:b9c9:: with SMTP id y9ls4694015ybj.8.gmail; Sun, 29 Mar
 2020 01:43:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuebrcen3sL/06Ni2mL8HOF9iB7dKt0K9nkObZpnVlcXTCWvBQx2SgteMhcFJQR0XEhJqhE
X-Received: by 2002:a25:b94f:: with SMTP id s15mr11591957ybm.164.1585471415020;
        Sun, 29 Mar 2020 01:43:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585471415; cv=none;
        d=google.com; s=arc-20160816;
        b=RjqVouHrcalRWbo8FGIhIUW/JFbqkRduAYWfrBmWKKvL0gwCtR7ylW2/GdQgimj+AM
         GeWkoXujl0yDdgHmpD7eEG3EZt7z61TQ4LrzRGg7sdhY23jMNRrrZn8krkn8b8VDlhbg
         k3bBSz5SpY7J/SgDQehJOlBG8IoHj30hUUhQgb5iFSeAcgkzgS+wiJZCrl6q3aD66DVN
         IvIz6ALGC8CAgL4hjgAbxhPOWg5s2j6Id6UxvBXTccd8Xl5xdAbsAiOkQp52EmdD2ZdT
         PKHeIDXj4TXIRYqP8m23cB0VaZ/QBh27QEtEluwyNtmv/L7lBJU9+jVYvYFnoKz5fcjw
         J/bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Id8d23gHqbRL99BSISU6PhbbkVYUSOo5XcJrW6d+fG4=;
        b=GEt1tURt8wCBreCNBaxTfldpHPhNwiybPz5vm6KwukMWU/cQ4H6Lp0h79jV8nLw1Zp
         kzn9tXpaDBG4l/jS7vdNWRG0y3i5Ax7n+G/ycRK0tMtqbdj217EXsWjRRDUwymfQ/reM
         nZeSZb/2/f/HvtcT+jCVzxS+wtvd7tYGSJNNNqH5PERlm//wKJAlYFKLOfA/0RKTI2q+
         H3K0J/J91YR0KbQFbg1GYN7z1OK7/e+mCbCf7EZ/6q6p/r7HzaLLIeJ/SRpge/Ga7uSp
         Q3v60JEY+TUx8Irl3uiVqQnYtii7JrUbchdBNI6lb/Gphr1VKGCzdZMfxswiP2FJMyiI
         ACZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nTg8tyH+;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id y140si350723ybe.1.2020.03.29.01.43.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 01:43:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nTg8tyH+;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id d24so1572595pll.8
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2020 01:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Id8d23gHqbRL99BSISU6PhbbkVYUSOo5XcJrW6d+fG4=;
        b=nTg8tyH+FegLXOkebwiGJ2y9whQZ/BxUnZJf/tkkoeL2aw3TZOllyMdv0NSpfV9cEm
         MHJFWMcK3dkxiL5EnQ48t+1t2c0xQDnT3yr/gVUAr8sSTS70FQQI6VI6jxGSuXiMGzoJ
         trkwSu6ZaJXH72eyjvNobSkiz060K1jBvdfqbpYE/FBTo0sKuvxPNGZVNiurkFt43s9Q
         Rz5YLdooUXeUK+8V1/Xp9fxGm94aacy4hSkV9z7i+8OXWkxmwdmzNuQ3aIGppdSm1Nng
         ruUN5weC++HGmv7H972u2CwQ6MpeqIBgClgA7q8vHiBQ8nI0+Ktle5mEXpnBxC5mJssN
         /etQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Id8d23gHqbRL99BSISU6PhbbkVYUSOo5XcJrW6d+fG4=;
        b=Ffpeo+xJkrHBJoy+DY38ZC1D2DglFw70uVFmpVLh+g6wZi2h7AtSUOOkVodbL/KZGP
         hWsYIaYMCAdQptwe0o/ZsSLbftAoIP1B7sjnswyCYurkhRFeTpJBQMoMJ0n/pPzVJbrn
         GJWiFp3dr4X69pSIKGOXdNm9F2nEoRZVJNDVZdqG/IZQTh95uV7z8qtEIY70Qs1J5yvT
         0JRt5xtvHPNWLQLs1+e3ZsKuqIoJQhj03yhrcC35+uBjtazqlQEiD5P5qxqUz+1kdn61
         5ifqee0RPEyjG91x3HFDEh9FDC1k85Z1lhb4ZC2rHJV0D930KtgeACd+jG/UzjyMAcbo
         Zy4A==
X-Gm-Message-State: ANhLgQ3xT5cCTfbnToM5zMmL4gi9GE+cF4U73PDLVkpY07FGRDcYRoh6
	CjNLRQ05U+S1LGu6C78N4TrcUMxVvANpPQ==
X-Received: by 2002:a17:90a:b003:: with SMTP id x3mr9264046pjq.140.1585471414051;
        Sun, 29 Mar 2020 01:43:34 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id w2sm1525487pff.195.2020.03.29.01.43.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2020 01:43:33 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Julia Lawall <julia.lawall@inria.fr>,
	Stefano Brivio <sbrivio@redhat.com>,
	Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
	Colin Ian King <colin.king@canonical.com>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH v3] staging: vt6656: add error code handling to unused variable
Date: Sun, 29 Mar 2020 01:43:20 -0700
Message-Id: <20200329084320.619503-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add error code handling to unused 'ret' variable that was never used.
Return an error code from functions called within vnt_radio_power_on.

Issue reported by coccinelle (coccicheck).

Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Suggested-by: Stefano Brivio <sbrivio@redhat.com>
Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
v3: Forgot to add v2 code changes to commit.

v2: Replace goto statements with return.
    Remove last if check because it was unneeded.
    Suggested-by: Julia Lawall <julia.lawall@inria.fr>

 drivers/staging/vt6656/card.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index dc3ab10eb630..239012539e73 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -723,9 +723,13 @@ int vnt_radio_power_on(struct vnt_private *priv)
 {
 	int ret = 0;
 
-	vnt_exit_deep_sleep(priv);
+	ret = vnt_exit_deep_sleep(priv);
+	if (ret)
+		return ret;
 
-	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	ret = vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	if (ret)
+		return ret;
 
 	switch (priv->rf_type) {
 	case RF_AL2230:
@@ -734,14 +738,14 @@ int vnt_radio_power_on(struct vnt_private *priv)
 	case RF_VT3226:
 	case RF_VT3226D0:
 	case RF_VT3342A0:
-		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
-				    (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
+		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
+					 (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
 		break;
 	}
+	if (ret)
+		return ret;
 
-	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
-
-	return ret;
+	return vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
 }
 
 void vnt_set_bss_mode(struct vnt_private *priv)
-- 
2.25.1


