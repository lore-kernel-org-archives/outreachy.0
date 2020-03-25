X-GM-THRID: 6807989220393615360
X-Received: by 2002:a9f:2ac3:: with SMTP id d3mr1034093uaj.110.1585108512681;
        Tue, 24 Mar 2020 20:55:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:ce9a:: with SMTP id c26ls74467vse.7.gmail; Tue, 24 Mar
 2020 20:55:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvmUCTb/GGIZn4pKhucAOAYtzEHW1CSrSqXMdTVJU/cXSUaGYvepE5H62ttH2fuf8JNuzmz
X-Received: by 2002:a67:ea54:: with SMTP id r20mr992840vso.217.1585108511402;
        Tue, 24 Mar 2020 20:55:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585108511; cv=none;
        d=google.com; s=arc-20160816;
        b=coqnUDNNWQn3VGkro1Jys4JiOFWzWJO9sJupFn4JvWO/3SK8PYHeiHABFG8haiTtW/
         8p6QFGQcbzjOgITbU2J5gyPQcb+MHtJ111UfYkC6N980DCxP+9rWPM3hcCzIQBfDF/Ff
         +gPUpDqluQerPax/loK/j/mlXYjv5yQi13E0oi8ZbC5yqyWoSaVdbvdhtvfF/td60q5N
         6xC1+3OGzOuEuTJgS8TeWxZUchXOblAsozrnfpU0sxsYszK8eY3+wqt2iyJ+5rpXnVYQ
         CHhMSBHVIoeGuI5rNNLAAXBG14P+NKCcgxPlGaDetfzRWYQAveVkWMv+lTORh84AlM9k
         4hdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=JJqrzEMmAXW7Xh5xdwsF86XuLtnl1BssSeswSwEsoLs=;
        b=Hk0ouJLIONB+YCalSnVa70AP4Rvd4mOAmXWxyoIShuT27GzsNVF9AIAmD4CIc6z75H
         Jl5KjtEo3f++3Zo2XkwfaBzYdFBZNMfTf1dcv1CeZ2qZLJz+4TDjURICOSpmew/C++ca
         8mEQeNkIDAhBFrdWXT1SJ783BPrFISLr73zU/HVC92yqGXt1JYZNO7aSQ2AxoksHnZ/0
         /W1jR01Fpvt+mL26cGI0SiLlm0kdILi9Mx3PiXUne0LlB/j8hAGHBvEOAjRsJLP3txAz
         aerfNICm3szInneoCGYC8kPHcEJIuqvmQ58RYVtKaqpUUcY7IqpD6Om4Q4X69xUnMMMn
         DQaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NWEovkOD;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id i13si1552269vkk.5.2020.03.24.20.55.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 20:55:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NWEovkOD;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id ck23so465452pjb.4
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 20:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=JJqrzEMmAXW7Xh5xdwsF86XuLtnl1BssSeswSwEsoLs=;
        b=NWEovkODmJDf0I+i0vRMZwv9nIOUmXTECWB98gaUEq6ymLybY2E74u3/JEIjP4jUbN
         uUzAZMQaprN2rXDal4kC1IfSiMCsk1e6UaFkykzhUuFCs6q/FyaMct+XAZZVF1fbj4zk
         9DzCVcqqlqnlFAct9NP9dpAQnKz+bakQAY7+n2UDvEcCuRdM4XXZrjfjrjQiHisnEClD
         0xi+ZkcuFvc+FmCZ5Q7tejbQveXM5g6LMpUcZljpHcZ9qKyC4d9v8rdeDfKvFmu6MxgM
         7uXaHH5MIr+Xw/E90A93vJOYQLnzver0vOh1oHcd4EuSD5KtfK5FPoSOyFb1nRi36igA
         pPJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JJqrzEMmAXW7Xh5xdwsF86XuLtnl1BssSeswSwEsoLs=;
        b=gdwOrzyow4ZuqzZvLB3hMHzRm1Oo/B5MU8xHrKB6vVdiuOcp7j489at/o5ajyGFpbf
         EOelUD49Ms5r3pp1bunsUGhtT4tGd2yfwZDy2ZIWL427ePt2E9KDqG1UnHFHT+siddez
         //1f+yTNYyyRtCM8et5JgaW90pStjXiUFBBq/TeHPxl27D8KbwyKhSdCl6yZE7QtjZ9J
         qzQWgJSpfFdRRQCtAq2j7wTDB6ngxFQZ2GUqCyQnDimsB6em2iFsbvQgf5Ac1PebK1yh
         hX4yVdKrljtTJbHRurzgYI29+yfMjX+UrQgb+d8iza5toTD8KNrhVEdRFIIyPwLHaBs2
         JUOw==
X-Gm-Message-State: ANhLgQ3dzIHSokMgcpfE4hLV6Nw6v/reHrQm7NWFhvz2sPbsMx44InnC
	Pj6xVVrKamRTLBGc8pU0fzBkzHqnbgQ5Gxxy
X-Received: by 2002:a17:90a:cb18:: with SMTP id z24mr1332261pjt.67.1585108509951;
        Tue, 24 Mar 2020 20:55:09 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.229.149])
        by smtp.googlemail.com with ESMTPSA id w18sm101053pga.21.2020.03.24.20.55.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 20:55:09 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH] staging: hp100: Remove extra blank lines
Date: Wed, 25 Mar 2020 09:24:10 +0530
Message-Id: <20200325035410.23802-1-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove extra blank lines from the code blocks.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/hp/hp100.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 430395908011..67320292d254 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -220,7 +220,6 @@ module_param(hp100_mode, int, 0);
 static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
 			struct pci_dev *pci_dev);
 
-
 static int hp100_open(struct net_device *dev);
 static int hp100_close(struct net_device *dev);
 static netdev_tx_t hp100_start_xmit(struct sk_buff *skb,
@@ -346,7 +345,6 @@ static __init int hp100_isa_probe1(struct net_device *dev, int ioaddr)
 	return hp100_probe1(dev, ioaddr, HP100_BUS_ISA, NULL);
  err:
 	return -ENODEV;
-
 }
 /*
  * Probe for ISA board.
@@ -871,10 +869,8 @@ static void hp100_hwinit(struct net_device *dev)
 	/* Finally try to log in the Hub if there may be a VG connection. */
 	if ((lp->lan_type == HP100_LAN_100) || (lp->lan_type == HP100_LAN_ERR))
 		hp100_login_to_vg_hub(dev, 0);	/* relogin */
-
 }
 
-
 /*
  * mmuinit - Reinitialise Cascade MMU and MAC settings.
  * Note: Must already be in reset and leaves card in reset.
@@ -1127,7 +1123,6 @@ static int hp100_close(struct net_device *dev)
 	return 0;
 }
 
-
 /*
  * Configure the PDL Rx rings and LAN
  */
@@ -1178,7 +1173,6 @@ static void hp100_init_pdls(struct net_device *dev)
 	}
 }
 
-
 /* These functions "format" the entries in the pdl structure   */
 /* They return how much memory the fragments need.            */
 static int hp100_init_rxpdl(struct net_device *dev,
@@ -1209,7 +1203,6 @@ static int hp100_init_rxpdl(struct net_device *dev,
 	return roundup(MAX_RX_FRAG * 2 + 2, 4);
 }
 
-
 static int hp100_init_txpdl(struct net_device *dev,
 			    register hp100_ring_t * ringptr,
 			    register u32 * pdlptr)
@@ -1568,7 +1561,6 @@ static netdev_tx_t hp100_start_xmit_bm(struct sk_buff *skb,
 	return NETDEV_TX_OK;
 }
 
-
 /* clean_txring checks if packets have been sent by the card by reading
  * the TX_PDL register from the performance page and comparing it to the
  * number of committed packets. It then frees the skb's of the packets that
@@ -1732,10 +1724,8 @@ static netdev_tx_t hp100_start_xmit(struct sk_buff *skb,
 drop:
 	dev_kfree_skb(skb);
 	return NETDEV_TX_OK;
-
 }
 
-
 /*
  * Receive Function (Non-Busmaster mode)
  * Called when an "Receive Packet" interrupt occurs, i.e. the receive
@@ -1946,7 +1936,6 @@ static void hp100_rx_bm(struct net_device *dev)
 			hp100_outl((u32) lp->rxrtail->pdl_paddr, RX_PDA);
 			lp->rxrtail = lp->rxrtail->next;
 		}
-
 	}
 }
 
@@ -2030,7 +2019,6 @@ static void hp100_clear_stats(struct hp100_private *lp, int ioaddr)
 	spin_unlock_irqrestore(&lp->lock, flags);
 }
 
-
 /*
  *  multicast setup
  */
@@ -2797,7 +2785,6 @@ void hp100_RegisterDump(struct net_device *dev)
 }
 #endif
 
-
 static void cleanup_dev(struct net_device *d)
 {
 	struct hp100_private *p = netdev_priv(d);
@@ -2918,7 +2905,6 @@ static void hp100_pci_remove(struct pci_dev *pdev)
 	pci_disable_device(pdev);
 }
 
-
 static struct pci_driver hp100_pci_driver = {
 	.name		= "hp100",
 	.id_table	= hp100_pci_tbl,
@@ -3016,7 +3002,6 @@ static int __init hp100_module_init(void)
 	goto out;
 }
 
-
 static void __exit hp100_module_exit(void)
 {
 	hp100_isa_cleanup();
-- 
2.17.1


