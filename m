X-GM-THRID: 6810515093003960320
X-Received: by 2002:a67:f3d3:: with SMTP id j19mr15452223vsn.190.1585696615448;
        Tue, 31 Mar 2020 16:16:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:b8:: with SMTP id 53ls1668980uaj.10.gmail; Tue, 31 Mar
 2020 16:16:54 -0700 (PDT)
X-Google-Smtp-Source: APiQypJvH8oozTkWo5lKf64uGxSXj9vZJvzibYnI9eD4OaGP9qnm09f6l6GhJJp5dT6T/zxpJY7r
X-Received: by 2002:a9f:35e6:: with SMTP id u35mr5072099uad.32.1585696614194;
        Tue, 31 Mar 2020 16:16:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585696614; cv=none;
        d=google.com; s=arc-20160816;
        b=JmfH68J2hmpCdorJXUGiTevMR7zGHpiI2zty/IHm6bvwK/MGWe+yR4j58eLkhY9lN2
         k1mfokuj2b+znnRlsv4tZ43IYtUH7hniAL5NHDD0H6nWzdvASpS/5EccSJIzd1TclfcT
         FwTCAWfmH+hoviolq+2wYK2pwdT+xviqqxU+7pIGxZNFStD8jNJpgPPhz6s43OBo6KAO
         Bge40uCtZOKDtI3g1AnRkj7eTIDUgRB05/UpStgL+dbXwIMDeYl8M/lSN+l5JyDcaV6o
         1oCig6kOPpBt4OHNIm/ffiuvxciCEuDs+/aDHDXEdcYML7GPKG+6ZdHURsJ2pBJcUJST
         SwEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cLwbpQZddCyGRZHZ6eOhb3/IBd9AlotENYXsS03/UJM=;
        b=e3oGd4p9fu6veznaKMslqKugVigEQZWLX2P67dXWUEKDJ/9P/o87qfUst1jOMPQ55I
         qpJ8YMNw2wRmFEb/akUUvns2nJ765LqG/GrcYFC4lcKBFF98a84OXp2vVWmKGAQEaU12
         JNvmwMAtf4r72OxswsSjbyfqKICM6CHFMEH0i/PaCTJvhFCyfPDjevYg7ehvXSM9PYmm
         e6fl0tK7w8c8zV1a4Dn3sB6cxA4EjrbJAQQVigiy3iOEfSuc4pIedCNo+s90evpGk4Ax
         0b9zUbP6kqwuZ7QLUIy5zg+B3jVt6ecaZOrxBlqrWG/ToXJ9NCgKIBONyGIv+RbpWVVp
         GJZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jjJU6qTY;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com. [2607:f8b0:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id d20si33838vsf.2.2020.03.31.16.16.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 16:16:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) client-ip=2607:f8b0:4864:20::42f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jjJU6qTY;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42f.google.com with SMTP id c21so10462670pfo.5
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 16:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cLwbpQZddCyGRZHZ6eOhb3/IBd9AlotENYXsS03/UJM=;
        b=jjJU6qTY2mRiYqzqVBRUszWB90z12SYokQ7H/47TzzJhBYbSWI4KBDXk+MEGcJHdYf
         qtl9U62Uyza0rIDUd5tWBhs/qKzZX8glTHgtCC4EZdbsVMwem9XXnpNjOO4Adpp9oLd+
         t+SSUrEszvZCCVBSBBys0yTJWp76w62d6omRiNXUCpiSxMoE8lH6RgZlKF9g0ayDy37Z
         pMSCC4j/5b/A28bHknPSn+3UZGbAZ4WE+lleuAa1UXLnKD7pH+e/k/ehKmrVmoNRw/a2
         RSWz7Gn5/i8FmVUw7fG+jyebqPK+2zDZAPcXnLZ80ZRF54SQmnft0SzOiC0bovBcF3YT
         K/8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cLwbpQZddCyGRZHZ6eOhb3/IBd9AlotENYXsS03/UJM=;
        b=I3gqQ0snX1eUQXKBuaMvSbF3slI/xIY1ODZAVfz95/e+30TQLsoaP3yK6Z9xkiKV11
         x2sUUlMPdTwdwGDJLAbWq6hK6D8msEGuxNRnKmzcejJjy2LQerdD7qbTJFMjMxOti3FE
         mwXLUNbnEEHzV7o5QKwhLa24ciRp5X3urLimulLD/jAPOUz7QMbJSFEbUeNedxGkP3UI
         7n4KK8mWOECyi4I44iSa6b8+kKkif2wfCDXanVUQz1bdk/dq22OAhJhr9/YQKhHbTYKC
         7kVRh6DEA0Q4YPp/tTy4lH97vOI05LS2fcdOnqvgbjaxQFTxbD3EPY6kvESvcjURCAOU
         V+mA==
X-Gm-Message-State: ANhLgQ1Ns8GRpTdKRs3+EdA6uoVme4fffai9Vd83gN2Lg44ygs6YPmTz
	IoZL1I8l+sRT0AhxT0Icfi8=
X-Received: by 2002:a62:30c3:: with SMTP id w186mr20325134pfw.245.1585696613203;
        Tue, 31 Mar 2020 16:16:53 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id b17sm180529pff.81.2020.03.31.16.16.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2020 16:16:52 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: julia.lawall@inria.fr,
	sbrivio@redhat.com,
	gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v2 2/4] Staging: vt6655: Move rate determination logic.
Date: Tue, 31 Mar 2020 16:16:44 -0700
Message-Id: <ba87af8a2d28d5737c6d8888bbda143aad723d2c.1585694821.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585694821.git.briana.oursler@gmail.com>
References: <cover.1585694821.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Factor rate setting logic out of nested if-else statement to prevent
code duplication.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 30 ++++++++++--------------------
 1 file changed, 10 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 443d04c4c62f..0fbbe81bc2ca 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -294,23 +294,18 @@ s_uGetDataDuration(
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
@@ -332,23 +327,18 @@ s_uGetDataDuration(
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
-- 
2.24.1


