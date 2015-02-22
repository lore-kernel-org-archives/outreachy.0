X-GM-THRID: 2422210560000
X-Received: by 10.112.77.101 with SMTP id r5mr747642lbw.4.1424611688464;
        Sun, 22 Feb 2015 05:28:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.4.5 with SMTP id g5ls190609lag.28.gmail; Sun, 22 Feb 2015
 05:28:06 -0800 (PST)
X-Received: by 10.112.138.202 with SMTP id qs10mr703629lbb.24.1424611686784;
        Sun, 22 Feb 2015 05:28:06 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id ta1si482148wic.1.2015.02.22.05.28.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 05:28:06 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f46.google.com with SMTP id a1so21059882wgh.5
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 05:28:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=+heAIxxmXjivmHNpM7g6lf/64KheQ48ylMizOJqh674=;
        b=Ur2Tfxxv0DA2srydTOR7WZ3TaOzA5HAJQ7S4+fCdyC7KUeadE3GL/EwIsoMKRgc+sq
         5rvJS150DV3R5NnSZFutdi6n2KY25+8iCg78T9LCZMVRgQUxV3qWOQvsraXAXm16FZON
         a7xTd+g9dgghjObdP2yRxGFzjHseA9Wde2Z1JrBBqBCXBcRa3Y0QjY3+Z21YDRYroe2i
         8ckDYRhSzCOR5u4t+O8Yh+8+atP3dLvDFZR5SBpROcS3u+BhSD5IslmTBiGzK2i8mNtN
         1OEC3DfPZJkca1Ob6GznPqRuquevF5fzitAx78eU6eozOKn/NBJTEc1LXEKeccymgoJ5
         2tWA==
X-Received: by 10.181.8.75 with SMTP id di11mr6977676wid.26.1424611686654;
        Sun, 22 Feb 2015 05:28:06 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id hd5sm11447621wib.21.2015.02.22.05.28.05
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Feb 2015 05:28:05 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH] Staging: vt6656: replace memcpy() by ether_addr_copy() using coccinelle and pack variable
Date: Sun, 22 Feb 2015 15:27:56 +0200
Message-Id: <1424611676-7451-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch focuses on fixing the following warning generated
by checkpatch.pl for the file rxtx.c

Prefer ether_addr_copy() over memcpy() if the Ethernet addresses
are __aligned(2)

@@ expression e1, e2; @@

- memcpy(e1, e2, ETH_ALEN);
+ ether_addr_copy(e1, e2);

According to ether_addr_copy() description and functionality,
all Ethernet addresses should align to the u16 datatype.
The changes were applied using the following coccinelle rule:

Here is the output of pahole for the relevant datastructures:
struct vnt_usb_send_context {
        void *                     priv;                 /*     0     8*/
        struct sk_buff *           skb;                  /*     8     8*/
        struct urb *               urb;                  /*    16     8*/
        struct ieee80211_hdr *     hdr;                  /*    24     8*/
        unsigned int               buf_len;              /*    32     4*/
        u32                        frame_len;            /*    36     4*/
        u16                        tx_hdr_size;          /*    40     2*/
        u16                        tx_rate;              /*    42     2*/
        u8                         type;                 /*    44     1*/
        u8                         pkt_no;               /*    45     1*/
        u8                         pkt_type;             /*    46     1*/
        u8                         need_ack;             /*    47     1*/
        u8                         fb_option;            /*    48     1*/
        bool                       in_use;               /*    49     1*/
        unsigned char              data[2900];           /*    50  2900*/
        /* --- cacheline 46 boundary (2944 bytes) was 6 bytes ago --- */

        /* size: 2952, cachelines: 47, members: 15 */
        /* padding: 2 */
        /* last cacheline: 8 bytes */
};

struct ieee80211_key_conf {
        u32                        cipher;               /*     0     4*/
        u8                         icv_len;              /*     4     1*/
        u8                         iv_len;               /*     5     1*/
        u8                         hw_key_idx;           /*     6     1*/
        u8                         flags;                /*     7     1*/
        s8                         keyidx;               /*     8     1*/
        u8                         keylen;               /*     9     1*/
        u8                         key[0];               /*    10     0*/

        /* size: 12, cachelines: 1, members: 8 */
        /* padding: 2 */
        /* last cacheline: 12 bytes */
};

struct vnt_mic_hdr {
        u8                         id;                   /*     0     1*/
        u8                         tx_priority;          /*     1     1*/
        u8                         mic_addr2[6];         /*     2     6*/
        u8                         ccmp_pn[6];           /*     8     6*/
        __be16                     payload_len;          /*    14     2*/
        __be16                     hlen;                 /*    16     2*/
        __le16                     frame_control;        /*    18     2*/
        u8                         addr1[6];             /*    20     6*/
        u8                         addr2[6];             /*    26     6*/
        u8                         addr3[6];             /*    32     6*/
        __le16                     seq_ctrl;             /*    38     2*/
        u8                         addr4[6];             /*    40     6*/
        u16                        packing;              /*    46     2*/

        /* size: 48, cachelines: 1, members: 13 */
        /* last cacheline: 48 bytes */
};

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 33baf26..f6c2cf8 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -755,9 +755,9 @@ static void vnt_fill_txkey(struct vnt_usb_send_context *tx_context,
 		else
 			mic_hdr->hlen = cpu_to_be16(22);
 
-		memcpy(mic_hdr->addr1, hdr->addr1, ETH_ALEN);
-		memcpy(mic_hdr->addr2, hdr->addr2, ETH_ALEN);
-		memcpy(mic_hdr->addr3, hdr->addr3, ETH_ALEN);
+		ether_addr_copy(mic_hdr->addr1, hdr->addr1);
+		ether_addr_copy(mic_hdr->addr2, hdr->addr2);
+		ether_addr_copy(mic_hdr->addr3, hdr->addr3);
 
 		mic_hdr->frame_control = cpu_to_le16(
 			le16_to_cpu(hdr->frame_control) & 0xc78f);
@@ -765,7 +765,7 @@ static void vnt_fill_txkey(struct vnt_usb_send_context *tx_context,
 				le16_to_cpu(hdr->seq_ctrl) & 0xf);
 
 		if (ieee80211_has_a4(hdr->frame_control))
-			memcpy(mic_hdr->addr4, hdr->addr4, ETH_ALEN);
+			ether_addr_copy(mic_hdr->addr4, hdr->addr4);
 
 
 		memcpy(key_buffer, tx_key->key, WLAN_KEY_LEN_CCMP);
-- 
1.9.1


