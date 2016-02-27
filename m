X-GM-THRID: 6256120108487278592
X-Received: by 10.112.155.8 with SMTP id vs8mr911115lbb.13.1456616680869;
        Sat, 27 Feb 2016 15:44:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.59.86 with SMTP id i83ls126881wma.27.canary; Sat, 27 Feb
 2016 15:44:40 -0800 (PST)
X-Received: by 10.28.6.14 with SMTP id 14mr422530wmg.6.1456616680445;
        Sat, 27 Feb 2016 15:44:40 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id c140si63320wmh.1.2016.02.27.15.44.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 15:44:40 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id n186so4352338wmn.0
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 15:44:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1RmqPLz33Z3n4lNO/4pAwxd5OoqGAv0up+/z3PO4ObY=;
        b=1IZD6Rgc6wzMSng8RVhvOTfh4GwpntFpmVQ53qohlXi0QswYBRGq9sK+T+/1B8XO2q
         MjTSzXRodfwMyB0N2u/owvFYLbPZVBm+oTwwgT9kM1SB64qCSSKyWptrIBlggLkDH8+S
         /R5Oig+sraZXe8qfts8EAHIjg21Lk+S9QJYESzujZ24WMtej+Fxr6t1KHV8TOWOShuvw
         Xvkz2GajKJT7rTyZmMiOYNNJc5OHWAPaZYlFU35oWGcZgcRzJO+m2U4EoP9PrcMq7iCY
         smv9UoZjOhMxB1eoczS4Wnd8dtltvwetK8ObmsJsDjA632m8GTLU8kmgWvInvV9Rfjfe
         zgWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1RmqPLz33Z3n4lNO/4pAwxd5OoqGAv0up+/z3PO4ObY=;
        b=XdriJSjVYqfg/GUePXdrv5gVSKKlohUC/7/K//Prr1DHZYuVhk5nFzTK3PVI5u4Mbr
         OjVMQOyiMbZocaMIqJqFs4p7vKLXuJswDC2CJdgdLpvAxOS6rEdlSsp8ahLOi5k+35E4
         t34NlzxWvim76nP/Nft70ESIoZyITFbLbID5Q8M7uH370OMFt56WGroSOWNyaSncbxin
         3br2VfIJWzJVJRYoJkJrc2iybLpVbTA/NkH8dwDwYl29ou0wMz2VJSxHNUotR6DlrMLa
         Z2NeKo9BcAerBW9VQxG+l6mXPc181hd1MDvcsOKRG7SrpBSkXJshYXct66q3y1r8mCNW
         GxMw==
X-Gm-Message-State: AD7BkJKpmkJeC8hpb2djsr/YxHCBwhp6CnzUZvqm8UeLh9+rYiK7vII3hHFFA6PifOd/7w==
X-Received: by 10.28.91.83 with SMTP id p80mr4863491wmb.48.1456616680311;
        Sat, 27 Feb 2016 15:44:40 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id k124sm9130052wmb.11.2016.02.27.15.44.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 15:44:39 -0800 (PST)
Date: Sun, 28 Feb 2016 00:44:37 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 06/10] staging: octeon: Remove blank lines after open brace
Message-ID: <61441811bb34363f735a1a331c34541f1316e05e.1456615452.git.nevola@gmail.com>
References: <cover.1456615452.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456615452.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Blank lines are not necessary after an open brace. Checkpatch detected
these issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/octeon/ethernet-rx.c  | 1 -
 drivers/staging/octeon/ethernet-spi.c | 2 --
 drivers/staging/octeon/ethernet-tx.c  | 1 -
 3 files changed, 4 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-rx.c b/drivers/staging/octeon/ethernet-rx.c
index a7340cf..31522c2 100644
--- a/drivers/staging/octeon/ethernet-rx.c
+++ b/drivers/staging/octeon/ethernet-rx.c
@@ -101,7 +101,6 @@ static inline int cvm_oct_check_rcv_error(cvmx_wqe_t *work)
 		gmxx_rxx_frm_ctl.u64 =
 		    cvmx_read_csr(CVMX_GMXX_RXX_FRM_CTL(index, interface));
 		if (gmxx_rxx_frm_ctl.s.pre_chk == 0) {
-
 			u8 *ptr =
 			    cvmx_phys_to_ptr(work->packet_ptr.s.addr);
 			int i = 0;
diff --git a/drivers/staging/octeon/ethernet-spi.c b/drivers/staging/octeon/ethernet-spi.c
index 2ae1944..063dcd0 100644
--- a/drivers/staging/octeon/ethernet-spi.c
+++ b/drivers/staging/octeon/ethernet-spi.c
@@ -167,9 +167,7 @@ static void cvm_oct_spi_poll(struct net_device *dev)
 	int interface;
 
 	for (interface = 0; interface < 2; interface++) {
-
 		if ((priv->port == interface * 16) && need_retrain[interface]) {
-
 			if (cvmx_spi_restart_interface
 			    (interface, CVMX_SPI_MODE_DUPLEX, 10) == 0) {
 				need_retrain[interface] = 0;
diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index b093d2e..024263d4 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -428,7 +428,6 @@ dont_put_skbuff_in_hw:
 	/* Drop this packet if we have too many already queued to the HW */
 	if (unlikely(skb_queue_len(&priv->tx_free_list[qos]) >=
 		     MAX_OUT_QUEUE_DEPTH)) {
-
 		if (dev->tx_queue_len != 0) {
 			/* Drop the lock when notifying the core.  */
 			spin_unlock_irqrestore(&priv->tx_free_list[qos].lock,
-- 
2.7.0


