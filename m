X-GM-THRID: 6667585252544741376
X-Received: by 2002:a25:1405:: with SMTP id 5mr5509714ybu.10.1552418606056;
        Tue, 12 Mar 2019 12:23:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:589:: with SMTP id 131ls2893337ybf.7.gmail; Tue, 12 Mar
 2019 12:23:25 -0700 (PDT)
X-Received: by 2002:a25:33d7:: with SMTP id z206mr5346925ybz.65.1552418605643;
        Tue, 12 Mar 2019 12:23:25 -0700 (PDT)
Received: by 2002:a81:36c6:0:0:0:0:0 with SMTP id d189msywa;
        Tue, 12 Mar 2019 12:08:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzbW6NzXd47HMeZhdBMvimiN7uc5LnGfUNPwNMUk3m5Tlj1WoT9I5yLlcWLXXU88xfVUX+f
X-Received: by 2002:a25:bf92:: with SMTP id l18mr17806780ybk.103.1552417718853;
        Tue, 12 Mar 2019 12:08:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552417718; cv=none;
        d=google.com; s=arc-20160816;
        b=SoJ6fnsDUt+MJJ9XnUQz4rX18IiqW5+k/QXR/9Fd47HGSctbgqXajeqkQmLsL1tFxm
         ePiOLu5e7Hf8SU+7+zvjechXIhi4TUMhCJM0ttcu6T/OTzBnz/UAQPiGvA3fKShjuQGN
         CGccSQwGIAz9h4wXQktOnwJx4ern/YS4W/FrTvDZSeSDXXNdSDQZrzZDxR/e7JNIuecO
         l0y8gFF8gY6lmBldLo5h3MWpoyWmvT+BfvohEgX9TIlIAfz/o7H/D9Y1ucpWmncFaOOY
         HVzm+wwv54WyjLrO1HEAcV3a+ZwHPecsUk/uZ9wYd/wiSyO7ISbLrKocfS7AAl7YVhLI
         54sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=1T9x5vCSvQr4NkCGWfNKmyTKtiX/GBxlvzzb0EQXhyQ=;
        b=tEYOFcfmuiFU1y2rRT+JnhyVHsVaOYVfk1NuZEDHi1lUgltMK2JKfpzvkxgAuPwI2l
         U7ICSRSuhBklbaIClAPHB1prkDKtenkY1Zs1UDrE9YW10f5lCYY3dPZBaaWtL8J1Gw0y
         kRk7pjHvnG2mYBGD/ZQu/IJX2BKsRspGxTz8WVi+5UvB0iFbGzOD/FWVmQqDl8rDHm0W
         HtXwuzqVUmtjAusNEaO29K0ERgZeVJUcnMC5pjkA//XKwJEhgJYquT7fhCmRxe4vkYt/
         PRvvNucC2hGbxQDOkJwN0aKWu709DhzRFQcyL2mDBst5tpkRdbj1cIDgLyrZWh98GSzz
         kHCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=khvZYmU1;
       spf=pass (google.com: domain of shadaab2202@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=shadaab2202@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shadaab2202@gmail.com>
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id k62si500689ybb.4.2019.03.12.12.08.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 12:08:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of shadaab2202@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=khvZYmU1;
       spf=pass (google.com: domain of shadaab2202@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=shadaab2202@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x436.google.com with SMTP id v64so290827pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Mar 2019 12:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1T9x5vCSvQr4NkCGWfNKmyTKtiX/GBxlvzzb0EQXhyQ=;
        b=khvZYmU1+s4EzFdP6xjqlR+MgZ6HBRG9t76TrNuR/mn3OOOSyC3LP8ZSR38nL3jCRD
         T19+VFZjL2BPVkP2nVN2z6YamngwQw8bPFbb7VCRhpBVJmImoO/E7Y12G3CzQ+qii0Kc
         N4ahm9Wp6oDKTMR82ESE0z4NJa4n5bC1dG3JhcJsrEOV8+bVC7wIiOfRJrqcOo6wJij7
         8RH5b5/NZrs/acW7kvVIgXcla7bl7CNGrKYAY3eEAcp6G5uHNPfuOgBKWlvgx7a+H1lg
         yRdLcC+NKn6rtkgqvKb/VlbqJLsaycV+GUNVfp6UhilJ1p7jgPar+1US9DU4C9ZeJIZV
         eylA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1T9x5vCSvQr4NkCGWfNKmyTKtiX/GBxlvzzb0EQXhyQ=;
        b=E7No8hc/CHj6f9QbQAkurg/R/xsUTmgzLuOo8mdZXRpRxFblh0mpaQIsi/qN8gxSDR
         H558vKlxCmF6SLIcQkiYk3OQurX3hfIVtDhWbyfWRNkpq+VMJw/1PxSMmJWwB6FDWoR4
         wCHBzdOgdM5mhbpRncplKKbC1egSq3quPNoIp3TfGtOabcPQDjpwJpofSTbd6eUKQ4Q8
         WP2ky46h73jEU9x6v2BvIjFX38I8IOBaVz5olB4HdfdvjNNCcFHSnDO1yd9UNLeK3hVq
         F5ysCH4v6wH12hBaCHi0fytXmyKtZVNlN0N9d88lJnqz+Cc9g/8mc4MmNqXAFyq7bKiy
         R3wA==
X-Gm-Message-State: APjAAAURPfgjBcTwGD0bIPndK49muHS0E9ExTCvuIVjf4VlTw9pN0gYg
	yGZZwX52IOtwOMxwsyh1qUWLgJV9
X-Received: by 2002:aa7:8019:: with SMTP id j25mr40063490pfi.82.1552417718218;
        Tue, 12 Mar 2019 12:08:38 -0700 (PDT)
Return-Path: <shadaab2202@gmail.com>
Received: from sreyansh ([202.142.95.164])
        by smtp.gmail.com with ESMTPSA id n4sm22853838pfh.8.2019.03.12.12.08.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 12 Mar 2019 12:08:37 -0700 (PDT)
Date: Wed, 13 Mar 2019 00:38:32 +0530
From: Shadaab G <shadaab2202@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: vt6655: Update TODO & checkpatch.pl check
Message-ID: <20190312190832.GA3330@sreyansh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This updates TODO where task of killing ttype.h is done but
not updated. It also fixes the following checkpatch.pl check:

CHECK: spaces preferred around that '-'

Signed-off-by: Shadaab G <shadaab2202@gmail.com>
---
 drivers/staging/vt6655/TODO   |  2 +-
 drivers/staging/vt6655/rxtx.c | 48 +++++++++++++++++++++----------------------
 2 files changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/vt6655/TODO b/drivers/staging/vt6655/TODO
index 63607ef..462cbdd 100644
--- a/drivers/staging/vt6655/TODO
+++ b/drivers/staging/vt6655/TODO
@@ -7,7 +7,7 @@ TODO:
   - remove dead code
   - abstract VT3253 chipset specific code
 - add common vt665x infrastructure
-- kill ttype.h
+- kill ttype.h -- done
 - switch to use LIB80211
 - switch to use MAC80211
 - verify unsigned long usage for x86-64 arch
diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index a7c1e46..4a1057d 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -307,9 +307,9 @@ s_uGetDataDuration(
 					wRate = RATE_54M;
 
 				if (uFragIdx == (uMACfragNum - 2))
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
+					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE0][wRate - RATE_18M], bNeedAck);
 				else
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
+					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate - RATE_18M], bNeedAck);
 
 			} else { /* (byFBOption == AUTO_FB_1) */
 				if (wRate < RATE_18M)
@@ -318,9 +318,9 @@ s_uGetDataDuration(
 					wRate = RATE_54M;
 
 				if (uFragIdx == (uMACfragNum - 2))
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
+					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE0][wRate - RATE_18M], bNeedAck);
 				else
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
+					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE0][wRate - RATE_18M], bNeedAck);
 			}
 
 			if (bNeedAck) {
@@ -348,9 +348,9 @@ s_uGetDataDuration(
 					wRate = RATE_54M;
 
 				if (uFragIdx == (uMACfragNum - 2))
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
+					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE1][wRate - RATE_18M], bNeedAck);
 				else
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
+					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate - RATE_18M], bNeedAck);
 
 			} else { /* (byFBOption == AUTO_FB_1) */
 				if (wRate < RATE_18M)
@@ -359,9 +359,9 @@ s_uGetDataDuration(
 					wRate = RATE_54M;
 
 				if (uFragIdx == (uMACfragNum - 2))
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
+					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE1][wRate - RATE_18M], bNeedAck);
 				else
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
+					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate - RATE_18M], bNeedAck);
 			}
 			if (bNeedAck) {
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
@@ -397,17 +397,17 @@ s_uGetRTSCTSDuration(
 	switch (byDurType) {
 	case RTSDUR_BB:    /* RTSDuration_bb */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
-		uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
+		uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 		break;
 
 	case RTSDUR_BA:    /* RTSDuration_ba */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
-		uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
+		uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 		break;
 
 	case RTSDUR_AA:    /* RTSDuration_aa */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
-		uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
+		uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 		break;
 
 	case CTSDUR_BA:    /* CTSDuration_ba */
@@ -417,52 +417,52 @@ s_uGetRTSCTSDuration(
 	case RTSDUR_BA_F0: /* RTSDuration_ba_f0 */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
-			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
+			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate - RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
-			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
+			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE0][wRate - RATE_18M], bNeedAck);
 
 		break;
 
 	case RTSDUR_AA_F0: /* RTSDuration_aa_f0 */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
-			uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
+			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate - RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
-			uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
+			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE0][wRate - RATE_18M], bNeedAck);
 
 		break;
 
 	case RTSDUR_BA_F1: /* RTSDuration_ba_f1 */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
-			uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
+			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate - RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
-			uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
+			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate - RATE_18M], bNeedAck);
 
 		break;
 
 	case RTSDUR_AA_F1: /* RTSDuration_aa_f1 */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
-			uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
+			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate - RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
-			uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
+			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate - RATE_18M], bNeedAck);
 
 		break;
 
 	case CTSDUR_BA_F0: /* CTSDuration_ba_f0 */
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
-			uDurTime = pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
+			uDurTime = pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate - RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
-			uDurTime = pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
+			uDurTime = pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE0][wRate - RATE_18M], bNeedAck);
 
 		break;
 
 	case CTSDUR_BA_F1: /* CTSDuration_ba_f1 */
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
-			uDurTime = pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
+			uDurTime = pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate - RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
-			uDurTime = pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
+			uDurTime = pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate - RATE_18M], bNeedAck);
 
 		break;
 
@@ -1149,7 +1149,7 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 			/* Auto Fall Back */
 			if (bRTS) { /* RTS_need */
 				pvRrvTime = (void *)(pbyTxBufferAddr + wTxBufSize);
-				pMICHDR = (struct vnt_mic_hdr *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab));
+				pMICHDR = (struct vnt_mic_hdr *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab));
 				pvRTS = (void *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab) + cbMICHDR);
 				pvCTS = NULL;
 				pvTxDataHd = (void *)(pbyTxBufferAddr + wTxBufSize +
-- 
2.7.4


