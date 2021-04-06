X-GM-THRID: 6947895612953067520
X-Received: by 2002:a1c:7d54:: with SMTP id y81mr1209833wmc.94.1617724844507;
        Tue, 06 Apr 2021 09:00:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:24d4:: with SMTP id k203ls1585784wmk.0.canary-gmail;
 Tue, 06 Apr 2021 09:00:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyg9tdVr6IYG1U5VY+THZ7/rf0zVaty1et43/vG/MRBoCMWBurnc6MjPhSw2eHha8KqjaST
X-Received: by 2002:a05:600c:1548:: with SMTP id f8mr4833408wmg.81.1617724842859;
        Tue, 06 Apr 2021 09:00:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617724842; cv=none;
        d=google.com; s=arc-20160816;
        b=mNlCN3VCcRtqQUeTczVbrKPky3V0VjeQ9JhY6ClLwnkvvXK8AfHkv9ACuWnvxMJRRi
         7TmzaCn/WWYXvaoWDr3xrY4VWEBu7tBdhJlPv0V5uxxU6V6wRO46oe4fzy3chDza4Qie
         Ph9mESDI1zr8xinZY/25McS9VuyHE5UdHetWnNXqu7KRddtdSuBOam6e/TmoBC0AooNU
         SqqAGXgZUEeUC12xKO0D+iBBMsdFXK5PjY1xo2fQXxQNxNtgxX93yFS/4Ukf5M0d9WKn
         5p5jufDDk7JuA85CC6ocPHQzJAJYoKhbenj3uMeWBE6Hv7zv3kOvQIaXeRwqf2e69rcQ
         7fVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=k5EpuzuQJTKW4iCexb4wYn9pAT56gYbwWP/iQi0chJE=;
        b=PhCw0WafozSzp0dUI3Myq7sVzuZ9hiz27CsP1SUDjSUtvmyyDND4LXrHBKGf0BDpOC
         h889U2MTNjoex6C5TcupHUArkLNnwuXUQnPOoggC0Gc/u6B/D1R1HFB7zs817MjEHWo7
         aMaI3UtmqhpJe2+cXuQXjtiMgOTqeTJJ1GmqNr+7kqAZat223SbiyZW30usMDp6Uci3u
         19zdkxFwQK0DB4GL4r+HaKTNUpJqSSbqCPfs2p0it7sJCOIIJt+r9zIMPxPsDiO2f9YW
         ZfMfnu6tP8JWx8DAkoSZhzY6D/jDJe2T8jG4/Chc+SNwjCUcQVb51xDU+ikcIkU7l0u/
         8WuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="d3pyj6/e";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id w2si240148wmb.4.2021.04.06.09.00.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 09:00:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="d3pyj6/e";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x530.google.com with SMTP id f8so13193936edd.11
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 09:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=k5EpuzuQJTKW4iCexb4wYn9pAT56gYbwWP/iQi0chJE=;
        b=d3pyj6/e3e/fxYUdpu90XqhYram4OhWvReN9Bo7SKbbY5tXgcKg6Vcxejn4Y2FhZyY
         qyiBX4wUVVubcDYf2hojBzSFiQ1OBf0pbQPDW73tmv7WVEWUhEY8jOVD+BKsZ10Jdqwd
         /2oux4dbZA3nijNfEqi8esoiYDSC3ATU7r8uvgYpGWL98OiIxFeCGEfXusZthiweq8o1
         WTDtlCm5EyWqWgsRYxn5q6yoGQ/Cnk+hf55Hixxp9NJ1LEJCfGlw1QYuE7QoREwmbc6u
         SOzXsZSpeKnIVaVe/m1y9R9NAzXQ1ReBCGLT+f1AUWBLTFZOqC/Iu2LzQQNqZreuML16
         Jwqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=k5EpuzuQJTKW4iCexb4wYn9pAT56gYbwWP/iQi0chJE=;
        b=oChXph1tPGz5yK7sf5KA8Y1BAoPiUTZXECNEcitT87okYRY4RqgpUOvEDmpMlo7bRQ
         lE+lFCJaQz20JcQEqe/SG2mOuj+QsTNZPJDmZfgvgkuRsKXzfPi8MEKmuMNFAAffoaU/
         xU6MKPaczKVlQZK6rQGIpZXGbJJ8uHhrTDgncbj/Eat6jAfOhR4S1miIRl8RW/GZ+/XA
         itopg7i/TECwiI2MvAtuOOS719FGifFAytEVKzafZ4hrPh6c/i7GBs81JEAMtm3Gebnw
         R7wT+l8xzyqgrbG0AeDfCaXknOMVBL8wLE1/KuGOSDyMELS7+/j8two430ZDK+m4Y9Ha
         Lhog==
X-Gm-Message-State: AOAM533ExZk+wqq+hTt3AJuEjlqbpX2DZLRjPTVn5sL7tu2+8JFnz9Y+
	0JymvI3xiYtr2CmdzebTWh0=
X-Received: by 2002:a05:6402:344e:: with SMTP id l14mr8680125edc.184.1617724842572;
        Tue, 06 Apr 2021 09:00:42 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id n16sm14317737edr.42.2021.04.06.09.00.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 09:00:42 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v3] staging: rtl8723bs: hal: Remove camelcase in Hal8723BReg.h
Date: Tue,  6 Apr 2021 18:00:37 +0200
Message-Id: <20210406160037.27225-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove camelcase in some symbols defined in Hal8723BReg.h. These symbols
are not used anywhere else, therefore this patch does not break the driver.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Patch v3 changes nothing with respect to v2 and v1. It exists only to cc some recipients that were missing in the header of the previous email.

 drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/Hal8723BReg.h b/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
index cc249e15b4bd..60c1f966c5de 100644
--- a/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
+++ b/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
@@ -110,7 +110,7 @@
 #define REG_RSVD3_8723B				0x0168
 #define REG_C2HEVT_MSG_NORMAL_8723B		0x01A0
 #define REG_C2HEVT_CMD_SEQ_88XX			0x01A1
-#define REG_C2hEVT_CMD_CONTENT_88XX		0x01A2
+#define REG_C2HEVT_CMD_CONTENT_88XX		0x01A2
 #define REG_C2HEVT_CMD_LEN_88XX			0x01AE
 #define REG_C2HEVT_CLEAR_8723B			0x01AF
 #define REG_MCUTST_1_8723B			0x01C0
@@ -424,13 +424,13 @@
 #define	IMR_RXFOVW_8723B		BIT8	/* Receive FIFO Overflow */
 
 /* 2 ACMHWCTRL 0x05C0 */
-#define	AcmHw_HwEn_8723B		BIT(0)
-#define	AcmHw_VoqEn_8723B		BIT(1)
-#define	AcmHw_ViqEn_8723B		BIT(2)
-#define	AcmHw_BeqEn_8723B		BIT(3)
-#define	AcmHw_VoqStatus_8723B		BIT(5)
-#define	AcmHw_ViqStatus_8723B		BIT(6)
-#define	AcmHw_BeqStatus_8723B		BIT(7)
+#define	ACMHW_HWEN_8723B		BIT(0)
+#define	ACMHW_VOQEN_8723B		BIT(1)
+#define	ACMHW_VIQEN_8723B		BIT(2)
+#define	ACMHW_BEQEN_8723B		BIT(3)
+#define	ACMHW_VOQSTATUS_8723B		BIT(5)
+#define	ACMHW_VIQSTATUS_8723B		BIT(6)
+#define	ACMHW_BEQSTATUS_8723B		BIT(7)
 
 /* 8195 (RCR) Receive Configuration Register	(Offset 0x608, 32 bits) */
 #define	RCR_TCPOFLD_EN			BIT25	/* Enable TCP checksum offload */
-- 
2.30.2


