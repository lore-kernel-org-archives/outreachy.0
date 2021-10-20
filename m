X-GM-THRID: 7021065776829300736
X-Received: by 2002:a7b:c40b:: with SMTP id k11mr13752152wmi.181.1634736232834;
        Wed, 20 Oct 2021 06:23:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:4ed1:: with SMTP id g17ls2769840wmq.1.canary-gmail;
 Wed, 20 Oct 2021 06:23:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyGizFxmnh6K5VNklqrU1Xoies2GW20auE0Ir2inAMh/9dx9Ibu1BzHzj5QdMw8pWTLM1KB
X-Received: by 2002:a7b:c214:: with SMTP id x20mr13142650wmi.103.1634736231457;
        Wed, 20 Oct 2021 06:23:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634736231; cv=none;
        d=google.com; s=arc-20160816;
        b=xeu4CkG+THtfk8V6/bJvo8Kfd6p+jMHQ1KgTGT1yJmclOWrFN+fLe5r5R67UNNlZIB
         RTnMHqPtFcNjxqXy2Ejc1MT2HTyHB60zjBqQgWWrFWwOqxP94CQU5k9tiVvjAp1Fo60e
         mBCRX9Ru5MJWjksjBroi1uFZMiP4O5EXMLZKHfB0DiqPbri3rlp7gbRk2Rlb4xJO/3Jj
         j20Sw1+dAqht+hsWi4CHU1ui0gtMrHI0QW/5nGFrhr4uwAR6XSJteMrKZc/nLj/p2nX2
         xg+CJGqGrXyAkzfGx9fKNeqN1TqjSuL+JkBdXChuybBQbfJIEufx7TJZbyiCepcrOQRb
         W0Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=xK9DNZI2WxuIz+Ctgl2vXcWcIENDorkB7WicrZ5sMlw=;
        b=GCOcta2Q5RGt2uR7+QGOAyxSi7TFnUnzMV7zvT5FOHcYWVxbpF/HgH0lcsnSKqecLa
         BFuVnTj7KemkwkSlIG3ipoT61asISSyzIw4rF6bhmw6C1y+xWwoavYXcF9539aqP5HfT
         4f9qQ3A4C91AszSBSNkDFDJdmioFKQqHLqJZBtigFnC11SCjA6IytUCVFEl0kbw2VXKg
         TXLGnDLMXpvdqpqgAz3v4OYCYEOq+HbCoJrPx9MeK/I7Hfmtr8BCxAG9unh3Pp0A5MCV
         J94oZAQSH7VNtKV3ylY+31R+UdaVcIj5kRBzILXi/Um1E8ADOX2botyYk0IkDKHJXZLy
         JxVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=D2jt52BW;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32b as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com. [2a00:1450:4864:20::32b])
        by gmr-mx.google.com with ESMTPS id o16si459377wme.3.2021.10.20.06.23.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Oct 2021 06:23:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32b as permitted sender) client-ip=2a00:1450:4864:20::32b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=D2jt52BW;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32b as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32b.google.com with SMTP id 77-20020a1c0450000000b0030da2439b21so1768362wme.0
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Oct 2021 06:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xK9DNZI2WxuIz+Ctgl2vXcWcIENDorkB7WicrZ5sMlw=;
        b=D2jt52BW4x4UxWlPWIeJILigF+dk35bbQBWylH2BYt9nYqPexh7mFTEru41QxZwN+O
         UHut3BOS91CHPbXg07iVYWFqs4M6XrrjFpzFzxaA63EkYAIR8VM4vwdns8mZVepmfonc
         Joshy7f06L3vP1zPh1ybGSHok0GjxN+1KHpeOnqs6fEDuDAJQW2MusejKeaEZgK0KKk/
         RjlcisnP4yilFg5Nq5xZlYkmHCguyJQDikhfTTtXCUrNGUPPrRkOhUCyImEf8xmHYEpA
         qDHcnnEgZCFfvYYpj/ZwGY6JVWcMhpte1zpejzNRmuTDcjIrwt2j797AS7szY+pCNQAM
         Qbtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xK9DNZI2WxuIz+Ctgl2vXcWcIENDorkB7WicrZ5sMlw=;
        b=UWQ9q99oNzSs8Axzoy1Lu6pcwlF8h5stwSemQEGC+gi4FNCzoX+MiL2MvWolPgGuPC
         yqQnoxRCYl5JXeb1ie75ix7kTYX8PUwd1atLudiAOPaj6tkajK2QEFg7j74KpwNFaM4O
         Bz0JkXEJTAboYx/ectI7VH/pDC/OpCWyLoNxSLklwDc9fllvXwYA/SUVqNa+DRQAwlV1
         cmyo40bR8KONM8j41mpBSipuJ2Pa02tFvv+zRrTopLAAhFEMtzQbN904f3buHNd84sj0
         wYBi5bBqSLLDwD9Y6mNrNZi/JRoWK/xtzy/VPXcruibqwxIcWHvPef4BTNvmtl8TtBkK
         hwhQ==
X-Gm-Message-State: AOAM530EqpwZK7z+0cQ3kHL+w5zheVyuGF1QuQ2Lp5vPoDxDQOZKVRA1
	VsCIxbd81PKlNjWLobNzTjXVPvf4lSB+QzKQ
X-Received: by 2002:adf:bc42:: with SMTP id a2mr52925368wrh.4.1634736231141;
        Wed, 20 Oct 2021 06:23:51 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id l5sm2064106wru.24.2021.10.20.06.23.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 06:23:50 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH v2] staging: vt6655: Rename `by_preamble_type` parameter
Date: Wed, 20 Oct 2021 14:23:26 +0100
Message-Id: <20211020132326.417059-1-karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Drop Hungarian notation prefix in the first parameter of
`bb_get_frame_time` function. Update the comment to
reflect that change.

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
v2:
* Update the change log: delete description of why `byPreambleType`
  rename influenced that change and reference to an already merged commit

 drivers/staging/vt6655/baseband.c | 6 +++---
 drivers/staging/vt6655/baseband.h | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index 5efca92f1f18..8f9177db6663 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -1691,7 +1691,7 @@ static const unsigned short awc_frame_time[MAX_RATE] = {
  *
  * Parameters:
  *  In:
- *      by_preamble_type  - Preamble Type
+ *      preamble_type     - Preamble Type
  *      by_pkt_type        - PK_TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB, PK_TYPE_11GA
  *      cb_frame_length   - Baseband Type
  *      tx_rate           - Tx Rate
@@ -1700,7 +1700,7 @@ static const unsigned short awc_frame_time[MAX_RATE] = {
  * Return Value: FrameTime
  *
  */
-unsigned int bb_get_frame_time(unsigned char by_preamble_type,
+unsigned int bb_get_frame_time(unsigned char preamble_type,
 			       unsigned char by_pkt_type,
 			       unsigned int cb_frame_length,
 			       unsigned short tx_rate)
@@ -1717,7 +1717,7 @@ unsigned int bb_get_frame_time(unsigned char by_preamble_type,
 	rate = (unsigned int)awc_frame_time[rate_idx];
 
 	if (rate_idx <= 3) {		    /* CCK mode */
-		if (by_preamble_type == 1) /* Short */
+		if (preamble_type == 1) /* Short */
 			preamble = 96;
 		else
 			preamble = 192;
diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
index 0a30afaa7cc3..15b2802ed727 100644
--- a/drivers/staging/vt6655/baseband.h
+++ b/drivers/staging/vt6655/baseband.h
@@ -44,7 +44,7 @@
 #define TOP_RATE_2M         0x00200000
 #define TOP_RATE_1M         0x00100000
 
-unsigned int bb_get_frame_time(unsigned char by_preamble_type,
+unsigned int bb_get_frame_time(unsigned char preamble_type,
 			       unsigned char by_pkt_type,
 			       unsigned int cb_frame_length,
 			       unsigned short w_rate);
-- 
2.30.2


