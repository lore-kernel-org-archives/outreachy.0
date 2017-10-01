X-GM-THRID: 6471473522622332928
X-Received: by 10.28.31.148 with SMTP id f142mr273010wmf.4.1506895739380;
        Sun, 01 Oct 2017 15:08:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.144.209 with SMTP id i75ls2955981wri.12.gmail; Sun, 01 Oct
 2017 15:08:58 -0700 (PDT)
X-Received: by 10.28.45.215 with SMTP id t206mr1317864wmt.17.1506895738638;
        Sun, 01 Oct 2017 15:08:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506895738; cv=none;
        d=google.com; s=arc-20160816;
        b=BOu6BIwdNTm6Ca5mK61ZuHHYk9O0Q7PI+O/+qOUxy8KQy2ohIjRZGSmq7u+/QqUBxy
         l+zBjzKefCoiIvjm+zSWeYjcH22z/X0++F/UC3T5sWnvGejfabiZSlpiiGplmbF1g9h6
         eVGSC6QIUrn9Jr+ykoFJsbsFQdLjkkQNdVDm0T2KaKZ1OWEu5ktlf9/3gB9VIoExYKSY
         6a+Q4vV0JEhWBrjyYG3ExtQs4kGKdybNsGa5F7zg08QQqR+IjxNS+HKZBfmqus+EhFaB
         G/s7Je+eYv8N8zayI07ngSNwUSA5rVz86LCDPB4uxl9pthabnhmxFDRL9gWxBefak1Pp
         Y2Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=TGIrOs3Tjl4Ods7SCBdRllRN6ccDLEEu05o+OgRLCSA=;
        b=1JcKwkiIaofzIsLGG21NVb4cx+STW5cCV6JMlmWTsSNCtwfApjxdAbsLMJ7xagt3KB
         +UEmFqoaGQGBUY2mxsp6W/PlNieR667Kq7sj7Z0luxVhgPFpRzUUZ83UqWHjw1h7nxsi
         UPuBuStBcNlPdQdJlISIH0NLUk7V01MGELl+BPgnRaHZZqwUQQOC6vBWxXnLZI9idlLX
         jB74MmBOtDW2gsLqQnkFofl0e6zmLalH3CLC5RloMbIgUS1i3pXFUWqP5OmS7q/5Dnlr
         8kANoIQ84zpjPLozVSekjokq0A1i8qQ34oOJkzKIAbmdCxY661aB0yVXYwbKve0CGmni
         AYdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cDo8oaZv;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id h17si1108603wmd.0.2017.10.01.15.08.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 15:08:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cDo8oaZv;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id k10so2703102wrk.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 15:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=TGIrOs3Tjl4Ods7SCBdRllRN6ccDLEEu05o+OgRLCSA=;
        b=cDo8oaZvcEcBkugEE3w3ieoZ2UhOKgHMvUPveYMH9m9R76kLb9dJpesCC0QJ+Cbv5o
         FEu4XFYuOoSo16N3OTMrARWuxcqqTtZ2QxwNEaEa3Yxx/pdKeKYexk22CjxNMD6Idbwb
         j8+hTKS8bE0u6oJlMk6zI2i698o8M6Dqy8iKfQr9X47MX67eK4JW++aXPBGGV8fNDg+T
         c/BLQoNzOZwFdU+jF5nDQKSXyeShRNCtLy1OLzeyPtkSuXE6y01hdCKHNio6eNual+7X
         IdMHmQoXdDIRzFubKI0BZA21KLJ7uUXe/YvR1b/+i1gfzCRcOIa0HSKl3tfix5fxW2sH
         w+fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=TGIrOs3Tjl4Ods7SCBdRllRN6ccDLEEu05o+OgRLCSA=;
        b=G+6P2W5JPDzx+ApMPRGyLflIMAOnFOnFgZKprZQe33XQEsNru78eWKJxyU1GR8BcRp
         LFgHSYpISjPUx+23QDCGAEot/ffBhgJAwc9vbGEwSkO0FkC+3TlbS/3vbkYR/wPEfid5
         WazA1Cab0WvEZG0PJzA/1uIJIKu46xPA0o+6/ddBiusx0bOACyipslMhaCGryLCDG+tt
         Q8A2YCsMe+G4xNVWEdom3q8ZeygMbA6WCLknld/1eQ42g0Ms4Jg3BBCmvYcAfCtK2rFj
         zI43QF7m1a28Jajuyvof0dOleLstrM5oPmRj6L5pVUcgdP9DxycHq7TI1aR8ImUmSxcU
         gRUw==
X-Gm-Message-State: AHPjjUgD8U5Z40fojNyg87LRM9D60Dkf/EDAKOLqsM5jb4wh+3sKRULE
	OQS8ELirENr476lDIf9gAZsLcA==
X-Google-Smtp-Source: AOwi7QC3FZyIOH7eQwMj+sdqLEFkvAeoFp32MLysxOPMSa0xB/U7wJ+vBrkai8L9OXt/BErwWGnJUA==
X-Received: by 10.223.131.164 with SMTP id 33mr8135879wre.107.1506895738276;
        Sun, 01 Oct 2017 15:08:58 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id c142sm7675227wmh.39.2017.10.01.15.08.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Oct 2017 15:08:57 -0700 (PDT)
Date: Mon, 2 Oct 2017 01:08:56 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3] staging: rtl8188eu: Use __func__ instead of function name
Message-ID: <20171001220856.GA2915@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Use identifier __func__ instead of the name of the function.

Issue found by checkpatch.pl.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>

Changes in v3:
	- remove unnecessary ()
---
 .../staging/rtl8188eu/hal/Hal8188ERateAdaptive.c   | 28 +++++++++++-----------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
index c7ae332..4e21475 100644
--- a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
+++ b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
@@ -126,10 +126,10 @@ static int odm_RateDown_8188E(struct odm_dm_struct *dm_odm,
 	u8 i;
 
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
-			ODM_DBG_TRACE, ("=====>%s()\n", __func__));
+			ODM_DBG_TRACE, ("=====>%s\n", __func__));
 	if (!pRaInfo) {
 		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
-				("%s(): pRaInfo is NULL\n", __func__));
+				("%s: pRaInfo is NULL\n", __func__));
 		return -1;
 	}
 	RateID = pRaInfo->PreRate;
@@ -179,7 +179,7 @@ static int odm_RateDown_8188E(struct odm_dm_struct *dm_odm,
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
 			("Rate down to RateID %d RateSGI %d\n", RateID, pRaInfo->RateSGI));
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
-			("<===== %s()\n", __func__));
+			("<===== %s\n", __func__));
 	return 0;
 }
 
@@ -192,10 +192,10 @@ static int odm_RateUp_8188E(
 	u8 i;
 
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
-			ODM_DBG_TRACE, ("=====>%s()\n", __func__));
+			ODM_DBG_TRACE, ("=====>%s\n", __func__));
 	if (!pRaInfo) {
 		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
-				("%s(): pRaInfo is NULL\n", __func__));
+				("%s: pRaInfo is NULL\n", __func__));
 		return -1;
 	}
 	RateID = pRaInfo->PreRate;
@@ -212,7 +212,7 @@ static int odm_RateUp_8188E(
 	}
 	odm_SetTxRPTTiming_8188E(dm_odm, pRaInfo, 0);
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
-			("%s():Decrease RPT Timing\n", __func__));
+			("%s:Decrease RPT Timing\n", __func__));
 
 	if (RateID < HighestRate) {
 		for (i = RateID+1; i <= HighestRate; i++) {
@@ -243,7 +243,7 @@ static int odm_RateUp_8188E(
 			("RAWaitingCounter %d, RAPendingCounter %d",
 			 pRaInfo->RAWaitingCounter, pRaInfo->RAPendingCounter));
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
-			ODM_DBG_TRACE, ("<===== %s()\n", __func__));
+			ODM_DBG_TRACE, ("<===== %s\n", __func__));
 	return 0;
 }
 
@@ -265,7 +265,7 @@ static void odm_RateDecision_8188E(struct odm_dm_struct *dm_odm,
 	static u8 DynamicTxRPTTimingCounter;
 
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
-			("=====>%s()\n", __func__));
+			("=====>%s\n", __func__));
 
 	if (pRaInfo->Active && (pRaInfo->TOTAL > 0)) { /*  STA used and data packet exits */
 		if ((pRaInfo->RssiStaRA < (pRaInfo->PreRssiStaRA - 3)) ||
@@ -345,7 +345,7 @@ static void odm_RateDecision_8188E(struct odm_dm_struct *dm_odm,
 		odm_ResetRaCounter_8188E(pRaInfo);
 	}
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
-			ODM_DBG_TRACE, ("<===== %s()\n", __func__));
+			ODM_DBG_TRACE, ("<===== %s\n", __func__));
 }
 
 static int odm_ARFBRefresh_8188E(struct odm_dm_struct *dm_odm, struct odm_ra_info *pRaInfo)
@@ -532,7 +532,7 @@ odm_RATxRPTTimerSetting(
 )
 {
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
-			ODM_DBG_TRACE, (" =====>%s()\n", __func__));
+			ODM_DBG_TRACE, (" =====>%s\n", __func__));
 
 	if (dm_odm->CurrminRptTime != minRptTime) {
 		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
@@ -541,7 +541,7 @@ odm_RATxRPTTimerSetting(
 		dm_odm->CurrminRptTime = minRptTime;
 	}
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
-			ODM_DBG_TRACE, (" <===== %s()\n", __func__));
+			ODM_DBG_TRACE, (" <===== %s\n", __func__));
 }
 
 void
@@ -550,7 +550,7 @@ ODM_RASupport_Init(
 	)
 {
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
-			ODM_DBG_LOUD, ("=====>%s()\n", __func__));
+			ODM_DBG_LOUD, ("=====>%s\n", __func__));
 
 	dm_odm->RaSupport88E = true;
 }
@@ -705,7 +705,7 @@ void ODM_RA_TxRPT2Handle_8188E(struct odm_dm_struct *dm_odm, u8 *TxRPT_Buf, u16
 	u16 minRptTime = 0x927c;
 
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
-		     ("=====>%s(): valid0 =%d valid1 =%d BufferLength =%d\n",
+		     ("=====>%s: valid0 =%d valid1 =%d BufferLength =%d\n",
 		     __func__, macid_entry0, macid_entry1, TxRPT_Len));
 
 	ItemNum = TxRPT_Len >> 3;
@@ -781,5 +781,5 @@ void ODM_RA_TxRPT2Handle_8188E(struct odm_dm_struct *dm_odm, u8 *TxRPT_Buf, u16
 	odm_RATxRPTTimerSetting(dm_odm, minRptTime);
 
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
-			ODM_DBG_LOUD, ("<===== %s()\n", __func__));
+			ODM_DBG_LOUD, ("<===== %s\n", __func__));
 }
-- 
2.7.4


