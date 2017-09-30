X-GM-THRID: 6471473522622332928
X-Received: by 10.28.138.195 with SMTP id m186mr1236461wmd.9.1506803871561;
        Sat, 30 Sep 2017 13:37:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.193.129 with SMTP id r123ls1287250wmf.1.gmail; Sat, 30 Sep
 2017 13:37:50 -0700 (PDT)
X-Received: by 10.28.230.198 with SMTP id e67mr1106266wmi.24.1506803870492;
        Sat, 30 Sep 2017 13:37:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506803870; cv=none;
        d=google.com; s=arc-20160816;
        b=uQr28yaDby/zxnvNgc2Oi60yCNylV0BId6XNQiefFJWwbMRVG95Iklx9LwHPY8UJQT
         fyzPnwxCaEGD2RvDs1e5qrVt6pxXlFoaTvY0vXHIpzABr/XoFXr06mxV6vvf+eOhyXDt
         L6rhMaufnby6zRtcRwW1xSe1XtZjJIvl0DH3P8P0JS4s9drJUPhlWzxqZp8nY9CJ0D9i
         dJb6l+KH+5ZQniAzxrmhfkbLTDKLLU0qHdmCg1AgfIL6fiVVW3Yx/XvPXiv9s1ksFM91
         NEISc/PSEUVaZXvHf0CFpeY8CMIUicOjylvYO3MdkmRnSJEcg34tYoMuyWclsTvvAaGL
         P24A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=7pyVVYk6vpAZlX3dscTFm9Ehe7xZNimzz1DVjYFxRic=;
        b=BssyqvbKm2wJe9zU31FbA5OBFMtSnHUWawKaaSfEJvXW+bubocP25i6LRtH+G6ITZm
         iuIQD7Wbi29P+To7tTJza85OgfLEMci6/9Yt6KeK1XXfep6MGmWufqjviJTOQoE0ySi7
         5kZtJqjf9XevXx/FiWSyjknmcC/mCksEm1/BBXJv3QJSVQEFNaRRaf0qukYctKfkWQ1G
         KKbm2iBxEcHN+IGP27b96W5Wro2AyhH4JzyYme8gSnuVYnYXhOHdDduUesKxdR9PCobf
         gitx5KxanmlInRgsKCX8BXvaxBmf3+IGMNf0M1VSphzGJay0aND5DP8Z0+AeadGst3Hb
         X6Sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kYqvjv/9;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id 191si688044wmn.2.2017.09.30.13.37.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 13:37:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kYqvjv/9;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id 45so1426560wry.5
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 13:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7pyVVYk6vpAZlX3dscTFm9Ehe7xZNimzz1DVjYFxRic=;
        b=kYqvjv/9/hsTWtD+WYIbOqEJYGNCb9Ch5eoNcxqjoKKJE4h4YlxPpL+1gr+XM+ZfBe
         7DRxdXpQwjoAu/l9FJ/A4svatqZCs1prToKNINJfNVX0eW9I/gKjpSq8K15ihFfja4vV
         3UruC8baeCh45GJ6f5FeMVW1xQKnRllr/VLRujtf90X8ak5+Q7EkpRUbn9WHWW7XtEd6
         s+HbojjgIZWRx3voaq90HPua/GJqgkGf3pAtQmmnqmb2FCDDEFDAWhkrpkMjmhk2nPk+
         Th2uuIGK7JuqV6+pRZo+zn00pqZoWhK77KvEi7dEyFUl8cJyB3I/5fLbYaeG44CJFDMt
         w6lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7pyVVYk6vpAZlX3dscTFm9Ehe7xZNimzz1DVjYFxRic=;
        b=Zs6ICK0tSqmUukKsI//qa5YchnxP32zcbRvZIyD52IuiNuT7OQiopvPXpULiVESfmP
         iPh+cofD/UsojARhFXUnz2ybO+sXAFEuHhaYmGEeeuqrFQVaEI8iek+6dojNt8jFI65C
         AmrEVJOwENo5XcUgGp2J47g++cctLd1YA5mvFpdsziHkQzX7sBDmo5K9t50Sr9jlP517
         /ChVXEx/xdm+9HijZ0T4Oy0it7/R7HOzAYilvKwY0gz0drFr6CZaG0L+e1mhCjmvUCj0
         mmVLBDekxlH8iNMGt7IQU1xckuU8FcUJ6vnMvKReelsYsJPSN+wVJj7E/pwDmXcffvk1
         awkw==
X-Gm-Message-State: AMCzsaW3DryYBWRgbl4y1W/2ZecqaqEWuUJo5RDUBPE/0k8Xmuis+3vh
	/gWA4q44kRnn4tCkyNDdPbov3g==
X-Google-Smtp-Source: AOwi7QCvxjL2dpQB27QCpwbqZoMVJ7Vk6dcEoLcBwVos6KP4OU3aAATTUMP8O89aXxu2taQ/+NMhuA==
X-Received: by 10.223.167.12 with SMTP id c12mr804514wrd.255.1506803870137;
        Sat, 30 Sep 2017 13:37:50 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id f5sm3963137wmg.10.2017.09.30.13.37.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Sep 2017 13:37:49 -0700 (PDT)
Date: Sat, 30 Sep 2017 23:37:48 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: rtl8188eu: Use __func__ instead of function name
Message-ID: <20170930203748.GA3466@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Use identifier __func__ instead of the name of the function.

Issue found by checkpatch.pl.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>

---
Changes in v2:
	- adding a new line to avoid going over 80 characters per line.
---
 .../staging/rtl8188eu/hal/Hal8188ERateAdaptive.c   | 35 ++++++++++++----------
 1 file changed, 20 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
index 81bf494..c7ae332 100644
--- a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
+++ b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
@@ -126,10 +126,10 @@ static int odm_RateDown_8188E(struct odm_dm_struct *dm_odm,
 	u8 i;
 
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
-			ODM_DBG_TRACE, ("=====>odm_RateDown_8188E()\n"));
+			ODM_DBG_TRACE, ("=====>%s()\n", __func__));
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
+			("<===== %s()\n", __func__));
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
@@ -344,7 +344,8 @@ static void odm_RateDecision_8188E(struct odm_dm_struct *dm_odm,
 
 		odm_ResetRaCounter_8188E(pRaInfo);
 	}
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, ("<===== odm_RateDecision_8188E()\n"));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
+			ODM_DBG_TRACE, ("<===== %s()\n", __func__));
 }
 
 static int odm_ARFBRefresh_8188E(struct odm_dm_struct *dm_odm, struct odm_ra_info *pRaInfo)
@@ -530,7 +531,8 @@ odm_RATxRPTTimerSetting(
 		u16 minRptTime
 )
 {
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, (" =====>odm_RATxRPTTimerSetting()\n"));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
+			ODM_DBG_TRACE, (" =====>%s()\n", __func__));
 
 	if (dm_odm->CurrminRptTime != minRptTime) {
 		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
@@ -538,7 +540,8 @@ odm_RATxRPTTimerSetting(
 		rtw_rpt_timer_cfg_cmd(dm_odm->Adapter, minRptTime);
 		dm_odm->CurrminRptTime = minRptTime;
 	}
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, (" <===== odm_RATxRPTTimerSetting()\n"));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
+			ODM_DBG_TRACE, (" <===== %s()\n", __func__));
 }
 
 void
@@ -546,7 +549,8 @@ ODM_RASupport_Init(
 		struct odm_dm_struct *dm_odm
 	)
 {
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("=====>ODM_RASupport_Init()\n"));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
+			ODM_DBG_LOUD, ("=====>%s()\n", __func__));
 
 	dm_odm->RaSupport88E = true;
 }
@@ -701,8 +705,8 @@ void ODM_RA_TxRPT2Handle_8188E(struct odm_dm_struct *dm_odm, u8 *TxRPT_Buf, u16
 	u16 minRptTime = 0x927c;
 
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
-		     ("=====>ODM_RA_TxRPT2Handle_8188E(): valid0 =%d valid1 =%d BufferLength =%d\n",
-		     macid_entry0, macid_entry1, TxRPT_Len));
+		     ("=====>%s(): valid0 =%d valid1 =%d BufferLength =%d\n",
+		     __func__, macid_entry0, macid_entry1, TxRPT_Len));
 
 	ItemNum = TxRPT_Len >> 3;
 	pBuffer = TxRPT_Buf;
@@ -776,5 +780,6 @@ void ODM_RA_TxRPT2Handle_8188E(struct odm_dm_struct *dm_odm, u8 *TxRPT_Buf, u16
 
 	odm_RATxRPTTimerSetting(dm_odm, minRptTime);
 
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("<===== ODM_RA_TxRPT2Handle_8188E()\n"));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
+			ODM_DBG_LOUD, ("<===== %s()\n", __func__));
 }
-- 
2.7.4


