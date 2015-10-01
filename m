X-GM-THRID: 6200599277557776384
X-Received: by 10.152.197.34 with SMTP id ir2mr1210666lac.10.1443689520666;
        Thu, 01 Oct 2015 01:52:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.22.168 with SMTP id e8ls82770laf.38.gmail; Thu, 01 Oct
 2015 01:52:00 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr1196853lbc.23.1443689520092;
        Thu, 01 Oct 2015 01:52:00 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id o5si57832wib.0.2015.10.01.01.52.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 01:52:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id fx3so21869430wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 01:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=WdMNF0BoKV5Dx2i+LA+QZEsg0SYkrAzvbBfmq2Xrh0A=;
        b=tdxtc3ncZ4T/v2PTNUc7aIeE/lmRQ4n1uCJIEvYtMcqoO/fpKsN0z/y1PqiLRtopho
         fTk2KCp3ZUELIfDLpF+tGR37xAgXYdYNXuc5VZkiokBp0Ys3GLlR4hH7lrkT8Luv2yTp
         myEjy/jRu3IP0ydl3pDIin3lDYA+GU6yoXV61lwg6diE2wLJFdcpvHbfHG+gkYIIJrUd
         eWkXxuTZ5ufqyGR2tlEjuhIRdfJ0fh8BZqp3qfX7DEjq6OgoFJEoo963KnOCHSgqoKSo
         MSH2NwbdaiBNam2YePGmRFXudo+UhWQFZNzXcvxvoFLQAQcyVggs0xDUuILQs5l3t/kJ
         5M0Q==
X-Received: by 10.194.92.68 with SMTP id ck4mr10461778wjb.141.1443689519958;
        Thu, 01 Oct 2015 01:51:59 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.114.146])
        by smtp.gmail.com with ESMTPSA id bv2sm5009498wjc.11.2015.10.01.01.51.59
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 01:51:59 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] staging: wlan-ng: replace memcpy with ether_addr_copy
Date: Thu,  1 Oct 2015 11:51:52 +0300
Message-Id: <1443689512-18360-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

Replace memcpy with ether_addr_copy since the output of pahole
shows that the addresses are aligned.

struct p80211_hdr_a3 {
        __le16                     fc;                   /*     0     2 */
        u16                        dur;                  /*     2     2 */
        u8                         a1[6];                /*     4     6 */
        u8                         a2[6];                /*    10     6 */
        u8                         a3[6];                /*    16     6 */
        u16                        seq;                  /*    22     2 */

        /* size: 24, cachelines: 1, members: 6 */
        /* last cacheline: 24 bytes */
};

struct net_device {
        char                       name[16];             /*     0    16 */
        struct hlist_node          name_hlist;           /*    16    16 */

     ...............

 /* --- cacheline 12 boundary (768 bytes) --- */
        long unsigned int          last_rx;              /*   768     8 */
        unsigned char *            dev_addr;             /*   776     8 */
        struct netdev_rx_queue *   _rx;                  /*   784     8 */

    .................
};

struct wlandevice {
        struct wlandevice *        next;                 /*     0     8 */
    .................
        u8                         bssid[6];             /*   128     6 */
    .................
};

struct net_device {
        char                       name[16];             /*     0    16 */
    .................
        unsigned char *            dev_addr;             /*   776     8 */
    ................
};

struct wlan_ethhdr {
        u8                         daddr[6];             /*     0     6 */
        u8                         saddr[6];             /*     6     6 */
        u16                        type;                 /*    12     2 */

        /* size: 14, cachelines: 1, members: 3 */
        /* last cacheline: 14 bytes */
};

Coccinelle semantic patch:

@@
expression E1,E2;constant E3;
@@

- memcpy(E1, E2, E3)
+ ether_addr_copy(E1, E2)

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/wlan-ng/p80211conv.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
index 1b02cdf..8b6de4f 100644
--- a/drivers/staging/wlan-ng/p80211conv.c
+++ b/drivers/staging/wlan-ng/p80211conv.c
@@ -178,21 +178,21 @@ int skb_ether_to_p80211(wlandevice_t *wlandev, u32 ethconv,
 
 	switch (wlandev->macmode) {
 	case WLAN_MACMODE_IBSS_STA:
-		memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a3, wlandev->bssid, ETH_ALEN);
+		ether_addr_copy(p80211_hdr->a3.a1, (const u8*)&e_hdr.daddr);
+		ether_addr_copy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr);
+		ether_addr_copy(p80211_hdr->a3.a3, wlandev->bssid);
 		break;
 	case WLAN_MACMODE_ESS_STA:
 		fc |= cpu_to_le16(WLAN_SET_FC_TODS(1));
-		memcpy(p80211_hdr->a3.a1, wlandev->bssid, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a3, &e_hdr.daddr, ETH_ALEN);
+		ether_addr_copy(p80211_hdr->a3.a1, wlandev->bssid);
+		ether_addr_copy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr);
+		ether_addr_copy(p80211_hdr->a3.a3, (const u8*)&e_hdr.daddr);
 		break;
 	case WLAN_MACMODE_ESS_AP:
 		fc |= cpu_to_le16(WLAN_SET_FC_FROMDS(1));
-		memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a2, wlandev->bssid, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a3, &e_hdr.saddr, ETH_ALEN);
+		ether_addr_copy(p80211_hdr->a3.a1, (const u8*)&e_hdr.daddr);
+		ether_addr_copy(p80211_hdr->a3.a2, wlandev->bssid);
+		ether_addr_copy(p80211_hdr->a3.a3, (const u8*)&e_hdr.saddr);
 		break;
 	default:
 		netdev_err(wlandev->netdev,
@@ -243,7 +243,7 @@ static void orinoco_spy_gather(wlandevice_t *wlandev, char *mac,
 	for (i = 0; i < wlandev->spy_number; i++) {
 
 		if (!memcmp(wlandev->spy_address[i], mac, ETH_ALEN)) {
-			memcpy(wlandev->spy_address[i], mac, ETH_ALEN);
+			ether_addr_copy(wlandev->spy_address[i], mac);
 			wlandev->spy_stat[i].level = rxmeta->signal;
 			wlandev->spy_stat[i].noise = rxmeta->noise;
 			wlandev->spy_stat[i].qual =
-- 
2.1.4


