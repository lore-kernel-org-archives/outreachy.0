X-GM-THRID: 6205781635135176704
X-Received: by 10.107.169.78 with SMTP id s75mr684342ioe.31.1444896285608;
        Thu, 15 Oct 2015 01:04:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.33.201 with SMTP id h192ls415077ioh.96.gmail; Thu, 15 Oct
 2015 01:04:45 -0700 (PDT)
X-Received: by 10.107.165.5 with SMTP id o5mr6967334ioe.5.1444896285353;
        Thu, 15 Oct 2015 01:04:45 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id vy6si1265122pbc.1.2015.10.15.01.04.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:04:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id p3so32624878pay.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 01:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=mqib70WP0anyIAQplxseK4b2mAgXQRmf+6YqsREh/ws=;
        b=GktnfBzwpoGOMOdXj21BtwHx1KBskvFDXPmjBoz9lO5Ru/yHdCrGmaudyV3isKv2DQ
         o1g1qXeWUADBYZsnH2fuw/u67esj6aQyIBNlrYDt2JUOzg+lAK10btBvfbNfXOcDFuu9
         yls046LABFwTnKksljvTsBxmLzq6nTiLvYh+RhqmddM7Ufy04QMnT4VrwDTk4TdwVHpM
         lh/1OnYr/a8Ae7iYUAyyXJFeEsoJ7K92uCwAz408f7RA4oY0X76U9wFvWE10uGJcqFiu
         uTcqXIvGGwdX1H47IqU+OaIhsF9BiXXkrZDh96SaK+Vt2SRItN7YOZc+mEZKijOkSXqh
         sDTg==
X-Received: by 10.66.221.193 with SMTP id qg1mr8787114pac.103.1444896285205;
        Thu, 15 Oct 2015 01:04:45 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.84.71])
        by smtp.gmail.com with ESMTPSA id ih4sm13736880pbc.28.2015.10.15.01.04.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 01:04:44 -0700 (PDT)
Date: Thu, 15 Oct 2015 13:34:41 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 01/18] staging: rtl8723au: hal: Remove useless intialisation
Message-ID: <2bedbf1e8f169cce6ebd43c31ac225855f60b99d.1444895819.git.amitoj1606@gmail.com>
References: <cover.1444895817.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444895817.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove intialisation of a variable that is immediately reassigned. The
problem was found using coccinelle semantic patch and further
opportunities were identified by hand.

The semantic patch used to find this is:

// <smpl>
@@
type T;
identifier x;
constant C;
expression e;
@@

T x
- = C
 ;
x = e;
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
index cf15f80..b5d9e7e 100644
--- a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
+++ b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
@@ -5648,7 +5648,7 @@ static void btdm_1AntTdmaDurationAdjustForACL(struct rtw_adapter *padapter)
 		    (pBtdm8723->curPsTdma != 11)) {
 			btdm_1AntSetPSTDMA(padapter, true, 0, true, pBtdm8723->psTdmaDuAdjType);
 		} else {
-			s32 judge = 0;
+			s32 judge;
 
 			judge = btdm_1AntTdmaJudgement(padapter, pHalData->bt_coexist.halCoex8723.btRetryCnt);
 			if (judge == -1) {
@@ -9079,7 +9079,7 @@ static void btdm_BTCoexist8723AHandler(struct rtw_adapter *padapter)
 u32 BTDM_BtTxRxCounterH(struct rtw_adapter *padapter)
 {
 	struct hal_data_8723a *pHalData = GET_HAL_DATA(padapter);
-	u32	counters = 0;
+	u32	counters;
 
 	counters = pHalData->bt_coexist.halCoex8723.highPriorityTx+
 		pHalData->bt_coexist.halCoex8723.highPriorityRx;
@@ -9089,7 +9089,7 @@ u32 BTDM_BtTxRxCounterH(struct rtw_adapter *padapter)
 u32 BTDM_BtTxRxCounterL(struct rtw_adapter *padapter)
 {
 	struct hal_data_8723a *pHalData = GET_HAL_DATA(padapter);
-	u32	counters = 0;
+	u32	counters;
 
 	counters = pHalData->bt_coexist.halCoex8723.lowPriorityTx+
 		pHalData->bt_coexist.halCoex8723.lowPriorityRx;
@@ -9301,7 +9301,7 @@ static void BTDM_AdjustForBtOperation8723A(struct rtw_adapter *padapter)
 static void BTDM_FwC2hBtRssi8723A(struct rtw_adapter *padapter, u8 *tmpBuf)
 {
 	struct hal_data_8723a *pHalData = GET_HAL_DATA(padapter);
-	u8 percent = 0, u1tmp = 0;
+	u8 percent, u1tmp;
 
 	u1tmp = tmpBuf[0];
 	percent = u1tmp*2+10;
-- 
1.9.1


