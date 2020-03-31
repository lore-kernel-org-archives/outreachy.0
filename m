X-GM-THRID: 6810515093003960320
X-Received: by 2002:ac8:3386:: with SMTP id c6mr7969719qtb.236.1585696616611;
        Tue, 31 Mar 2020 16:16:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:9e41:: with SMTP id h62ls11284423qke.8.gmail; Tue, 31
 Mar 2020 16:16:55 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtJkSsAoww/jx8GUeCWuFw+MFKdiDhz3+OmXnNRZlhMxlQnoTyifQEOAwroXEV3P8vVcWV9
X-Received: by 2002:a37:a755:: with SMTP id q82mr7792330qke.390.1585696615154;
        Tue, 31 Mar 2020 16:16:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585696615; cv=none;
        d=google.com; s=arc-20160816;
        b=oHzNw2Gr3g/A78nQOwDzkCeTYUCfNo9lc9ltOWNguboftCxwUm9Z8n97LMAmGExQ6E
         OSRaVb6DYFkMpYIEMLr3wx9D73UdxaEbX//DZKTr/LGwsZEl6FAJ83MMwYiRufcOeBy1
         ZptBRePwBdrZD0NiuUMtwW72HF8wU4CE2AuZ2RpQjjfDoJPDPMJnK6arBRvpps4kd/mg
         0PFsRgPJD91KEso0l2txvEQ5yRb3A0vyc7pB2Hbkh5e0VrCBaiONbnFAhvO4Z/bWOv6O
         K2Q8PrkLBuhbbyfdHJbP7bKxxRxictTMSxPrel0KnpLIi3Z6qe/m8VOQJgcekvaZY2fj
         vzxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XoK+1DEaSLoWz9epJ0QN3p+CNYDQdORxIj/GR3vT/7w=;
        b=epwkDTiSpQ4sGgI7bYaJ2/159VOnyd/J5S3n5wYlNGbI1Q77y/cz8NHGJqJw+Ov1nR
         kFjlk6XKjfne3tenk275s7KDNNgu7odzK2U24FHmSNyn0q1Nu9zxiIgLvbzVwBuvIZN7
         5q5B8Ht0YhnRidrpb0w05Fyqpw1AEelvcdXhJ6Kb0TcdPJfysUe6BBELqcUPHxfDnCDp
         mEMM2uU2v5b81ykgMxYOi1Y9MELKMfDyhaOAm2XyeDlKB2UwGxeBQ144VPDsrJpOgifr
         vpqiE038Hyf48ZmnqujzAnFm7JxunfCrszVXlNlKnugxgR4ZEyLVQWSY1AS2Q+o0JRur
         8jpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TQDu1Nix;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id n138si15627qkn.5.2020.03.31.16.16.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 16:16:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TQDu1Nix;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id g32so5078862pgb.6
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 16:16:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XoK+1DEaSLoWz9epJ0QN3p+CNYDQdORxIj/GR3vT/7w=;
        b=TQDu1Nix84cq/sxlmMbi32raJW/JFODoOFOCfak8Q+iMtRhmsIkIqV5BrFw6kaT9VI
         EvHIPt0kDH7PBK4BPm1fNuhJ6JxxSK1hH2q/pfvvF+vyryJ31zwfKZ+UMSvc0+EizB6O
         qW/zPPCbZOuz6ElgeQoCiN51KGecil2A4zTX25M5t7VMw2LpFsBXHOwVid3zI/FBrl9A
         fuahg/prMshPEWeYu3AplUHr8/J1/Zkae0g+sNxG7zg2iSfMsuB6oxrTCO41xsb6DNEO
         Zvl7EzrD8VJ0N5UMLnTggJTCKfPm5ihJ19UVI+GYuwEAasa2Kce9Kaee/srAZRGljmQ6
         WSxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XoK+1DEaSLoWz9epJ0QN3p+CNYDQdORxIj/GR3vT/7w=;
        b=rfIQvGZX8ajcgkHhHqBb1ssQ7gmWkcXcOibdxkxTtkToKK7ZDjhlR/F58T0zcrMgRv
         wdayV55eV2d7AuPMVcnFF9MpB/46mbe0PxwPxQkoA2kUS+hFX36Wk/yRjGI8T1cxCc/V
         YBiNGfW/qMQtu4xmR0Z1A3rmJ1dO1LuThFkqV0Y0vUpx9+dQSYm4AYI9NAyibvT+9ke/
         SBeDyXbni+sbV0+h1LvO0yuGg1/A4CfMMjNKnkCJO6F9+mydHSiHRso2rrq3HpFJQ/6U
         1EXT19JNXlPRCul4KihO6RE6/KLdErD4f0DwizWeKXpnN488EOQubJxSznPSCOnUCcqk
         FQiA==
X-Gm-Message-State: AGi0PubXYlcKWaVhjpPl6jdhkhr6rIQw2M3ReeYGUWXZw3qgr3ztUBD5
	Im06SvGMRihY6Iw8hQuxWfg=
X-Received: by 2002:a63:954b:: with SMTP id t11mr2499670pgn.309.1585696614158;
        Tue, 31 Mar 2020 16:16:54 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id b17sm180529pff.81.2020.03.31.16.16.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2020 16:16:53 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: julia.lawall@inria.fr,
	sbrivio@redhat.com,
	gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v2 3/4] Staging: vt6655: Eliminate nested if else
Date: Tue, 31 Mar 2020 16:16:45 -0700
Message-Id: <4994e56f53b68f64b99071df1dec12e2c89663f6.1585694821.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585694821.git.briana.oursler@gmail.com>
References: <cover.1585694821.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Eliminate  nested if else statement, reduce code duplication, and
shorten long lines by creating a new variable, len, to determine
function input needed for s_uGetTxRsvTime.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 43 ++++++++++++-----------------------
 1 file changed, 14 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 0fbbe81bc2ca..27f4b710baea 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -239,11 +239,16 @@ s_uGetDataDuration(
 )
 {
 	bool bLastFrag = false;
-	unsigned int uAckTime = 0, uNextPktTime = 0;
+	unsigned int uAckTime = 0, uNextPktTime = 0, unsigned int len;
 
 	if (uFragIdx == (uMACfragNum - 1))
 		bLastFrag = true;
 
+	if (uFragIdx == (uMACfragNum - 2))
+		len = cbLastFragmentSize;
+	else
+		len = cbFrameLength;
+
 	switch (byDurType) {
 	case DATADUR_B:    /* DATADUR_B */
 		if (((uMACfragNum == 1)) || bLastFrag) {/* Non Frag or Last Frag */
@@ -254,10 +259,7 @@ s_uGetDataDuration(
 				return 0;
 			}
 		} else {/* First Frag or Mid Frag */
-			if (uFragIdx == (uMACfragNum - 2))
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
-			else
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
+			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
 
 			if (bNeedAck)
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
@@ -274,10 +276,7 @@ s_uGetDataDuration(
 				return 0;
 			}
 		} else {/* First Frag or Mid Frag */
-			if (uFragIdx == (uMACfragNum - 2))
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
-			else
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
+			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
 
 			if (bNeedAck)
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
@@ -300,16 +299,9 @@ s_uGetDataDuration(
 				wRate = RATE_54M;
 
 			if (byFBOption == AUTO_FB_0) {
-				if (uFragIdx == (uMACfragNum - 2))
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
-				else
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
-
-			} else { /* (byFBOption == AUTO_FB_1) */
-				if (uFragIdx == (uMACfragNum - 2))
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
-				else
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
+				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
+			} else {
+				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
 			}
 
 			if (bNeedAck)
@@ -333,16 +325,9 @@ s_uGetDataDuration(
 				wRate = RATE_54M;
 
 			if (byFBOption == AUTO_FB_0) {
-				if (uFragIdx == (uMACfragNum - 2))
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
-				else
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
-
-			} else { /* (byFBOption == AUTO_FB_1) */
-				if (uFragIdx == (uMACfragNum - 2))
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
-				else
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
+				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
+			} else {
+				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
 			}
 
 			if (bNeedAck)
-- 
2.24.1


