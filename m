X-GM-THRID: 8658120343552
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2a5fd0519661ea9d
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.52.24.108 with SMTP id t12mr51567034vdf.6.1426533541298;
        Mon, 16 Mar 2015 12:19:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.108.136 with SMTP id hk8ls1108401obb.91.gmail; Mon, 16 Mar
 2015 12:19:01 -0700 (PDT)
X-Received: by 10.182.97.2 with SMTP id dw2mr66461294obb.0.1426533541033;
        Mon, 16 Mar 2015 12:19:01 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id l3si2116026pdo.0.2015.03.16.12.19.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 12:19:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id we9so73204272pac.1
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 12:19:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:content-type:content-transfer-encoding;
        bh=2Y1wdS0ZD6ywhhEY+JKwPAlUheo3ODylUHwCPseslyY=;
        b=cQWGF76G+qJ1ZGSWTlCJYRrabYq5xGKjVOYyqTyKggSQmYPIIrjI0RDSNAd0rvdEBu
         AjfTJF4lDYp/insu/U79l9/MFaA8k+nj0GOXylZHy+ORnvlh5XzfHrM9cBf4XZiUMkUM
         ypz0aqaPTAhVjWQFGpBlusLFqvtUcp5v+P9lnp1JRcu/6HsTMBTuW4Y7CHhUvKn+zb36
         oVVhDOgi8a81sNn3gcEo+Gpudniu514adQH/xqpMsK7HOMIz9UREmrT4yXudcQ2KnZOy
         /5xWZf35LkzGrsuWQV8AIBYHrIUf1gY6KpYPmjnAuCZi9x2FPsv/xQZibw/268g50QDD
         Rypw==
X-Received: by 10.66.65.195 with SMTP id z3mr141042642pas.10.1426533540816;
        Mon, 16 Mar 2015 12:19:00 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([115.242.162.199])
        by mx.google.com with ESMTPSA id ce1sm18566168pdb.34.2015.03.16.12.18.58
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 16 Mar 2015 12:18:59 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH 5/5] Staging: rtl8192e: replace memcpy with ether_addr_copy for aligned structures
Date: Tue, 17 Mar 2015 00:48:15 +0530
Message-Id: <ed043e9faf2a4f856ab00c5183ee9925da916095.1426533157.git.darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426533157.git.darshanapadmadas@gmail.com>
References: <cover.1426533157.git.darshanapadmadas@gmail.com>
In-Reply-To: <cover.1426533157.git.darshanapadmadas@gmail.com>
References: <cover.1426533157.git.darshanapadmadas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch replaces memcpy with ether_addr_copy and eliminates the
following warning:
WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are __aligned(2)

Pahole is used to show the structures for entry, hdr, rxb
struct rtllib_frag_entry {
        long unsigned int          first_frag_time;      /*     0     8 */
        unsigned int               seq;                  /*     8     4 */
        unsigned int               last_frag;            /*    12     4 */
        struct sk_buff *           skb;                  /*    16     8 */
        u8                         src_addr[6];          /*    24     6 */
        u8                         dst_addr[6];          /*    30     6 */

        /* size: 40, cachelines: 1, members: 6 */
        /* padding: 4 */
        /* last cacheline: 40 bytes */
};
struct rtllib_hdr_4addr {
        __le16                     frame_ctl;            /*     0     2 */
        __le16                     duration_id;          /*     2     2 */
        u8                         addr1[6];             /*     4     6 */
        u8                         addr2[6];             /*    10     6 */
        u8                         addr3[6];             /*    16     6 */
        __le16                     seq_ctl;              /*    22     2 */
        u8                         addr4[6];             /*    24     6 */
        u8                         payload[0];           /*    30     0 */

        /* size: 30, cachelines: 1, members: 8 */
        /* last cacheline: 30 bytes */
};
struct rtllib_rxb {
	u8                         nr_subframes;         /*     0     1 */
	struct sk_buff *           subframes[64];        /*     1   512 */
	/* --- cacheline 8 boundary (512 bytes) was 1 bytes ago --- */
	u8                         dst[6];               /*   513     6 */
	u8                         src[6];               /*   519     6 */

	/* size: 525, cachelines: 9, members: 4 */
	/* last cacheline: 13 bytes */
};

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_rx.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index e8261ae..bc13f5d 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -139,8 +139,8 @@ rtllib_frag_cache_get(struct rtllib_device *ieee,
 		entry->seq = seq;
 		entry->last_frag = frag;
 		entry->skb = skb;
-		memcpy(entry->src_addr, hdr->addr2, ETH_ALEN);
-		memcpy(entry->dst_addr, hdr->addr1, ETH_ALEN);
+		ether_addr_copy(entry->src_addr, hdr->addr2);
+		ether_addr_copy(entry->dst_addr, hdr->addr1);
 	} else {
 		/* received a fragment of a frame for which the head fragment
 		 * should have already been received */
@@ -397,7 +397,7 @@ static int is_duplicate_packet(struct rtllib_device *ieee,
 			if (!entry)
 				return 0;
 
-			memcpy(entry->mac, mac, ETH_ALEN);
+			ether_addr_copy(entry->mac, mac);
 			entry->seq_num[tid] = seq;
 			entry->frag_num[tid] = frag;
 			entry->packet_time[tid] = jiffies;
@@ -777,14 +777,14 @@ static u8 parse_subframe(struct rtllib_device *ieee, struct sk_buff *skb,
 
 		rxb->subframes[0] = sub_skb;
 
-		memcpy(rxb->src, src, ETH_ALEN);
-		memcpy(rxb->dst, dst, ETH_ALEN);
+		ether_addr_copy(rxb->src, src);
+		ether_addr_copy(rxb->dst, dst);
 		rxb->subframes[0]->dev = ieee->dev;
 		return 1;
 	} else {
 		rxb->nr_subframes = 0;
-		memcpy(rxb->src, src, ETH_ALEN);
-		memcpy(rxb->dst, dst, ETH_ALEN);
+		ether_addr_copy(rxb->src, src);
+		ether_addr_copy(rxb->dst, dst);
 		while (skb->len > ETHERNET_HEADER_SIZE) {
 			/* Offset 12 denote 2 mac address */
 			nSubframe_Length = *((u16 *)(skb->data + 12));
@@ -917,23 +917,23 @@ static void rtllib_rx_extract_addr(struct rtllib_device *ieee,
 
 	switch (fc & (RTLLIB_FCTL_FROMDS | RTLLIB_FCTL_TODS)) {
 	case RTLLIB_FCTL_FROMDS:
-		memcpy(dst, hdr->addr1, ETH_ALEN);
-		memcpy(src, hdr->addr3, ETH_ALEN);
-		memcpy(bssid, hdr->addr2, ETH_ALEN);
+		ether_addr_copy(dst, hdr->addr1);
+		ether_addr_copy(src, hdr->addr3);
+		ether_addr_copy(bssid, hdr->addr2);
 		break;
 	case RTLLIB_FCTL_TODS:
-		memcpy(dst, hdr->addr3, ETH_ALEN);
-		memcpy(src, hdr->addr2, ETH_ALEN);
-		memcpy(bssid, hdr->addr1, ETH_ALEN);
+		ether_addr_copy(dst, hdr->addr3);
+		ether_addr_copy(src, hdr->addr2);
+		ether_addr_copy(bssid, hdr->addr1);
 		break;
 	case RTLLIB_FCTL_FROMDS | RTLLIB_FCTL_TODS:
-		memcpy(dst, hdr->addr3, ETH_ALEN);
-		memcpy(src, hdr->addr4, ETH_ALEN);
+		ether_addr_copy(dst, hdr->addr3);
+		ether_addr_copy(src, hdr->addr4);
 		memcpy(bssid, ieee->current_network.bssid, ETH_ALEN);
 		break;
 	case 0:
-		memcpy(dst, hdr->addr1, ETH_ALEN);
-		memcpy(src, hdr->addr2, ETH_ALEN);
+		ether_addr_copy(dst, hdr->addr1);
+		ether_addr_copy(src, hdr->addr2);
 		memcpy(bssid, hdr->addr3, ETH_ALEN);
 		break;
 	}
-- 
1.9.1


