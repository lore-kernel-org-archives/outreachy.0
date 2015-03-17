X-GM-THRID: 8800398475264
X-Received: by 10.180.109.34 with SMTP id hp2mr194214wib.4.1426633867876;
        Tue, 17 Mar 2015 16:11:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.13.5 with SMTP id eu5ls198108wid.48.gmail; Tue, 17 Mar
 2015 16:11:07 -0700 (PDT)
X-Received: by 10.180.90.175 with SMTP id bx15mr191229wib.3.1426633867604;
        Tue, 17 Mar 2015 16:11:07 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id bz6si19929wib.3.2015.03.17.16.11.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 16:11:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x236.google.com with SMTP id g7so54551407wib.1
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 16:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=/qR34hY3PjxqnxQkN41nWmu5ituhu2B4psHw4EhHfb8=;
        b=c9soLKDlqXGR7vvG9GL/HMNNpmcJ6SdmByyR5ClsqCrypPitPuxo2fCJhEtnwMkgUC
         56oR2dla6sS9A/VoZmf/oIvmP5/BwQmgw0NvVJwpG0ZXmP4wgRlOP27nzBm/LQMLzbui
         S7HW1hUEne5ord2uZqdhPlFKU4ddZhsZZmbQvgYjf5Lcv5f51juU8os/OaAGiRR0q+hn
         qH6mcIlTQA2zt8Y5BeNSe8pjm87RRmjJYNGpNq7C+vi63zERpys9eDlGcqBZMbpqhu8B
         WA3YmAC/OE1AaY3JOqwFHaBXK7F9OQGJuGKeodKrcBcl5AkT8KbiGcYJFFcN0i2vY3n2
         UbKg==
X-Received: by 10.194.21.137 with SMTP id v9mr134332796wje.140.1426633867534;
        Tue, 17 Mar 2015 16:11:07 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id uo6sm21878760wjc.49.2015.03.17.16.11.05
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Mar 2015 16:11:06 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2] staging: p80211conv: Replace memcpy with ether_addr_copy
Date: Wed, 18 Mar 2015 01:10:58 +0200
Message-Id: <1426633858-22689-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace memcpy() with ether_addr_copy() since addresses are __aligned(2).
The 2 structures are aligned to u16:

struct p80211_hdr_a3 {
	__le16 fc;		/* 0	2 */
	u16 dur;		/* 2	2 */
	u8 a1[ETH_ALEN];	/* 4	6 */	
	u8 a2[ETH_ALEN];	/* 10	6 */
	u8 a3[ETH_ALEN];	/* 16	6 */
	u16 seq;		/* 22	2 */
} __packed;

Total size: 24

struct wlan_ethhdr {
	u8 daddr[WLAN_ETHADDR_LEN];	/* 0	6 */
	u8 saddr[WLAN_ETHADDR_LEN];	/* 6	6 */
	u16 type;			/* 12	2 */
} __packed;

Total size: 14

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---

Changes in v2:
	- added explanations on why the addresses are aligned

 drivers/staging/wlan-ng/p80211conv.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
index bd69e8c..a51fbfe 100644
--- a/drivers/staging/wlan-ng/p80211conv.c
+++ b/drivers/staging/wlan-ng/p80211conv.c
@@ -62,6 +62,7 @@
 #include <linux/etherdevice.h>
 #include <linux/if_ether.h>
 #include <linux/byteorder/generic.h>

 #include <asm/byteorder.h>
 
@@ -178,21 +179,21 @@ int skb_ether_to_p80211(wlandevice_t *wlandev, u32 ethconv,
 
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
@@ -241,7 +242,7 @@ static void orinoco_spy_gather(wlandevice_t *wlandev, char *mac,
 	for (i = 0; i < wlandev->spy_number; i++) {
 
 		if (!memcmp(wlandev->spy_address[i], mac, ETH_ALEN)) {
-			memcpy(wlandev->spy_address[i], mac, ETH_ALEN);
+			ether_addr_copy(wlandev->spy_address[i], mac);
 			wlandev->spy_stat[i].level = rxmeta->signal;
 			wlandev->spy_stat[i].noise = rxmeta->noise;
 			wlandev->spy_stat[i].qual =
-- 
1.9.1


