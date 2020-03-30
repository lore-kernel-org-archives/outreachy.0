X-GM-THRID: 6809858298158776320
X-Received: by 2002:ac8:7396:: with SMTP id t22mr10204892qtp.15.1585543700441;
        Sun, 29 Mar 2020 21:48:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:ee22:: with SMTP id l2ls4379257qvs.5.gmail; Sun, 29 Mar
 2020 21:48:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsEeizy0TPR4bcodN8Dmz18GgrKRq4w+ZX2mHQx75UigPQ3XsmmGwDJBXY1VUBJGmvh1wVo
X-Received: by 2002:a05:6214:1781:: with SMTP id ct1mr10300496qvb.87.1585543699217;
        Sun, 29 Mar 2020 21:48:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585543699; cv=none;
        d=google.com; s=arc-20160816;
        b=CJpZdXdLoAQcBSSQnIRw/Vl3Fxsrl6Tal4NUeY6NQgNvSgh38du1dGwNR6hjJATDw3
         quqMIAvmu27Y1sYF6tflY2tLpHSDJdxsDtgUhxw7G1IIz4UP9TwlZ8WwsYYseaE2BtBd
         s54u4rPaW5YKZ1/vBxEt6wvP0mhPKKOnRqHTBrAh8PQi16GzNTz3F7FEn/uAmKWdNtX2
         9fpKiCnSoczNvuCj867Hy9cZRtehPl32Py5uacWVY+r1quNKj0sfAmlEB55ZIkmoQ3NV
         o0nzn7xMOpjvC7nJDw6ERKmhpBOTmyRUdmhSY6PA0/v1vjCpvtbsjCTNLyzyYQQymdif
         mHsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2RlagNFnuTAF1uEPAgqu5/iN3IblhJiNK4vC+qyqOWE=;
        b=0LktImHAHk8sltsbKRGPG67f6jJR4Eyxx2g/Li9EdSDyFQTDMHlmaSZMXdSTHMufEd
         VvAxNd96BQj7tSB7+B22orZ4TG2hIET2cGGP1LidsHMwevGUclGhk5d0WFElGaWq9qPl
         223dzwgHTImG5KviVw/EoC16GnaDR9EgrgJ8wnzzjBPwwalfBc90rxrFR66VPlDzuE1j
         BBReIWBfWPWnyZu6wrr+NG8EsDDKBI/8UWOrZS2Apy5yuw1P77jpDd4djvDuGaBFOkYD
         Ophyp+xp8jI7e2/dGG2FDxS1aUukiUkB6Wy+EgwGBFSMnR0cmKHPi/uTFetf+U8a5M9H
         8VjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M+wYPawX;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id j56si1073174qta.0.2020.03.29.21.48.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 21:48:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M+wYPawX;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id b1so8099527pgm.8
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2020 21:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2RlagNFnuTAF1uEPAgqu5/iN3IblhJiNK4vC+qyqOWE=;
        b=M+wYPawX8HBHSQtgc5vg8+Pf4VaEtVRu4hFw5LcGQKzii1EKZW9BjmGXnvKrHM46hh
         cAKgrZQ7Dx26umxVpO/QjNRIYEYwhIloL9ZhFXwVjdCyCGKNFROAQsS/wCJ7j4Wci2je
         Yw5pbdFJu4vVv5RM66xSI12VVbZs+JVaFmOh0oKiAP1Pcn9xlCMDDPpwf9iqis48z9eQ
         IUtVO+eFYsyt41S4j6P6u+ploOjukmDoTljhyCix5cMOMQ7fiaImAdjS951kKV6QJqCj
         RgOqM3N0LpSxnWC8kOfj4sN8waQ1gns+vQJHGuTzIbiJ0zZYUnc7NqeqOJ/HvgN6imj5
         RFag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2RlagNFnuTAF1uEPAgqu5/iN3IblhJiNK4vC+qyqOWE=;
        b=hNiQrZL0Iyy1ROLpiequZrQhAM+2/fhckFcaN5xfUUN1HaDF4LKhOcXNTg+K0zvnbU
         xeqTRL20R6P1STFR1ME9vkHeLeVPqi4wxgpocbhddF615/PGehtmXvkuxwPPNEQiDsNh
         eVgo1Awi9c2hU0N7dzjgR2EAeJPEGgrMVYV1H9i9KEI2vb4PJaVZE34HSQdR3+ClsHAq
         q/91OfXyyPnhTSQ0ukhSKthMuU1hYAqglTI//DskerUSc+cxSFIJqhSBFkiE1O1M06RO
         KY+JHIkGHlCkULOp/q2fq//mWPX563iQeqC3wuUU3SXy5QwGhtDcE3Hyxtx1mAKxQq7j
         730g==
X-Gm-Message-State: ANhLgQ1hERjKDeivLJzyCFsNmHlYC7DKLzclmDbFzMXXYcCmvPyp/i7P
	lrhJDaDC3mRTaH5J64tznSQ=
X-Received: by 2002:aa7:8643:: with SMTP id a3mr11797576pfo.133.1585543698308;
        Sun, 29 Mar 2020 21:48:18 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id k17sm9099460pfp.194.2020.03.29.21.48.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2020 21:48:17 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	julia.lawall@inria.fr,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [PATCH 4/4] Staging: vt6655: Format spaces.
Date: Sun, 29 Mar 2020 21:48:02 -0700
Message-Id: <ac7a3d32b8a46198d48582e3e249c6e20d8090e1.1585542564.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585542564.git.briana.oursler@gmail.com>
References: <cover.1585542564.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add spaces around '-' operator and format long lines. Formatting issue
found by checkpatch.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 40 +++++++++++++++++++++++++++--------
 1 file changed, 31 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 6068cf65e3fe..9a6abe8613e6 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -263,7 +263,9 @@ s_uGetDataDuration(
 			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
 
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
+							   byPktType, 14,
+							   pDevice->byTopCCKBasicRate);
 			} else {
 				uAckTime = 0;
 			}
@@ -281,10 +283,13 @@ s_uGetDataDuration(
 				return 0;
 			}
 		} else {/* First Frag or Mid Frag */
-			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
+			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len,
+						       wRate, bNeedAck);
 
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
+							   byPktType, 14,
+							   pDevice->byTopOFDMBasicRate);
 			} else {
 				uAckTime = 0;
 			}
@@ -308,16 +313,25 @@ s_uGetDataDuration(
 				wRate = RATE_54M;
 
 			if (byFBOption == AUTO_FB_0) {
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
+				uNextPktTime = s_uGetTxRsvTime(pDevice,
+							       byPktType, len,
+							       wFB_Opt0[FB_RATE0][wRate - RATE_18M],
+							       bNeedAck);
 			} else {
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
+				uNextPktTime = s_uGetTxRsvTime(pDevice,
+							       byPktType, len,
+							       wFB_Opt1[FB_RATE0][wRate - RATE_18M],
+							       bNeedAck);
 			}
 
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
+							   byPktType, 14,
+							   pDevice->byTopOFDMBasicRate);
 			} else {
 				uAckTime = 0;
 			}
+
 			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
@@ -333,13 +347,21 @@ s_uGetDataDuration(
 		} else { /* First Frag or Mid Frag */
 
 			if (byFBOption == AUTO_FB_0) {
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
+				uNextPktTime = s_uGetTxRsvTime(pDevice,
+							       byPktType, len,
+							       wFB_Opt0[FB_RATE0][wRate - RATE_18M],
+							       bNeedAck);
 			} else {
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
+				uNextPktTime = s_uGetTxRsvTime(pDevice,
+							       byPktType, len,
+							       wFB_Opt1[FB_RATE0][wRate - RATE_18M],
+							       bNeedAck);
 			}
 
 			if (bNeedAck) {
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
+							   byPktType, 14,
+							   pDevice->byTopOFDMBasicRate);
 			} else {
 				uAckTime = 0;
 			}
-- 
2.24.1


