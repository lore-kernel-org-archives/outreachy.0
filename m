X-GM-THRID: 7030748849446584320
X-Received: by 2002:a17:906:489b:: with SMTP id v27mr46688184ejq.567.1636973796180;
        Mon, 15 Nov 2021 02:56:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:3e05:: with SMTP id hp5ls420558ejc.6.gmail; Mon, 15
 Nov 2021 02:56:34 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy7gEvDicWsl/6/dk5ee1p/t8Mhfk6A+/U0Y4+BVrUb84IXxBnPCMOZWSfE9AF0/PlgMSww
X-Received: by 2002:a17:907:6e9e:: with SMTP id sh30mr49391226ejc.156.1636973794809;
        Mon, 15 Nov 2021 02:56:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636973794; cv=none;
        d=google.com; s=arc-20160816;
        b=JQ8woZ+8dpixq90JGKwfZ3VsubtesTm/HUtfMjsNjrZoDNFThMUejibuKAQtyN6toK
         fPwKZuWiHpgQ2U2yrr+Bi9YLdaa6eWd8p20gBhXESPGOM3lf/8J2bAXMRp9RdLSFVqvn
         jRFGytv+X5Ebqegp+UbHQyHcRftmTSeTp41U6zpZGo7+/yc5ZsOaBHCYFfNFIm3YS/7d
         LwZiNb9tdvPe7fkKLpS/7zPLWVgfmUwpkbp7xvWTcf+V6IlLrI4pjhofFgzhO79CU3zN
         /tr0NTWqADzgrmSReOb28AeJjsrZ0zhQfMwXqWQFK8U+btCA5vjno5GKSxE36G7b894b
         /M2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=V6ScGOJ/e281bRFCu1alGcsoPejcNgEmuskLsXMgrhc=;
        b=o8MwX20W0fE/gRnlrla1Hk5JgQXtW2ekv0mWjpjRbA6G4aO884JipnhdoPhNPmZCLV
         t/+CYKTq4JZAud6d6akfKqWhE7BFE2oRqFX/WM1SYa1h2ArG6wm2Tysa9SRAyzO+ThVm
         XrtJlvsIuidWFQaPaQ2ff1hxdQDc7xvhAs5qUiYM3yocrlmrJTKEdy6jJ68WfSWKaWA0
         OSbUn1jgKISnv/ibYISA68jlDvXiUdaotzEqMjBxl41irUaFbOozchvcKG7H/pjmRja/
         nMyaTc0O/O0OUe4gsSTs4/3A9Eh8yJErzQ9J+zmNdMhEdIyVnL2xJyjzj+uyiT+MJ/vL
         JfUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ME2KWhE9;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com. [2a00:1450:4864:20::332])
        by gmr-mx.google.com with ESMTPS id d2si789724edk.1.2021.11.15.02.56.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Nov 2021 02:56:34 -0800 (PST)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) client-ip=2a00:1450:4864:20::332;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ME2KWhE9;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x332.google.com with SMTP id i12so12669082wmq.4
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Nov 2021 02:56:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=V6ScGOJ/e281bRFCu1alGcsoPejcNgEmuskLsXMgrhc=;
        b=ME2KWhE9/71i8bOEJU86D4qI+zuz17TfidjYS6Omf3NwphGBEEe04zBCDeTM/Ge2KB
         vqFp1GBVJ4TZ2tevuYnrv2kO6cA2qT/xQD6M6g+mPSV1aIURrl7Q8r9GqKauFdrrrFvx
         Tq1bJPp8tXa0bZ58eMygfBo52i39umf3ENBOmpkIONpEWDSYw8BqejAK4L25oE92uXDt
         xlK63t62YNtS+iwky0H3D1ZGX6EIHNqgoPnrEE9dHxq80b0yERrKP8ks5tOB0AOufz6b
         TOVd0l3QAZo3HaHxQLQK9i5aca6mWlNE0QUCQ3KeV5DDVlDi8gVhvJK88DdnHIkrYjay
         9aBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=V6ScGOJ/e281bRFCu1alGcsoPejcNgEmuskLsXMgrhc=;
        b=VQOk5EWCgACQP9KBZGyQvR6WCVV4SuqLOOzoTsP9xwuWj+1zFgyi9yAdzd+C1EXSdp
         GBUzZtkGn65e47t05nOTX8nqSbqWR/pDKx7m5nU2ev707Mpl6cz5FinK+6T0ltSG7e79
         G+vXVopHExCPRYb7tWDOonYFPgH5g0hk9m9mK97bxMmXV6PXiHnOaSjNQhqQeDiEggeJ
         bwwy5s2j9DBjOkNffFelBmC9tPiCO3O9l8uYsQQGw7dFciH2bRD+/x/3Llqc1pQJmsel
         9rNsuJRUSsqqrPFTOtpnCymbqAbGkmiMOKFJeoDmDWIjhYpAcjM32Dx1xDmv7MNIsRID
         ++LQ==
X-Gm-Message-State: AOAM530rFD+x8hA9dRR99E/ZjkgFDm5qc8FjuCMLbtuiwm7e029M1vWY
	0e/PWXuX/hz1h8MKKLldt9P4SyofzgI=
X-Received: by 2002:a05:600c:190c:: with SMTP id j12mr42132678wmq.117.1636973794669;
        Mon, 15 Nov 2021 02:56:34 -0800 (PST)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id d1sm13516532wrz.92.2021.11.15.02.56.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Nov 2021 02:56:34 -0800 (PST)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>,
	Mike Rapoport <mike.rapoport@gmail.com>
Subject: [PATCH v3 8/8] staging: vt6655: Delete bogus check for `init_count` in AL7230
Date: Mon, 15 Nov 2021 10:55:49 +0000
Message-Id: <e10d2278975116e03a699260f2259f9ab87501a5.1636729147.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1636729147.git.karolinadrobnik@gmail.com>
References: <cover.1636729147.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove an unnecessary check in `rf_write_wake_prog_syn` in `RF_AIROHA7230`
switch case. This `if` conditional will never be true as `init_count` is
equal to 18 and can't be bigger than `MISCFIFO_SYNDATASIZE - 0`, which
is equal to 21.

Suggested-by: Mike Rapoport <mike.rapoport@gmail.com>
Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 4bfadd85c82c..8513fc565b1a 100644
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


