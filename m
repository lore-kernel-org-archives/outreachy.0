X-GM-THRID: 6338829541865160704
X-Received: by 10.157.12.41 with SMTP id 38mr7358281otr.89.1476045581987;
        Sun, 09 Oct 2016 13:39:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.223 with SMTP id n92ls15560ioi.26.gmail; Sun, 09 Oct
 2016 13:39:39 -0700 (PDT)
X-Received: by 10.66.7.10 with SMTP id f10mr3836818paa.127.1476045579657;
        Sun, 09 Oct 2016 13:39:39 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id p70si613472vkd.0.2016.10.09.13.39.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 13:39:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id b75so6745495lfg.3
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 13:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1zyQbsh2emf4YbqHM6tuljKV/oDHe6+Is+ZhKtnzNEM=;
        b=UjmbSclawTzXopvOAwhzRQsyJMd8QmFU1WCj/gtRY/DpiqVAFWRyys8GwD3xwuk0yN
         Ps4Yfpvl0C0ELGFkrUZOb+uqvctojhwi6AzPny7hVSBzDwYsPOxCo9JzKtD421j5A8i6
         m8t8E43QvdMQ5fDspHsmL68Z/H/0CS6EYtg7VsagKxdKTkNmcxuxiP/lju2SDYDVM89O
         AcGul+OCtBiVu8LHeXEb+tt+/jk6uvDhRKQAOw8sIPu2r6eYHXEzk2mtAnOj8WrhYP99
         kkgCrEolNtBLR5XcdJTevP1Al2gj8Luocdpn4lvcgx4WA8MPxxi8lU3TwhEzv35Zi3ng
         k4Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1zyQbsh2emf4YbqHM6tuljKV/oDHe6+Is+ZhKtnzNEM=;
        b=fFwn6kQC488C+Fd2Qth4goHvy+TOjFMerVMaQJkPebjy5HIcVdTEwGJk9UOSeVjxuN
         s8FaW39gL+nteZdTStczcxbVEPGfW5Dipy5jxCM91pekyNRj1LUyWJjJscJ17xNYZkdA
         pnV187TFNU5DlYmoOhbaVVBwlIJYzDR6Lktt2N7IseSLqAJ4FuHORMkk932NC/VW68GP
         GcngOVXd4gt7ajhe+tq6WDC/FQoytF1grOxFMuHBHCxK09WK1Ui6sL8Hdo7tsh4pg2om
         jyGxEVTxEApoqrVMRoC97tMb3yWIm81oL99zK1mUHX3Mp0Tsm+SwBwTCwp0Ia0ACmmaE
         O/zQ==
X-Gm-Message-State: AA6/9Rk4MstsU1cMZ+P0rzFHVI5iSXaSrYg03MVVVU6WTAgd9G4W+BDVeP5cp+CsfuoKNg==
X-Received: by 10.194.148.7 with SMTP id to7mr7660114wjb.31.1476045578985;
        Sun, 09 Oct 2016 13:39:38 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id h3sm33738410wjp.45.2016.10.09.13.39.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 09 Oct 2016 13:39:38 -0700 (PDT)
Date: Sun, 9 Oct 2016 23:39:37 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: ks7010: Replace printk with netdev_*
Message-ID: <20161009203937.GA1549@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This is a patch to ks_hostif.c file that fixes up a checkpatch.pl

WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then
dev_info(dev, ... then pr_info(... to printk(KERN_INFO ...

For netdev devices netdev_info and netdev_warn is preferred over
printk(KERN_INFO/WARN..).

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>

---
Changes in v2:
	-rebase the staging-testing branch
---
 drivers/staging/ks7010/ks_hostif.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index c57ca58..8798b63 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -476,8 +476,7 @@ void hostif_data_indication(struct ks_wlan_private *priv)
 			skb->dev->last_rx = jiffies;
 			netif_rx(skb);
 		} else {
-			printk(KERN_WARNING
-			       "ks_wlan: Memory squeeze, dropping packet.\n");
+			netdev_warn(skb->dev, "ks_wlan: Memory squeeze, dropping packet.\n");
 			priv->nstats.rx_dropped++;
 		}
 		break;
@@ -511,8 +510,7 @@ void hostif_data_indication(struct ks_wlan_private *priv)
 			skb->dev->last_rx = jiffies;
 			netif_rx(skb);
 		} else {
-			printk(KERN_WARNING
-			       "ks_wlan: Memory squeeze, dropping packet.\n");
+			netdev_warn(skb->dev, "ks_wlan: Memory squeeze, dropping packet.\n");
 			priv->nstats.rx_dropped++;
 		}
 		break;
@@ -560,8 +558,7 @@ void hostif_mib_get_confirm(struct ks_wlan_private *priv)
 		dev->dev_addr[5] = priv->eth_addr[5];
 		dev->dev_addr[6] = 0x00;
 		dev->dev_addr[7] = 0x00;
-		printk(KERN_INFO
-		       "ks_wlan: MAC ADDRESS = %02x:%02x:%02x:%02x:%02x:%02x\n",
+		netdev_info(dev, "ks_wlan: MAC ADDRESS = %02x:%02x:%02x:%02x:%02x:%02x\n",
 		       priv->eth_addr[0], priv->eth_addr[1], priv->eth_addr[2],
 		       priv->eth_addr[3], priv->eth_addr[4], priv->eth_addr[5]);
 		break;
@@ -571,7 +568,7 @@ void hostif_mib_get_confirm(struct ks_wlan_private *priv)
 		priv->version_size = priv->rx_size;
 		memcpy(priv->firmware_version, priv->rxp, priv->rx_size);
 		priv->firmware_version[priv->rx_size] = '\0';
-		printk(KERN_INFO "ks_wlan: firmware ver. = %s\n",
+		netdev_info(dev, "ks_wlan: firmware ver. = %s\n",
 		       priv->firmware_version);
 		hostif_sme_enqueue(priv, SME_GET_PRODUCT_VERSION);
 		/* wake_up_interruptible_all(&priv->confirm_wait); */
-- 
2.7.4


