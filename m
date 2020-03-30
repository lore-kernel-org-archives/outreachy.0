X-GM-THRID: 6809858298158776320
X-Received: by 2002:a17:90a:30c3:: with SMTP id h61mr13750298pjb.18.1585543699543;
        Sun, 29 Mar 2020 21:48:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:316:: with SMTP id 22ls11286834pgd.5.gmail; Sun, 29 Mar
 2020 21:48:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsN03/SVlID5mQjJaKvTaHEaoN6950LhHRPdwTx6bOAv5CMQ/9W/Yrm64iaepnap5XTVhgd
X-Received: by 2002:a63:313:: with SMTP id 19mr11158541pgd.340.1585543697842;
        Sun, 29 Mar 2020 21:48:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585543697; cv=none;
        d=google.com; s=arc-20160816;
        b=VsujEk1ic59Zgwl1Eq9/Dtckk3viJZJKkarwazpYMWwefMrvD7BtvdqkajrZHhAjpk
         MCpJsKcidtKY7whmJncgmzXzPla2iK6Hm8wBLKsdg21c6cxtxANmw6YHJBHOeSTwjqZ7
         rbRajhsAWoE9cCuiP/vsoCcewAVFMTtoWNumqW/N7GgdZNoJ/65VZ3vwcinvi/yMKKNs
         4xCwD1fjeITE/VZpQjqIyxJUA9cQYwy6iosqEtnlszoaSrGhmell/ZOdedM26kiREGr6
         s9OzWTcZnOZ5OFCqEN4Ap6m//RlQKQrXcYZlb5OqyUmY4b5uT8ez2Kc8ffQ0bfb90nFC
         VX9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9wD+QYaJDYrW80vXuEqSK5BXTRDCGSy0E9bvcqrBxTQ=;
        b=guOc9Y79OPxb6gJxhcI46TQgf7h7PaudcnnZ1h9zmfloF4GFJxNbWE6iCzm2mFP1gn
         xa3WUa3N3lcEJiQaKYSzFpQC8X0JuFvpVMcSCs62vAnHVWbHselOFaXL00NmeqyS7qG1
         ddS0ex+IwXmb2qMARx1BoQ8uE8w9y/K8z1tUdh0/GWYKojX/xp0VBAqtJn8AGC6MdhHg
         9/wf7ppDjbgs4UpXz2w5WHnUIY4kzCN87F+hGzcPtxVT2rz3D0iN5WF7WUgkXIBzZZ4B
         RZ6hT3EwyikRcQVzYqBgl1dR9UNS1SpHJFXfA/pxh6F0TDWPPpYTX5WN7mMGTzgu/UrI
         +B/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JBf4u1Q9;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id w18si1043736pfi.4.2020.03.29.21.48.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 21:48:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JBf4u1Q9;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id k191so8089684pgc.13
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2020 21:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9wD+QYaJDYrW80vXuEqSK5BXTRDCGSy0E9bvcqrBxTQ=;
        b=JBf4u1Q923+lN8HoDvPOM9WFFVoF8xifMWVAUIRIe5e4PTvWtY+cZy8iIb54HiCc/Z
         snGSo8rSPwXqDcEEY9Xssd6V6PrzZJwR/yADNuwY/g7vBRn0obXs7Gc4+6kmQRCG30Fp
         CwteiJp2rYxV7JYA64DnRnvEgxtz8HWy+X2O2BFqlz9elxG6ewDzpYkbC3gMIcfrFfwd
         ToU1LpZllRGuQoPqUabZcbRSQz8fQPI7lv8HBRGiUcYN3ubYWjJGcKYAImdztb9Q/ePD
         es0yWWaeafJc0NlzUWJkFvT25B4VFvT9ovlWQWTKucDBmg7fFDkZqyz6qIsOU5eNtN+g
         9KiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9wD+QYaJDYrW80vXuEqSK5BXTRDCGSy0E9bvcqrBxTQ=;
        b=arodp0tyQ1o9YJLPoANKyCTxhS7x825c+hyeHv8zoY0EIb7T5FuSf50uemoZqG0Xag
         2ugKkN1I6JsX8608xM9ky4aP3tMHSkCbSK5aJVmEYKsTReMl+KAarPtxskMGXqe+6TCa
         QuLIgEl6T+h7709D4cDhJyX/OfbOIJfCp79sR1fhUeaQA8klL5pulUO/doUr0gwQPKB2
         IwfEYzQXuJA4ABoU8Psj8LnFdEAOnBSw5f0RdJk6yJSWeVJ1YBXZ43E/Ti1fOjVhBu0S
         Tv6IvB1frlZD3CHmBB43+AR/1eRG3aoBv2VL2QYCg6YCHS0N7ptbjhtZrtI8QO+0DzO7
         9itA==
X-Gm-Message-State: AGi0PubnFttq97LZIbn47el68LGF9NEjf0/Ge44ryToSlfFOZLx5GwUy
	y1zf2gHn8kSLuNM+HZh89sI=
X-Received: by 2002:a63:6b45:: with SMTP id g66mr2788644pgc.99.1585543697517;
        Sun, 29 Mar 2020 21:48:17 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id k17sm9099460pfp.194.2020.03.29.21.48.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2020 21:48:17 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	julia.lawall@inria.fr,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [PATCH 3/4] Staging: vt6655: Create new variable len.
Date: Sun, 29 Mar 2020 21:48:01 -0700
Message-Id: <8e046065ad86e79b8133f6c24ecf055c3b5a897f.1585542564.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585542564.git.briana.oursler@gmail.com>
References: <cover.1585542564.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Create variable len to determine function input needed for
s_uGetTxRsvTime. Use len to eliminate a nested if else statement, reduce
code duplication, and shorten long lines found by checkpatch.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 44 +++++++++++++----------------------
 1 file changed, 16 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 4be867b95d9d..6068cf65e3fe 100644
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
@@ -254,10 +260,7 @@ s_uGetDataDuration(
 				return 0;
 			}
 		} else {/* First Frag or Mid Frag */
-			if (uFragIdx == (uMACfragNum - 2))
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
-			else
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
+			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
 
 			if (bNeedAck) {
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
@@ -278,10 +281,7 @@ s_uGetDataDuration(
 				return 0;
 			}
 		} else {/* First Frag or Mid Frag */
-			if (uFragIdx == (uMACfragNum - 2))
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
-			else
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
+			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
 
 			if (bNeedAck) {
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
@@ -308,16 +308,9 @@ s_uGetDataDuration(
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
 
 			if (bNeedAck) {
@@ -338,17 +331,11 @@ s_uGetDataDuration(
 				return 0;
 			}
 		} else { /* First Frag or Mid Frag */
+
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
 
 			if (bNeedAck) {
@@ -356,6 +343,7 @@ s_uGetDataDuration(
 			} else {
 				uAckTime = 0;
 			}
+
 			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
-- 
2.24.1


