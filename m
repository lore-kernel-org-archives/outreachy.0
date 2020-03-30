X-GM-THRID: 6809858298158776320
X-Received: by 2002:a25:e5c6:: with SMTP id c189mr17541863ybh.354.1585543698141;
        Sun, 29 Mar 2020 21:48:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:25d4:: with SMTP id l203ls5428172ybl.3.gmail; Sun, 29
 Mar 2020 21:48:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vut4c6dQEyNnJh/YrffNn13XnJTD6tTYXRxp83PxUf/xNMIXeTkgifnE2KJqadECvaQDAyl
X-Received: by 2002:a25:824d:: with SMTP id d13mr18394603ybn.143.1585543696709;
        Sun, 29 Mar 2020 21:48:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585543696; cv=none;
        d=google.com; s=arc-20160816;
        b=vzugTCFXdaB5TrzeLEzWZo/xk6P8dU5ouyYnEehjmRfPNjlqjlLRkKfZFLAVZFswVb
         1OjVmOe6RFm6GRYghO1diY3j1VVnbBG6XTe0dMZtIqV4bM0KHQELwixlzCrV/vYoUwnx
         mrcIxTgyQlvGMGuScpdRnl8az6zXhJb+EzR0aRR5F7Z83TJEcjlArw+jKJZ5uZQRo64u
         Hf+cAjvp3VmqC7/xJh+mOOnGN1IDMU97jG+InDj2z+vqaEuHzLCZMPzy5/K+bGS7w3Yn
         K79j+rie+mliDdVL+YlNFteebP/kZKvT71TNaaMPYCw31AJ3xIwFyZUOHYlPwe6ur/HZ
         P53g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ahoM4/Lmp7WFQ88qYdmZYNhcYvVMnbHZMz/ltHvDOas=;
        b=tCmpaPB0SKPduSCy4R5/dJhI9/hX83I9sON40++UXcoOnmdmw10fWxFefgU5CZ8vck
         nYU4fymtiX0WU4SsqjFN+0YN5IGLzRo071HZQkPAxOg2HcPwpyh9g4Q77e87bWzdbYzC
         BygxskI1vZRL0iU45xFQlRgOrrxAlZguCJevyp3Wykxflhb6P5NTwrkoySAfl1YSYovS
         TnHrlOheeagGU/tP3zBrQdPw8XKxmAiKlYyWAwceULmfG5QATcATOUeBZ8kbZ8eZz2pb
         s+mKPPiiCx0rKqYiRtweSMTLhL9w8skFGoiKAnR8iy+mS6bIAgfiL2sZ7bfNAIRZ9/Z6
         SYIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JZSU3kWF;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id y140si446460ybe.1.2020.03.29.21.48.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 21:48:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JZSU3kWF;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id 23so8024400pfj.1
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2020 21:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ahoM4/Lmp7WFQ88qYdmZYNhcYvVMnbHZMz/ltHvDOas=;
        b=JZSU3kWFqr6ESJLIvvb49MEPGGdizeanFv+rxpKubr6M3uwS5q8F7lnNIIYvptTqtw
         XgeowEwqai1Jg2xrxwAyyEoAskuZ0sDLVSokU9OjiJ2jmNuTBkydwwB5Oc3tUxv+469i
         MYl1iivaU4OPa+cqwWVzwCnbxCc53tMYhlAuM3lFkNQJAUP0F40jl6AgTQ29bsfOuuAI
         MnSFWh3mPi09QRErgaOi39c+w2AgyQP2KkmSGt6nqK/mSz4OOzt3nrRH8MX3HPElaBvQ
         i4awQisGmMuUWzv2WRyOzFDIHi0+ubvwk/UL2qYL2JfqKoIQZKO/3gNjAjqBshhCi5vc
         wkvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ahoM4/Lmp7WFQ88qYdmZYNhcYvVMnbHZMz/ltHvDOas=;
        b=TikVeFnm/lYtichOu/ClE/f/JLdmMHMjJUa7MqMttMq3MTocqoneZ0UGCT9lP7NnJ2
         7fHz0Ji5kvC2xYMZaCLAFjw5FDB8VFxOK69Af3LeotgRRr7lpDb7mGqLIVSdk8GpALHN
         McHfO5nhsPIO5jf3krxjFpo1MHRvjcV02h9f0qKPloHGx0wt6gGCjzbQnC69s9MEWs9V
         2+T1Ap/3c6qNu8r9xt1rj9kBA8+79dHHMWTMMyBBhfjTcoTKp097x2kPE0xtjwSp0sBg
         DB2FchoRyqZsFd8oW4NxJyKiUxXEuUw+Qs+OOPkrxbBEAF6CZswhRLoQHBv4MK44a+Q7
         Tdhw==
X-Gm-Message-State: ANhLgQ33G9MDhxOD2G86yFEOi3ycFjnaDFiLmY/+0JiSQZDAgqiRjCMs
	aa8+qqKzHieCHgneY35RYaA=
X-Received: by 2002:a65:68c9:: with SMTP id k9mr11681462pgt.355.1585543695870;
        Sun, 29 Mar 2020 21:48:15 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id k17sm9099460pfp.194.2020.03.29.21.48.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2020 21:48:15 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	julia.lawall@inria.fr,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [PATCH 1/4] Staging: vt6655: Limit return statements.
Date: Sun, 29 Mar 2020 21:47:59 -0700
Message-Id: <d1cfc9acb3edd0b53516211d2c102d73cbee39e4.1585542564.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585542564.git.briana.oursler@gmail.com>
References: <cover.1585542564.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Limit return statements within context of switch case to improve
readability.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 37fcc42ed000..f9e2087d2242 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -261,10 +261,11 @@ s_uGetDataDuration(
 
 			if (bNeedAck) {
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
-				return pDevice->uSIFS + uAckTime + uNextPktTime;
 			} else {
-				return pDevice->uSIFS + uNextPktTime;
+				uAckTime = 0;
 			}
+
+			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
 
@@ -284,10 +285,11 @@ s_uGetDataDuration(
 
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
 
@@ -325,10 +327,10 @@ s_uGetDataDuration(
 
 			if (bNeedAck) {
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
-				return pDevice->uSIFS + uAckTime + uNextPktTime;
 			} else {
-				return pDevice->uSIFS + uNextPktTime;
+				uAckTime = 0;
 			}
+			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
 
@@ -365,10 +367,10 @@ s_uGetDataDuration(
 			}
 			if (bNeedAck) {
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
-				return pDevice->uSIFS + uAckTime + uNextPktTime;
 			} else {
-				return pDevice->uSIFS + uNextPktTime;
+				uAckTime = 0;
 			}
+			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
 
-- 
2.24.1


