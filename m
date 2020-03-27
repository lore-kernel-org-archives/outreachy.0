X-GM-THRID: 6808004693646639104
X-Received: by 2002:a17:902:7c13:: with SMTP id x19mr2460092pll.180.1585269197990;
        Thu, 26 Mar 2020 17:33:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:a35b:: with SMTP id v27ls4940787pgn.6.gmail; Thu, 26 Mar
 2020 17:33:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvmVdxZ+Rus5h9ipvdJu4od8FvNSIFlpeDwR9dKgvPF6IV/yWKiAOp3pQzdel2yOc0qyLxi
X-Received: by 2002:a65:6250:: with SMTP id q16mr1804028pgv.9.1585269196421;
        Thu, 26 Mar 2020 17:33:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585269196; cv=none;
        d=google.com; s=arc-20160816;
        b=Nz4/MVhI/9FpmYiNCNlUfIgQbPDNtmj6zKHwtuJOT/tQ1xvfLCkRqanM6OCh6/nRcO
         UAaYlKWmwiaAfwufhnFpnjoJ6E09dEKbbInaKi+9VttuRR+d3vVnI8WZ9Xz7ojV5b88B
         AhPRkb2yn4WrDwblM+fILGLvJZPOQwGR2O4bQ/r+UAeeMOdBX6P0c+LNGIdiRDDg6Dj5
         DgDgMZKjA0x6Op1F5D9hcwkvgqB8+kEtoPn+hilgMAlNziUfzcVP/gxgddGYKmp5OajK
         IL5u9xtWcFbekJ2pYBl0HS4/V9+/MuaoWR75rlPhGFCZM7z29gMXGBFZ7pqdrskhbhIJ
         GBrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+8zkTrSgvsJFfr04ZZsCS9RjsV/3+Zog/wRizxN8G9E=;
        b=znviHXExg5OFXSM/cG++vEqfhY3MaNyGXLWwCsxipy3H1Sd6AzacVpR0tE4DOHgDHD
         S4SAnwD+FXqXE/p/K9aY+Qheasf//8I0IVdVwYP0YAEFG+Wv5mjNjiVRjX1ZzbHhjCAn
         8fEECIC+T40QijV1MNVVno8SOAN8v0dOaHy0iJU41OzT/6T6wCHx6F1tGv2yfFwjzSZ1
         7Zc5eZNmZQJhJ3tItClgmlp+v8v6XFg9oY6Ryx4OBaJI5bmkxpNcakyGi/zZpzM0AZXu
         d3Bhh1NYV27zcJzSGiuWvhbpZv8tB3eNKIjyxhSXIfjTx71A2g5SuWvouRqLi0MVUEqg
         wnHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hMTpxsUu;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id f8si392885pjw.3.2020.03.26.17.33.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 17:33:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hMTpxsUu;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id h8so3737653pgs.9
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2020 17:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+8zkTrSgvsJFfr04ZZsCS9RjsV/3+Zog/wRizxN8G9E=;
        b=hMTpxsUuGFadxZP9Eo4UkYEobQ3jJ5TRyXHzK+rlFkqn6r6pIncwX4tU5HovwvYY7S
         0J6r/t75OxJGCBc0pOhi0EL2Z46E1NFiAdi5QEdEJydRNk5fNGlkjgCmkDJypGWD5YYR
         ClsE7Ipma2YGZln2MXoZupYlZ7Qxunf4cVJHLK5pOhBHFT54Misr/nr6i2BcqYyQn5UD
         xDHBnftiuSDn1dcncftE41VkRtP068xqtA3OuX3JplMXnYHlf0bLRonAaN5nQ70roHA0
         TcJsILt6Y1xKfeEe8U1cgt43XZnc3Z4rY6nnKpmYfIoIGwQRwI7+68uFT8vgim1/dEAl
         2Xlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+8zkTrSgvsJFfr04ZZsCS9RjsV/3+Zog/wRizxN8G9E=;
        b=qk194mDPvXgmA+GULbOo0JHYam5ehEfC8fPMgbczyCLXdSS2veRCL4b+qnJ4z/gaIy
         0knWPU6mN90fbXiLaSvvVODuA9Zqj63kDV3J469WpyrkcxF+sP/TOZc1qZI4+5Kta2NU
         b5SPAPtJ8hQreIwz2Do10gYcgeuRonUeGqy2GdgcjG8iBb4YKBTYWyMryeqv4G6L/Mzv
         LqJfdkvnQXFI81gqTvsZSvQwymmwouU6EKmsYRzIp02iIupvFb+Q+PSz9a8noaAIhkSK
         Yq1uDV9mlzc7zXXobYoyttRSqrPsyDsd88ifG0kV4Gx+hyC5SeXqj+Pfgu7cciXoZe4O
         6v5g==
X-Gm-Message-State: ANhLgQ0qnIEYatnDY0z9yxMdZ7mcx8DD98ScywroIQwHB0hV3ZF5PhRc
	BZL7GbJcpO3Ufh65Pe9ZBAo=
X-Received: by 2002:a63:2:: with SMTP id 2mr10904449pga.102.1585269195998;
        Thu, 26 Mar 2020 17:33:15 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id g18sm2595236pgh.42.2020.03.26.17.33.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 17:33:15 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [PATCH v2] Staging: vt6655: Refactor switch case statement.
Date: Thu, 26 Mar 2020 17:33:11 -0700
Message-Id: <20200327003311.73204-1-briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200325123545.GB3430583@kroah.com>
References: <20200325123545.GB3430583@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Pulls some logic branches above switch case and holds outcomes in
variables to improve readability and reduce code duplication within
switch case.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---

Changes in v2:
	- Removes ternary logic.
	  switch case.
	- Introduces 'flag' bool.
	- Moves len definition above switch case.

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


