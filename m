X-GM-THRID: 6200599277557776384
X-Received: by 10.112.125.104 with SMTP id mp8mr2439408lbb.20.1443779971903;
        Fri, 02 Oct 2015 02:59:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.87.8 with SMTP id l8ls207678lfb.92.gmail; Fri, 02 Oct 2015
 02:59:31 -0700 (PDT)
X-Received: by 10.112.144.99 with SMTP id sl3mr2369502lbb.12.1443779971297;
        Fri, 02 Oct 2015 02:59:31 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id bj4si222762wib.1.2015.10.02.02.59.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 02:59:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id fx3so26151222wic.1
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 02:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=jLM4t8vWvtT2l7dQXFY4CkBcp2sQzt4EPyzeSPkOJAM=;
        b=Y3mzmdgYudyawqd0VADWxYchZjYNF4EPLfQ1Wa0VQ6rjoVFJ0PXX1iN0WJYfLz48Qq
         n056aFrx/DiccCpBvS8r1VQ4pNVPCcy5TZdvP5rWWtu37wS0vvNgvym9CRCgFkZirLK2
         Shp+UEtPkD/YSzM+JDFL0EOxnzxtrP171Oq8rzaPlRzwCjOjORkWjzScdpdh2NR+7GWn
         GporEx7QMLa7BCDzHPlrtDJddDlSHJwNwASW8ruKiH1xcG6poWzzsOwzzaf01EbzMhnC
         9iSK6VoRSXTaRU1LyOl62qppr28xR5ybnMZRlxirpXApxZmaV1EUnJgrt2AxPhOCqbVu
         U9jQ==
X-Received: by 10.194.178.196 with SMTP id da4mr18076365wjc.41.1443779971162;
        Fri, 02 Oct 2015 02:59:31 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([93.122.165.106])
        by smtp.gmail.com with ESMTPSA id g5sm7549190wix.13.2015.10.02.02.59.30
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 02:59:30 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v3] staging: wlan-ng: replace memcpy with ether_addr_copy
Date: Fri,  2 Oct 2015 12:59:24 +0300
Message-Id: <1443779964-12035-1-git-send-email-ciorneiioana@gmail.com>
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

Changes in v3:
    - make an explicit cast from u8 (*)[6] to const u8 * to avoid compile warning

 drivers/staging/wlan-ng/p80211conv.c   | 20 ++++++++++----------
 drivers/staging/wlan-ng/p80211netdev.c |  2 +-
 2 files changed, 11 insertions(+), 11 deletions(-)

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


