X-GM-THRID: 6666547009386708992
X-Received: by 2002:a05:6830:110:: with SMTP id i16mr17262962otp.38.1552252495639;
        Sun, 10 Mar 2019 14:14:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:be04:: with SMTP id o4ls3935627oif.1.gmail; Sun, 10 Mar
 2019 14:14:54 -0700 (PDT)
X-Google-Smtp-Source: AHgI3Ia/sSEssY49X1niK8MhJXW0cycJF43SM7Q5wfbuSHuRW+ejFeq9ghlOzEDuSodFMOYRAsmT
X-Received: by 2002:aca:abd0:: with SMTP id u199mr29376210oie.3.1552252494844;
        Sun, 10 Mar 2019 14:14:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552252494; cv=none;
        d=google.com; s=arc-20160816;
        b=vTRzVV7o2dSTPjE6CXl24UnlNkfyKv0xN3Zcj8go1lEPL6mYLODxvnnJYtzyiidblG
         83tny4FLjGZQ/rQkjdjiLKvbFyXU1FRPnmcGjENPkXyaoviAykitzCVP+uUZed5NWhYu
         xmo4i1p+RN6vQAeRSONCPN6UA2tsjtBYma66LD2Ao7ufRMkxEtQU7wXSJ+j6i1hTpjoF
         xQiV9uhPEaa0+Pi6nD0TIGd1kfSKcxAOpwq+Eej80M8m6DbW6jCcdCp89CGsfrfvBKuj
         EiarHHKcZpPpahNcM1tgvDvlC5gYd3/Q6E+DI88uIPPiDIHzZQiSDSVaT929PiiEGmPG
         j/1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=lEyfdhzcU+zLipwY1xnPfxIfoiS5BByf/HTj0swa79Y=;
        b=FFk59jYPcUVRp7oMswy0shJcPs7MGM9tskNA98tuP8FOfOoitaAgjsp79pXRNnpks0
         RYRUbw1578y6wG/TwkSCNqGZGT3GyybBpWGpIb0b3lOT+1bI2dkfSvFqQ/a/Dpr5lG0+
         6Oqu7HzJwKJjsfEkXgcCUW9vD7rnEr1vX9oP0sxJ1+gOCysraErsSD04LjDZOzhnz0aF
         DLMN3ThW30FEwoFIbuIp/e3/bvHER9JSV6AqqnI+ZnqSZGf5sYMul1o1koq2wdF1hgc1
         YTLUBk7WzYLSWgVon/VfC3UzVAhe21ch/liYilNYseQ8L9AYagVU8r7h3x/xI2mx5n1r
         ctjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LOmyiQb0;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-it1-x131.google.com (mail-it1-x131.google.com. [2607:f8b0:4864:20::131])
        by gmr-mx.google.com with ESMTPS id 135si255199oia.1.2019.03.10.14.14.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 14:14:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) client-ip=2607:f8b0:4864:20::131;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LOmyiQb0;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x131.google.com with SMTP id v83so4248219itf.1
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 14:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=lEyfdhzcU+zLipwY1xnPfxIfoiS5BByf/HTj0swa79Y=;
        b=LOmyiQb0nUoNWQdBYNwx1PD8p8uFVjKhons6cbgpgDNTG+LEDvtrby+sJy7PUibGhz
         BDb9EE4GhVNilP89CpGLD5arkK7s6t/PsYHvvNOg5r+biOk3hP5qY/v+DMmQiYG+Cbre
         eaATIuorR7OiStba2PCGZAHy9ENtDn0f5elAD5U2yfBoU5ef2JPz98nEuJ/XcRZTynmC
         Sk37PZg7zF28RZQz7TALSRU2I404Tv/wcXJE+Gf4/6MDjpa7UEpK+3+L775F8jPiDSHt
         2z6tnOdJAPv631m5fFqOWLDE97XTuv/BWn6nP5jbqLHPRp4bJHnChiD9yeKWjCBMTYiZ
         H8lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=lEyfdhzcU+zLipwY1xnPfxIfoiS5BByf/HTj0swa79Y=;
        b=T2TzY3cTGA7qpc9D8DDZ0IlTVeiF1nzKSJ6Qj86GP8AIg0R3I/MFFTluY77Zxmb4Zf
         3+1m6CmP5ofXMwzSozBUUccPT0cx8g7ciPsuDBJk2Rhgmqzir8MEWQaCxTFy7M/0i3XQ
         RPsn7GKDrJbgtEuW20D0qxJfVoS/D9+sHryXIIPHMF2PBrlCZmY3sbh4cBg2KyURzMur
         pT/+g4CfDfYrHTAghDQn7S9H2IBgqM6ecCrfmeUe93Usz0IaGNVDsgDauZi8E7kgTMUT
         Hi453CVniP5IF8gXdeAYWUDJNlZmLJmHs3nTbrJ3wAb5uk+cIQkrIN3okHZPIlYNVOed
         UDCQ==
X-Gm-Message-State: APjAAAWGcI5W1yHQogYY4CT+mGIe3UvZFVmAHehrk+B8/pn0+TylDsXy
	obYu0EPG6bQ/8qQDvpLBfqy7gMJfiAke
X-Received: by 2002:a24:fa08:: with SMTP id v8mr15656544ith.116.1552252494338;
        Sun, 10 Mar 2019 14:14:54 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:d93d:e73d:b219:4764])
        by smtp.gmail.com with ESMTPSA id w74sm7269452itb.44.2019.03.10.14.14.53
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 10 Mar 2019 14:14:53 -0700 (PDT)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Branden Bonaby <brandonbonaby94@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: octeon: Lines should not end with a '('
Date: Sun, 10 Mar 2019 17:14:30 -0400
Message-Id: <20190310211430.27369-1-brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1

Start function arguments immediately after opening bracket.
CHECK: Lines should not end with a '('.

Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
---
 drivers/staging/octeon/ethernet-tx.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index f89b309ffa6f..20f513fbaa85 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -214,8 +214,10 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
 				 * Get the number of skbuffs in use
 				 * by the hardware
 				 */
-				skb_to_free = cvmx_fau_fetch_and_add32(
-					priv->fau + qos * 4, MAX_SKB_TO_FREE);
+				skb_to_free =
+				     cvmx_fau_fetch_and_add32(priv->fau +
+							      qos * 4,
+							      MAX_SKB_TO_FREE);
 			}
 			skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free,
 								 priv->fau +
@@ -280,9 +282,9 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
 		for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
 			struct skb_frag_struct *fs = skb_shinfo(skb)->frags + i;
 
-			hw_buffer.s.addr = XKPHYS_TO_PHYS(
-				(u64)(page_address(fs->page.p) +
-				fs->page_offset));
+			hw_buffer.s.addr =
+				XKPHYS_TO_PHYS((u64)(page_address(fs->page.p) +
+					       fs->page_offset));
 			hw_buffer.s.size = fs->size;
 			CVM_OCT_SKB_CB(skb)[i + 1] = hw_buffer.u64;
 		}
@@ -491,8 +493,8 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
 		cvmx_scratch_write64(CVMX_SCR_SCRATCH, old_scratch);
 		cvmx_scratch_write64(CVMX_SCR_SCRATCH + 8, old_scratch2);
 	} else {
-		total_to_clean = cvmx_fau_fetch_and_add32(
-						FAU_TOTAL_TX_TO_CLEAN, 1);
+		total_to_clean =
+			cvmx_fau_fetch_and_add32(FAU_TOTAL_TX_TO_CLEAN, 1);
 	}
 
 	if (total_to_clean & 0x3ff) {
-- 
2.17.1


