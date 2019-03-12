X-GM-THRID: 6667323453570285568
X-Received: by 2002:a25:4042:: with SMTP id n63mr17357347yba.101.1552357211912;
        Mon, 11 Mar 2019 19:20:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:bb8a:: with SMTP id y10ls1278366ybg.15.gmail; Mon, 11
 Mar 2019 19:20:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxO5FjIGvwJmvfqxyoe8WN2LbE8IWu2h7GIrlfdWsOYS4vuehsLZFypE209L/PoaaltcVIz
X-Received: by 2002:a25:b941:: with SMTP id s1mr15516078ybm.99.1552357210935;
        Mon, 11 Mar 2019 19:20:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552357210; cv=none;
        d=google.com; s=arc-20160816;
        b=rUhxrhCCC4VEL8B+PCVaV5aQYzpQGnkabZnqeSlKsP2I49sAztqPXpmz5m5KKQTy4P
         mzykQ3YXiYs5+XRaz4goz94DdZj/28TfB1RHs4cawe6Rbvk6nmi3kbS5QPYw/hiIG8Ua
         5pPYo+yBb+42H2c8sOX1gQaRlTumFgRigSY8ZzLtNoxX+lNMX/OxCxSPiXOPEujarR7x
         bNJM5gQkSzuHWJVX/n1UYvrjuPUMbg9xbTNbq9BhOXlg8THzmQR1NbsLzZegWbTEWF9R
         qnE45Vqcm2EsbyF8dsTYWYnqtJKosfQfsMgO/97TAb7AsEaxvKyfuvH9fWZsZHziS9nJ
         A5AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=dIN0NPHzb+SnrAKJWTMpDOD44bPnDxJGBZ/zcFcoBhc=;
        b=FVgUZXUq+mUdYcJo9dMoeg09Nc6tZmuEGBIfamx4MFN+eqEx8fLEmEQoiFYY8SKhHu
         akb8Yx9Dsy8mmj3TxCE1VZ583bMrDsSzEQHQNyNpkhCzXFc67i5sqd3d9wbjAdtrnneq
         IxmqFgzCoVRMxYDGpVxfs5Z+Zv67h8srXmQNGAMElb0++n8CaZKMsqw8HTOkVR07CO2W
         yOzLgQwTrfCg15XMKAP9l/OzcXWP0Qr1fsFHLBhMIwVYMG54ctG+RHuxd2dPD/8xz8Iz
         TQ1a1fGRrhpKHBwBSKTST7JqcbqaHHeYTC+dFdal/hphp+OaRzCx8yjfK/Z1v9+OBAhQ
         7gVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PsUefZW7;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-it1-x141.google.com (mail-it1-x141.google.com. [2607:f8b0:4864:20::141])
        by gmr-mx.google.com with ESMTPS id k62si374429ybb.4.2019.03.11.19.20.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 19:20:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) client-ip=2607:f8b0:4864:20::141;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PsUefZW7;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x141.google.com with SMTP id l15so1983043iti.4
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 19:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to;
        bh=dIN0NPHzb+SnrAKJWTMpDOD44bPnDxJGBZ/zcFcoBhc=;
        b=PsUefZW7VbBsDGfNHrBkFKcF6NYi8o8JyEo/SCI3kBdxwrI+84z6Zx2wsHdGoydAz+
         UpMPXjLcvjyikcANITHLd3OWQ9q9AnSjLhHzUte9NJBj4u97qfYWSSS9/rpugZrgH+N6
         w41VAfl4RRXhC6IKAp0Tu42u7t1EOoeuGcbL5ABNjTnxRthDejdeePCsHjXVlLC0YkOL
         +UuyyNmzR7KXt1OO0fuTBceVPKduazNCAITtxAqEnLCCq6V2Fq11cBkYhbkfiIXJlYms
         z5DHObGOHQLerL/pxLt+oxoi0xO4C9j8Kpu8BFCK9fenOmdK//uF0g8qFcW7Y6GggSL/
         KvFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to;
        bh=dIN0NPHzb+SnrAKJWTMpDOD44bPnDxJGBZ/zcFcoBhc=;
        b=rTQRvlkdkN/3zji1KHO7ymgVJF7Es3FnFdGiGuCCQf5paU5dxnVw1EJ48NEAJ45HCf
         EWKrFKulHzRStewZ/30a9RvPgQFf0sATW/G49hi/QP7TbfdIU9PBRSFPDRgWCLId5fs0
         0Cz9OVSNrOdqtG65BCqEhJa1IqDNj7lRr98qcrSixaMiC0h+57mF3b8MuNtaOnUeSLiB
         u1HuSqKeKDM4S4OiTElaU8Bq3ov/e+cfhhml0JiLMb0kw95fVAJzkJRB5MbJA+DJDbYX
         u5lhCoIucWhCRkk52wXuXIMPRWoOYhOXXd5eCAeJD9dwmDUhrXgWMFWXbIpHhHziyXMS
         TLgQ==
X-Gm-Message-State: APjAAAXkNg6Wb313a1cFuw1LzvzOFxDU5fPp9uWV0a/It8gMkbcITeNp
	RBUdwiETyRsjQxPGRA1arcPbPBUYCSas
X-Received: by 2002:a02:4904:: with SMTP id z4mr18796687jaa.46.1552357210174;
        Mon, 11 Mar 2019 19:20:10 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:b983:8640:fa8b:1024])
        by smtp.gmail.com with ESMTPSA id t10sm562389itc.37.2019.03.11.19.20.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 11 Mar 2019 19:20:09 -0700 (PDT)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Branden Bonaby <brandonbonaby94@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Lines should not end with a '('
Date: Mon, 11 Mar 2019 22:19:55 -0400
Message-Id: <20190312021955.12939-1-brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: 20190311225120.GA569@kroah.com

Start function arguments immediately after opening bracket.
CHECK: Lines should not end with a '('.

Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
---
Changes in v2:
	combined both patches into 1 patch	

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


