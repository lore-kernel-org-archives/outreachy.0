X-GM-THRID: 9011949731840
X-Received: by 10.180.75.232 with SMTP id f8mr783994wiw.0.1426686616221;
        Wed, 18 Mar 2015 06:50:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.77.75 with SMTP id q11ls341536wiw.10.gmail; Wed, 18 Mar
 2015 06:50:15 -0700 (PDT)
X-Received: by 10.180.90.169 with SMTP id bx9mr780858wib.6.1426686615975;
        Wed, 18 Mar 2015 06:50:15 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id ew13si155948wid.0.2015.03.18.06.50.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 06:50:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id j2so40226681wif.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 06:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=duxEdA9SvPx6KmE61CYUJF3TVeW0Onu+X+nJNaoV/Oo=;
        b=Z/9gS94dA9XfT3Trrg3PpXFYrTrsm52ydPDC3m5W0S4uqc1dca51db+F+fviFF+ybn
         EA4Ap+u1/P08f78uGQPHj0ZikSMDLsQPFx1e+A62R2XErdC9RgjJdBCNjhpmH/KqeXhN
         OPfxQPqIY8LV5voaa/eHRKM3AQDz1WGfZ1bBZCvhH0yrMwwbVSXiYcD2YAVXplt1plE8
         TgkGlYKSdF+NHuJ12HrJkjrvWGDYMgXC1SGiTFXIw/mmYhB3JMGB7w3TVBF13HSAWNoJ
         gl7YEHH+MKaNnPXaXZ7PSCIByiSKrTPGtzpg39ZPJRiOgE4CQUefgUEpxj86bFBqx8pE
         3+Wg==
X-Received: by 10.194.60.203 with SMTP id j11mr145339240wjr.5.1426686615898;
        Wed, 18 Mar 2015 06:50:15 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id m4sm24592259wjb.25.2015.03.18.06.50.13
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Mar 2015 06:50:14 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v3] staging: p80211conv: Replace memcpy with ether_addr_copy
Date: Wed, 18 Mar 2015 15:50:07 +0200
Message-Id: <1426686607-11608-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace memcpy() with ether_addr_copy() since addresses are __aligned(2).
The 2 structures are aligned to u16:

struct p80211_hdr_a3 {
        __le16 fc;              /* 0    2 */
        u16 dur;                /* 2    2 */
        u8 a1[ETH_ALEN];        /* 4    6 */
        u8 a2[ETH_ALEN];        /* 10   6 */
        u8 a3[ETH_ALEN];        /* 16   6 */
        u16 seq;                /* 22   2 */
} __packed;

Total size: 24

struct wlan_ethhdr {
        u8 daddr[WLAN_ETHADDR_LEN];     /* 0    6 */
        u8 saddr[WLAN_ETHADDR_LEN];     /* 6    6 */
        u16 type;                       /* 12   2 */
} __packed;

Total size: 14

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---

Changes in v3:
	- fixed corrupted patch

 drivers/staging/wlan-ng/p80211conv.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
index bd69e8c..b3f48074 100644
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
@@ -241,7 +241,7 @@ static void orinoco_spy_gather(wlandevice_t *wlandev, char *mac,
 	for (i = 0; i < wlandev->spy_number; i++) {
 
 		if (!memcmp(wlandev->spy_address[i], mac, ETH_ALEN)) {
-			memcpy(wlandev->spy_address[i], mac, ETH_ALEN);
+			ether_addr_copy(wlandev->spy_address[i], mac);
 			wlandev->spy_stat[i].level = rxmeta->signal;
 			wlandev->spy_stat[i].noise = rxmeta->noise;
 			wlandev->spy_stat[i].qual =
-- 
1.9.1


