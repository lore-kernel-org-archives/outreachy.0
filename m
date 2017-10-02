X-GM-THRID: 6472285753246220288
X-Received: by 10.223.176.122 with SMTP id g55mr298874wra.29.1506946457990;
        Mon, 02 Oct 2017 05:14:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.191.29 with SMTP id p29ls1982137wmf.8.canary-gmail; Mon, 02
 Oct 2017 05:14:17 -0700 (PDT)
X-Received: by 10.28.230.79 with SMTP id d76mr1743265wmh.12.1506946457082;
        Mon, 02 Oct 2017 05:14:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506946457; cv=none;
        d=google.com; s=arc-20160816;
        b=fcm4Y+UzSFfGBhPXvdOe+EIZe1gB4sKpB+qUgJYjC6SBX47pw6SEBCAA9W3oPr+LDW
         352p12DSJWUccrGwXOc3GoTWg9JCkjRjr/ktgaSFKgW7aEEYXmD5Np9XRggfN6OqWkwx
         9CoWJYJyLJFUgMkqtW6u2t1UhU7NMqMrHqDv/+FqpGtLNcnY5n6dD/QGRCo1tcUJpDIU
         b1phZb/5sYRTTT0+OMvvkAFJ3TPNasvnzu2g3Ydl0JSv8oxjwt1h6NfDo7RBgIBaVCq9
         Dc0OBl7rOrYyWYV/tKaZug3WOiDHx8xe6qp1SYIDEEj2qI82mEUEBV9mbKKJgyaMVMhl
         Xrbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=3lGq6KiZvHdlgF2aL44c4RI+Od30oafCvVMecf4tvko=;
        b=1LdlQRMpZZV4KbyMiXqYBsolBbDLO6kr8eRADBFW7YfsZj3otFdgzmVCkvdTg1Nbb8
         lqcReHyD9bWHPwwouA3Jx890zcS11kztuofWmsN7Nfq5OETOyy+AiirtUMax8wOQzjca
         kOgVABzzLvvHwMX18zGx+VkRSkVw+8Qcj6+E3GC3IhSlC2zxuXLATf4imrHGfC1UWQle
         8tHilJKVLEMI5CSoxiwI+NfjIihw3uE1uLF8n6biykso19VNL/jGrNpoSnA6ahL5Wy9/
         +092DtXxQ9jpLhFc0uCVDyyJlwnlSvGSZ/+gCWIwTVI8YZLVaHVuTgpIfontVehZC86x
         Bogg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zu76n99o;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id q195si145655wme.4.2017.10.02.05.14.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 05:14:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zu76n99o;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id k10so3673196wrk.3
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Oct 2017 05:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3lGq6KiZvHdlgF2aL44c4RI+Od30oafCvVMecf4tvko=;
        b=Zu76n99o/4lIrAV7w/9SIq7riFgvXzyGhDA3xuUaJcyOEmRLLSC5wbT+PNYlT9dbLF
         YePm+vwBfqizp3sQmHv4+hI/PEgrS/STCWtvKLT+6yco8e25aqPoOcrnftNDXl2UEdcT
         U/gdV1lBcmvdvhcEbfQR/jFVPtdE3yM5SG6jRjGS+ZnNapuycizlNWhU5vDmrC44MNfb
         zV5M/GNnDIyHePgZ75xMThoVJg+6xJkMoVERKoyx0LNQDh2NB0V+J0sSwUEWCovmlPxx
         X33Tmyb7kM184jAmar4DIBczFfq9cRVr2xhyCPSoiLMNSkhtypDnp5xcodp5K27oPcE2
         jJ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3lGq6KiZvHdlgF2aL44c4RI+Od30oafCvVMecf4tvko=;
        b=Y13Q7s2Gw4Qjs5Si6B8pIKaNzeMka/7aTO6MvSdMC0ng5bt2cdfEmRNaZeGsuo5EOJ
         7CvNRqpfLmxIsI5OsSaD7Yunp9rkNbXy9DtAqd7RJ8KtU7Vfrc4HG2Xr1zX1Q1VoQU5w
         ab/EHy7COGQTfyj0TAfnanI38PzuQ7ZWQ4bWbmaGvi3g3HqzldOkeoQflkgkRUhaNHVF
         aJyNDCSs2Lz1i6ZnpUy9Z89wjDDVPANXS0zJWuOPb+wRzI85Ai9SsWAbOPJqHmIeUBwG
         xwtBkHdQmV3NYcs1p7bgPqVxqZTIcNJjghryALDI4j309cwDYXydo884ISdR/kn5GYUt
         Mk4w==
X-Gm-Message-State: AHPjjUg6s/79ErJxZ3Q19tW371Oklg2YjLdtKTc3B7NWHQshcOSIMe7I
	7dhEsUZfvb/ryiRBj420HVQ=
X-Google-Smtp-Source: AOwi7QCiXkbKsVGWY90Qy683vBLYcASLL7h7Ft25JgCCw1xgQXqj5ROoAZJnktaHqJNYg+hQeeZDWQ==
X-Received: by 10.223.187.148 with SMTP id q20mr13673256wrg.34.1506946456850;
        Mon, 02 Oct 2017 05:14:16 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id m138sm7453251wmd.29.2017.10.02.05.14.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Oct 2017 05:14:16 -0700 (PDT)
Date: Mon, 2 Oct 2017 05:14:15 -0700
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8188eu: Remove braces from single statement
 blocks
Message-ID: <20171002121415.GA14303@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fix a coding style issue, by removing braces {} from single
statement blocks.

Issue found by checkpatch.pl.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 3039bbe..20253b5 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -820,9 +820,8 @@ static void save_adda_registers(struct adapter *adapt, u32 *addareg,
 {
 	u32 i;
 
-	for (i = 0; i < register_num; i++) {
+	for (i = 0; i < register_num; i++)
 		backup[i] = phy_query_bb_reg(adapt, addareg[i], bMaskDWord);
-	}
 }
 
 static void save_mac_registers(struct adapter *adapt, u32 *mac_reg,
@@ -830,9 +829,9 @@ static void save_mac_registers(struct adapter *adapt, u32 *mac_reg,
 {
 	u32 i;
 
-	for (i = 0; i < (IQK_MAC_REG_NUM - 1); i++) {
+	for (i = 0; i < (IQK_MAC_REG_NUM - 1); i++)
 		backup[i] = usb_read8(adapt, mac_reg[i]);
-	}
+
 	backup[i] = usb_read32(adapt, mac_reg[i]);
 }
 
@@ -850,9 +849,9 @@ static void reload_mac_registers(struct adapter *adapt,
 {
 	u32 i;
 
-	for (i = 0; i < (IQK_MAC_REG_NUM - 1); i++) {
+	for (i = 0; i < (IQK_MAC_REG_NUM - 1); i++)
 		usb_write8(adapt, mac_reg[i], (u8)backup[i]);
-	}
+
 	usb_write32(adapt, mac_reg[i], backup[i]);
 }
 
@@ -880,9 +879,9 @@ static void mac_setting_calibration(struct adapter *adapt, u32 *mac_reg, u32 *ba
 
 	usb_write8(adapt, mac_reg[i], 0x3F);
 
-	for (i = 1; i < (IQK_MAC_REG_NUM - 1); i++) {
+	for (i = 1; i < (IQK_MAC_REG_NUM - 1); i++)
 		usb_write8(adapt, mac_reg[i], (u8)(backup[i]&(~BIT(3))));
-	}
+
 	usb_write8(adapt, mac_reg[i], (u8)(backup[i]&(~BIT(5))));
 }
 
-- 
2.7.4


