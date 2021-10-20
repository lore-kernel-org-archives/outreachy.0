X-GM-THRID: 7021065776829300736
X-Received: by 2002:a17:907:d8c:: with SMTP id go12mr45585357ejc.472.1634719263003;
        Wed, 20 Oct 2021 01:41:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:cc15:: with SMTP id q21ls1822350edt.0.gmail; Wed, 20 Oct
 2021 01:41:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwsliabD8ZmGR40/VYxS/8vZp1ys5yLS6CPomhdo/qI/qzD7n7E/y+ZeyeLL5KSN+n6QOBc
X-Received: by 2002:a50:9d8e:: with SMTP id w14mr60002378ede.74.1634719261580;
        Wed, 20 Oct 2021 01:41:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634719261; cv=none;
        d=google.com; s=arc-20160816;
        b=gPFzKS68yIaGnwdUbtnKVllC7W8MTqVku+2YJzqtg6uFcOzdI8j90A+ncOFee1bdME
         ALbh74aSZnTl4M7vsKncj6Xrp0s8i972vUShkBtbW3opyRqtG11CXyOuE4Rolrf26yyg
         mth3VXN3RaPMBmAj0ofPTl6GBptJuhLk/EIgtkzuyYFbPmx258O6JpTqWIP0q1Og3jpj
         SXLIGs02O/xqMXuVE1ZVM3tPnLIALCUElNG219gGXgjyUu/NHrDt7iERyH4CC1fwkdRf
         Nynis6IN53f3BOwKB+dQXgZ0rpXCNOcbJ840EFVKqvePz4AgFmDzslVcrwu1+gSQvqPq
         2NcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=0DxiQ6TI/H+Bup1Rn6Wt67LAOz/W7N5QmWO1MsPbNPg=;
        b=sP9KR1LmOtW+aRhiZtaoBw6744SLIE/MPjSXUx6ErKdXM+wXVYRMafWXfg9mqQD+bJ
         FBqF0MHWecKOs7DnLumV/jZEjqmRf7xliJQmv9rqTD9g4o51p5N0ytv9cd24oSbr7Ghi
         Jdz9pKuexj5C1HTpiqYgIiAfrhBpV6pz54vgEEBEG9tU1hYbWimHtghm1XmjUbZeDYNk
         wtY15JnCE7nJ6lygnn4I7IHt8B1vjUjpseR2IqgyTwh6ha8FLOVrqR4lB4qm9PpXVihv
         CtZzggRX6VRd6B4uQ5rw0Eb8GBYdhZzTvI/tyXfmdJmbtKN7fxzOpN2JoEAMTUcWpRa9
         MJYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=hk9EFm6E;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id o25si88489eju.1.2021.10.20.01.41.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Oct 2021 01:41:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=hk9EFm6E;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x336.google.com with SMTP id 63-20020a1c0042000000b0030d60716239so9317410wma.4
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Oct 2021 01:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0DxiQ6TI/H+Bup1Rn6Wt67LAOz/W7N5QmWO1MsPbNPg=;
        b=hk9EFm6Ew7/OwTOILie+GA5vHO1+XXROBxMTy0GYFycHK16AAuIKgfwOauIM9zhSoT
         iNyaXuY0zIlwORFLZ2Jn4WR4UdQ2HEUgjwoVudlGjMCkYLXVzsJh3xzXwLCOKQY0xHeE
         ION4kdrI9I/wwG+fHY2eN5Js8chUiGO56m2+OYdOojZrLn6Ipw/dw1Wxph5PsBB48aAI
         NgDUa9XVtwa1qAOOeO8LbZtahrUKm2BLEoHwAHF7NokfQzDFvYsIXOfYjKm5ixEDcaAL
         dHUGxQBsrIKchpo+QJ/yM2dv5zeWcmVM7UX1Jtrg9/09qlEqD5etSvOm6TdWrZawFu04
         L5Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0DxiQ6TI/H+Bup1Rn6Wt67LAOz/W7N5QmWO1MsPbNPg=;
        b=u9lJ1pybLPwLkrOKMdjLbeTgpsR/o+fIRhRUXDLC5/wGB33kYzg5ExEt/Sy9lVrvr4
         X8tF0pIbUrm0Hr4l1MKtsuDpVfEqR0UOVAls6uZm69EvKeMGSIu0rxd2vBGM5xbtiGwy
         oN6NIoZcwfZT89a+azNPwEKusLXYnsD8+bBXM1s+Yc7XRiT6HppIxqaGKmHFeW1dY2hH
         WBCJtIicIeKZpXo3eZr9q0YQ7PZ/BccfJm+Zn29II2Jc7eAGjyFfiQh/CGW6EzeNqlu8
         IYYVMgBhGwna9As1bw/VhpvdauSxGtgUeYat1oii4c2/xMn/DnCZOMCsf24vFKsMHH2W
         dqPQ==
X-Gm-Message-State: AOAM533FMQFDobZx9kgBCPSiYrf3mRmcNgb9VMBbmgMuRt5TChSPgMGf
	YkMO2zSkJJnjecYcEpHqLLQLNo0akm/w9V2t
X-Received: by 2002:adf:ead0:: with SMTP id o16mr18972262wrn.106.1634719261399;
        Wed, 20 Oct 2021 01:41:01 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id l13sm1348612wrn.79.2021.10.20.01.41.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 01:41:00 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH] staging: vt6655: Rename `by_preamble_type` parameter
Date: Wed, 20 Oct 2021 09:40:33 +0100
Message-Id: <20211020084033.414994-1-karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Drop `by` prefix in the first parameter of `bb_get_frame_time` function.
As the original argument, `byPreambleType`, was renamed to `preamble_type`,
the parameter referring to it is now renamed to match the new naming
convention.
Update `bb_get_frame_time` comment to reflect that change.

This patch is a follow-up work to this commit:
    Commit 548b6d7ebfa4 ("staging: vt6655: Rename byPreambleType field")

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
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


