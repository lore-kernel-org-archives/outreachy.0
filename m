X-GM-THRID: 6802195878840893440
X-Received: by 2002:a37:92c4:: with SMTP id u187mr14979316qkd.466.1583771271947;
        Mon, 09 Mar 2020 09:27:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2521:: with SMTP id v30ls3834355qtc.6.gmail; Mon, 09 Mar
 2020 09:27:50 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuF6QCWZXpXGPt5zVP3xhVVhB+NwRutxx/uRqQockwQEwjruYRrtHNoOfoNYcVobBF6+Ity
X-Received: by 2002:ac8:acb:: with SMTP id g11mr15304762qti.132.1583771270859;
        Mon, 09 Mar 2020 09:27:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583771270; cv=none;
        d=google.com; s=arc-20160816;
        b=PRHO/ZmedBkRx881geW8GT1bYdZgR88/ziv3IxUuAdThPmDiwuWCOgOXLchyt59WsH
         gHxb3x2zjyz2VjlVFirJzGeBYmkpZk5GnskNs90+YBAz31DOQUQyfqj6WIlgDJAfmSls
         srfYih6cqGOUNGPAXvPDukRnnvhg8YFwG43s6DD7Uyi04yo1QNg3fyX0LFBq6lAS1DzN
         upZY3Px8eLov6Be0YOrwzjyMghUbWdBZ8RPLpVRusxUW0X9t4lcGg8CwUefPVpxZv2Az
         pYFSd878rIT6QQslGmf6Va79fuFLIwWglrH3vrIizXtAoUpUk1kY5rHH668RyTtKnRE/
         XlRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=BWA4J1wy5N/K96fwamsqbkaYkUDOB5aTmhbyd2GiAaQ=;
        b=mpep95USTshn1YYPVSY74CMiwtjQpR9uNRx4LWUhydKxu6H4oXVbJwZP6cX1VxGIy5
         dawlJOf6K7CdXyeZe91ExylZb13geo6lTN0/GWeIOANJKb56Kq9vPErNmE+1TksRBOrK
         O/O87cYxwPIV/g1HjiWG8ulb2veDawAoGbRxDJjoAl+GVY6aFrJZMavd9nF3TRN6JV9B
         T8sB8VxazyZSmLgwt2Ol9EGq+jvYhHMTaoC8rFTJvJDBL3NCYmcyjcCa5PwsAJO0SKxy
         QdbVLVEqIAP3XZ2hPnmBSmYmg1KKMnmnvHp1D1w9gxgnL/PrjIoT4Tlo2LtxTHrtGZ+b
         xm5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cEE1eYq+;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id y5si107480qkl.6.2020.03.09.09.27.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 09:27:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cEE1eYq+;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id a18so57605pjs.5
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 09:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=BWA4J1wy5N/K96fwamsqbkaYkUDOB5aTmhbyd2GiAaQ=;
        b=cEE1eYq+4pUZXnGWaMzuITRHaOFxehW3TEisQCuppBRjqhk4EGDZnhbtjR6oTFOome
         BKIhA86lXSeobaWXkP8Pa9rcd885cTqaus3VHTMc79JDxAOBh8j+J6MbOJDJZV5ekgvj
         V6w6Ea5Bl4wvPaHYlTQKWyTVpvOxrEdhbRqVApizvn9EkXVDTLPLTQqc6knlxsc2Klop
         Fv20xvwtub4saNt1VVfk8MBUPOIg81+iU8kF/CkCEwdEiq14BxWddOzUnL1nsvHFj9LU
         qtquR65cYaTlom09EC/x/rmi4L/Wrm/cU3mbK1l7djEHhchVZB1zfaZ7HUYHna0b84jv
         HwdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=BWA4J1wy5N/K96fwamsqbkaYkUDOB5aTmhbyd2GiAaQ=;
        b=tFSy/TRaGp2gtIeinv0+QYnS9PEqqTfiFCX7xOAef7iEsIe/ysYVRljSIPwgvo7NkE
         GhnhDpw7BrTea+n/zRs6gXLABZzQ7EAuK4UmbkIV2aq6THhZPufVNox0uVVWEHAjNms5
         Hg1uEyeRZj4ykicxVLHQY2T9lScRi9Wqm356LD8lcNC//6k0yHWoFtjkB7zNczXzIUH3
         b/ZIn+i3pZ+S4c9gei46eze1Z3PzCvx7xeLDVPBy9FLV6i4k8zR2PFI0DNEmsbHMioFH
         L1ZZK065YuMEsMu7rO10M5m3t6EawcuiCNItx8RNbToSQsrIbON4lRnQ7/PtZ8DHsdek
         8eOw==
X-Gm-Message-State: ANhLgQ3QbC1aIAH+yZDD46T7KnB/h6MQJqUMgedWa5vlAI+FW7BF0VQ+
	bpE8SJGaXPXh49tmFhCZ5O4=
X-Received: by 2002:a17:90a:8006:: with SMTP id b6mr128603pjn.194.1583771269877;
        Mon, 09 Mar 2020 09:27:49 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.178.183])
        by smtp.gmail.com with ESMTPSA id d1sm37639078pfc.3.2020.03.09.09.27.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 09:27:49 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH v2 2/3] [Outreachy kernel] staging: qlge: qlge.h: add spaces around operators
Date: Mon,  9 Mar 2020 21:57:27 +0530
Message-Id: <20200309162728.4342-3-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200309162728.4342-1-payalskshirsagar1234@gmail.com>
References: <20200309162728.4342-1-payalskshirsagar1234@gmail.com>

Add spaces around operators cleanup reported by checkpatch.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
Nothing has changed.

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


