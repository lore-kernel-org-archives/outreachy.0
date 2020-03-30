X-GM-THRID: 6809858298158776320
X-Received: by 2002:a92:cece:: with SMTP id z14mr9953963ilq.38.1585543698388;
        Sun, 29 Mar 2020 21:48:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:8619:: with SMTP id g25ls4988510ild.7.gmail; Sun, 29 Mar
 2020 21:48:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvtNaBqSaaaItMIRa0WQ2btlV3jxeSw3AYy1Iya1u60zvDSM90LlNxa41KkQrcqpB6i5MTY
X-Received: by 2002:a92:a312:: with SMTP id a18mr2935658ili.249.1585543697244;
        Sun, 29 Mar 2020 21:48:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585543697; cv=none;
        d=google.com; s=arc-20160816;
        b=XROg11gMxPLQer4sfblpmcbijLso5+52fFN7jKIEw+hpmy/dJ2gF3ovhGDZWN5sutr
         ktwEPABLrtTdkhYrQKKZS+5dsN9I0ZMgKTXHpm6mEdoAM0kye1l1Z3l4ESmpH2dDWaiY
         sC1f6oTOcVDFoEEMcLKSQDuAUtqiTZ7O7wkVXXaK9iJXAujcbukhwgMKQ+CzaVuUjvh0
         jwKUbJ+Rqm19XUGE97pUGcr8U6RlYSHRqthi/fIT90DW7w4+bsNP+OJzFIRxkM44CN0o
         azG3W0+KbcyX9yW/Nj6BFUNV6ro4JeCmxqtpf5uibzEDQt24OxXl3cmJP3a84XKb0eQq
         z0Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mYnxVQ91i9nD0h5pVCd2e7Foed2YGjVJdfAVBwU4a4E=;
        b=ktUVrw8BBNMmgqD6YzHTbcH1yUCpAXDjMDMoH8dp5tz/E/nfl1Gzb3XJUPVtlFirRg
         qpuzFLBdXWlZrj3IcwaQTeRmJf+xFTazrxzYfEX/R9WD5RQcmr1MNAvpTlHMaumFtb+5
         6RcLI/Kva1b55grfIx8HW3BtzDImBIFAgGVl3sFGcReLMrrGRBM17UWsoY7LhzB02eMn
         vvq9+ZrJP+0ezep715xpMTmoYEZWpsNDr8FC/XJKgfUAgVvSmAhwEkqFH4Cs2qm5aByO
         xvCMpMsAQIcZDM438GxOZ0n4SyK0WEV1Z2j5kuSM2vjjidEDT99w0tsGre96RVQtUT7e
         ArnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pHi+vBD2;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id a3si1242958iog.2.2020.03.29.21.48.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 21:48:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pHi+vBD2;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id f206so7993434pfa.10
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2020 21:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mYnxVQ91i9nD0h5pVCd2e7Foed2YGjVJdfAVBwU4a4E=;
        b=pHi+vBD2KKrtjd3HJIB3zgWKYbcrKhSGI3maoXZjhQL4EcSK+T9ZewNfNdIjGo5jhV
         +klpSAJqSkUWtY1lYzenjaJa+TOV5z5VYX590UWJ8csIPj4E5tch4jnVN7g7+ylSxyaN
         KBRxkNUnY6l4/6judJY/oj41gvnizwCrmwt0+QhCLUYCHMS/St4UTZBLyudY4w19J/fF
         x0d8RMZIScmCcjM26NJetr5CVQaWbhjkdjnWFPfMFDXNQ7XYPNU8ECGHyHmo53D6+ZsO
         XsqhbUtDOOBvcBNcvo5H2bvIy7Sau7IFLZahKLr9bp9NPkDvRCHdRNnZzENLt+lil28s
         5oFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mYnxVQ91i9nD0h5pVCd2e7Foed2YGjVJdfAVBwU4a4E=;
        b=odUxWBkEANr3qUqJW1mua8IV7XkpfurlzNbkYuGjKIFCjsXl0sqTILfEfL+zKpvDRM
         lRdPExCK9TYXNM4OQ+1kbMhW2vxQU+89pzM8hcGJuW4sDVChsTqdE1Wd+iuFMlm1MeRX
         a2X7bc5/spvH7ZwB+Abd6F0j9oAWkRcxDOGQNMQJTl253kKMTfmxFiLLI88h+HhfsRRq
         jbMLmnco1vzYDtGi4ma+X2JVACqZfV2BFC1zLvKGlX39KWt6HlgJlCfCa4boEKiVinHP
         Qeh4asuJljEXp6XGx80hQi1H8nYggWONJY6GziOGDel0cLXMCBE+Ei5GMiT6wvU2GJNU
         vfbg==
X-Gm-Message-State: ANhLgQ1XLQCxnheNuCYu3v7SJ1iIUdeAmgHvnsEuVTkpaecHPcxjZhmX
	ML68OGvFMtF4GX3snLwNYNY=
X-Received: by 2002:aa7:9f49:: with SMTP id h9mr11256629pfr.217.1585543696625;
        Sun, 29 Mar 2020 21:48:16 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id k17sm9099460pfp.194.2020.03.29.21.48.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2020 21:48:16 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	julia.lawall@inria.fr,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [PATCH 2/4] Staging: vt6655: Raise rate determination logic.
Date: Sun, 29 Mar 2020 21:48:00 -0700
Message-Id: <ef75d57ce674d38a998c5d806dd33176f6db8087.1585542564.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585542564.git.briana.oursler@gmail.com>
References: <cover.1585542564.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Raise rate setting logic out of nested if-else statement to prevent code
duplication.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 26 ++++++--------------------
 1 file changed, 6 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index f9e2087d2242..4be867b95d9d 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -302,23 +302,18 @@ s_uGetDataDuration(
 				return 0;
 			}
 		} else { /* First Frag or Mid Frag */
-			if (byFBOption == AUTO_FB_0) {
-				if (wRate < RATE_18M)
-					wRate = RATE_18M;
-				else if (wRate > RATE_54M)
-					wRate = RATE_54M;
+			if (wRate < RATE_18M)
+				wRate = RATE_18M;
+			else if (wRate > RATE_54M)
+				wRate = RATE_54M;
 
+			if (byFBOption == AUTO_FB_0) {
 				if (uFragIdx == (uMACfragNum - 2))
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
 				else
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
 
 			} else { /* (byFBOption == AUTO_FB_1) */
-				if (wRate < RATE_18M)
-					wRate = RATE_18M;
-				else if (wRate > RATE_54M)
-					wRate = RATE_54M;
-
 				if (uFragIdx == (uMACfragNum - 2))
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
 				else
@@ -344,27 +339,18 @@ s_uGetDataDuration(
 			}
 		} else { /* First Frag or Mid Frag */
 			if (byFBOption == AUTO_FB_0) {
-				if (wRate < RATE_18M)
-					wRate = RATE_18M;
-				else if (wRate > RATE_54M)
-					wRate = RATE_54M;
-
 				if (uFragIdx == (uMACfragNum - 2))
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
 				else
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
 
 			} else { /* (byFBOption == AUTO_FB_1) */
-				if (wRate < RATE_18M)
-					wRate = RATE_18M;
-				else if (wRate > RATE_54M)
-					wRate = RATE_54M;
-
 				if (uFragIdx == (uMACfragNum - 2))
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
 				else
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
 			}
+
 			if (bNeedAck) {
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 			} else {
-- 
2.24.1


