X-GM-THRID: 6200599277557776384
X-Received: by 10.112.145.3 with SMTP id sq3mr762311lbb.7.1443709414748;
        Thu, 01 Oct 2015 07:23:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.23.155 with SMTP id 27ls118433lfx.49.gmail; Thu, 01 Oct
 2015 07:23:34 -0700 (PDT)
X-Received: by 10.112.40.17 with SMTP id t17mr1431623lbk.10.1443709414185;
        Thu, 01 Oct 2015 07:23:34 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id c7si85104wiy.3.2015.10.01.07.23.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 07:23:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x230.google.com with SMTP id lk2so31059836wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 07:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=XxyQopT48XEBD9J+i5xM1LW/6KXStHhXMR+zi5TIvXs=;
        b=i3/3H8CU9Gupqd9OTMWPTwaLF0roZZbDMYm0GmvkKpa33oIzYhnM3Hq8Nnwu78Xma8
         TtbExnrWAJi2ENI9uD7Voa8wsbE8KlRBTVbB3O+krhFlWL62JZQcI+CRg1DGXZcgKifq
         0YW4Fy1SMfnUIuUyAtoLILrzdXxzocRb8SmBSLhxpCWtnEHSm28v0jRF0peoaV+Y/HjV
         h0yLnzOOg4n/4yYKE7RoCVk/3Kd2cxPnJ3tg8dj08k2I/jqiolin/215P2zbZA94Z7Ek
         yPWvqE917NjMByxqd+ItQT+2NyKAJgF8kF30UhHhVNJePOWDVno/kU3w4NRN7yiXzzUv
         jroA==
X-Received: by 10.194.204.195 with SMTP id la3mr10533725wjc.77.1443709414003;
        Thu, 01 Oct 2015 07:23:34 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([86.124.70.84])
        by smtp.gmail.com with ESMTPSA id go5sm3463388wib.3.2015.10.01.07.23.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 07:23:33 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2] staging: wlan-ng: replace memcpy with ether_addr_copy
Date: Thu,  1 Oct 2015 17:23:27 +0300
Message-Id: <1443709407-14430-1-git-send-email-ciorneiioana@gmail.com>
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

struct sockaddr {
        sa_family_t                sa_family;            /*     0     2 */
        char                       sa_data[14];          /*     2    14 */

        /* size: 16, cachelines: 1, members: 2 */
        /* last cacheline: 16 bytes */
};

struct p80211pstr6 {
        u8                         len;                  /*     0     1 */
        u8                         data[6];              /*     1     6 */

        /* size: 7, cachelines: 1, members: 2 */
        /* last cacheline: 7 bytes */
};

Coccinelle semantic patch:

@@
expression E1,E2;
@@

- memcpy(E1, E2, 6)
+ ether_addr_copy(E1, E2)

@@
expression E1,E2;
@@

- memcpy(E1, E2, ETH_ALEN)
+ ether_addr_copy(E1, E2)

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---

Changes in v2:
    - revised the cocci patch to be a more constrainting one
    - applied cocci patch on the entire wlan-ng folder
    - updated the patch description with further pahole output

 drivers/staging/wlan-ng/p80211conv.c   | 20 ++++++++++----------
 drivers/staging/wlan-ng/p80211netdev.c |  2 +-
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
index 1b02cdf..c55a213 100644
--- a/drivers/staging/wlan-ng/p80211conv.c
+++ b/drivers/staging/wlan-ng/p80211conv.c
@@ -178,21 +178,21 @@ int skb_ether_to_p80211(wlandevice_t *wlandev, u32 ethconv,
 
 	switch (wlandev->macmode) {
 	case WLAN_MACMODE_IBSS_STA:
-		memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a3, wlandev->bssid, ETH_ALEN);
+		ether_addr_copy(p80211_hdr->a3.a1, &e_hdr.daddr);
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
+		ether_addr_copy(p80211_hdr->a3.a3, &e_hdr.daddr);
 		break;
 	case WLAN_MACMODE_ESS_AP:
 		fc |= cpu_to_le16(WLAN_SET_FC_FROMDS(1));
-		memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a2, wlandev->bssid, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a3, &e_hdr.saddr, ETH_ALEN);
+		ether_addr_copy(p80211_hdr->a3.a1, &e_hdr.daddr);
+		ether_addr_copy(p80211_hdr->a3.a2, wlandev->bssid);
+		ether_addr_copy(p80211_hdr->a3.a3, &e_hdr.saddr);
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
diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
index a9c1e0b..4cc6a00 100644
--- a/drivers/staging/wlan-ng/p80211netdev.c
+++ b/drivers/staging/wlan-ng/p80211netdev.c
@@ -644,7 +644,7 @@ static int p80211knetdev_set_mac_address(netdevice_t *dev, void *addr)
 	macaddr->status = P80211ENUM_msgitem_status_data_ok;
 	macaddr->len = sizeof(macaddr->data);
 	macaddr->data.len = ETH_ALEN;
-	memcpy(&macaddr->data.data, new_addr->sa_data, ETH_ALEN);
+	ether_addr_copy(&macaddr->data.data, new_addr->sa_data);
 
 	/* Set up the resultcode argument */
 	resultcode->did = DIDmsg_dot11req_mibset_resultcode;
-- 
2.1.4


