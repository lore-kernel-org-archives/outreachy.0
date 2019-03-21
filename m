X-GM-THRID: 6670798321118871552
X-Received: by 2002:a0c:9acf:: with SMTP id k15mr764226qvf.22.1553166266630;
        Thu, 21 Mar 2019 04:04:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:444:: with SMTP id 65ls2294543qke.1.gmail; Thu, 21 Mar
 2019 04:04:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzQO79A3BYjYndCKe3M9f4IpKB/eGrEIYkXD1OTHqTBfeLqbUXwd21P6ivqB1E9Ig6X9yD8
X-Received: by 2002:a37:b685:: with SMTP id g127mr754303qkf.28.1553166265943;
        Thu, 21 Mar 2019 04:04:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553166265; cv=none;
        d=google.com; s=arc-20160816;
        b=ktiAu3o8thwqG03Uica5FcKAXWG6fgrFJwb0QZNvCDEP4f/wMo+d60zEGsT9h4SGHd
         Z6GBCCVSLgBvPIIVPO85H74vxPfM1OgyE3Xsj4PDCGcYymgEM86H6qwrYTGp3YWyhta1
         djIG3xpGW5HSIq1NzGlDupCuenW7A2IrUdl4lAgLRLy2yEyNTgvkSo2jMxdLe1JFItSk
         ZiGShuEzy3ucLWV1Y0QJA3W2YVpPOp4hiIG0QGWvCUx5bkW1vYsXrM/BmFsfU900qjX4
         GxbZAKr0qiZCrJF0Yz53JB0D+AG3LWFN3ey9TxMEUTnEln6YaVTxLHKAiG2zbjczY+iz
         5xvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=jYAQ+mxmp8Tc2CqL+7nzZ2DAk42tcrakJmk3rAMtz8g=;
        b=sd+a4uZM/cjcuZuAwvheTeI0xLzkDtPXdHfZBFmN9PUY2i0HRF4ov1Mi9EFTtyBb1g
         poNMudtt9sxfoeduLzzVOgDtcpLwqUUFlZA/CSnTO16skuwh6xP7xhLWePvtg5CLht1X
         04scQ+tQp6WTz2QjKewGvhQPsEKiR31ij5hGS4+1xbtXBIlMbcFzfRWjgQgJeGAmGYh6
         y6NYH5IaTTQWskcO8VnZIgFyFEgRP0gWRyTUWHbQOGKhYqDz5S3AGMQE68cSNQT5XtE2
         HqMx9WPiSkeiddpq9zBMShtJ/P199PGsaGi9Ot/MRFfIxm9cHx6HyKhjJBAjUJFa/++v
         Ecfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fc1pC4Sw;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id o59si295444qte.3.2019.03.21.04.04.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 04:04:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fc1pC4Sw;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id v12so3984001pgq.1
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 04:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jYAQ+mxmp8Tc2CqL+7nzZ2DAk42tcrakJmk3rAMtz8g=;
        b=fc1pC4Sw+EhG4uMIWBj5ARxIHUPRJi6YO0teAajAV8NJvgEkC6hesLHIs5ByiO+uRy
         2pu9wMcFDaXdma6e6/YE1UqcWLS0zrZSeVNpLVtV68ZxBt7uBN30fPwEk3Jtu3jfmTKE
         LfSqHk68F8ogqSglMh6t9Al/2ZXXXxXE5ouGf2dMSc577P7qL+ysoePAnOBIHKG8TKWE
         bEtYuZJG1yHzCmv+q75NVQZjiP8DYZTat0KVbai/53/Mf2W5s5JtnGRoN7e9tVLC2/qF
         liFEwmodUmXpYLJzf0X8LYb8jJHjJzX22uDsMS6MIeea4w+MB9Uj9se21fSZhuL5HUls
         SvMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jYAQ+mxmp8Tc2CqL+7nzZ2DAk42tcrakJmk3rAMtz8g=;
        b=qcOpnfl1zZW7VoYjvVdLQBDssZWgO/0eqfOnU21Qrv35eAQkUfhpdlIjrgnDuu4B9V
         R3AAvD6wA/bb1Bm74CNJhlHqATM71jTx8z+2u7Z2nxBH/i5695l9GT5HD9cHUZGqqpuz
         rg3N/1gcM4BBT6yr5g9B4yZfvRN4Pn9viEbJUxaENYibl7T2mDjREAxPPZt3tPxJQ3/H
         NMTP0ThUoERniYxtLp9EC9N6mlcT2CGNaXRZCNegt2LWie9kLNz7QdSSgJHUFjImx2LE
         bAI55EwEoHZP/xjwkk8YTqNK/T67amiK4Piw7/+LVeFEMBptRf8ggEZZ8WPcM+K12UBF
         CFMg==
X-Gm-Message-State: APjAAAVcPkc/06bMWSbNpyWJR8DSgnpLvFUVLC/r82Vgne/NBMmfZwKi
	H4cSvTRv44ZheVUoKJrtO+rSres1
X-Received: by 2002:a17:902:142:: with SMTP id 60mr2881027plb.191.1553166264812;
        Thu, 21 Mar 2019 04:04:24 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.215.204])
        by smtp.gmail.com with ESMTPSA id 8sm13698728pfs.50.2019.03.21.04.04.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 21 Mar 2019 04:04:23 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH 1/3] [Outreachy kernel] staging: sm750fb: avoid camelcase function names
Date: Thu, 21 Mar 2019 16:34:09 +0530
Message-Id: <1553166249-12004-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Eliminate camelcase function names to fix the style issue – 'avoid
camelcase'.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/sm750fb/ddk750_mode.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index 1256b13..5e35fec 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -13,8 +13,8 @@
  * HW only supports 7 predefined pixel clocks, and clock select is
  * in bit 29:27 of Display Control register.
  */
-static unsigned long displayControlAdjust_SM750LE(struct mode_parameter *pModeParam,
-						  unsigned long dispcontrol)
+static unsigned long display_control_adjust_SM750LE(struct mode_parameter *pModeParam,
+						    unsigned long dispcontrol)
 {
 	unsigned long x, y;
 
@@ -124,7 +124,7 @@ static int program_mode_registers(struct mode_parameter *pModeParam,
 			tmp |= DISPLAY_CTRL_HSYNC_PHASE;
 
 		if (sm750_get_chip_type() == SM750LE) {
-			displayControlAdjust_SM750LE(pModeParam, tmp);
+			display_control_adjust_SM750LE(pModeParam, tmp);
 		} else {
 			reg = peek32(CRT_DISPLAY_CTRL) &
 				~(DISPLAY_CTRL_VSYNC_PHASE |
-- 
2.7.4


