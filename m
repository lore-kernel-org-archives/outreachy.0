X-GM-THRID: 7025609319157596160
X-Received: by 2002:adf:e50b:: with SMTP id j11mr31363686wrm.430.1635777147686;
        Mon, 01 Nov 2021 07:32:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6b08:: with SMTP id v8ls1703097wrw.3.gmail; Mon, 01 Nov
 2021 07:32:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwbjFfgK29WK4qKk/KsVfS4NU78DsNAULik+kGdp/7llsoNyOFwnZNgApuITQOz5MIt7/X1
X-Received: by 2002:adf:a2d7:: with SMTP id t23mr39701931wra.156.1635777146288;
        Mon, 01 Nov 2021 07:32:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635777146; cv=none;
        d=google.com; s=arc-20160816;
        b=iLvXpK74bA0kFABBVj51UPOA7i4dKjEDrlzj7NhHxc1modVW+DF/oEiaK/HFgz9+g5
         h8mGrTr4hcKadEyA+ZaOULcWyvFJ+EpBorHV+tR17s6y+tcXiZ5rB10DZcEc7eUws4iV
         Y0WKhV6mjD+BQunHwRuLycazNYTiZm6u/yAR2naq+yXRqMGG9YlpcKLEGzva98SONGXh
         EQOkWdPuvzMe2NURMMJznZiR7/j0DvL7a1KCQ6HmK65U6UjySAnV+bnxkDMyBxZQmnOj
         eY5FvUXkPSHu4fL00PET+tFVQ39fjXchbosx7iPYwC+XsMtO9qOW3gqIKwvzNr7DxGlM
         nuqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LfxA9nhm1Dx/kkwpIe9uFG+16iITntyVepiTy9U8Klw=;
        b=J0J7zHKdhzliAMlNo993e/hiEuNFBkZ75bQ5avaoL+31Obq3vSgS/VgX2Me7qjny2c
         dhudiBCi4y3ZYZHAKJ2Sf6Ri3MY4EAI+7yjQJknUPIR0Qg5z7wSnhbGDBG2wlTMnk00z
         zwkgJGoJBhLkCvziHUp1nz21UhTNtjKcoP0P0AgZQZytqDVb5E5BNU+cF4rTm5iofHAm
         f/Ogbw3eMj/zVY6jE3ekRjxGi9887MfV3+n7JPE8KgligRLQr4eF1vwBi2jUaaWWt086
         mJqw0HAa54d3hz08CGp5vMxTb3hycD3ndCRj4KYV6gYG2NIQwQPz0V9NbA7ya1iazaVo
         YaqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=MhX7lPGR;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id g2si8786wmc.4.2021.11.01.07.32.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Nov 2021 07:32:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=MhX7lPGR;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x336.google.com with SMTP id o4-20020a1c7504000000b0032cab7473caso63057wmc.1
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Nov 2021 07:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LfxA9nhm1Dx/kkwpIe9uFG+16iITntyVepiTy9U8Klw=;
        b=MhX7lPGREXxIJG7p11NFBd2VhFk6C2/qiM/p0J5CFzwu2LRWDA7F9FBfsO7PrfLXLv
         7G4H9fTFEcLy9E/Hhu3tSMWzUdCvmhfZu2vvUfYARLW+rK+LcwiSKMrsM+ZjRx/Cgvkn
         TG6iKUMcykNqoeJ6sg8wYGV97EqjPPy/H1/VyiF6yXd6qwghXs/pA6zC42EDnvCX7UMe
         +0H28td9yN+elw0UAJNlGGxROb9ULHmHwB1/Zj/vDaKI/poYqvZjAkGzc7sojrEM3AV/
         M2q94QbaD7+Gy+19fcKqZ0ykvXUXbSKdcpTAEXVN8bMWY/IWi20V7Vei3X37Ym2Shcqo
         PNxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LfxA9nhm1Dx/kkwpIe9uFG+16iITntyVepiTy9U8Klw=;
        b=WHD1rfDloa0v5r+qeo8RqqCNcI1eL/NLGLgPNisklVL+LIJLW2cf6AS7wa5ZZn4OiU
         lyP+yshfnmUpqCt7/awyowyHzVl22T+wh1XtHgYgQ6Sad4N1nCkqbGmirT7oa2tY0m6p
         2SktuKRE86e4Dhi34wiIj4GJl7Tig1EIdHD6CEuTLT/7fg5UvfSNtqeBqZOPQhiDhTHA
         JuB7iqA2iScliUp9jvQ2/yE05qwFTb6GR1ffGVUNm6wq5OMl3rPYmrj0/+7vK8bypt1I
         CDzPtoZ4q6bryu/Ljr4kKvANr6Tyc9UsTpgBD6IMu7xOl+GroedIwOcfnnlYEthQ+aj4
         lRfg==
X-Gm-Message-State: AOAM530htxQigTsI//WrHdDoC4CNC8cVN36H3Xp5rSgWBBhIltAx9WNA
	3MCoHX/xSv7od5CB3TpvaY+TnXFpmXUFgw==
X-Received: by 2002:a05:600c:3b8f:: with SMTP id n15mr17881716wms.180.1635777145986;
        Mon, 01 Nov 2021 07:32:25 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id l8sm17157721wry.43.2021.11.01.07.32.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Nov 2021 07:32:25 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH v2 4/8] staging: vt6655: Rewrite conditional in AL7320 initialization
Date: Mon,  1 Nov 2021 14:32:02 +0000
Message-Id: <814792bedc4f693c0d43f8e1c480f00c5988129a.1635773680.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635773679.git.karolinadrobnik@gmail.com>
References: <cover.1635773679.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use conditional operator to determine which table for AL7320
initialization should be used. Introduce `init_table` variable
to store this value.

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index ea74701917e5..e7672da39a82 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -684,6 +684,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 	unsigned short idx = MISCFIFO_SYNDATA_IDX;
 	unsigned char init_count = 0;
 	unsigned char sleep_count = 0;
+	const unsigned long *init_table;
 
 	VNSvOutPortW(iobase + MAC_REG_MISCFFNDEX, 0);
 	switch (rf_type) {
@@ -714,13 +715,10 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 		if (init_count > (MISCFIFO_SYNDATASIZE - sleep_count))
 			return false;
 
-		if (channel <= CB_MAX_CHANNEL_24G) {
-			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, idx++, al7230_init_table[i]);
-		} else {
-			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, idx++, al7230_init_table_a_mode[i]);
-		}
+		init_table = (channel <= CB_MAX_CHANNEL_24G) ?
+			al7230_init_table : al7230_init_table_a_mode;
+		for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
+			MACvSetMISCFifo(priv, idx++, init_table[i]);
 
 		MACvSetMISCFifo(priv, idx++, al7230_channel_table0[channel - 1]);
 		MACvSetMISCFifo(priv, idx++, al7230_channel_table1[channel - 1]);
-- 
2.30.2


