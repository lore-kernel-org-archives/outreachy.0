X-GM-THRID: 4040986460160
X-Received: by 10.181.13.236 with SMTP id fb12mr3725wid.1.1424985359933;
        Thu, 26 Feb 2015 13:15:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.208 with SMTP id l16ls86990laa.66.gmail; Thu, 26 Feb
 2015 13:15:59 -0800 (PST)
X-Received: by 10.152.1.5 with SMTP id 5mr1602970lai.4.1424985359468;
        Thu, 26 Feb 2015 13:15:59 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x243.google.com (mail-we0-x243.google.com. [2a00:1450:400c:c03::243])
        by gmr-mx.google.com with ESMTPS id ew5si197953wid.1.2015.02.26.13.15.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:15:59 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::243 as permitted sender) client-ip=2a00:1450:400c:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::243 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x243.google.com with SMTP id k11so3720596wes.1
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 13:15:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=2REPMNEYqhrus+iBXfATo5NKQgSy7nSFuswq24nFWOM=;
        b=FhzaCDOTtUpARGmmpImpgb63kjPnoMYawx+OeHbpNFA4m6845Ne7UpVhXOlEXkYBNN
         CDEhRRb1pXTfuBdEtD8YbaeNGPW4Ry6y35mtmlM1wc6cV8KzCJ5lVcQzanJ8jlMQhbXq
         JIjOqCe4RA6Dai3HtYv3sitJ+QNwABjD6FtoTlaUbQ5/CBv/3miZqN6dmWtFWu0qpnJW
         OGDYqIKTXNmBSw381obolmJpNCR/vPBkUjLTxN0D2tHScclIiaXNOnjX5hAbM5ofzUVC
         ggp5NDd1LdjlykC+7O7mayECKL9hiNTbffbOZMLyDTgmcfTAwMLD1arQORcF4n+EfxpE
         2WHQ==
X-Received: by 10.180.77.40 with SMTP id p8mr20515465wiw.53.1424985359371;
        Thu, 26 Feb 2015 13:15:59 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id dj5sm3078352wjb.28.2015.02.26.13.15.58
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Feb 2015 13:15:58 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: wlan-ng: coding style ether_addr_copy
Date: Thu, 26 Feb 2015 23:15:52 +0200
Message-Id: <1424985352-10899-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

This fixes the following issues detected by checkpatch.pl:

WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet
addresses are __aligned(2)

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/wlan-ng/p80211conv.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
index 7eaaf9a..5625c64 100644
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


