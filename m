X-GM-THRID: 6808004693646639104
X-Received: by 2002:a5b:30e:: with SMTP id j14mr2623306ybp.355.1585112114569;
        Tue, 24 Mar 2020 21:55:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:b9c9:: with SMTP id y9ls366197ybj.8.gmail; Tue, 24 Mar
 2020 21:55:13 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vssudXwa1zYaE+DLH5iSY7mPaRuGU6dAszIj5o4HztExtgCJKTe4gGI//pHB0dfYl5VIWRn
X-Received: by 2002:a25:25c4:: with SMTP id l187mr2836609ybl.365.1585112113091;
        Tue, 24 Mar 2020 21:55:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585112113; cv=none;
        d=google.com; s=arc-20160816;
        b=rOFG+IuNsirrxGFQ1aCl2uazwyyhFBCbovbjL3Z+DyVogwRuUVTDEZr4xl7iH12CNQ
         oWOTEKUmieXxnq9B6yHT2ts4Z1wv8dEG84Xy6dDqDU/bGrOugOt1wQtjcgGWdqSxhv6B
         JCT1me+BuhJpcf2QS/nmyDaXze98G3VSuHvIPm9VGnF1DxKEyI1MB3OlIaYNBT0kIeTE
         ylzGU7xBk208mysioWlzBigpmwlTe3H6O/zuoS5Nco9bEkf+iDNmyzt1+3SjmHc/87sf
         Pc95TMnUYPucRUbUU3/pAciIVsOAtCLMahakCAC9/xnA4oS+ZHL3wO9oxv8omy9xX2bT
         TKVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ABKXJ4QJ+rEGhL/GsgVW+j1AN/VMUH61BlME6/m2fPM=;
        b=kKrJHLJO7bPo59FeiT0psB/hbG+ShIKgRjLafSYAnZC10D8qLca2kocXiLhzgF6YCi
         SKCWTfkKYpQvp/A3+W77Lk2u8EZyGHRSkhlpaDJ1jaXBNHIo0cP20059cva8tWnZxrVn
         Fxt1J2MzA2wUHIJfTDDFTZFOE+4Dc816RUdbJHdE3xmEDGlM4FurIKSojuojBgJWogpa
         SYgN/A5DeAohBsSu1+e9Gxuc5UYFPQKEd8aTm0zqBdYkzev/Fw4AHWMYLcQ1PnMNaAS4
         jWJzVMV61AERXz7/rLAkkboyfZbkAmVRGmvyjgbM7yonUUKQKcMNebAk2ve0I+mbsf50
         CPrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="j/s/mKes";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y140si1056835ybe.1.2020.03.24.21.55.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 21:55:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="j/s/mKes";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id 23so473145pfj.1
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 21:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ABKXJ4QJ+rEGhL/GsgVW+j1AN/VMUH61BlME6/m2fPM=;
        b=j/s/mKesX5jdyTnYbGFkIuXHLdNysIX7yb+Pxy53neTr7IG1UT3X0QBF1xcMdBI3jj
         HrgreT2hH2bDLSgMY7ObU4i3Xrb8z0/N2VUHvqXdwqVVjSsjudPmXBUHPn2frU+fV+M5
         yYknr3Vw8Z3QjWSHr9pm+ZUg7oMZaoF3/32nKkkhCwJJXXioPHGPkZrKv1f/PLjAIZju
         aPT0YlOGRdiGDIuO2D2h1uvai89Fc6CNLo4NKfnj/droGRS+5Wcw4j/9Th/Frb+lnL8p
         s4b7p9XfriyK6d5NycaRD4u3r3gHiMRUWz3PEwiJ9GAwvVhz7o+FvWS0uwF92U/oDX9m
         Wpsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ABKXJ4QJ+rEGhL/GsgVW+j1AN/VMUH61BlME6/m2fPM=;
        b=j1d3h+AdAXT8xHET+ccB2u1XYP3Rvn+iCPNiYyV5Cx6+/DT8q8ODkgJ5hQo3zAXFic
         E/t3ptGC1QX8u0WWXd2hrbhFZyCThDB1O9AIsWUcuK8nig/VfLYjQHhEc0nF4oMKTdb1
         fNWufn6LqKWOTxJstFvqMGi/1B4z8cEhh8cESVZJ8zzYIbJus65fyRUShSFRNs3uzWdu
         9uqeiTrs4Di0P6K1kEqOGVqbmVrFpuzcDxKmh+tO0VA662aAfaJFlhiUtuVtZe8/iH7A
         8NY51b5mR8Pco/T3dUVgfSN1KWTTW76oRZCAIfQ4ZJdSmTI1YslNx8QYH6e3moKqmJVP
         f0XQ==
X-Gm-Message-State: ANhLgQ26Bs3mu3ZE9NF6nbi4mHprbpXlyW1FNCbSLCDTHl2veeCG9AG7
	qrcfry4S2Ucc+Mrq7H64g+s=
X-Received: by 2002:a62:d407:: with SMTP id a7mr1431112pfh.57.1585112112156;
        Tue, 24 Mar 2020 21:55:12 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id y4sm17264258pfe.31.2020.03.24.21.55.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 21:55:11 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Outreachy} [PATCH] Staging: vt6655: Refactor switch case statement.
Date: Tue, 24 Mar 2020 21:55:00 -0700
Message-Id: <20200325045500.88046-1-briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replaces nested if-else within switch case with ternary logic and variable
setting to limit returns. Exposes primary logic to aid
readability.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 101 +++++++++++++---------------------
 1 file changed, 39 insertions(+), 62 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 37fcc42ed000..eb7b20286ae2 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -240,6 +240,7 @@ s_uGetDataDuration(
 {
 	bool bLastFrag = false;
 	unsigned int uAckTime = 0, uNextPktTime = 0;
+	unsigned int len;
 
 	if (uFragIdx == (uMACfragNum - 1))
 		bLastFrag = true;
@@ -254,17 +255,18 @@ s_uGetDataDuration(
 				return 0;
 			}
 		} else {/* First Frag or Mid Frag */
-			if (uFragIdx == (uMACfragNum - 2))
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
-			else
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
+			len = (uMacfragNum - 2 == uFragIdx) ?
+				cbLastFragmentSize : cbFrameLength;
+			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
 
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
-				return pDevice->uSIFS + uAckTime + uNextPktTime;
+				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
+							   byPktType, 14, pDevice->byTopCCKBasicRate);
 			} else {
-				return pDevice->uSIFS + uNextPktTime;
+				uAckTime = 0;
 			}
+
+			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
 
@@ -277,17 +279,18 @@ s_uGetDataDuration(
 				return 0;
 			}
 		} else {/* First Frag or Mid Frag */
-			if (uFragIdx == (uMACfragNum - 2))
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
-			else
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
+			len = (uMacfragNum - 2 == uFragIdx) ?
+				cbLastFragmentSize : cbFrameLength;
+			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
 
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
-				return pDevice->uSIFS + uAckTime + uNextPktTime;
+				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
+							   byPktType, 14, pDevice->byTopOFDMBasicRate);
 			} else {
-				return pDevice->uSIFS + uNextPktTime;
+				uAckTime = 0;
 			}
+
+			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
 
@@ -300,35 +303,24 @@ s_uGetDataDuration(
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
-			}
+			if (wRate < RATE_18M)
+				wRate = RATE_18M;
+			else if (wRate > RATE_54M)
+				wRate = RATE_54M;
+
+			len = (uMacfragNum - 2 == uFragIdx) ?
+				cbLastFragmentSize : cbFrameLength;
+			 /* (byFBOption == AUTO_FB_0 || byFBOption == AUTO_FB_1) */
+			uNextPktTime = (byFBOption == AUTO_FB_0) ? s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt0[FB_RATE0][wRate - RATE_18M], bNeedAck) :
+						s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt1[FB_RATE0][wRate - RATE_18M], bNeedAck);
 
 			if (bNeedAck) {
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
-				return pDevice->uSIFS + uAckTime + uNextPktTime;
 			} else {
-				return pDevice->uSIFS + uNextPktTime;
+				uAckTime = 0;
 			}
+
+			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
 
@@ -341,34 +333,19 @@ s_uGetDataDuration(
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
-			}
+			len = (uMacfragNum - 2 == uFragIdx) ?
+				cbLastFragmentSize : cbFrameLength;
+			 /* (byFBOption == AUTO_FB_0 || byFBOption == AUTO_FB_1) */
+			uNextPktTime = (byFBOption == AUTO_FB_0) ? s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt0[FB_RATE0][wRate - RATE_18M], bNeedAck) :
+						s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt1[FB_RATE0][wRate - RATE_18M], bNeedAck)
+
 			if (bNeedAck) {
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
-				return pDevice->uSIFS + uAckTime + uNextPktTime;
 			} else {
-				return pDevice->uSIFS + uNextPktTime;
+				uAcktime = 0;
 			}
+
+			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
 
-- 
2.24.1


