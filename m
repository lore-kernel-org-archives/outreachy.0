X-GM-THRID: 6473412482924806144
X-Received: by 10.99.64.71 with SMTP id n68mr2466421pga.137.1507208810711;
        Thu, 05 Oct 2017 06:06:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.167.11 with SMTP id d11ls5081757pgf.13.gmail; Thu, 05 Oct
 2017 06:06:49 -0700 (PDT)
X-Received: by 10.101.92.203 with SMTP id b11mr521448pgt.130.1507208809865;
        Thu, 05 Oct 2017 06:06:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507208809; cv=none;
        d=google.com; s=arc-20160816;
        b=eQ2H6ejphaXmqdmctwzKhbQ+ZjC0xqjOsCiMrUUiJAszvMzbKZ51xprGST5m1lds04
         Xm9Ghpd2Sh8kaMqgI8aG6PXe4KdENHkMG3N5ljvdkQbt4irYMck9KlCXxseeeREEOkjc
         Q3cnbKPx42C8SB1aTy/A9gHsZusvxTB7Nz+i8Oef+FR3VAfuWAEBktXpoVAIaFW+aKIn
         P6n9bHVQk9YeO0A+r2GlMY6BeEZiRQHi7Uy14mRuEZP7wMN0A9c8IgJgV/tN85/Ynnyc
         oksT9V9x4cEQsUcw4ONct50KYEGLbjwmfADc3P4rmjXFToHj+McrthBhE9EwWdgv5nJP
         skLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=W6Ws9TbrY6sHvASyNrpbMh1fXsF3SF2IYFb+VstrdUk=;
        b=fuvSxHPLVA3BDiFZktl1QEkGKvQADv37N5RZyhwjh37c8EHHQ1HQPLV4s/gT8YxFTo
         KHVIYnqkPQJKjjhGcZ+nzR2nKpDzzN3T4cxEpLdbxP/5vGd9gRUeRo1WX9QkL2YHb1Ei
         ChH+Xvekw2+Sok0y7AXDg2ZoCWe2VZI4nN0Daup0pmTxpI7T/sSv4Fo8Whikf5W5c9lK
         JSjjKyqIX8LHnskIxFM09OVGhkDFhA7tMMvKltCnfDGqWLVH7lP0k6VitJb2fpXfj42h
         D1KBnxWM9Lsend6hkzpnKzfPbA82vLKrgkgzAYIWTi72cp7d+OKjqTgjUoc5uprZf/5L
         gOOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U+lFwatP;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id x124si1124391pfx.20.2017.10.05.06.06.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 06:06:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U+lFwatP;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id i195so7302361pgd.3
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 06:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=W6Ws9TbrY6sHvASyNrpbMh1fXsF3SF2IYFb+VstrdUk=;
        b=U+lFwatPvlvff+fypeLv/44BYQvPx5TeDcWztZ9T+zdW5+D0JzPxSmHFWcjqFfHkYb
         AP/L6PPiloeYgRPwXIIMK6Kp9uoBhiiK1n/6HIOOKi2XGLjENLiymTjxMZBgzC3f41lY
         it8+pNriiDDvMYAfuprmXWx270bxvnEI/vNs43S1dMDSs94f5e9iIgbjuHUvYbmb5o9w
         nckcQtSEWLeVtesko5SSS2tLQmNWt/M0OMtnm6YGEPx2X7s34EBk19HRqxyvXucjt6B8
         6UyUrSOlJPALp8TIvoEFTReYr5biz0AOGJitfvXzkTVrVRzfKgEs690eLfJuQJslzwS2
         IPEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=W6Ws9TbrY6sHvASyNrpbMh1fXsF3SF2IYFb+VstrdUk=;
        b=eAoGpkxryxNGnZuUJoYdmlvqbc6RloV1KJ6aGCNahiF+qLzGyaD4kuACHN2LJcJgBG
         K6mipCIH87W2tefvZmvsScfrnnwMq2SUQT5zu9c3jQKw3GVLOBCldf2JT8j/+xKlsB+J
         HJlV7qp8pPMWsZj+KMpgdCsLiip/2HGjZruN0yal2r5A1MCDriQnKocOX3At4Dy9Rub9
         7mcBn7yiDACH91YPWmYYKpe6MhugE2EZ+AOqNfrnhNVRE5Og2f1okH7VUOBOYKvYhHVh
         42I8U/3rl081LsGg2PVvl6kc6Q4zxpMbMMQFDoTvO/gcI+kWrn3FlZ6y6wv1nNdigzib
         ifdg==
X-Gm-Message-State: AHPjjUip3BQY/np5E6X53W44xOdUI96IwCXymMdd0X98tBTFGzTVGobX
	mM9cm5hGNVtClv4hNcpgEys=
X-Google-Smtp-Source: AOwi7QBpdqB9r5hE8wtEuUsn12F6AVQKe0Qn5Ia/Yt/7bs58SeJMEOFPnuFmOkTI+brpAFN9kbhE5g==
X-Received: by 10.84.231.133 with SMTP id g5mr22268206plk.188.1507208809574;
        Thu, 05 Oct 2017 06:06:49 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.229])
        by smtp.gmail.com with ESMTPSA id n68sm27167285pga.39.2017.10.05.06.06.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Oct 2017 06:06:49 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 4/7] staging: rtl8188eu: fix spaces before tabs
Date: Thu,  5 Oct 2017 18:36:24 +0530
Message-Id: <1507208787-18008-5-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507208787-18008-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507208787-18008-1-git-send-email-aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:
WARNING: please, no space before tabs

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8188eu/include/odm.h          | 4 ++--
 drivers/staging/rtl8188eu/include/rtl8188e_hal.h | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/odm.h b/drivers/staging/rtl8188eu/include/odm.h
index dd44f45..95426b7 100644
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


