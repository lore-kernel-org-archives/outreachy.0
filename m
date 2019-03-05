X-GM-THRID: 6664818857456173056
X-Received: by 2002:a25:b941:: with SMTP id s1mr599377ybm.99.1551774064330;
        Tue, 05 Mar 2019 00:21:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:50cb:: with SMTP id e194ls1880235ybb.12.gmail; Tue, 05
 Mar 2019 00:21:03 -0800 (PST)
X-Google-Smtp-Source: APXvYqwfVatpuzgXos1knhiFHxzHhUJgaID7o45lD02bg71gf4hNq7sXA3C7FjjCeCXr+3vQMNzw
X-Received: by 2002:a25:4c85:: with SMTP id z127mr612980yba.69.1551774063551;
        Tue, 05 Mar 2019 00:21:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551774063; cv=none;
        d=google.com; s=arc-20160816;
        b=VKC/szGNEsV5tsPIEsC5Ak3EChZpTN7KcU4MXRmkNRXc3qoAiHYgWcaUFama9FU9dV
         3nQcrFUBMI6p2xAEX5mAFHEg4kjGmEdHk1ysusL+4CWP6HxII3biMlQimsI03tZINusi
         1HKuOzUoJpqkdNwbWP/iNWgv+oL66rXIZbau7NjMkKF65dlnPFAGg8WwcleOLQfzjK4C
         SFEerLQe3iL++uwR4EbjRZ5QRJyhJMCMM5LsVA171g2CRFG6wsuHAsQc8GSh0mGD4GFj
         xhMKIyVaW6RqApGlFoUbh5UJZK/igls5eKiOvkP7mCF1/77A/gfCv3EHVLeCKl28ogXX
         RijQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=TtOIVaGP8FO0eXiWpE78tUpYOiJVlTB+85wxwdPByck=;
        b=gxFjfFQ2MKKVeTgIcQu0XsefPzMdIhh5my3s8gRpy15hAJV1M2jbqFgTIDDQi8yqSI
         1MdDDSA/rEJHPN5K1mwvygVTdS2jWUMMQW6/iImqHk5OED+rR24lCXZoghod3MbxHG43
         gjOPQSVybokNkDimhTYe/2dkvnbHPUCC1biFdyRo/8sMzDPPs9L65YJ1xVXod+SJUNEW
         9/4kculWlVCXH6gpLrckaQiGLkml9sIcedfQiPFU67oj1IK8L2WudJKG0Dmu1sekG72s
         gQiHkFGwDdVmtb1Cown13xootq8RCDVIf8QbyOCjK/XyLy1LQYfIm6Yg3xRkm3l3vWFl
         558w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RNJfzyOk;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id j16si422111ywa.2.2019.03.05.00.21.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 00:21:03 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RNJfzyOk;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id u9so5143075pfn.1
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 00:21:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=TtOIVaGP8FO0eXiWpE78tUpYOiJVlTB+85wxwdPByck=;
        b=RNJfzyOke2jlwwIaW2+L3dYpgnegnZN+SwDYifcqjOX/S5P+BggZHrbkglpjJy8o8k
         DqqNf2zgfKgHlVtMconuFl2YlxlB4n2SoEwOI0DW4GwRtuLrmwhY4w12ap6lP4zdFIrh
         q21IivEdUtSZYengUOiMNpwfIolUtkJyj0dCqKFjj5jgakXOwJJs8h0Mmk1F9nwJduvl
         oAYqx4ST2adlYPSvPKK3Lp3bFbxKDzse6xne1ccxzgfkk+v+uqx6eZO6T1gX5DanDAcx
         lP1m3c1FENi0y6JJsyxSBIMg8jMhirkgKPcoCypRy8FGy2enjeTxFZ4am9krd2kNrMgA
         Aw9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=TtOIVaGP8FO0eXiWpE78tUpYOiJVlTB+85wxwdPByck=;
        b=TT0kbahbLkP98DisWDuAk9YSlcr3WvhDdgzB0tgGrb4O+heE5RpYbjWnzIzz4BSU86
         JzSDmw0/QTaxoO49xueuyJl8hpl7t4RTIIKEF+JQk58kdq9+ars+hZ61OnBC3FRbgQOZ
         BPlLLJidnO95h8keypkS7iw7+xu4ZG0RIzBH0MKc8wP0f+wBBMkk/7h6/r9vhepheAky
         MZCBNBy7bmnPAcxu6L7UeVqR0U5YpLT9Tv4ZzB4+JnMqr4eH6iIvI7qJAS0kCdHudcFI
         0UT1ampnuvJEn5ymIuv/AU1CQ2O8IDbDcyH8rnBvsx7kseL6fWBIK8tVkNAI9HfqgJXE
         pnEg==
X-Gm-Message-State: APjAAAUUrMP8Kmb7W1uKyK9J7DmGKVa2iXY3ATo4Die9u/XbkxmTLfEB
	SIFQD75dEcfFiRHprvO17P3MPGjhW1BHWg==
X-Received: by 2002:a62:d281:: with SMTP id c123mr678343pfg.210.1551774062761;
        Tue, 05 Mar 2019 00:21:02 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from debian ([112.122.31.4])
        by smtp.gmail.com with ESMTPSA id n23sm9930251pgv.86.2019.03.05.00.21.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 00:21:02 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH] Staging: octeon: Delete constant zero preprocessor lines
Date: Tue,  5 Mar 2019 00:19:55 -0800
Message-Id: <20190305081955.5262-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0

This patch fixes the checkpatch.pl warning:
WARNING: Consider removing the code enclosed by this #if 0 and its #endif

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/octeon/ethernet-tx.c | 41 ------------------------------------
 1 file changed, 41 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index 317c9720467c..eea8c5235910 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -587,43 +587,14 @@ int cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
 
 	if (skb->protocol == htons(ETH_P_IP)) {
 		work->word2.s.ip_offset = 14;
-#if 0
-		work->word2.s.vlan_valid = 0;	/* FIXME */
-		work->word2.s.vlan_cfi = 0;	/* FIXME */
-		work->word2.s.vlan_id = 0;	/* FIXME */
-		work->word2.s.dec_ipcomp = 0;	/* FIXME */
-#endif
 		work->word2.s.tcp_or_udp =
 		    (ip_hdr(skb)->protocol == IPPROTO_TCP) ||
 		    (ip_hdr(skb)->protocol == IPPROTO_UDP);
-#if 0
-		/* FIXME */
-		work->word2.s.dec_ipsec = 0;
-		/* We only support IPv4 right now */
-		work->word2.s.is_v6 = 0;
-		/* Hardware would set to zero */
-		work->word2.s.software = 0;
-		/* No error, packet is internal */
-		work->word2.s.L4_error = 0;
-#endif
 		work->word2.s.is_frag = !((ip_hdr(skb)->frag_off == 0) ||
 					  (ip_hdr(skb)->frag_off ==
 					      1 << 14));
-#if 0
-		/* Assume Linux is sending a good packet */
-		work->word2.s.IP_exc = 0;
-#endif
 		work->word2.s.is_bcast = (skb->pkt_type == PACKET_BROADCAST);
 		work->word2.s.is_mcast = (skb->pkt_type == PACKET_MULTICAST);
-#if 0
-		/* This is an IP packet */
-		work->word2.s.not_IP = 0;
-		/* No error, packet is internal */
-		work->word2.s.rcv_error = 0;
-		/* No error, packet is internal */
-		work->word2.s.err_code = 0;
-#endif
-
 		/*
 		 * When copying the data, include 4 bytes of the
 		 * ethernet header to align the same way hardware
@@ -632,12 +603,6 @@ int cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
 		memcpy(work->packet_data, skb->data + 10,
 		       sizeof(work->packet_data));
 	} else {
-#if 0
-		work->word2.snoip.vlan_valid = 0;	/* FIXME */
-		work->word2.snoip.vlan_cfi = 0;	/* FIXME */
-		work->word2.snoip.vlan_id = 0;	/* FIXME */
-		work->word2.snoip.software = 0;	/* Hardware would set to zero */
-#endif
 		work->word2.snoip.is_rarp = skb->protocol == htons(ETH_P_RARP);
 		work->word2.snoip.is_arp = skb->protocol == htons(ETH_P_ARP);
 		work->word2.snoip.is_bcast =
@@ -645,12 +610,6 @@ int cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
 		work->word2.snoip.is_mcast =
 		    (skb->pkt_type == PACKET_MULTICAST);
 		work->word2.snoip.not_IP = 1;	/* IP was done up above */
-#if 0
-		/* No error, packet is internal */
-		work->word2.snoip.rcv_error = 0;
-		/* No error, packet is internal */
-		work->word2.snoip.err_code = 0;
-#endif
 		memcpy(work->packet_data, skb->data, sizeof(work->packet_data));
 	}
 
-- 
2.11.0


