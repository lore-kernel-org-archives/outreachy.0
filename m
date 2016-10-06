X-GM-THRID: 6338484445622829056
X-Received: by 10.46.32.67 with SMTP id g64mr398204ljg.27.1475793413937;
        Thu, 06 Oct 2016 15:36:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.167.203 with SMTP id q194ls538097wme.7.gmail; Thu, 06 Oct
 2016 15:36:53 -0700 (PDT)
X-Received: by 10.194.178.166 with SMTP id cz6mr1133860wjc.0.1475793413274;
        Thu, 06 Oct 2016 15:36:53 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id a126si4031wmd.1.2016.10.06.15.36.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 15:36:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id b201so62601wmb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 06 Oct 2016 15:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=otEIwL8vf8nfW79ayYkc6BO41BfRQ1UyA0DJ4oFJ5rE=;
        b=hXXch1PTRvj7qj2UZGcv3T0dcDRwKajcNepbdqgOiTZ1yhzlVvOh60yeB73s6e3qW9
         HaaIX+WwSaZnKlsCDL7A9qf81SwKfjBPHRuH3x3Arj/+KFpY/YTqIP6hyb22Rar4CPdS
         B5jaypZfCU4cC4M293r8moEURbkq6cLYMtteZJbVvS1UoSQP9wDSOF4le7g72Ji6KogA
         x2h+RVOBAFToGHxM+7ZWPtI0t+1q5ku2YYictt4bemBiQkRmTb/cD1cQGquTxP1D8zJT
         gb8pSMcsSG1ixvUk2cwi8Z+P6g4TS6cEm8R6vQkk4q22g5GSZoxlWTWkjQtXQDMk6KEa
         03YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=otEIwL8vf8nfW79ayYkc6BO41BfRQ1UyA0DJ4oFJ5rE=;
        b=irPL1EqJDY7Vp6A3gb8EHcCYftrq1/8rVhIC5QUKqmh0WWIM5SCfzsyBa2gHe+ZDcz
         t8DGztb/4y9D3Z4EThxqPeLiGWdWYrlOEn9dX+MoGFpSaQg3MkIwqCh1V9mtU7L242bi
         PBQDBqsFIr570IGpK7ELnoU8KzoWPWXABtcG3BADVG437MZl8LDyBTZKW62PT6LOaQeh
         tMyieG9ci74/esyxwXU4alemToFXBGCW7LITgIDRYOcZ6+yP4ljY+BHoiciDuZyOaYn2
         HAMNs258ShKdUtChqGl2i083jPvYElPZNyu7Ann/nAnrlKiGZn0o2K669LnESM2okBQN
         t0Qw==
X-Gm-Message-State: AA6/9RmBnF93x1Aw+s0ek+4hKbtLaC2roXfGU7tilleWeJSzpNeNYjB/xkuPD5wV6MDFpw==
X-Received: by 10.28.43.129 with SMTP id r123mr29302941wmr.27.1475793412865;
        Thu, 06 Oct 2016 15:36:52 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id va3sm16755126wjb.18.2016.10.06.15.36.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 06 Oct 2016 15:36:52 -0700 (PDT)
Date: Fri, 7 Oct 2016 01:36:51 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: ks7010: replace printk() with pr*format
Message-ID: <20161006223651.GA8132@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces printk() with pr_warn and pr_info macros.

By doing this it is reduce to silence  checkpatch.pl WARNING:
Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then dev_info(dev, ... then pr_info(... to printk(KERN_INFO ...

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index c57ca58..1241f67 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -476,8 +476,7 @@ void hostif_data_indication(struct ks_wlan_private *priv)
 			skb->dev->last_rx = jiffies;
 			netif_rx(skb);
 		} else {
-			printk(KERN_WARNING
-			       "ks_wlan: Memory squeeze, dropping packet.\n");
+			pr_warn("ks_wlan: Memory squeeze, dropping packet.\n");
 			priv->nstats.rx_dropped++;
 		}
 		break;
@@ -511,8 +510,7 @@ void hostif_data_indication(struct ks_wlan_private *priv)
 			skb->dev->last_rx = jiffies;
 			netif_rx(skb);
 		} else {
-			printk(KERN_WARNING
-			       "ks_wlan: Memory squeeze, dropping packet.\n");
+			pr_warn("ks_wlan: Memory squeeze, dropping packet.\n");
 			priv->nstats.rx_dropped++;
 		}
 		break;
@@ -560,8 +558,7 @@ void hostif_mib_get_confirm(struct ks_wlan_private *priv)
 		dev->dev_addr[5] = priv->eth_addr[5];
 		dev->dev_addr[6] = 0x00;
 		dev->dev_addr[7] = 0x00;
-		printk(KERN_INFO
-		       "ks_wlan: MAC ADDRESS = %02x:%02x:%02x:%02x:%02x:%02x\n",
+		pr_info("ks_wlan: MAC ADDRESS = %02x:%02x:%02x:%02x:%02x:%02x\n",
 		       priv->eth_addr[0], priv->eth_addr[1], priv->eth_addr[2],
 		       priv->eth_addr[3], priv->eth_addr[4], priv->eth_addr[5]);
 		break;
@@ -571,8 +568,8 @@ void hostif_mib_get_confirm(struct ks_wlan_private *priv)
 		priv->version_size = priv->rx_size;
 		memcpy(priv->firmware_version, priv->rxp, priv->rx_size);
 		priv->firmware_version[priv->rx_size] = '\0';
-		printk(KERN_INFO "ks_wlan: firmware ver. = %s\n",
-		       priv->firmware_version);
+		pr_info("ks_wlan: firmware ver. = %s\n",
+				priv->firmware_version);
 		hostif_sme_enqueue(priv, SME_GET_PRODUCT_VERSION);
 		/* wake_up_interruptible_all(&priv->confirm_wait); */
 		complete(&priv->confirm_wait);
-- 
2.7.4


