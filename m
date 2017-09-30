X-GM-THRID: 6471473522622332928
X-Received: by 10.28.218.143 with SMTP id r137mr984602wmg.15.1506757345978;
        Sat, 30 Sep 2017 00:42:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.187.204 with SMTP id z12ls2280029wrg.10.gmail; Sat, 30 Sep
 2017 00:42:25 -0700 (PDT)
X-Received: by 10.28.135.132 with SMTP id j126mr1065297wmd.0.1506757345077;
        Sat, 30 Sep 2017 00:42:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506757345; cv=none;
        d=google.com; s=arc-20160816;
        b=Nxyb47QTTmYKSxYMD0Jzq7GM7Rm2MZkJ9iiRp7ycGodfopT617iVhwexja23FSqftO
         KAZgPE8CrcmiwVr4KKJqtyhTagrkMGOT1Gfhjpw/XAEGSHzpLHZu6SEqTUBS6YV3+cWr
         i+jv3Ew6vLEf43Gee4MW9S4gMBIx3xN8D57n+nLSTHhCVv+93dhFCBHzA34ESNCV2tw7
         yw6veWSIhFFXGV/BSgUXPSqZeBm0PzOoNuvI/EA4NswTZed+RFR4J57wUqQG4iY5Yf7H
         r4LmQTCeTrGQ2MPeTkOpKU1gYgKGLIxLHDtnl52KU8an4+LLMhlgpRHd+BRFdvbUTzOS
         bUrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=+/aSeAbwuLcRYjDmDCyAJouUv8j2c02hCEZ738sn7Nw=;
        b=zMB6qjVs1F0TWTULnneC5vXFAdTECmAHij8eAUvoCRiW5ZZFneRmPPVszXv76zGlnK
         zKO4tbElQhpXj0POeKREA+FZVD+5wR/yBpyR/OxWwnjU6PzGBjxb6epO8DS4jlN9W9F/
         K4xw2ZKOZLAen4vYIML/sOZ8he1GiKeVHFGIK2AcB79tX16zTtfRv5PYrnsEPrI00vCQ
         EJsokh1Zxqw3RpJaKPzlG3JwfmEPEaLjUEhCzP0ZCiM7zGy4ydqGccuh0IC1bPcbJyxU
         tqoEoERWB3BmdzJc2JSO6dOtR8T5YiHlDPfSLYAI062ylxBJ0cOIC/3ywB4ZiV3Je9y2
         YAOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rw4pw9uU;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id n82si172314wmg.3.2017.09.30.00.42.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 00:42:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rw4pw9uU;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id q124so2834057wmb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 00:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+/aSeAbwuLcRYjDmDCyAJouUv8j2c02hCEZ738sn7Nw=;
        b=Rw4pw9uUgjIGW4C6FCE6a5opo0pEHKoeuHqeLC+M3/cmYhfAv/emoWC7eJXUUlRtWp
         uF+3IVkWY1QrpQ72zSyUlIZrYeaprlP/rrwFJS5USXl+F9k0RXKhvKVdeGWJPIpUaxBh
         6/orhHfnolU0K9KWfCfX82MtwsRL1/A075zy/qq2aSQrQScbo8pqGiseL2mxACDC2X/T
         V8cT/pRWuoFWo5GkfPT5s86TJkJ3GOhaHNqYxmR79xsUgEnt6tA/Ohn+SjqZAFhY/zy3
         sRrPVMH6QzZzTTL0hJoBohAGATJGcFxD8hTmfILIPhbutvzIS8sM6MuQbnldZPTtBKpS
         mhCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+/aSeAbwuLcRYjDmDCyAJouUv8j2c02hCEZ738sn7Nw=;
        b=uZ9cogGUrhG9z+IqUVe5xnKAKv4JhdnC7VsLcM8MoaHZH0AjrbVelP6rYQyOgWHAvY
         kjDxeV4NOJWtlZpIze+NUfPUpiN7eRtdSUz509KZJOJTtBa5zbCK6GVCADEZ4vTgqRta
         qNHO0SVfM8txgoDor09pD9Lph7vxhHdLiXuDoGz/+uMyt+em2XabvboHHRB2n4wxlk7c
         8Q6AQFHvQI82F6qWDmc/eJHYP6dpYJJHjtUAxFVgHxng3G0hJhzNHK2Xxhtjp5yVvGvW
         w8P4/mXZSwQGn0YrMJjCpnDZe4E4SBAouddXNfkDmHxlZ62K/hfhIAf44mjzj4q8JP+Y
         36zQ==
X-Gm-Message-State: AHPjjUgFBm4K/sOzf7aj98GgGgqpb43rh33pH1vaNmZBKZdllL7q7Djh
	YRxGjyeKO15+5ICzaCRrsHzTjQ==
X-Google-Smtp-Source: AOwi7QCmy15rNKTn7EuFbjXnyPWqpXKD1QbbBrengHI2QaE2JuCyt9XVvgQ8OTw392U48rzRK02i4Q==
X-Received: by 10.28.163.198 with SMTP id m189mr5546634wme.76.1506757344653;
        Sat, 30 Sep 2017 00:42:24 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id 188sm2986628wmg.45.2017.09.30.00.42.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Sep 2017 00:42:24 -0700 (PDT)
Date: Sat, 30 Sep 2017 10:42:22 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8188eu: Use __func__ instead of function name
Message-ID: <20170930074222.GA6822@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Use identifier __func__ instead of the name of the function.

Issue found by checkpatch.pl.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 .../staging/rtl8188eu/hal/Hal8188ERateAdaptive.c   | 34 +++++++++++-----------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
index 81bf494..d125494 100644
--- a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
+++ b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
@@ -126,10 +126,10 @@ static int odm_RateDown_8188E(struct odm_dm_struct *dm_odm,
 	u8 i;
 
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
-			ODM_DBG_TRACE, ("=====>odm_RateDown_8188E()\n"));
+			ODM_DBG_TRACE, ("=====>%s())\n", __func__));
 	if (!pRaInfo) {
 		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
-				("odm_RateDown_8188E(): pRaInfo is NULL\n"));
+				("%s(): pRaInfo is NULL\n", __func__));
 		return -1;
 	}
 	RateID = pRaInfo->PreRate;
@@ -179,7 +179,7 @@ static int odm_RateDown_8188E(struct odm_dm_struct *dm_odm,
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
 			("Rate down to RateID %d RateSGI %d\n", RateID, pRaInfo->RateSGI));
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
-			("<===== odm_RateDown_8188E()\n"));
+			("<===== %s())\n", __func__));
 	return 0;
 }
 
@@ -192,10 +192,10 @@ static int odm_RateUp_8188E(
 	u8 i;
 
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
-			ODM_DBG_TRACE, ("=====>odm_RateUp_8188E()\n"));
+			ODM_DBG_TRACE, ("=====>%s()\n", __func__));
 	if (!pRaInfo) {
 		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
-				("odm_RateUp_8188E(): pRaInfo is NULL\n"));
+				("%s(): pRaInfo is NULL\n", __func__));
 		return -1;
 	}
 	RateID = pRaInfo->PreRate;
@@ -212,7 +212,7 @@ static int odm_RateUp_8188E(
 	}
 	odm_SetTxRPTTiming_8188E(dm_odm, pRaInfo, 0);
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
-			("odm_RateUp_8188E():Decrease RPT Timing\n"));
+			("%s():Decrease RPT Timing\n", __func__));
 
 	if (RateID < HighestRate) {
 		for (i = RateID+1; i <= HighestRate; i++) {
@@ -243,7 +243,7 @@ static int odm_RateUp_8188E(
 			("RAWaitingCounter %d, RAPendingCounter %d",
 			 pRaInfo->RAWaitingCounter, pRaInfo->RAPendingCounter));
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
-			ODM_DBG_TRACE, ("<===== odm_RateUp_8188E()\n"));
+			ODM_DBG_TRACE, ("<===== %s()\n", __func__));
 	return 0;
 }
 
@@ -265,7 +265,7 @@ static void odm_RateDecision_8188E(struct odm_dm_struct *dm_odm,
 	static u8 DynamicTxRPTTimingCounter;
 
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
-			("=====>odm_RateDecision_8188E()\n"));
+			("=====>%s()\n", __func__));
 
 	if (pRaInfo->Active && (pRaInfo->TOTAL > 0)) { /*  STA used and data packet exits */
 		if ((pRaInfo->RssiStaRA < (pRaInfo->PreRssiStaRA - 3)) ||
@@ -344,7 +344,7 @@ static void odm_RateDecision_8188E(struct odm_dm_struct *dm_odm,
 
 		odm_ResetRaCounter_8188E(pRaInfo);
 	}
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, ("<===== odm_RateDecision_8188E()\n"));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, ("<===== %s()\n", __func__));
 }
 
 static int odm_ARFBRefresh_8188E(struct odm_dm_struct *dm_odm, struct odm_ra_info *pRaInfo)
@@ -530,7 +530,7 @@ odm_RATxRPTTimerSetting(
 		u16 minRptTime
 )
 {
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, (" =====>odm_RATxRPTTimerSetting()\n"));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, (" =====>%s()\n", __func__));
 
 	if (dm_odm->CurrminRptTime != minRptTime) {
 		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
@@ -538,7 +538,7 @@ odm_RATxRPTTimerSetting(
 		rtw_rpt_timer_cfg_cmd(dm_odm->Adapter, minRptTime);
 		dm_odm->CurrminRptTime = minRptTime;
 	}
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, (" <===== odm_RATxRPTTimerSetting()\n"));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, (" <===== %s()\n", __func__));
 }
 
 void
@@ -546,7 +546,7 @@ ODM_RASupport_Init(
 		struct odm_dm_struct *dm_odm
 	)
 {
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("=====>ODM_RASupport_Init()\n"));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("=====>%s()\n", __func__));
 
 	dm_odm->RaSupport88E = true;
 }
@@ -570,8 +570,8 @@ int ODM_RAInfo_Init(struct odm_dm_struct *dm_odm, u8 macid)
 	}
 
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
-		     ("ODM_RAInfo_Init(): WirelessMode:0x%08x , max_raid_idx:0x%02x\n",
-		     WirelessMode, max_rate_idx));
+		     ("%s(): WirelessMode:0x%08x , max_raid_idx:0x%02x\n",
+		     __func__, WirelessMode, max_rate_idx));
 
 	pRaInfo->DecisionRate = max_rate_idx;
 	pRaInfo->PreRate = max_rate_idx;
@@ -701,8 +701,8 @@ void ODM_RA_TxRPT2Handle_8188E(struct odm_dm_struct *dm_odm, u8 *TxRPT_Buf, u16
 	u16 minRptTime = 0x927c;
 
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
-		     ("=====>ODM_RA_TxRPT2Handle_8188E(): valid0 =%d valid1 =%d BufferLength =%d\n",
-		     macid_entry0, macid_entry1, TxRPT_Len));
+		     ("=====>%s(): valid0 =%d valid1 =%d BufferLength =%d\n",
+		     __func__, macid_entry0, macid_entry1, TxRPT_Len));
 
 	ItemNum = TxRPT_Len >> 3;
 	pBuffer = TxRPT_Buf;
@@ -776,5 +776,5 @@ void ODM_RA_TxRPT2Handle_8188E(struct odm_dm_struct *dm_odm, u8 *TxRPT_Buf, u16
 
 	odm_RATxRPTTimerSetting(dm_odm, minRptTime);
 
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("<===== ODM_RA_TxRPT2Handle_8188E()\n"));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("<===== %s()\n", __func__));
 }
-- 
2.7.4


