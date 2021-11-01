X-GM-THRID: 7025609319157596160
X-Received: by 2002:aa7:db85:: with SMTP id u5mr41269261edt.234.1635777153079;
        Mon, 01 Nov 2021 07:32:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:c143:: with SMTP id dp3ls495355ejc.0.gmail; Mon, 01
 Nov 2021 07:32:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzAcxQFeuZ2ZMaqE1DlEzl6897r8XS0xs64FUoJ7DaTansMLpk+u/mMhdhRal7u6+Wgjco7
X-Received: by 2002:a17:906:c7c1:: with SMTP id dc1mr37986209ejb.6.1635777151692;
        Mon, 01 Nov 2021 07:32:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635777151; cv=none;
        d=google.com; s=arc-20160816;
        b=W/1Sohi9rC9PZh1r1UuDDRf67mo8UB1ECXUqliPERKv8ZakN5lmjKECr4DmufK7lxs
         8/mp87hWnKKuUB35Ar1t1c3v9KXDg25YRfODSONT8M13aO243K7R5B2wgO8uktuf1X/G
         AVAjVSubBeyP77E0pqB8nTn8xLX31xBgpIzsDHTJJRqnZVXlCxz0MmQQr/owCidW7c1g
         M/zZIugtoOjzHXhe0V/YU6wEVA3iMT8+QD70DB0RYT4WJwF/YtHzYJIxCl4J4ceU4Xq0
         yMgTGNVGK7tY6tNq7SqCNp+mrjzNtNe8BdAt3GU2M/5tJErFbQ5kix2MAH7hJG4qGxoc
         /T5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=eQqahKTGy/MjzWPjPgHv9G3Dq9AQliR92JEsevc2x1Y=;
        b=bIaYk4QWKRodqocQ9Teo8jyjrFlTYz06stSQf9G86V1pw4OziBL3ima3l9MjgM/2DF
         S4mAQh78gkZBl0hl9t8Rd4CHWej12B27wZi6h7evVnzJ4cQw/LwacOG5x/HoOln46gVv
         PY9wVu+7YGkUE/+iJH0B3GTorsjCZqVOvk65UsBZkLNLzE7MehaTYBVRX6UynJnYWoZd
         tQb4lJhAzPgDP+N6BwpCY0J9dkvs5vMn2GrzoEW3iqpdYG7R1htOGjcxvjSQdKtB6OKo
         +4O/FepMgra78tZAT06rTYO1pVjgiFt4bIYkX9+B1SgYv28aod8K/oOqEo9cNNihzFtw
         f3Ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=nE28LLhF;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id dr8si1473373ejc.0.2021.11.01.07.32.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Nov 2021 07:32:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=nE28LLhF;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x336.google.com with SMTP id 77-20020a1c0450000000b0033123de3425so2248256wme.0
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Nov 2021 07:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eQqahKTGy/MjzWPjPgHv9G3Dq9AQliR92JEsevc2x1Y=;
        b=nE28LLhF3UnGHnDj48x/XzJJMVEJCxwyGRf2cmDGJqjSnuRt7grKqgiOnoqF8n0Fpq
         oA/BHmbaCPyX0CCRmfZ9Ce8C0xY7GH9diteX7/7Ok1fYP/WkxdSy+lXx2ePqR64O8N86
         ArX8bvlVZYKx/Gsq+8gzKS0z6Td3X6Nl0aiZk2pdHzsXYKisVP7dY12N8FdGq8fY2Ib1
         HoPYQO33UwPCgJDkU3EdiM33zQ7H5J3pnkh1BN5EyqMoWVFZhUU3ZDwe7PEYBiWtbg/Y
         BRpiKyJ/9jBQ9Cf17VJCcTlIb6UPxhWU+Q74Ka9nSzukmaXhrdqDgR8mPLa+Yt7S24ZU
         4twg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eQqahKTGy/MjzWPjPgHv9G3Dq9AQliR92JEsevc2x1Y=;
        b=6dR++4aBjQSVoxhPkW6mZA3a9M99KMPrMkHVVrLUgy7qndnQXlXcsEckfNSF5/09RH
         DobLKEsfJU+01Ed/MgOJA7VSLRs0qdID01WReoBw8IrivYreqx9eiz1qAbr34FpDo1q9
         h2NteQbcxWtmsJrAcfzUKXTZhzLh00tvZAl84QGFAbGEA6MSg8daywNU6MD24+UN2hwb
         F0uVpSp8iSHBpGnEHaPyNUV9YTHPz8AeuRDUeU5a2xqfyHwMwY0v7xhw8F5vwHBiT6fB
         jlYWK74VCsgbSA0EQ2/HdEQC5BaRQbCS6plt/n+T1zpfvHpBsn1tB55/BaTcyorYUE02
         RrmA==
X-Gm-Message-State: AOAM531aErILEw6fK8E4MzxjtAiEwMOThftX/aLnYJ35RE4Ngb5Mxjzo
	KTnkMkGW7jNHYGgnFOpd/fvBamYCQypIBQ==
X-Received: by 2002:a7b:ce16:: with SMTP id m22mr9092639wmc.39.1635777151495;
        Mon, 01 Nov 2021 07:32:31 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id l8sm17157721wry.43.2021.11.01.07.32.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Nov 2021 07:32:31 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>,
	Mike Rapoport <mike.rapoport@gmail.com>
Subject: [PATCH v2 8/8] staging: vt6655: Delete bogus check for `init_count` in AL7230
Date: Mon,  1 Nov 2021 14:32:06 +0000
Message-Id: <ef1cc739e6b3e00c0ff138f25d1b9eb4d27e7763.1635773681.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635773679.git.karolinadrobnik@gmail.com>
References: <cover.1635773679.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove an unnecessary check in `rf_write_wake_prog_syn` in `RF_AIROHA7230`
switch case. This `if` conditional will never be true as `init_count` is
equal to 19 and can't be bigger than `MISCFIFO_SYNDATASIZE - 0`, which
is equal to 21.

Suggested-by: Mike Rapoport <mike.rapoport@gmail.com>
Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index a150f1df3824..653f72c7ce5b 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -710,8 +710,6 @@ bool rf_write_wake_prog_syn(struct vnt_private *priv, unsigned char rf_type,
 		 /* Init Reg + Channel Reg (3) */
 		init_count = CB_AL7230_INIT_SEQ + 3;
 		sleep_count = 0;
-		if (init_count > (MISCFIFO_SYNDATASIZE - sleep_count))
-			return false;
 
 		init_table = (channel <= CB_MAX_CHANNEL_24G) ?
 			al7230_init_table : al7230_init_table_a_mode;
-- 
2.30.2


