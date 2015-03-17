X-GM-THRID: 8800398475264
X-Received: by 10.152.28.137 with SMTP id b9mr10066110lah.8.1426598118384;
        Tue, 17 Mar 2015 06:15:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.98.226 with SMTP id el2ls844753wib.25.canary; Tue, 17 Mar
 2015 06:15:18 -0700 (PDT)
X-Received: by 10.180.77.165 with SMTP id t5mr7142282wiw.0.1426598118068;
        Tue, 17 Mar 2015 06:15:18 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id cl5si119286wib.3.2015.03.17.06.15.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 06:15:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x230.google.com with SMTP id dy8so62862629wib.0
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 06:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=4+2g373px8Lq1iS3aoxg0QbAQ8NjWYNvew2kEm9erT8=;
        b=awgiWakbT4lyR3yTihuTFB0sHj3Oe2zgv6EJLaR94E4UpRq+utFQ4MouneFeqpNYmG
         yERu3oXy3MjC1iAxXzpXbEeR4kXiRKBz4IZVgUakOzDiMW2lWJ03m0J3yKegUNCxzr9U
         26BEe8H0jOXmHgREJc1no/naBxqBhRxn8Ib+roJzV+rjbWEXmkvZPnh0qi9ltL6gdAp0
         Nhy1VFHIeyt7j77Qjw8Po0g//+6KhyJzmy3E6HDHEo7XOmMJvvI7iEQb7GgiIbCFAgUE
         uN92Nwf+nhinP+hSNe4C0+AkPqK3k7xgp1HqK6FGsGqnanpfyQkJGnFBgTp6G6Cw4f3c
         agsg==
X-Received: by 10.194.94.164 with SMTP id dd4mr135130430wjb.56.1426598118001;
        Tue, 17 Mar 2015 06:15:18 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id dc9sm2646333wib.9.2015.03.17.06.15.15
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Mar 2015 06:15:17 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] staging: p80211conv: Replace memcpy with ether_addr_copy
Date: Tue, 17 Mar 2015 15:14:57 +0200
Message-Id: <1426598097-26197-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace memcpy() with ether_addr_copy() when using __aligned(2) Ethernet 
addresses. 
Changes done using the following coccinelle script:

@@
expression e1, e2;
@@

- memcpy(e1, e2, ETH_ALEN);
+ ether_addr_copy(e1, e2); 

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
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


