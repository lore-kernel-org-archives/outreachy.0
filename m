X-GM-THRID: 6466269161228075008
X-Received: by 10.129.170.17 with SMTP id i17mr212019ywh.160.1505545610773;
        Sat, 16 Sep 2017 00:06:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.68 with SMTP id 65ls8002236ioi.0.gmail; Sat, 16 Sep 2017
 00:06:50 -0700 (PDT)
X-Received: by 10.129.168.72 with SMTP id f69mr17756435ywh.208.1505545610005;
        Sat, 16 Sep 2017 00:06:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505545609; cv=none;
        d=google.com; s=arc-20160816;
        b=Y5WsL9Y3Saz0Vcx+PmjmOctU37Zzi+lYNdGFU8FiTgysSZOF+5MNYG6gW6whH2gb+S
         vCxEssjdgw3aCNmotYKL36kLCWU7+RdXqQ4QWU4EHjMjQ/ijBoaN2Rf+dyIZGKZoyCey
         EwwZLu4ufpz92wDQLJZvYoKLJhFqGzRp6MZumo2sKG1rFS2igtrFU0hpLbtRoXzEFyKR
         kCNRam3ddCMEy0TuENKsY8/qidRif+VTOs+v05wYtpZKeXU5ZOHji489FNHoprfdXL+z
         v9Yy/ycud9KnG7FcZn2xr7XS9XLm4HTaOgKgzJKEF2D5J6sUtbzJiZX4dUsQlIlZHsAK
         PMHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=phJ+kAokhOPtvZQiIgFI0e8Mv8Ox1o/Ag/ZWDcKuoVE=;
        b=OZMzMT9t+ihixy6r0IaRvc52jlBNRf33J2YJvLiWNpMCbxHFBW0uM0oz27uJ8r4XQR
         FaJnPFE6eLvChIgSvG5YQfsfaS4dfh7jJin8Rfuuw7QHAEY+ApOnWfa9+b3x1cuuHBtd
         MTfO4xUJ2tud3Gr3UGnEUVOD6j/i/s01IgCTgQImqsfzXhbWHSD0BLli3lcABuqG8vNY
         Zl78TfKH1NHM/lq7c45ckUaQBam+krM1hqBF8QzOywBLOWThf+BhkKnGg0ZXk/EOZp+i
         dRWc3ZG5tXXI/QRdXHx6lp+PKPm2dMenhA7HK5gQIbDXqHz6TpZlfXkqdaDhWhiDJ/Po
         FTNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gwDTplPz;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id d207si240881pfd.16.2017.09.16.00.06.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 00:06:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gwDTplPz;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id f84so2220631pfj.3
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 00:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=phJ+kAokhOPtvZQiIgFI0e8Mv8Ox1o/Ag/ZWDcKuoVE=;
        b=gwDTplPzbNlTEFyuL5Ew6cg85zBwbzRmlHft4IjRu/xzPctVp+S3O+25Rx9rE0moOk
         RqUdJP4o9c1eGst/Z9jcPUGAqI4DBh1pqALOOX1Kx4mt9z7V8G536NQ/oO3lPr459+RS
         zilMpJnPxnLLttKqMfgSasM+BFPdZ94DjqvltKXNgNPWusolt0HdtWvBSya1zlQifyCP
         2Kw57GDejwOHAqDFtWQrMQ78G2cXX1ObEYAlMbUVm/CP0zDPytnFTLzQftN6hcH6vk4V
         aDdRAhlDf9M+04ZGs5w007zCJpobyHsYtpBT1uboBii6q0Z39nWhgi0oATD9Zmc9jZCI
         NtZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=phJ+kAokhOPtvZQiIgFI0e8Mv8Ox1o/Ag/ZWDcKuoVE=;
        b=F6v1uoBZcdr30bmpqjIGBCnGZDkR3H2LSmC4Yk9AFs5d20VVjJ13U1qr1zDJJ0vCZR
         dPeIopNISzwD2aA81fgyMS1hSf/uh9+GG69T4r+inCNfij/+wjOGsmKJicw4M8lsFiEX
         aCJF4t2hUGCwk1dB7sX7IvwPZi54m9maPaDCB0FuZKQcJp1X0MfvbIgyLQEYL6ct30P5
         48KLD6jDtm2tiIhfj6EKWsl5h6eTa3XeaHkNXH9bjxZFyjsVF91AU+vNF8a9DqROYoTN
         4XJCIxSUnopViBlKtuBLxY2VSHXSdKGs1wYVBYRJlVOgFxGVqFjQpMejoz+CjVPdCJlr
         RP3g==
X-Gm-Message-State: AHPjjUi6xBR3jDr9aHE2xrTmBkA/EKAqivAG9xgn5Y1DolcA3S4xv+1i
	qje4+Khol4kmuiRT6Nc=
X-Google-Smtp-Source: ADKCNb4h5+5edZNOdpVeMg1wYQ7FV0yZ5B/9gAgXUe5mJGOy/UGR2+alKLrxacpluNhgdqRMjbV5/w==
X-Received: by 10.101.92.130 with SMTP id a2mr25949422pgt.94.1505545609678;
        Sat, 16 Sep 2017 00:06:49 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id n10sm5445939pfh.121.2017.09.16.00.06.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 00:06:48 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: rtl8188eu: fix spaces before tabs
Date: Sat, 16 Sep 2017 12:36:43 +0530
Message-Id: <1505545603-15473-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch fixes checkpatch.pl warning:
WARNING: please, no space before tabs

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
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
index 827cd4d..b78a3fb 100644
--- a/drivers/staging/rtl8188eu/include/rtl8188e_hal.h
+++ b/drivers/staging/rtl8188eu/include/rtl8188e_hal.h
@@ -42,7 +42,7 @@
 #define RTL8188E_PHY_REG_PG			"rtl8188E\\PHY_REG_PG.txt"
 #define RTL8188E_PHY_REG_MP			"rtl8188E\\PHY_REG_MP.txt"
 
-/* 		RTL8188E Power Configuration CMDs for USB/SDIO interfaces */
+/*  RTL8188E Power Configuration CMDs for USB/SDIO interfaces */
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
+/*  EFUSE for BT definition */
 #define EFUSE_BT_REAL_CONTENT_LEN	1536	/*  512*3 */
 #define EFUSE_BT_MAP_LEN		1024	/*  1k bytes */
 #define EFUSE_BT_MAX_SECTION		128	/*  1024/8 */
-- 
2.7.4


