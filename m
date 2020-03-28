X-GM-THRID: 6808004693646639104
X-Received: by 2002:a67:eed3:: with SMTP id o19mr1699211vsp.9.1585372209558;
        Fri, 27 Mar 2020 22:10:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:8797:: with SMTP id j145ls1834373vsd.3.gmail; Fri, 27
 Mar 2020 22:10:08 -0700 (PDT)
X-Google-Smtp-Source: APiQypLIxvkJ+ZsSsbsrsASpcwS95u7clHSsT0Dx15opUGv9jD22N0lJD+1zq3w53ns7rlEAUw+2
X-Received: by 2002:a67:20c1:: with SMTP id g184mr1785592vsg.178.1585372208072;
        Fri, 27 Mar 2020 22:10:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585372208; cv=none;
        d=google.com; s=arc-20160816;
        b=rTm5aghj8Xh3fteRFB/osOxpCGID3q0adFWDdYT78rWdin1RgvNKTdcmXHyH8XU26q
         UtezSrRFZIAAXFCE8nh33reIqpET/GTzj8Vs3usuPQQBN+VGcRWiO4Vc4Uhg2mjUI28r
         qC4jypBwcLDToT4dBo8GXHGzAb/9HA/l9nFp/c5hBHFX7jqJ8A1e56ooSZYZ/eoYTCHt
         uXQltrvTBi6kk/yf8Eup05g028D9sCYob+DPJ0tmmIhQGDUZMeR2/YTdBEb8nKQ7dCVs
         Gh962LgrPI0hYfyxpFwPTXGiq1buSFq9+a0LXONaJbhuL8A4PkkcHe3rk/qwToMMuQd1
         BFrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CWyroGu1rycBv8srz3gos1FUG8gdq78pWpKsi6YkOpA=;
        b=zJXJXVdlE4643vv/qm7uZ6YAkZ4r3ehVKVVwEaZxOIHKH3mLaghuE3T2ENGcQ8LqGd
         UFdOuPxXs2+u6oYU7Daeud7X9VSg2m+zXE9a5qLtWAY518Wcxs/UxtDUYcJC6A1zhFFr
         7NWa5Rkzjg/62jDgd8HeWGoQIc0Y9IlZy+Zf8P07ZXiUCApQ/YdRBf1irFP6bv7gXN9J
         iZfAxnNtqRDYfPt0tsejBStDICFBX/obcngR0S3GiiK9Gu9hdT2a6xdKCR7TVb2QXEQ2
         TOghXmb4D1YI/Qr7Mx0sgkosl0YRbM/OXBm8TA9V5zGmyYkFrZf3KlXB3mex2ZPPppUe
         U3iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="nZfJ/4Uk";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id w12si566864uaq.0.2020.03.27.22.10.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 22:10:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="nZfJ/4Uk";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x430.google.com with SMTP id z65so5607502pfz.8
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2020 22:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CWyroGu1rycBv8srz3gos1FUG8gdq78pWpKsi6YkOpA=;
        b=nZfJ/4UktxUlpVZS98ukcBPUOTlzRii/2giCaTJ+FcwEk6eM2ce9CHz7jK8nQBFk5r
         KhvIhc+racLDDAJQs/sVVap3b8O+SPyDd7t5dKrz+/v4OQsonJdAbDYHvR60tb2AlsCD
         gDJ+yvo9VqlUrig2yAVbuFxh72R44PyEg3l2jXQ67HPbRayE+k6yNq4n/sRnlp+JKMUl
         XE7aJM0z6abZ+iE6wWV54zoyFbLKj2gK5OKAGx1SnjpcT1nXZUvThPvspzmBNVkI9kTW
         ygKl2XJOP6m3Y4lFEC2XMPJyOY+prmc8sz7Ptb5S9jEYy7bdOzb8IKSK01ZrRu/t5SJi
         yTjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CWyroGu1rycBv8srz3gos1FUG8gdq78pWpKsi6YkOpA=;
        b=Xm+E6AOtV0n2rG7knDA0f3IG/BEJ027vx8fxrenQfyG6HrysprT9+A4TY3T6NWNuVE
         leX7juJ4i0HX/VGXUscn/YpBpO+djE7QuySE4xsdQzv8u4XigmjcKZFYbpHz90yg1Nc0
         Lnplhd302OxuenYDTumvliWyMj8Ofo1MFe3W6OtiGZSvHvUtZA1by1WI4Do9l4g6H6qh
         YoAETiH5K5UDbcGdyy2EF1UyYXGU6eioe0cZ5Lg4D4do1cGtg5TbUbqCkeUNEIn31YSm
         8enAb4RtPBMoS50+DfH9O7IIzu7YL4QKuugppiLGsXcDBsPBJHI5CY+tG8y3uDV0oA1A
         fGFw==
X-Gm-Message-State: ANhLgQ3Ll1UgtJq0BP573TmjaLtiOtoxEvrKea7r+TMyoimt6E3Hgqv5
	qF8iZUXNlO9yGBES2LboEeE=
X-Received: by 2002:aa7:8815:: with SMTP id c21mr2656637pfo.86.1585372207018;
        Fri, 27 Mar 2020 22:10:07 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id iq14sm2307006pjb.43.2020.03.27.22.10.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2020 22:10:06 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: julia.lawall@inria.fr,
	gregkh@linuxfoundation.org,
	nramas@linux.microsoft.com,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [patch v5] Staging: vt6655: Reduce statement complexity
Date: Fri, 27 Mar 2020 22:10:04 -0700
Message-Id: <20200328051004.40756-1-briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <alpine.DEB.2.21.2003272237070.2709@hadrien>
References: <alpine.DEB.2.21.2003272237070.2709@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Move duplicated code out of nested if else statements and make other
simplifying changes, shortening line length and improving readability.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---

Changes in v5:
	- Update patch description to better describe changes.

Changes in v4:
	- Remove 'flag' bool and return comparison to switch case.
	- Remove comment.
	- Update path description to better describe changes.

Changes in v3:
	- Update grammar and meaning in patch description.

Changes in v2:
	- Remove ternary logic in switch case.
	- Introduce 'flag' bool.
	- Move len definition above switch case.
 drivers/staging/vt6655/rxtx.c | 118 +++++++++++++++++-----------------
 1 file changed, 58 insertions(+), 60 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 37fcc42ed000..9a6abe8613e6 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -240,10 +240,16 @@ s_uGetDataDuration(
 {
 	bool bLastFrag = false;
 	unsigned int uAckTime = 0, uNextPktTime = 0;
+	unsigned int len;
 
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
@@ -254,17 +260,17 @@ s_uGetDataDuration(
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
 
@@ -277,17 +283,18 @@ s_uGetDataDuration(
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
 
@@ -300,35 +307,32 @@ s_uGetDataDuration(
 				return 0;
 			}
 		} else { /* First Frag or Mid Frag */
+			if (wRate < RATE_18M)
+				wRate = RATE_18M;
+			else if (wRate > RATE_54M)
+				wRate = RATE_54M;
+
 			if (byFBOption == AUTO_FB_0) {
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
 
@@ -341,34 +345,28 @@ s_uGetDataDuration(
 				return 0;
 			}
 		} else { /* First Frag or Mid Frag */
+
 			if (byFBOption == AUTO_FB_0) {
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


