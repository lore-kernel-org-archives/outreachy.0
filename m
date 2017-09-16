X-GM-THRID: 6466269161228075008
X-Received: by 10.129.0.70 with SMTP id 67mr16931506ywa.12.1505549016501;
        Sat, 16 Sep 2017 01:03:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.71 with SMTP id c68ls8349624ioe.22.gmail; Sat, 16 Sep
 2017 01:03:35 -0700 (PDT)
X-Received: by 10.84.253.15 with SMTP id z15mr11297601pll.1.1505549015680;
        Sat, 16 Sep 2017 01:03:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505549015; cv=none;
        d=google.com; s=arc-20160816;
        b=T+Dzb6sR84EO2zaCvQkVtHeQ1Hv7t+O4/SqTlwUxBctFDfJENg4XGYNBkymmvPKGLN
         Mm0pfAyTnjKjhQbcJCCIw01AferYcnbzP8LfFcwtMCo4IC4nnsqO2zBPjfiaT6DNVt6g
         Qk4aPIUADxoejqGC6hw+cZXN71bpZQZniYjWJPlQeczmBnQqrgNKqZR2a0gqpSmFmrjo
         fHCgj5qgAN3ZRIs7EK9AgMmRM8G2sHx24Wyq5opwkW1arsJGP9SPAdmXaHeFQdop9htq
         o2qFeoZHGXdZbWa+3EV5llzcmjbMzPL4VAmxN0Lr33zmgB+ErWA5WFpWzazPgk5X8nND
         T1Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=afF6aay5gjynXSKfUMW+NRHA2snz8Z5tHB+czQ3brUE=;
        b=p+YipBXhPjMAbi5Hn0NUjGYXlLezyYMYY4SQqxbns8Ih/Nm5EqDvApquaErAlNX6if
         le1yqnoiWYfDRevOqirJ+JGbhgg/W7QcI3dGAoutVDIc5p43j38fFo00VclGj3s7a1VE
         n/n+kmAZktVhJgEyVgcA15SBXlkHl7NppYwQeLVI7oB5AFbl66CD4odwN8IvdCYMrNc9
         bTldkbioEvcPbuVCK3kzyl4diw3AqH/zP0GawmVhUhvBogl/eLY8iJayODHMmbcW3w7t
         KLD+S+riO3guy30d0Fy0mZmQcxL5UQ5t57vevNmuL4tMAm+GhQBMv2HCIsJYqPuOSW0T
         S/kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MyJWSB6j;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id q15si284097pfi.7.2017.09.16.01.03.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 01:03:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MyJWSB6j;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id g65so2265149pfe.1
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 01:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=afF6aay5gjynXSKfUMW+NRHA2snz8Z5tHB+czQ3brUE=;
        b=MyJWSB6jZn2AEWpOZ1NjGCDSxX9fIBV1JX8jFzeGjpVhdqjRma23fCyywgAmNrSSbo
         ksbDIP9SzHN2/hMKYzSekzt2pT/qNB6dYX/jF9caCTmXxCnvdS9Ncb7No4ZsLRmoZZfh
         u0qAutB9+kDVpf1FwCDQI8bhNQHTY4m62bmXZ/YFhOcYu+z6qu3oByzWE56K9wrc/3Jz
         2e33PAARojozgzgJ6jMraziNxKj6q851G7IBpaLyVskS0fEZGp+HMlqrz2yhMJomEccr
         9lL9PsjaD69y1oj9Bx3oh+h3oCX+eE8u/G52umoChq4sWLb3v8tcOiPT6XMKou6bBG4W
         tSmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=afF6aay5gjynXSKfUMW+NRHA2snz8Z5tHB+czQ3brUE=;
        b=BG0M0IRXm6MPZqRiAo0rKkkExqU/VQH63K26dgoPs5ZjJWZ2BbNpbLHm41nCb4+f2B
         2qzNs+TzZWJghnzlOC80Mw2jBIHTPofhITcC+bgwid2aB4jzBMFdWiDmAFxzaCBpxrqF
         ApfcQ9k2C2dGGScRgk1XDj/cUtXZPUQ1erPvullnQ0t6/Kdxo6p9KxnVB4EP5RbIcqyf
         VypQ9znSeqTPO+PLNyZFYqr2Mip8Q3j1oQksM8fG1jUhG4N+tcBh2SaHjkfjYtSszek0
         8kGFrCDHnlO4SYx6VC8pU6XI3llXR6Q65yPjGWwRZNK0wjlu7MzDDEiwDafqDT+xuYCf
         mJsg==
X-Gm-Message-State: AHPjjUiB4AnQJULNm9ewvin/FtCnvufdMF8bYdTeeb2h/lS3AqfvzYki
	usSMQz1UIWd8tg==
X-Google-Smtp-Source: ADKCNb5o22ikD8yAdjoSrO09VFnrCZeqjJ3pLtf2Qa2oEE/ZcGONKwIXXa1dGZ6Cv8TwhE6SXPijDQ==
X-Received: by 10.99.191.75 with SMTP id i11mr18703836pgo.136.1505549015395;
        Sat, 16 Sep 2017 01:03:35 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id w9sm4580380pfg.129.2017.09.16.01.03.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 01:03:34 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2] staging: rtl8188eu: fix spaces before tabs
Date: Sat, 16 Sep 2017 13:33:27 +0530
Message-Id: <1505549007-19684-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch fixes checkpatch.pl warning:
WARNING: please, no space before tabs

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
Changes in v2:
	-removed extra spaces in rtl8188e_hal

 drivers/staging/rtl8188eu/include/odm.h          | 4 ++--
 drivers/staging/rtl8188eu/include/rtl8188e_hal.h | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/odm.h b/drivers/staging/rtl8188eu/include/odm.h
index 5dd8cb2..13ead61 100644
--- a/drivers/staging/rtl8188eu/include/odm.h
+++ b/drivers/staging/rtl8188eu/include/odm.h
@@ -513,7 +513,7 @@ enum odm_security {
 	ODM_SEC_RESERVE		= 3,
 	ODM_SEC_AESCCMP		= 4,
 	ODM_SEC_WEP104		= 5,
-	ODM_WEP_WPA_MIXED   	= 6, /*  WEP + WPA */
+	ODM_WEP_WPA_MIXED	= 6, /*  WEP + WPA */
 	ODM_SEC_SMS4		= 7,
 };
 
@@ -695,7 +695,7 @@ enum ant_div_type {
 
 /* Copy from SD4 defined structure. We use to support PHY DM integration. */
 struct odm_dm_struct {
-	/* 	Add for different team use temporarily */
+	/*	Add for different team use temporarily */
 	struct adapter *Adapter;	/*  For CE/NIC team */
 	struct rtl8192cd_priv *priv;	/*  For AP/ADSL team */
 	/*  WHen you use above pointers, they must be initialized. */
diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_hal.h b/drivers/staging/rtl8188eu/include/rtl8188e_hal.h
index 827cd4d..b4b5e21 100644
--- a/drivers/staging/rtl8188eu/include/rtl8188e_hal.h
+++ b/drivers/staging/rtl8188eu/include/rtl8188e_hal.h
@@ -42,7 +42,7 @@
 #define RTL8188E_PHY_REG_PG			"rtl8188E\\PHY_REG_PG.txt"
 #define RTL8188E_PHY_REG_MP			"rtl8188E\\PHY_REG_MP.txt"
 
-/* 		RTL8188E Power Configuration CMDs for USB/SDIO interfaces */
+/* RTL8188E Power Configuration CMDs for USB/SDIO interfaces */
 #define Rtl8188E_NIC_PWR_ON_FLOW		rtl8188E_power_on_flow
 #define Rtl8188E_NIC_RF_OFF_FLOW		rtl8188E_radio_off_flow
 #define Rtl8188E_NIC_DISABLE_FLOW		rtl8188E_card_disable_flow
@@ -113,7 +113,7 @@ enum usb_rx_agg_mode {
 #define WMM_NORMAL_TX_PAGE_BOUNDARY_88E			\
 	(WMM_NORMAL_TX_TOTAL_PAGE_NUMBER + 1) /* 0xA9 */
 
-/* 	Chip specific */
+/* Chip specific */
 #define CHIP_BONDING_IDENTIFIER(_value)	(((_value)>>22)&0x3)
 #define CHIP_BONDING_92C_1T2R	0x1
 #define CHIP_BONDING_88C_USB_MCARD	0x2
@@ -121,7 +121,7 @@ enum usb_rx_agg_mode {
 #include "HalVerDef.h"
 #include "hal_com.h"
 
-/* 	Channel Plan */
+/* Channel Plan */
 enum ChannelPlan {
 	CHPL_FCC	= 0,
 	CHPL_IC		= 1,
@@ -180,7 +180,7 @@ struct txpowerinfo24g {
 #define		EFUSE_OOB_PROTECT_BYTES_88E	18
 #define		EFUSE_PROTECT_BYTES_BANK_88E	16
 
-/* 			EFUSE for BT definition */
+/* EFUSE for BT definition */
 #define EFUSE_BT_REAL_CONTENT_LEN	1536	/*  512*3 */
 #define EFUSE_BT_MAP_LEN		1024	/*  1k bytes */
 #define EFUSE_BT_MAX_SECTION		128	/*  1024/8 */
-- 
2.7.4


