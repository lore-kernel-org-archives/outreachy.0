X-GM-THRID: 8985735331840
X-Received: by 10.236.4.134 with SMTP id 6mr74315084yhj.35.1426686243719;
        Wed, 18 Mar 2015 06:44:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.40.9 with SMTP id o9ls405456ioo.87.gmail; Wed, 18 Mar 2015
 06:44:03 -0700 (PDT)
X-Received: by 10.66.147.132 with SMTP id tk4mr76641743pab.23.1426686243528;
        Wed, 18 Mar 2015 06:44:03 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x22c.google.com (mail-pd0-x22c.google.com. [2607:f8b0:400e:c02::22c])
        by gmr-mx.google.com with ESMTPS id l3si3132116pdo.0.2015.03.18.06.44.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 06:44:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) client-ip=2607:f8b0:400e:c02::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22c.google.com with SMTP id c3so43728624pdn.0
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 06:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:content-type:content-transfer-encoding;
        bh=cVN4L3pVbRwcyVam54foQ1pKwi/gUZDm367csJsP+t8=;
        b=JL15bxnJ5d1voTCYcg+WA3Fb9Hl/oKCr5X7irDWuHO/D/SvSzh0W/5EsuBKab5IHmQ
         DKXfSrNtADJmVGpf0+sgZP84rKMXFBsvmMmqpXD+oorqcHiRBvU+9C5Cadq6JOCRtZO6
         +27CDBxpdDRUIu8smr1K9v8yeIRXBh6YQSwkNqisgj+hyFAcaIn2v5zecjVBN4SUZOQR
         F6o5d7fhps0ztqNd9UukQTohlN8y814/uMaYGZxYROko42yZK0Zcey1Ciehn13tTg65O
         RjDC95LWuva6A+T7SY2MSfnW5dwnRLB4sWjzclHVJ3Fv23dpHWD0omzzQNsSC17licMH
         CBvw==
X-Received: by 10.70.92.132 with SMTP id cm4mr12248426pdb.18.1426686243429;
        Wed, 18 Mar 2015 06:44:03 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([182.19.48.18])
        by mx.google.com with ESMTPSA id z4sm27713765pdn.46.2015.03.18.06.44.01
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 18 Mar 2015 06:44:02 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH v2 5/5] Staging: rtl8192e: replace memcpy with ether_addr_copy for aligned structures
Date: Wed, 18 Mar 2015 19:13:23 +0530
Message-Id: <8dd333b098c79a27d8c66cece72c7a1abd535232.1426685762.git.darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426685762.git.darshanapadmadas@gmail.com>
References: <cover.1426685762.git.darshanapadmadas@gmail.com>
In-Reply-To: <cover.1426685762.git.darshanapadmadas@gmail.com>
References: <cover.1426685762.git.darshanapadmadas@gmail.com>
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
 drivers/staging/rtl8192e/rtllib_rx.c | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index e8261ae..06712b5 100644
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
@@ -783,8 +783,8 @@ static u8 parse_subframe(struct rtllib_device *ieee, struct sk_buff *skb,
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
@@ -917,24 +917,24 @@ static void rtllib_rx_extract_addr(struct rtllib_device *ieee,
 
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
-		memcpy(bssid, hdr->addr3, ETH_ALEN);
+		ether_addr_copy(dst, hdr->addr1);
+		ether_addr_copy(src, hdr->addr2);
+		ether_addr_copy(bssid, hdr->addr3);
 		break;
 	}
 }
-- 
1.9.1


