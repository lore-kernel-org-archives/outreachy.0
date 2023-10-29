Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD7F720F5
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 10:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NJNXImMv"
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-9d2e6c8b542so50240566b.0
        for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 03:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698574822; x=1699179622; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aj6hf9jWy48Z/Vf0SCm/TWxfRm7vjZ/wEW8eiWwwg8E=;
        b=NJNXImMvPJFGi6XtiRmdJf3ZD7V2wSD+WMxzbpCGVuZIf01f7kaR+EmC37Nzaqzu9e
         yFiXg+iyZo39zqsdEba8ZHvCbunCpQMpNZrmRWMDwJROvE84adBnwEXwHkJDr4tEeFL8
         ro4RY+3kB/gtx180h+WvkRnaztTbtAF9E3NWgXfgPS/G5A+ZUJfL41YE3YL8bLxtN7/7
         36zr0tnjv5bH7qEGjlzY/OwQmMtPg6w1X2buj+2aqwUzNJLDWuedB5EuyLQ5hch/kv4t
         Bud41YbLB6AAKcGCDrfhvzhTJeKsSDz2uXfv9UOHampgXxkhHAiOFQpsvudpiTYSHIXb
         tnqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698574822; x=1699179622;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aj6hf9jWy48Z/Vf0SCm/TWxfRm7vjZ/wEW8eiWwwg8E=;
        b=qap13ZATkWC3VG4WHYgcVmFeF4f01BMmMEXYaH6skETgXKx+KBvKq3G928slhBoe5A
         B18hu5Xvd/yX4i4HEOMIz2IgMeCH/N6MQrNtD4GOzLQE0D/K8pmiVWfqLH8lhGBDxieh
         YU7wdX8n7E61bA6qxvG4mFRh2kICnLOXzdEar5zUONr5jx9qzDbmgGg5pA7x6V5TpVKC
         fXab2Vvav2JIdWnVcJcF9lPXt5mufCf0llq3u0jcGqG3xJJOndwpchYs4Ojkoy8W8Xx6
         P6fq9BvFXI64dP2qRUnGhrMSAOB7tlEX9IKGY/pWGCUp31lDShghKy9LI8wdbxAz66Zn
         JiCA==
X-Gm-Message-State: AOJu0YwvB0kHl/xzl1zo1DTYgQsATVTJFzQrvsePRz0ewHdqp/vYOLzg
	gTALbUaoiZYVpoC/1rCxLio6J5vLq4SsLHE6
X-Google-Smtp-Source: AGHT+IHWMhnw6GyqWl6Rd3ETU1yif6rDMb6JgWshywVD9qlhQkJxqcEyuIWWaNPF1nAiHnFkQL1bfQ==
X-Received: by 2002:a17:907:2686:b0:9b2:955a:e375 with SMTP id bn6-20020a170907268600b009b2955ae375mr5805892ejc.23.1698574821283;
        Sun, 29 Oct 2023 03:20:21 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id n11-20020a170906b30b00b0099bcdfff7cbsm3996956ejz.160.2023.10.29.03.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 03:20:20 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: outreachy@lists.linux.dev,
	helen.fornazier@gmail.com,
	gagallo7+outreachy@gmail.com
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH] Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
Date: Sun, 29 Oct 2023 09:19:13 +0000
Message-Id: <20231029091913.17509-1-dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix code style issues and improve error handling in ethernet-tx.c

This commit addresses the following issues in the drivers/staging/octeon/ethernet-tx.c file:

1. Removed unnecessary parentheses around conditions:
   - Removed unnecessary parentheses around 'CVMX_PKO_QUEUES_PER_PORT_INTERFACE0 > 1' and 'CVMX_PKO_QUEUES_PER_PORT_INTERFACE1 > 1'.
   - Removed unnecessary parentheses around 'skb->len < 64'.
   - Removed unnecessary parentheses around 'skb->protocol == htons(ETH_P_IP)'.

2. Replaced 'BUG()' with 'WARN_ON_ONCE()' for better error handling:
   - Replaced the use of 'BUG()' with 'WARN_ON_ONCE()' at line 454 to avoid crashing the kernel and provide more graceful error handling.

3. Removed redundant code sections:
   - Removed the code enclosed by the #if 0 and its #endif directives at lines 577, 586, and 599 as they are no longer needed.

These changes improve code readability, reduce unnecessary parentheses, and enhance error handling
while removing redundant code sections. The code is now more in line with coding standards and best practices.
---
 drivers/staging/octeon/ethernet-tx.c | 50 +++-------------------------
 1 file changed, 5 insertions(+), 45 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index bbf33b88bb7c..cdc98ce2e61e 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -153,8 +153,8 @@ netdev_tx_t cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
 	 * completely remove "qos" in the event neither interface
 	 * supports multiple queues per port.
 	 */
-	if ((CVMX_PKO_QUEUES_PER_PORT_INTERFACE0 > 1) ||
-	    (CVMX_PKO_QUEUES_PER_PORT_INTERFACE1 > 1)) {
+	if (CVMX_PKO_QUEUES_PER_PORT_INTERFACE0 > 1 ||
+	    CVMX_PKO_QUEUES_PER_PORT_INTERFACE1 > 1) {
 		qos = GET_SKBUFF_QOS(skb);
 		if (qos <= 0)
 			qos = 0;
@@ -224,7 +224,7 @@ netdev_tx_t cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
 	 * no room to add the padding.  The kernel should always give
 	 * us at least a cache line
 	 */
-	if ((skb->len < 64) && OCTEON_IS_MODEL(OCTEON_CN3XXX)) {
+	if (skb->len < 64 && OCTEON_IS_MODEL(OCTEON_CN3XXX)) {
 		union cvmx_gmxx_prtx_cfg gmx_prt_cfg;
 		int interface = INTERFACE(priv->port);
 		int index = INDEX(priv->port);
@@ -360,7 +360,7 @@ netdev_tx_t cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
 dont_put_skbuff_in_hw:
 
 	/* Check if we can use the hardware checksumming */
-	if ((skb->protocol == htons(ETH_P_IP)) &&
+	if (skb->protocol == htons(ETH_P_IP) &&
 	    (ip_hdr(skb)->version == 4) &&
 	    (ip_hdr(skb)->ihl == 5) &&
 	    ((ip_hdr(skb)->frag_off == 0) ||
@@ -451,7 +451,7 @@ netdev_tx_t cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
 		__skb_queue_tail(&priv->tx_free_list[qos], skb);
 		break;
 	default:
-		BUG();
+		WARN_ON_ONCE(1);
 	}
 
 	while (skb_to_free > 0) {
@@ -574,42 +574,14 @@ netdev_tx_t cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
 
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
 					      cpu_to_be16(1 << 14)));
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
 
 		/*
 		 * When copying the data, include 4 bytes of the
@@ -619,12 +591,6 @@ netdev_tx_t cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
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
@@ -632,12 +598,6 @@ netdev_tx_t cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
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
2.25.1

