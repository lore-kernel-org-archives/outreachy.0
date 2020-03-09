X-GM-THRID: 6802195878840893440
X-Received: by 2002:ac8:3feb:: with SMTP id v40mr1362041qtk.147.1583759713673;
        Mon, 09 Mar 2020 06:15:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6214:126:: with SMTP id w6ls1650861qvs.10.gmail; Mon, 09
 Mar 2020 06:15:12 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv5KeAgN4U+QdWyjboIxpsShfvnyUR8fv6K3wS+FPYmvKVmGztwbGKYTOuT5lX0mxFmw3OB
X-Received: by 2002:ad4:4862:: with SMTP id u2mr10598986qvy.67.1583759712234;
        Mon, 09 Mar 2020 06:15:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583759712; cv=none;
        d=google.com; s=arc-20160816;
        b=aSewsXCgkb3iPRZUnh5/PNXVsdXcy0IsrFeiPHD4NFs4QjfjrYddKdWKi+B9tLjBEk
         XFrpDOsp4Jhas5chTMY0FdjU0WnpIjd4+1P5jKAFuwKoQBH1ANxYjBAe6OsQ5hwPIvvJ
         V76+w5Rl+YQrUYC4HbVcbLnB5V6P/ECCp1gfypEcXbBJRCfTE7RQLe78+V0iNdmt7knt
         TEtsWxpwdcGyVEeVh8zXyFHPaFbVevsnQA8j3DgSAwZOqt8z77WnqydmIRxIHm+tRxBJ
         MnoiDQlLeYUwSfE8tb3SxuZ5gU398XeTmvgJjC30dH1X3V+lynns4OCj91x5YTgz/Tnl
         WhJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=G7XGN+K+LL35TBClkmBVyrMWzK9orI4CYPsUQXHlwWE=;
        b=q4K4Ff6vdieZgPKNDSnF7goP0RWdFRMlPZ3VBWnr0FuX8kqduTffQG7XF3RQQZGkLz
         q7HIYsKY++B2k0KW0RVAFTD4mwCFPTujIuwVsb5mmfeKkHsEEkAcIkm/bV2FgY0CR89N
         gUkvkASFobMzOR3zwag7dunJr5NLZVBrzrGEb1jhiQAfydG7rHrk5UfD2qVaX3TAvq/0
         t/QH6YZEv+sz2tVjf5BVlUR9vYR5doKcsKD3AsF9owgxqC6cQgs3szVzvT7VOTfTUGgV
         ulWCGmj/taiTBkIA6HgexLRPw7qVXL2Vvo3GSDCBHSMj0Ljt1DjI8U1RVWY5y17IFB/p
         0TIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MgpNKYTa;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id g23si505704qki.4.2020.03.09.06.15.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 06:15:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MgpNKYTa;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id t14so3968263plr.8
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 06:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=G7XGN+K+LL35TBClkmBVyrMWzK9orI4CYPsUQXHlwWE=;
        b=MgpNKYTacQ/vk4GPN8Diy5aPZJpvyuX0chmy/W8U5YKMRq7V+VFj4j59dgWv2mBc5X
         wEdpYQc7d1tNwP7SxjUSStC/nY2hiaWpEz0l0dc32lzZS7fBGLhmTJelpT2fh1v/0LlZ
         xr8gYArgqvq0lL5ZDlvG3tbdomWffEzObA0x/SF58HllrZsK9OKftRwwU3s2RJq+hdIx
         JUVagNokJHUjsvZT0qKSANPSt/USQJdKI7diRXtOitge+Ap6bIs2lHgdM/4vZvBDucaW
         +g2WCQ8cVKzO9DN9aYJyR/MpTISYg2xafCNxurCflGxMUsdv3rWBn8+H8l6xhs29J8S7
         gZEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=G7XGN+K+LL35TBClkmBVyrMWzK9orI4CYPsUQXHlwWE=;
        b=LN9Hi94Mxu2cKdDh0M57y0eYaLjiby8f0C/72Gv3Iab5WVWEWxn7pZL52U+YbVjnwx
         hHqkSSziArGE+cXGHHHrz0+RfOnYPd4f1yzuL/S/QYtdeRbfTqUYPJx8ojb+dyeZlnQ7
         R3gbhk3+dieqqM6BLB7UvcofkZqsXbus8Qd7bP5YLT58DA12hYNojoGo4ynTzvW5zghV
         YYbDI92vl+CUPf1ItzkRuRrBXOUZIj07QvfsOztHCDm6OtMM8U0drC2oYo+76JgPZ6Bp
         Kk6Mbcrz1yVEFSifjQ5xgvpLQEnlFhY5TqPTSCGeSj3NS84ezQwHUh4ty6ITWW/j4JDk
         JTYw==
X-Gm-Message-State: ANhLgQ3fTFQzauk/ecqv1Vt250T8yWrDwGSIVDGzswh+ky1DGD8lZryr
	v5qyVvMAw+NStUQ7TdpsmzQ=
X-Received: by 2002:a17:90a:e998:: with SMTP id v24mr8057006pjy.171.1583759711360;
        Mon, 09 Mar 2020 06:15:11 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.162.233])
        by smtp.gmail.com with ESMTPSA id d5sm39513208pga.36.2020.03.09.06.15.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 06:15:10 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>,
	linux-usb@vger.kernel.org
Subject: [PATCH 2/3] [Outreachy kernel] staging: qlge: qlge.h: add spaces around operators
Date: Mon,  9 Mar 2020 18:43:55 +0530
Message-Id: <3a471ee901679659280d420549610b12e9efcdf6.1583759118.git.payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1583759118.git.payalskshirsagar1234@gmail.com>
References: <cover.1583759118.git.payalskshirsagar1234@gmail.com>
In-Reply-To: <cover.1583759118.git.payalskshirsagar1234@gmail.com>
References: <cover.1583759118.git.payalskshirsagar1234@gmail.com>

Add spaces around operators cleanup reported by checkpatch.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/qlge/qlge.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index 66641edff6b5..4ef8dae3d7a0 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -59,7 +59,7 @@
 #define MAX_CQ 128
 #define DFLT_COALESCE_WAIT 100	/* 100 usec wait for coalescing */
 #define MAX_INTER_FRAME_WAIT 10	/* 10 usec max interframe-wait for coalescing */
-#define DFLT_INTER_FRAME_WAIT (MAX_INTER_FRAME_WAIT/2)
+#define DFLT_INTER_FRAME_WAIT (MAX_INTER_FRAME_WAIT / 2)
 #define UDELAY_COUNT 3
 #define UDELAY_DELAY 100
 
@@ -1367,7 +1367,7 @@ struct tx_ring_desc {
 	struct tx_ring_desc *next;
 };
 
-#define QL_TXQ_IDX(qdev, skb) (smp_processor_id()%(qdev->tx_ring_count))
+#define QL_TXQ_IDX(qdev, skb) (smp_processor_id() % (qdev->tx_ring_count))
 
 struct tx_ring {
 	/*
@@ -1792,7 +1792,7 @@ struct ql_reg_dump {
 
 	/* segment 34 */
 	struct mpi_coredump_segment_header ets_seg_hdr;
-	u32 ets[8+2];
+	u32 ets[8 + 2];
 };
 
 struct ql_mpi_coredump {
-- 
2.17.1


