X-GM-THRID: 6808004693646639104
X-Received: by 2002:a62:2b8a:: with SMTP id r132mr13031552pfr.56.1585277590319;
        Thu, 26 Mar 2020 19:53:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:3087:: with SMTP id w129ls5215879pfw.1.gmail; Thu, 26
 Mar 2020 19:53:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsHl9WYmlTqB5t59o1gJaoZbq/NkU4r28PJiClz2rEMCjwYYW0jxu8cnUaKAuF1DYcxDqiB
X-Received: by 2002:a65:62c7:: with SMTP id m7mr11889854pgv.380.1585277588566;
        Thu, 26 Mar 2020 19:53:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585277588; cv=none;
        d=google.com; s=arc-20160816;
        b=KKdSG6rOklek5N2cm9frYdPNV27PjmN6U5a41UvhMF3ECEDkklSC8co7y97Nx7HJUU
         3WVfjUaZ+9x4zhXu9P/7MgMG8exgdtTn25DmWkBayXETuFxx4kZ2cfCEuUZOym4JLM8k
         r6XkLHEJ7lw5mgUO5dFJRRmO3bqCL0WJjn8SHq1AOnJ7CUADC9FohuLGAVwyWpx+x4Je
         kwkfAPWY24+vjFKzuO1ZUDZcNXQWBMrYME+POHevKMuRivdam5kdkZ+k1UJm61YFHtLG
         f2uuvoilaJIwYD+5601vgCxreX4Y7FtHsx46+bRTCqiCnfFvaithdI4dTEjnc5f0OCUV
         R/PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=h0ZB/0YY3bVRvjz4ZTCalEiDEEAbZbv5re+o+0ISFoM=;
        b=AU4WSIZJoIWziVI0iNXn23IdfbmU0geVF6RFRrv4HziqYxuWQmNLsH5tSbiIsRxSz2
         coedIxbRw5aEBG3/RxISF8823KPJulVBpeYaCihnjt00ZTBQLu119TCL5RoRfVX2txzS
         LnZyst82Ijm9+pWlhmV6Dt33GnKlwLCwDEdLmGY7w/XXy2gaglNNKfQjpfkNxvaeI89A
         L+eDNdfemwdP8jqX1GTwLJzuSSeBzPza9u/9P/SIPr8Xe1ACpmBCa36a4TPwpFKLbR58
         7yDNBqFEwRXXBdBoYKC6Lmzunwt3gopn//gxcNOVQtOEOVZnIhRzj9f7GHUNdGygIpRY
         NnKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ixen71Gn;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id c125si297531pga.5.2020.03.26.19.53.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 19:53:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ixen71Gn;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id jz1so3903897pjb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2020 19:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=h0ZB/0YY3bVRvjz4ZTCalEiDEEAbZbv5re+o+0ISFoM=;
        b=Ixen71Gn1F6UdJRWSep73lnwPsHtY0yGE2mEntT6WvNfrPQy/2ltqBY7ZGO3PNfTTC
         mu61OV5syzwpIOjzEIA19rghu6T0O9QtPHq0HBxYG/C+vZZHHOtwsB+Y+mnVGSHgnsmy
         UOxIIZXTBdOY5+AZgHS+VC0tYaQSYI5uIE0gmrlvOa7bIct8+xeCe7khgnA4NIaUD6dm
         wxEGCMkP0nHU+LSu/riWRSUOwyLNjMhjUPEdBSo65LngxPpkGLY7D+JrjwZABfkIdyQT
         MHvtpDug6Xh2rq801MbHp8AU79ktgNrP+s4cw9xJpcgW+wK1ixDuafZOSATpuyF1/YXT
         uLEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=h0ZB/0YY3bVRvjz4ZTCalEiDEEAbZbv5re+o+0ISFoM=;
        b=GoPF8wK++1ZnyWLsmVpV9t9YmvoSokxBJ4h75JXzUiKaAe0xs6Rz6ciq5t6AFlrIne
         WxpHl/a1IlZ5ICetefoOBSa6GF0A955CLU6D0iVI2H9H55EjjqAfW5xnSlK/gvm+ZD7O
         aYSXG7L96YMyf9CtV1MQ2CSX7L+UPg3lW2ePFVMJ2HzP0G6yypPfUkprYKR50py+t80D
         V4Y8gfp/SoKK35ZuMk0aoOUB/lI0NDz0fjVTi1if7B3/ZHwmCKzwmdAGpXLr2qVf7sJi
         oAlO8W8iZWIAo64w4xkUzQIJgvqB+bw3Wg3jgmlccIWMqmP7jbyr0fvvT0/aTf/LL0c3
         C32g==
X-Gm-Message-State: ANhLgQ06Sikd1rcRKc12B6msnuprPys0GTAmf6ciNJjFiXLpsxGGK4R9
	AgT5/8GqhTLZp93f0CSFwMU=
X-Received: by 2002:a17:90b:1b05:: with SMTP id nu5mr3422200pjb.110.1585277588097;
        Thu, 26 Mar 2020 19:53:08 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id t60sm2709979pjb.9.2020.03.26.19.53.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 19:53:07 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: nramas@linux.microsoft.com,
	gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Outreachy][PATCH v3] Staging: vt6655: Refactor switch case statement.
Date: Thu, 26 Mar 2020 19:53:01 -0700
Message-Id: <20200327025301.74819-1-briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <584c79ff-3022-5b4d-e4e3-05a2a29befab@linux.microsoft.com>
References: <584c79ff-3022-5b4d-e4e3-05a2a29befab@linux.microsoft.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Pull some logic branches above switch case. Create variables to reduce
code duplication and improve readability.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---

Changes in v3:
	- Update grammar and meaning in patch description.

Changes in v2:
	- Remove ternary logic in switch case.
	- Introduce 'flag' bool.
	- Move len definition above switch case.

 drivers/staging/vt6655/rxtx.c | 128 ++++++++++++++++++----------------
 1 file changed, 66 insertions(+), 62 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 37fcc42ed000..5b45d66b7f39 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -239,11 +239,21 @@ s_uGetDataDuration(
 )
 {
 	bool bLastFrag = false;
+	bool flag = false;
 	unsigned int uAckTime = 0, uNextPktTime = 0;
+	unsigned int len;
 
 	if (uFragIdx == (uMACfragNum - 1))
 		bLastFrag = true;
 
+	if (uFragIdx == (uMACfragNum - 2))
+		len = cbLastFragmentSize;
+	else
+		len = cbFrameLength;
+
+	if (byFBOption == AUTO_FB_0)
+		flag = true;
+
 	switch (byDurType) {
 	case DATADUR_B:    /* DATADUR_B */
 		if (((uMACfragNum == 1)) || bLastFrag) {/* Non Frag or Last Frag */
@@ -254,17 +264,17 @@ s_uGetDataDuration(
 				return 0;
 			}
 		} else {/* First Frag or Mid Frag */
-			if (uFragIdx == (uMACfragNum - 2))
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
-			else
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
+			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
 
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
-				return pDevice->uSIFS + uAckTime + uNextPktTime;
+				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
+							   byPktType, 14,
+							   pDevice->byTopCCKBasicRate);
 			} else {
-				return pDevice->uSIFS + uNextPktTime;
+				uAckTime = 0;
 			}
+
+			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
 
@@ -277,17 +287,18 @@ s_uGetDataDuration(
 				return 0;
 			}
 		} else {/* First Frag or Mid Frag */
-			if (uFragIdx == (uMACfragNum - 2))
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
-			else
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
+			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len,
+						       wRate, bNeedAck);
 
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
-				return pDevice->uSIFS + uAckTime + uNextPktTime;
+				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
+							   byPktType, 14,
+							   pDevice->byTopOFDMBasicRate);
 			} else {
-				return pDevice->uSIFS + uNextPktTime;
+				uAckTime = 0;
 			}
+
+			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
 
@@ -300,35 +311,33 @@ s_uGetDataDuration(
 				return 0;
 			}
 		} else { /* First Frag or Mid Frag */
-			if (byFBOption == AUTO_FB_0) {
-				if (wRate < RATE_18M)
-					wRate = RATE_18M;
-				else if (wRate > RATE_54M)
-					wRate = RATE_54M;
-
-				if (uFragIdx == (uMACfragNum - 2))
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
-				else
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
-
-			} else { /* (byFBOption == AUTO_FB_1) */
-				if (wRate < RATE_18M)
-					wRate = RATE_18M;
-				else if (wRate > RATE_54M)
-					wRate = RATE_54M;
-
-				if (uFragIdx == (uMACfragNum - 2))
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
-				else
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
+			if (wRate < RATE_18M)
+				wRate = RATE_18M;
+			else if (wRate > RATE_54M)
+				wRate = RATE_54M;
+
+			 /* flag true if (byFBOption == AUTO_FB_0) */
+			if (flag) {
+				uNextPktTime = s_uGetTxRsvTime(pDevice,
+							       byPktType, len,
+							       wFB_Opt0[FB_RATE0][wRate - RATE_18M],
+							       bNeedAck);
+			} else {
+				uNextPktTime = s_uGetTxRsvTime(pDevice,
+							       byPktType, len,
+							       wFB_Opt1[FB_RATE0][wRate - RATE_18M],
+							       bNeedAck);
 			}
 
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
-				return pDevice->uSIFS + uAckTime + uNextPktTime;
+				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
+							   byPktType, 14,
+							   pDevice->byTopOFDMBasicRate);
 			} else {
-				return pDevice->uSIFS + uNextPktTime;
+				uAckTime = 0;
 			}
+
+			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
 
@@ -341,34 +350,29 @@ s_uGetDataDuration(
 				return 0;
 			}
 		} else { /* First Frag or Mid Frag */
-			if (byFBOption == AUTO_FB_0) {
-				if (wRate < RATE_18M)
-					wRate = RATE_18M;
-				else if (wRate > RATE_54M)
-					wRate = RATE_54M;
-
-				if (uFragIdx == (uMACfragNum - 2))
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
-				else
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
-
-			} else { /* (byFBOption == AUTO_FB_1) */
-				if (wRate < RATE_18M)
-					wRate = RATE_18M;
-				else if (wRate > RATE_54M)
-					wRate = RATE_54M;
-
-				if (uFragIdx == (uMACfragNum - 2))
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
-				else
-					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
+
+			 /* flag true if (byFBOption == AUTO_FB_0) */
+			if (flag) {
+				uNextPktTime = s_uGetTxRsvTime(pDevice,
+							       byPktType, len,
+							       wFB_Opt0[FB_RATE0][wRate - RATE_18M],
+							       bNeedAck);
+			} else {
+				uNextPktTime = s_uGetTxRsvTime(pDevice,
+							       byPktType, len,
+							       wFB_Opt1[FB_RATE0][wRate - RATE_18M],
+							       bNeedAck);
 			}
+
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
-				return pDevice->uSIFS + uAckTime + uNextPktTime;
+				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
+							   byPktType, 14,
+							   pDevice->byTopOFDMBasicRate);
 			} else {
-				return pDevice->uSIFS + uNextPktTime;
+				uAckTime = 0;
 			}
+
+			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
 
-- 
2.24.1


