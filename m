X-GM-THRID: 6667323453570285568
X-Received: by 2002:a63:210f:: with SMTP id h15mr5951418pgh.18.1552358893968;
        Mon, 11 Mar 2019 19:48:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1281:: with SMTP id 1ls420869pfs.4.gmail; Mon, 11 Mar
 2019 19:48:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy2nd5YTH7CGjVT8kMs3DbOyy5i8J43oP2eIc1A+AjordjKRxCdwKXD+VIJAkczbdcdRAD8
X-Received: by 2002:a63:7444:: with SMTP id e4mr13681779pgn.89.1552358892876;
        Mon, 11 Mar 2019 19:48:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552358892; cv=none;
        d=google.com; s=arc-20160816;
        b=Njx4bIrBdvjdDuQ4qVTKTtTRDPgRRaiE6VDF6fkeuv7E/qox7MhuuKzJMl9PTeJNca
         jafSgG2jcjCe7iaE1UAfZhVezlZ29v4DK8lS/qHCYTWgnSXFvbsXsgQTrkb3XtAdI9xl
         rg9oa12dE5Fsl7bYoAVp4qjd/zRxS7aQggyuTaEVwOxncfrI0csmRSD5Q82JxX8hgDy/
         CHejRalLHVmJOl66zm6QNSrkJZv3wwqN7ArW38u3n/nr1Y0Xx+MwlHdX6wBS2a17A4Ah
         1PzPj6eKWXEKEymlyakyTpgoBGac4Uww5J1cst6mFGcYKxj7uBMWx4e8e90Ka8CKIIcM
         v4ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=NOutNvn5HvBsqFpOBD7VH9fu4UyQrWATmVEQttLxToI=;
        b=MJ0TSWdkukur8Q1E60yCophn2YJ72amHfNiPtuMpLwhhERSKVqXNWPcynaZXttJo7Y
         HeaQ7Q1vOGGW1vx/Nv1/1xmZmpT8+RNdkzVv6Ayi4OL9MJQOf9ksmvpEf6N+8R8Lmrho
         ETpTXHkk/NN6NP4hBO5YIRdHGRVad12VM6hGRElFzEdsD66dOR7oCuiEoPswKfuDp9UD
         A5eDh+PKPPymWStdUn7KG0fwVxWOc/dYjcc3l58qfYqdmyqP243KI3R3gmrCTv7Y/H8d
         HyRyGOSNJ8LJWXey9UR8YJ3bJF0pSecL4fupo0EkPR8Qp6yl11J7WFzfXEK1SmXeemzi
         5/tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mPBU6+4S;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id 197si473303pgc.1.2019.03.11.19.48.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 19:48:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mPBU6+4S;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd41.google.com with SMTP id v10so748645iom.8
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 19:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=NOutNvn5HvBsqFpOBD7VH9fu4UyQrWATmVEQttLxToI=;
        b=mPBU6+4SJPwTBuKYe2uAvDFwPygikARPJfDNPvJUm9xt/QTzpm+A2PWkk+bZO0hlnx
         OuBg9W8Z/JG6XFiSbF/RpboRLAKFkT2m+XV98nGcs9WrwPl6calaNuqL+sd8V8TVB3Hz
         vVAtHBEpgm/ndraQlEtlcm6ue/ut6vDVUHBHWeOm45PHQW3zv8TEFJqkmnyiAy2XFI+S
         dQiHa1FaT3a9BqaMcMxl9hSAPe37ELi3PRmDpzlRnfISRR9Ax8XuCt3YxjXTSA7rwoIh
         P0zel3X5cdgIXWSLgPBD7BRb5adSu+J0AXmKEAyt8Xib2Y2+OEU0wdf3eC6vBWXoQ5S+
         lRkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=NOutNvn5HvBsqFpOBD7VH9fu4UyQrWATmVEQttLxToI=;
        b=LTr70Jcdg1C9R1H8zykTNwIEJfOkKgqlarkMS+pvqCjYaasV711BMwhx3kbP7vQM1f
         l/PW9AKoPBo//TiSjOwVwBCNj3cLR0DEKJYDPgiFxAUAxdJAD/0Hih6D6iXavhwhH4cT
         IMlypSzZBLtgkTeaej4fUJHMXqE0WlT+XinmnH7p5A7WGa94ZbrNeBxixbHSg5Xa6dYI
         arFpC4N61Zo790qC7DwFu5r+aigxgl13PFNRT2ReCGy560uXacX6tcyuilSEfSWzRKih
         3Gr1kDEFtCG1JbQGzeyCnoJuUd+0tq6u7vqIp4/5Q/2j4LbbOHGB+YngJIkTAq1wn/OY
         ULlw==
X-Gm-Message-State: APjAAAXqO8hbyvDFD5Ubkmyv6QLNuIQ4QGpfHSJJwaVhn6XHu0rbGOmd
	1BdO9t8qzKxWmN84IO3Sy1nAMTYNM8PF
X-Received: by 2002:a5d:980c:: with SMTP id a12mr20706026iol.58.1552358892176;
        Mon, 11 Mar 2019 19:48:12 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:b983:8640:fa8b:1024])
        by smtp.gmail.com with ESMTPSA id z4sm3045892ior.27.2019.03.11.19.48.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 11 Mar 2019 19:48:11 -0700 (PDT)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Branden Bonaby <brandonbonaby94@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: octeon: Lines should not end with a '('
Date: Mon, 11 Mar 2019 22:48:06 -0400
Message-Id: <20190312024806.13728-1-brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190312021955.12939-1-brandonbonaby94@gmail.com>
References: <20190312021955.12939-1-brandonbonaby94@gmail.com>

Start function arguments immediately after opening bracket.
CHECK: Lines should not end with a '('.

Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
---
Changes in v2:
	combined both patches that change the same thing into 1 patch
Changes in v3:
	changed subject line to match correct subsystem and driver

 drivers/staging/octeon/ethernet-tx.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index 317c9720467c..20f513fbaa85 100644
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
@@ -413,8 +415,8 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
 		queue_type = QUEUE_HW;
 	}
 	if (USE_ASYNC_IOBDMA)
-		cvmx_fau_async_fetch_and_add32(
-				CVMX_SCR_SCRATCH, FAU_TOTAL_TX_TO_CLEAN, 1);
+		cvmx_fau_async_fetch_and_add32(CVMX_SCR_SCRATCH,
+					       FAU_TOTAL_TX_TO_CLEAN, 1);
 
 	spin_lock_irqsave(&priv->tx_free_list[qos].lock, flags);
 
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


