X-GM-THRID: 6200064367824732160
X-Received: by 10.66.100.233 with SMTP id fb9mr381608pab.24.1443564977202;
        Tue, 29 Sep 2015 15:16:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.142.202 with SMTP id ry10ls29627obb.10.gmail; Tue, 29 Sep
 2015 15:16:16 -0700 (PDT)
X-Received: by 10.182.29.40 with SMTP id g8mr349917obh.27.1443564976741;
        Tue, 29 Sep 2015 15:16:16 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id el2si3746496pbb.0.2015.09.29.15.16.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 15:16:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id lk4so17509159pab.3
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 15:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=uHXpYj/cL4ZTouE35rGPflU3ljL46fFVjxjFQsH5kLo=;
        b=E3GZJ9RDXJX/+pWXJr05IjV9TXwxrlAC1NemkwtksF4WPDE+A8toV3rOKu3nIq5KIt
         UoMxfu1/i89f0BoZJTyCcD8+vbgjMWxEuj11YA4cKd+OJQ39/wLsaeBsNslxoJVw+8Hx
         H/yDDHD+RNucIH2RRKeUDuRw+FX54n+euRpMKwhMqGfzvwvo+ipoPiTWg7nQMR2BuFQu
         6EaNmLAs0GCBNGhd37H347XoKzCqjPUlEZPZVZ8m/V335LJgiwjNyy/pX1tKJh7TS5Zb
         NDBo6l1TKwRBh/S8X2kc9wJFkHLHp1Y9ASAYsrgvlyImCoG0jDgNpA44nfYHEVSQc6Cn
         PcyA==
X-Received: by 10.68.134.234 with SMTP id pn10mr416815pbb.103.1443564976611;
        Tue, 29 Sep 2015 15:16:16 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id yi8sm27613753pab.22.2015.09.29.15.16.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 29 Sep 2015 15:16:15 -0700 (PDT)
Date: Wed, 30 Sep 2015 03:46:08 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Drivers: staging: wlan-ng: p80211conv: replaced functions
 for copying/comparing ethernet addresses
Message-ID: <20150929221607.GA15184@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replaced the function memcpy() by ether_addr_copy() and, memcmp() by
ether_addr_equal() as these functions are more preferable for copying
and comparing the ethernet addresses respectively.
Also fixed the issue of character limit of 80 per line and removed
one unnecessary statement.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/wlan-ng/p80211conv.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
index 49f2ef8..9c4dba6 100644
--- a/drivers/staging/wlan-ng/p80211conv.c
+++ b/drivers/staging/wlan-ng/p80211conv.c
@@ -178,21 +178,23 @@ int skb_ether_to_p80211(wlandevice_t *wlandev, u32 ethconv,
 
 	switch (wlandev->macmode) {
 	case WLAN_MACMODE_IBSS_STA:
-		memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a3, wlandev->bssid, ETH_ALEN);
+		ether_addr_copy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
+		ether_addr_copy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr,
+				ETH_ALEN);
+		ether_addr_copy(p80211_hdr->a3.a3, wlandev->bssid, ETH_ALEN);
 		break;
 	case WLAN_MACMODE_ESS_STA:
 		fc |= cpu_to_le16(WLAN_SET_FC_TODS(1));
-		memcpy(p80211_hdr->a3.a1, wlandev->bssid, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a3, &e_hdr.daddr, ETH_ALEN);
+		ether_addr_copy(p80211_hdr->a3.a1, wlandev->bssid, ETH_ALEN);
+		ether_addr_copy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr,
+				ETH_ALEN);
+		ether_addr_copy(p80211_hdr->a3.a3, &e_hdr.daddr, ETH_ALEN);
 		break;
 	case WLAN_MACMODE_ESS_AP:
 		fc |= cpu_to_le16(WLAN_SET_FC_FROMDS(1));
-		memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a2, wlandev->bssid, ETH_ALEN);
-		memcpy(p80211_hdr->a3.a3, &e_hdr.saddr, ETH_ALEN);
+		ether_addr_copy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
+		ether_addr_copy(p80211_hdr->a3.a2, wlandev->bssid, ETH_ALEN);
+		ether_addr_copy(p80211_hdr->a3.a3, &e_hdr.saddr, ETH_ALEN);
 		break;
 	default:
 		netdev_err(wlandev->netdev,
@@ -242,8 +244,8 @@ static void orinoco_spy_gather(wlandevice_t *wlandev, char *mac,
 
 	for (i = 0; i < wlandev->spy_number; i++) {
 
-		if (!memcmp(wlandev->spy_address[i], mac, ETH_ALEN)) {
-			memcpy(wlandev->spy_address[i], mac, ETH_ALEN);
+		if (!ether_addr_equal(wlandev->spy_address[i], mac, ETH_ALEN)) {
+			ether_addr_copy(wlandev->spy_address[i], mac, ETH_ALEN);
 			wlandev->spy_stat[i].level = rxmeta->signal;
 			wlandev->spy_stat[i].noise = rxmeta->noise;
 			wlandev->spy_stat[i].qual =
@@ -614,8 +616,6 @@ int p80211skb_rxmeta_attach(struct wlandevice *wlandev, struct sk_buff *skb)
 	rxmeta = kzalloc(sizeof(struct p80211_rxmeta), GFP_ATOMIC);
 
 	if (rxmeta == NULL) {
-		netdev_err(wlandev->netdev,
-			   "%s: Failed to allocate rxmeta.\n", wlandev->name);
 		result = 1;
 		goto exit;
 	}
-- 
2.1.0


