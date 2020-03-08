X-GM-THRID: 6801910810279936000
X-Received: by 2002:ab0:7802:: with SMTP id x2mr7179763uaq.100.1583693272349;
        Sun, 08 Mar 2020 11:47:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:1204:: with SMTP id 4ls360945vks.8.gmail; Sun, 08 Mar
 2020 11:47:50 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vusWexN1fDsJlj3ske7sPmbwU8cXgzKF/DZNxwf7KkO/yN9T7LpBbGO4gZp1/k+7CIbJT75
X-Received: by 2002:a1f:2543:: with SMTP id l64mr6852188vkl.69.1583693270935;
        Sun, 08 Mar 2020 11:47:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583693270; cv=none;
        d=google.com; s=arc-20160816;
        b=q6aIQu/OXzeA+JxR5uI6cP71O+yCDrEr1cYS+E9OLqwgorRs3O0ma0jedvYZFKP7wT
         hH2cmYwu4atuKBdOxDRndM2fQ83fcRsxSWGRRBtD/HGfFxXjT5KDx3fgqsKx/a5rVngi
         juBFCBcrgBQPL6yoKtrp2kTUaMoyswkVzlJmuzubqcGa5DyySvoJlpe5AK7cGTaBGX3Z
         lk5PQmn5jJlmyg2Snl1UZaBddZfQ2WFdjYmVY0WABIL1XI0Jb+MbLXR5osSIFffgS+94
         2X/VOzoOtzrLMj2oG/yjDPI11mIb0qTx6zHc49hrWn9jDjY3zaNy/spEWY3cpJWiZCcT
         Y9nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=uwfP3rTRWF3WL5/6ZDKlD2q5Ac9XVL2JFlEFRpRoYYM=;
        b=F75yCmgyXZok4BEPZsKc9UxVgdaBGONs5SyaQZh8aEsOytSA8Rv85pfIVA+Yrlrjpy
         ykd9THcGdF51ssKaQVQS7xk5JsxHFlSJjPrdURbI749lRAwVNNhc69z51VfsbR+qXKln
         WZU8nIITxEf5t+AXxbCT8xmRvp2J3VwP7NCs69IDulvCtrMzXgs5fTZ88jp/ljUAiBOn
         qlQQP3r/UoZn2kYPzUIf5DKK8wA2FRyiZauSeuNd53Zo7KRRxFi/PPzdhbdCg49YpNQx
         V8LiDqHLgQ4R1ZfOPfDswTekgl6bCulaHhe/xqFmbPwQox86Z99keL3r3x1c9jLliAbM
         ErAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=liTUdh1L;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id d7si380286vkn.1.2020.03.08.11.47.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 11:47:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=liTUdh1L;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id b1so3670700pgm.8
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 11:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=uwfP3rTRWF3WL5/6ZDKlD2q5Ac9XVL2JFlEFRpRoYYM=;
        b=liTUdh1L5FkJsIrpFFQt14Lt2SB7McR9qZOQlw7AtmsaxwzB7KHavxHsRndYAJhcDO
         DoBNAzg98xqOHA9hzREicC+JhqOZYXrtVWS9OtmM8Yu3P9fIBRqvDULRXEhM+G4uDiXC
         Eu/lTl9XqtxmaNGTNj8u+zoWQbwLRsIlheD72dunosHAlGZe1Lb393xUjoJ/+a1pPa2m
         129da9EbrXSpO7iJWUdsIox/bA0tpYV6xJlXVDixywFu3UeU3d/snBVDb/dWjs+n1BaA
         Iq3b/Y71SNzDJaQNcofmXjfZIeSvfzSEJd0mQDS7di5Bmt3HgyolfsIWEZIa9jZYuSf/
         71Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=uwfP3rTRWF3WL5/6ZDKlD2q5Ac9XVL2JFlEFRpRoYYM=;
        b=ACBVAprguFHMYXX6JK1YA58Ob1U30do6Q1AqiFgQ++tDJNNdpuV5Xio5eZs3fwulfn
         hadVXXJaaubr7PG3DaPRf9jvG/OrWRFS4Ez7DY+pay89N7xQBLl5BGPzgf4khkCuK+lt
         LB4LeA3jSTDNiS91he+PNtsL1ZaHpmnB5gczy+W1tC2TjyElLvTKVRVKoIOhDqfzAef9
         St22HZ0Hqh/mQhExarPpNJZgp6WvKoEBuG6sdZhZbuiI3SP4jbcvDdoP0FoHFTElKu/L
         pSUigCp+pC/PXLEK3ZX8MDqoO0+QPrEJPdD5B4cA6U39jLR7fJSP+k5PI69nmI1e+qPR
         YgOg==
X-Gm-Message-State: ANhLgQ30mDyyrMMWcl4qz/Y2ILy+WK4NYTr/KpZQDICdCpNZob8gJjBY
	i70E5BWXRklJfsp2dg7gJmA=
X-Received: by 2002:a62:1552:: with SMTP id 79mr608409pfv.215.1583693269964;
        Sun, 08 Mar 2020 11:47:49 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.184.119])
        by smtp.gmail.com with ESMTPSA id u12sm41424759pfm.165.2020.03.08.11.47.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 11:47:49 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: wfx: remove line over 80 characters
Date: Mon,  9 Mar 2020 00:17:43 +0530
Message-Id: <20200308184743.5639-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove line over 80 characters.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/wfx/data_tx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index 20f4740734f2..8b0c52392319 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -224,7 +224,8 @@ static int wfx_tx_policy_upload(struct wfx_vif *wvif)
 		spin_lock_bh(&wvif->tx_policy_cache.lock);
 		for (i = 0; i < HIF_MIB_NUM_TX_RATE_RETRY_POLICIES; ++i)
 			if (!policies[i].uploaded &&
-			    memzcmp(policies[i].rates, sizeof(policies[i].rates)))
+			    memzcmp(policies[i].rates,
+			    sizeof(policies[i].rates)))
 				break;
 		if (i < HIF_MIB_NUM_TX_RATE_RETRY_POLICIES) {
 			policies[i].uploaded = 1;
-- 
2.17.1


