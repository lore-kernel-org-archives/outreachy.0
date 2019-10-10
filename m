X-GM-THRID: 6745885278091608064
X-Received: by 2002:a19:fc14:: with SMTP id a20mr7534060lfi.76.1570743627171;
        Thu, 10 Oct 2019 14:40:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:f613:: with SMTP id x19ls518826lfe.16.gmail; Thu, 10 Oct
 2019 14:40:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwvCRx1rDaYujbT6A3gC4ibLZrrPUOXxPVZ9zHXXbZm3Ud77gWGtlmuIT7+iF6dOBWXh5Ao
X-Received: by 2002:ac2:5a1e:: with SMTP id q30mr7061106lfn.30.1570743626107;
        Thu, 10 Oct 2019 14:40:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570743626; cv=none;
        d=google.com; s=arc-20160816;
        b=vP8SP3rlrOdU4L8x8XINecConuJJ3fi/pG2Z6v+jYY9jy3BX11o3RxGe2d2a3LnI0u
         WcipQQy0Knh8uBFDFrVd730DdqMYfeRC3ApyPsUE8ErbdwxIhzD3suC4qI5eS47vQHE2
         6SbvKX9yVLrjk1TXv2OtCMXFKnBc8EZoC+SBG2nEZZw1tWVGopYGqRnFJkikZNXuWemO
         IYmnwpVtrTASHGNZG570WRSyoEg9HUAtdUfYE4HgnH7FTEsCeYBBTnMpIjWFXFv5yYjc
         HQE+bvM9Jl3EBeVjkujrf/oFxubgm3dDRixwHtzP/2JjXdE8+qR3dPGetpIFnATil7Z2
         g4bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/GVGRarQ+bdKBU0Z2N7AABfx+Km0CibFKi9Lr7Iu2LQ=;
        b=ZmrROBl2D87Mk0MuUEsHCYC5Cj4gzfPzSfwwtzKxjnfa1KKXQl0d227HweTtB2cbRf
         DH5F2Q4PUprDBte24PcLFKCa00N3isuh3gyVooR51HBBFSG+xCgFsq1Ct8qdbwJogfBc
         IX/7oCb+TpYTIQ1j61ctFZMhiZj5aGQo5EkzZc9nUvDVInyDJR3LEDBGhZBciDRJuI6D
         1Q77L7G955FTvrSCeVKn2qsk92SRGOA7hOiJzdoe20cg95yx3VLUPw3gHsKFSigxOx03
         4rju2wS0zrQf5FxlOycz3kXviJ4jufZBbul67zBsnOPlaTFOL6Y97e50m9/SmvfAgSAD
         /PJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iC62pWf1;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id h6si46104lfc.3.2019.10.10.14.40.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 14:40:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iC62pWf1;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id y19so9593122wrd.3
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 14:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/GVGRarQ+bdKBU0Z2N7AABfx+Km0CibFKi9Lr7Iu2LQ=;
        b=iC62pWf18BZefYC7rZowamPGyqorw0yhW/QM8Ue2NAanuuXQjHA//P2HKmhvv7X9Di
         y2P0/prdc9zX+cgZDYesbheP2d4y5Sn7QOsFm7YFSAEsmOOBraQ8osaojW9rwVoQFB/G
         U0vw8YFTaQsXQiJjNWSA3CRCuB6p7WtjAqbltDEM+pVz1EPbZZA91iQ4RK1F3N9i1Lje
         8QC+x+7Xm7WoeOGl8iLPfchQQ+J5f5f8E10xP0fIvR193ZIn/NokIiwYD9xZta/cQPuA
         0zTuhfjPWNpQxevhIahdJZUK3BUuuTcFDDDlsABMUM2Ou1+BAjrJ/UqzeRiiILoBZCeD
         ldTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/GVGRarQ+bdKBU0Z2N7AABfx+Km0CibFKi9Lr7Iu2LQ=;
        b=igwCLWJQslE1tgAEoX3lKCknYy46JL5A8ebitJkgIo2mt4G9F4iKyoirSWY8lcQEiE
         ai5VLCCw2+/I2k/kaK1C5H6m6pAEOfSKwwi4nD+gJUrchzYMgrfwq8AwXoy6d467E2gd
         QWynGwfzx97lH7WqgQggMslshXHzjP00QbaWAcpMC1x7PKKA3t1bjuM1zoKDTBV7WZzF
         MT/X1wz2kpX60vKw61rUIE9A6QiDQMctmCAY4RfawIqTaqA994Q6XXtxYFz7Fk2j1Hmp
         Df++sV0xyFyVGPBD2Cs/nIuYDkXQN73rJHo+Frd5SO2AdM8BCcYKn9zK0qxA8F7jU1Co
         c9kw==
X-Gm-Message-State: APjAAAUnL3jS6pB/KxiFjj5lE3iuwwaSbcV3A8KwZeQlkGkfBvgfDF/d
	RwiBbouM4fAQWUvV8cJTfTSV3thueiD8
X-Received: by 2002:adf:ba12:: with SMTP id o18mr134697wrg.147.1570743625253;
        Thu, 10 Oct 2019 14:40:25 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.googlemail.com with ESMTPSA id h63sm11455423wmf.15.2019.10.10.14.40.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 14:40:24 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	dan.carpenter@oracle.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [RESEND PATCH v1 4/5] staging: qlge: add space to fix check warning
Date: Thu, 10 Oct 2019 22:40:05 +0100
Message-Id: <20191010214006.23677-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191010214006.23677-1-jbi.octave@gmail.com>
References: <20191010214006.23677-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add space to fix warning of preferred space near the division operator
 issue detected by checkpatch.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index b8ff9eccc472..eb993207d224 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -72,7 +72,7 @@ static int ql_read_other_func_serdes_reg(struct ql_adapter *qdev, u32 reg,
 		goto exit;
 
 	/* set up for reg read */
-	ql_write_other_func_reg(qdev, XG_SERDES_ADDR/4, reg | PROC_ADDR_R);
+	ql_write_other_func_reg(qdev, XG_SERDES_ADDR / 4, reg | PROC_ADDR_R);
 
 	/* wait for reg to come ready */
 	status = ql_wait_other_func_reg_rdy(qdev, XG_SERDES_ADDR / 4,
-- 
2.21.0


