X-GM-THRID: 6808004693646639104
X-Received: by 2002:a17:902:8213:: with SMTP id x19mr1005862pln.161.1585344778856;
        Fri, 27 Mar 2020 14:32:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:6542:: with SMTP id d2ls7210108pln.2.gmail; Fri, 27
 Mar 2020 14:32:57 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vveOBD4fZwZIljjIzS7hg+YfNdWDRXTCm/Zwvp36QxCNJl1a0GRaDDVCsnOgfltf4v+FXTt
X-Received: by 2002:a17:90a:4809:: with SMTP id a9mr1517669pjh.73.1585344777206;
        Fri, 27 Mar 2020 14:32:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585344777; cv=none;
        d=google.com; s=arc-20160816;
        b=kPjUqj9N9Bpztr6gD4YIZS7DknJHGLBrPEufIft900/O7kig1BwLtckc+V1aQ1geQd
         yj/eUpAOEz5MbFgX9hgEkSQkqYLlKJoeGi0Oz62eziQiARn1rufdMcv/R1tS+Jeen3Bs
         KpAu5hbmfd5sBLDeH1M5dvTd1WXr0ECbOzpy/0HoXO7S0l/z9c5i8ySRgLfgZDmpEEqH
         g2C3twjBXtXPjqJ6864Wu6H77gL9bnaPA8PPDJ9HqFMY69vzTMB8Im1Do63Ei56y8O1g
         K1nXOp25XM7iRbCD/BwCvb+NuW1S96gX3amZP/SZH+YxwcsUdNw9z7F62mARgWkiJPAa
         eTMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=l4WiH2kuYOeCfZrZd3aojrGehRDzWccQEVCzJ2qEjcs=;
        b=vpFQghwrgIx0zGeEt2stvyLqL25JavJLQXPgKhiKv65BArpEbRqn+yWZoVGO8ZzCAE
         Uoa4prPbu002Jyy080v6Tj6lJGWY8f+m81jopWe3FAi7YjZ5Hsx1xjMCgp1AQLLRM8mg
         PQIxOO5/thjcYws3Z0Gj1xo4TpOXCY/dv8sXwDcv7ZChtSEhqX+OyrvuxxLhyvGwy2HF
         R00tk/bsimVcRYXvDMstcjy65oz7/BzTUBXjn5Ev+/Coo0ZQNWj9eisun9PI/ccTC6gX
         zeFe7ScTydc0/aKDIuhvkPj92DBeEW4agEicPmlX0Se5EOsPlO12fVQB0ajBeh3e8GCh
         dYSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ri8Z6gH1;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id c16si585844pgw.4.2020.03.27.14.32.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 14:32:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ri8Z6gH1;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x636.google.com with SMTP id g2so3935175plo.3
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2020 14:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=l4WiH2kuYOeCfZrZd3aojrGehRDzWccQEVCzJ2qEjcs=;
        b=ri8Z6gH1oB9590kRT2PaqGH5Y30GPKbj+b2qCfZch8gbYkT8pH6e1A+OKAzVxpOe8q
         AywXurUxZrIubP1CI4a7+ld5QuAZ/4GzKC6ToB1hW9N1U3DnNOFBPccp8yFv+3Fgp5iV
         cb3RcYNN9v7Qhd8VBss7FLdvhIgd1nJEWlTJUW4Ll0NsdefNEmSE4qWeEgz+HIphJLSN
         PxQoZNXWTvw8RwWzkYxfcQ7Op9jUKvp6YtDhLMTYgTuBkbH2uxxeHdmbR6Xh72/WwHsO
         DeaWhSSyYDxSDYivx2XCoL42/jeKrpsjz+a2HlHjGEw6wpjJF0hyCXx6E1iJeqFC3i5M
         aqTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=l4WiH2kuYOeCfZrZd3aojrGehRDzWccQEVCzJ2qEjcs=;
        b=R8sFS/Tg1npBwpZKeXVOTCSZRFBxGnGvqytR2HGR/+KF7IqqyYhxVm0K4J7onCQAVD
         /AK6K0ZRNpvXu+bgeFNNnALEURNf8tHpzZAkBZDvXoQd8Y5IAz5sKApE23B65fPszoUa
         kEmcLCLFT3QYBVtW3bWtth60ACdR5qjv8oUXzMb/j3UnqhPfzOSip8uorfVwzQcSQEEn
         JGCzu+Yqh7K6t7MUmRF6phq/I1Yg9FE6KFvQUWhl22GdTxwNU278v2uDA8YCv7/icAD2
         zwCarcQfYQDrkQ22CxZUDaebWV27VV6zp13jWC7nt6p6Jjwp45ME8wdXBhW8drspVqsF
         i3lg==
X-Gm-Message-State: ANhLgQ3H2mDvEU36AYxyt9btCAT7UDZ5/kjlLl9w7Swf8w+V0zdLOFov
	1S/KlHjin3JmMwz5VkPf6+A=
X-Received: by 2002:a17:90a:4497:: with SMTP id t23mr1480528pjg.102.1585344776706;
        Fri, 27 Mar 2020 14:32:56 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id 67sm4790109pfe.168.2020.03.27.14.32.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2020 14:32:56 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: gregkh@linuxfoundation.org,
	nramas@linux.microsoft.com,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Outreachy][Patch v4] Staging: vt6655: Refactor switch case statement.
Date: Fri, 27 Mar 2020 14:32:53 -0700
Message-Id: <20200327213253.22230-1-briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200327090043.GA1663713@kroah.com>
References: <20200327090043.GA1663713@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Simplify switch case statement to improve readability and limit code
duplication. Define len variable for next packet time function input.
Lift logic out of nested if else. Format long lines.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---

Changes in v4:
	- Remove 'flag' bool and return comparison to switch case.
	- Remove comment.
	- Update patch description to better describe changes.

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


