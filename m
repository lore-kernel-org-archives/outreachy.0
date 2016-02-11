X-GM-THRID: 6250108051890634752
X-Received: by 10.98.71.209 with SMTP id p78mr44402727pfi.13.1455216680605;
        Thu, 11 Feb 2016 10:51:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.128.69 with SMTP id b66ls628681iod.101.gmail; Thu, 11 Feb
 2016 10:51:20 -0800 (PST)
X-Received: by 10.107.12.213 with SMTP id 82mr28456699iom.18.1455216680206;
        Thu, 11 Feb 2016 10:51:20 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x229.google.com (mail-qg0-x229.google.com. [2607:f8b0:400d:c04::229])
        by gmr-mx.google.com with ESMTPS id i133si751815ywe.7.2016.02.11.10.51.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 10:51:20 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) client-ip=2607:f8b0:400d:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x229.google.com with SMTP id b67so45066167qgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 10:51:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Ix0DM7jt84b4mLHl+35LMTq0xoDS3IJFlWA+HXDdqYY=;
        b=K6+ykJ/HZEZsCjB8l9GD++G/yCNoZZtJfzW8Sjz/39PYZ0gdENHB+c250eF3ppbQO3
         LAAdCPMmegK2fHixYtmHZsRmbfyr2Pk2n3zoMYnGHKFNZjJKO3EEoOEqZbWcMYmwqofv
         mBsjW2RxvzxuJLd0tm75E/G/LE9JKhmT+mOR9q8lSO9h9GXaYQNm6+YPA7Vn/k8nFfjg
         fJkFgGYg/r6WvQ1nM1sKPYYf3LAVtrroe4f2mqf4k+gAKnclnd+pTOxcMTp4fwbkQaTY
         2XlBOKsHObNFXFTbJ4uboHaPmGNX2u45smkP+fR4PjHZ6fChcTPNwIQjrCpEsLU6xZto
         bEJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Ix0DM7jt84b4mLHl+35LMTq0xoDS3IJFlWA+HXDdqYY=;
        b=ABVIIQ58ttX3Tfjc+BKVZwZGaPZkNbRZaRznbqWTxC6U+fMTPM1W9/b2NTjumr1zKE
         ScEcl/s3XLaWZtkI71BJFmdg9Y3Ltemuc2RTPPnb9GmP3DG0EGrfHStfszet6v5rJx0j
         hdvTPUf7ZoO1KlTXFG89Mj7dx3tbXi41xzT99ELbm+X8aMzSmUL+dGenqCX+9ECQPKEi
         pzdnIwHAcp3To8+EfZycCkBH4ZdLXapwkgM3xwmtSkIG3YCJY1TcX48+hYmClSkgIjHD
         kb52gRYMWnLbDb1+ei06TPYoRSYy6FGmc5fuvYCkEiFQOsJQhpChZLz3gccvk9w882Kr
         LEcQ==
X-Gm-Message-State: AG10YOSrwm56lBSZ5Nh9jTVS1usGWn8mivZKeYE0j6+B9tjOXUBX5ct/Td7wBgGDXMRB1A==
X-Received: by 10.140.85.36 with SMTP id m33mr57207490qgd.91.1455216680043;
        Thu, 11 Feb 2016 10:51:20 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id g6sm3887995qgd.5.2016.02.11.10.51.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 10:51:19 -0800 (PST)
Date: Thu, 11 Feb 2016 18:50:40 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723au: Use ARRAY_SIZE macro for sizes of arrays
Message-ID: <20160211235040.GA5365@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use ARRAY_SIZE to calculate the size of an array to make code concise.
The semantic patch used can be found here:
https://github.com/coccinelle/coccinellery/commit/9cbab452a3a2e18439e8386d6c4a68ee42c3ee2b

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_cmd.c          | 3 +--
 drivers/staging/rtl8723au/core/rtw_mlme_ext.c     | 3 +--
 drivers/staging/rtl8723au/hal/HalHWImg8723A_BB.c  | 6 +++---
 drivers/staging/rtl8723au/hal/HalHWImg8723A_MAC.c | 2 +-
 4 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
index 3035bb8..cd4e0f0 100644
--- a/drivers/staging/rtl8723au/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
@@ -295,8 +295,7 @@ static void rtw_cmd_work(struct work_struct *work)
 
 post_process:
 	/* call callback function for post-processed */
-	if (pcmd->cmdcode < (sizeof(rtw_cmd_callback) /
-			     sizeof(struct _cmd_callback))) {
+	if (pcmd->cmdcode < ARRAY_SIZE(rtw_cmd_callback)) {
 		pcmd_callback =	rtw_cmd_callback[pcmd->cmdcode].callback;
 		if (!pcmd_callback) {
 			RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_,
diff --git a/drivers/staging/rtl8723au/core/rtw_mlme_ext.c b/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
index 7cd0052..a39e441 100644
--- a/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
@@ -2154,8 +2154,7 @@ OnAction23a(struct rtw_adapter *padapter, struct recv_frame *precv_frame)
 
 	category = mgmt->u.action.category;
 
-	for (i = 0;
-	     i < sizeof(OnAction23a_tbl) / sizeof(struct action_handler); i++) {
+	for (i = 0; i < ARRAY_SIZE(OnAction23a_tbl); i++) {
 		ptable = &OnAction23a_tbl[i];
 
 		if (category == ptable->num)
diff --git a/drivers/staging/rtl8723au/hal/HalHWImg8723A_BB.c b/drivers/staging/rtl8723au/hal/HalHWImg8723A_BB.c
index e8cab9e..8d3ea6c 100644
--- a/drivers/staging/rtl8723au/hal/HalHWImg8723A_BB.c
+++ b/drivers/staging/rtl8723au/hal/HalHWImg8723A_BB.c
@@ -219,7 +219,7 @@ void ODM_ReadAndConfig_AGC_TAB_1T_8723A(struct dm_odm_t *pDM_Odm)
 	u32 i;
 	u8 platform = 0x04;
 	u8 board = pDM_Odm->BoardType;
-	u32 ArrayLen = sizeof(Array_AGC_TAB_1T_8723A)/sizeof(u32);
+	u32 ArrayLen = ARRAY_SIZE(Array_AGC_TAB_1T_8723A);
 	u32 *Array = Array_AGC_TAB_1T_8723A;
 
 	hex = board;
@@ -467,7 +467,7 @@ void ODM_ReadAndConfig_PHY_REG_1T_8723A(struct dm_odm_t *pDM_Odm)
 	u32 i = 0;
 	u8  platform = 0x04;
 	u8  board = pDM_Odm->BoardType;
-	u32 ArrayLen = sizeof(Array_PHY_REG_1T_8723A)/sizeof(u32);
+	u32 ArrayLen = ARRAY_SIZE(Array_PHY_REG_1T_8723A);
 	u32 *Array = Array_PHY_REG_1T_8723A;
 
 	hex += board;
@@ -523,7 +523,7 @@ void ODM_ReadAndConfig_PHY_REG_MP_8723A(struct dm_odm_t *pDM_Odm)
 	u32 i;
 	u8 platform = 0x04;
 	u8 board = pDM_Odm->BoardType;
-	u32 ArrayLen = sizeof(Array_PHY_REG_MP_8723A)/sizeof(u32);
+	u32 ArrayLen = ARRAY_SIZE(Array_PHY_REG_MP_8723A);
 	u32 *Array = Array_PHY_REG_MP_8723A;
 
 	hex += board;
diff --git a/drivers/staging/rtl8723au/hal/HalHWImg8723A_MAC.c b/drivers/staging/rtl8723au/hal/HalHWImg8723A_MAC.c
index 93b2d18..9bf6859 100644
--- a/drivers/staging/rtl8723au/hal/HalHWImg8723A_MAC.c
+++ b/drivers/staging/rtl8723au/hal/HalHWImg8723A_MAC.c
@@ -145,7 +145,7 @@ void ODM_ReadAndConfig_MAC_REG_8723A(struct dm_odm_t *pDM_Odm)
 	u32     i           = 0;
 	u8     platform    = 0x04;
 	u8     board       = pDM_Odm->BoardType;
-	u32     ArrayLen    = sizeof(Array_MAC_REG_8723A)/sizeof(u32);
+	u32     ArrayLen    = ARRAY_SIZE(Array_MAC_REG_8723A);
 	u32 *Array       = Array_MAC_REG_8723A;
 
 	hex += board;
-- 
2.5.0


