X-GM-THRID: 6674711833599803392
X-Received: by 2002:a25:d956:: with SMTP id q83mr1922333ybg.79.1554077452936;
        Sun, 31 Mar 2019 17:10:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:3d0e:: with SMTP id k14ls2809175ywa.4.gmail; Sun, 31 Mar
 2019 17:10:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwdbeM4OPj/s2U8l6JOwFr73elUqEnOn3eYKEGRg8wbAV2z+O+lx8cqDmU1JwjBhF6HqIa0
X-Received: by 2002:a81:a60c:: with SMTP id d12mr6022570ywh.3.1554077452017;
        Sun, 31 Mar 2019 17:10:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554077452; cv=none;
        d=google.com; s=arc-20160816;
        b=AYH3Mv2vqS5O30F9sBv5QKSUL387DYEKgNMwPsKxepH83JjGt2mqCKFk4spghvHM2E
         HEEtjCbtLjM6XJY2h+fLMCq9sw9WwKp7eKTCpHYKCXoQ/slysyeKBPNPFcMSDGSEQ/Lw
         aHnMElfjqS/OZzqWX69k1PZ15+X17nGj7mUmA3nohhib6k9WauXa4xNOzOIUyd32o1LK
         90fzy6pZH4g8ZMhN69mnShRpSuaeQXcbZsdli7E4FXjP5AE1EAZGTD4hLUtZ9udQBnZ2
         XZDfT/oQbnCflUNKLVrz5joEwYB3NnKEnkr6YPiVRraSxYeNAMPxpg5ZoruyjR/GmmLc
         nQEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=DTUsJ7c0mWRLb0sL0N0GZNn+OZXt5qyQNa8XtZ7rx5M=;
        b=Juct6t/kPFCMD/Nm9Z2yTy5fSHqRmit5srFZjbnqVNl9w5xtZovnwtNgD01Ci/51LD
         hrFd9MKraTEup1Tq0AX6H1AwNHhKphvxwKw5Wq9C5wbwY6rjOT4gMbLvfOiEbPtQpeWR
         1t9oqNl3xi/fi1nV5QiXARwtwUNEYA+1Wd9F/ImVxKvhbqSxfMwGGypjlhse9j4c3OMH
         rmiSC62opsDiSCMtLLniT4d/manWoS8PH3JjetsGUwMBrCCWbvYE+lCaM2/8FSRTYr6f
         F9cQu0HBShtrZ/4ROKDIMFw6GCSyrwyfavtGJNIBN3uMKD1uJ14bgCyrgAS4CRNTVxcW
         Kd5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Whxded1M;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id 204si459200ywd.4.2019.03.31.17.10.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 17:10:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Whxded1M;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id b65so3563259plb.6
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 17:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DTUsJ7c0mWRLb0sL0N0GZNn+OZXt5qyQNa8XtZ7rx5M=;
        b=Whxded1M9tAQXOhmAtBMAopfLO5pzfW5Xmz29pkAdM9dc2aP5iw28jQ0re+Lels8GS
         +uBGN46aGAQMEPTNIw7XU7mfRtDKLVfdmWTP8z/PcV0ScNnDtSdfjcmgv+elHNGiVTjQ
         X9XZdl/bi3M6rrJoVDTpdxJcnudo3I51o3jLi6M/RCnLfeb98LpZjHpL7DaNE9H+UZvm
         a4hDpNb+6AxglftKbJ3ZNgDuP9dkflQznaPzNTSb6Dm/NnYcTs79s0+0Cg+y3VpQSWPZ
         fBj/JMQ53Ra28D+bbwWEH+dh/TSf6MTmp/EQBR0ojOYxAV8mRlZ6iFKejJNcwhMx5eLW
         Un2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DTUsJ7c0mWRLb0sL0N0GZNn+OZXt5qyQNa8XtZ7rx5M=;
        b=n0kEQFmrvs79NFzUy10br12mko+V6JuOJ8//wjPy37QciKLMLx7WCPEWebBBpjw1Ms
         A67hfyQH1QJiHqGR/CW69KxcJ0fouqfX8PvyBabBtATmGaTk8VhAwcGFugbQy2TVixAy
         20rEpaIvc/+W08evf8AbnjMAusj+HZJXw63kUsygfKTVK0ioaMdJsHi3AwxbBEXbg0Tg
         LZz9h8MUzj6dDLeDto45T3dp1bOmR+pCaDcdp8hMohvk8mCVxuWk4L2J72P/w5PB05uE
         iQz75mwTQdh3QBwIkcNuJBnORz4Uy+YifqGfCpHo3PmqK7upUufzZm21BZk1FNED/WMS
         xgSQ==
X-Gm-Message-State: APjAAAXfUb/V/oTbM7+tWHbnrdeLqr5x8rm2WXngrnhXAt8puH9PfORj
	V+NLqbvHxWkTzfj6vQFIaP5ESG1vEn2Uwg==
X-Received: by 2002:a17:902:a706:: with SMTP id w6mr36753477plq.91.1554077451172;
        Sun, 31 Mar 2019 17:10:51 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from supernova.Home (184-98-140-144.phnx.qwest.net. [184.98.140.144])
        by smtp.gmail.com with ESMTPSA id e23sm12174878pfd.11.2019.03.31.17.10.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 17:10:50 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [PATCH] Staging: vt6655: rxtx: Add spaces around '*'
Date: Sun, 31 Mar 2019 17:10:47 -0700
Message-Id: <20190401001047.23218-1-briana.oursler@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add spaces around *. Issue found with checkpatch.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index c8c29bfd78ff..a14908895b9e 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -397,17 +397,17 @@ s_uGetRTSCTSDuration(
 	switch (byDurType) {
 	case RTSDUR_BB:    /* RTSDuration_bb */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
-		uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
+		uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 		break;
 
 	case RTSDUR_BA:    /* RTSDuration_ba */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
-		uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
+		uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 		break;
 
 	case RTSDUR_AA:    /* RTSDuration_aa */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
-		uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
+		uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 		break;
 
 	case CTSDUR_BA:    /* CTSDuration_ba */
@@ -426,9 +426,9 @@ s_uGetRTSCTSDuration(
 	case RTSDUR_AA_F0: /* RTSDuration_aa_f0 */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
-			uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
+			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
-			uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
+			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
 
 		break;
 
@@ -437,16 +437,16 @@ s_uGetRTSCTSDuration(
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
 			uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
-			uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
+			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
 
 		break;
 
 	case RTSDUR_AA_F1: /* RTSDuration_aa_f1 */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
 		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
-			uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
+			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
 		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
-			uDurTime = uCTSTime + 2*pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
+			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
 
 		break;
 
-- 
2.21.0


