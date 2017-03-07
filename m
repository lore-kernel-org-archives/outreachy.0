X-GM-THRID: 6394871652191043584
X-Received: by 10.25.195.206 with SMTP id t197mr452475lff.11.1488922082862;
        Tue, 07 Mar 2017 13:28:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.125.137 with SMTP id y131ls22446lfc.24.gmail; Tue, 07 Mar
 2017 13:28:02 -0800 (PST)
X-Received: by 10.46.84.13 with SMTP id i13mr492972ljb.2.1488922082305;
        Tue, 07 Mar 2017 13:28:02 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id n128si477483wmf.2.2017.03.07.13.28.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 13:28:02 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id z63so3105005wmg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 13:28:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=WYKxQoPoKi3kfKkB10XZplrqkCHb/FVehGEXKg7rVSk=;
        b=sfXT8leNcYoLB9EDCPT6O+Iow2QjLfteOwmS1CEzoNiD07cAh5cz+HQ44LCvPEoEZk
         E2B9K3OLOiMRWYscytvoiAWR1Vp7L6wewoNaKrIYfb44uiEOnuoU1vgEvnCZDPZP3szT
         XspDt5SGI6ZRCJnuIigfU2/sIzzcCrU4S80J08rrbdmhD+U/snHS7eGXCz2dxFmUhYqJ
         reCFwIbzEuJSwILSrrbuel8tWVmr97jPdbHQ6xZObAxQK08ks5a4JZlwbHHCQ3lvlVi8
         nt+4GciknO67cZfebi5uCBRlbaWJGi7SYiOOnfNvdVU7xXGyIi4qFLEI19EKb3tcS/94
         5HhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WYKxQoPoKi3kfKkB10XZplrqkCHb/FVehGEXKg7rVSk=;
        b=cLqC/6kSRweulrSJlE7P3lMfbpWH7gVgR6JYVitQFXytUCmaYqbTzZ+tire7PyPA7H
         HW1AHXm+7tX9QAL5Een2R8Sa5w6oSu9LP4Uh+q+/jz96lmTj0GAixn3fAXrRDCCRxNpE
         0shJFbF9InRMwThaIkkb6NamgWMwOZBHZbZek6ZH4aBGfMEJ5Qnp1gWAzGFJfc/0I6nl
         uPRurueTMRRqkvXt0f8tnz83Gl/d/yiT6fwFByi5opK4NbmsBL5TnClx+WJu1NsFw3lC
         dMENw5t2xVVm1TWtzrHhA1CxnLct3erGYMTTbJN3jKWCIWNse0QbOr4xxsqmcux7FFZ9
         Er9w==
X-Gm-Message-State: AMke39kX50jaIH04jeu7lPPRYlbg7geCjSXr4gbSroTFrXbjUqcE+L09SOAIqFuiT5HkXQ==
X-Received: by 10.28.193.193 with SMTP id r184mr2587160wmf.80.1488922082049;
        Tue, 07 Mar 2017 13:28:02 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:8168:a9b6:7cd0:c4cf])
        by smtp.gmail.com with ESMTPSA id 32sm1442876wrr.64.2017.03.07.13.28.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 13:28:01 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] staging: wilc1000: linux_mon: Rearrange the code
Date: Tue,  7 Mar 2017 23:27:51 +0200
Message-Id: <20170307212751.4152-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Put a part of some lines in a new line to have less than 80 characters.

Fixed the checkpath.pl issue:
CHECK: Line over 80 characters.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/linux_mon.c | 27 ++++++++++++++++++---------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index f328d75..6897a51 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -68,18 +68,21 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
 	if (pkt_offset & IS_MANAGMEMENT_CALLBACK) {
 		/* hostapd callback mgmt frame */
 
-		skb = dev_alloc_skb(size + sizeof(struct wilc_wfi_radiotap_cb_hdr));
+		skb = dev_alloc_skb(size +
+			sizeof(struct wilc_wfi_radiotap_cb_hdr));
 		if (!skb)
 			return;
 
 		memcpy(skb_put(skb, size), buff, size);
 
-		cb_hdr = (struct wilc_wfi_radiotap_cb_hdr *)skb_push(skb, sizeof(*cb_hdr));
+		cb_hdr = (struct wilc_wfi_radiotap_cb_hdr *)skb_push(skb,
+			  sizeof(*cb_hdr));
 		memset(cb_hdr, 0, sizeof(struct wilc_wfi_radiotap_cb_hdr));
 
 		cb_hdr->hdr.it_version = 0; /* PKTHDR_RADIOTAP_VERSION; */
 
-		cb_hdr->hdr.it_len = cpu_to_le16(sizeof(struct wilc_wfi_radiotap_cb_hdr));
+		cb_hdr->hdr.it_len =
+			cpu_to_le16(sizeof(struct wilc_wfi_radiotap_cb_hdr));
 
 		cb_hdr->hdr.it_present = cpu_to_le32(
 				(1 << IEEE80211_RADIOTAP_RATE) |
@@ -95,16 +98,19 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
 		}
 
 	} else {
-		skb = dev_alloc_skb(size + sizeof(struct wilc_wfi_radiotap_hdr));
+		skb = dev_alloc_skb(size +
+			sizeof(struct wilc_wfi_radiotap_hdr));
 
 		if (!skb)
 			return;
 
 		memcpy(skb_put(skb, size), buff, size);
-		hdr = (struct wilc_wfi_radiotap_hdr *)skb_push(skb, sizeof(*hdr));
+		hdr = (struct wilc_wfi_radiotap_hdr *)skb_push(skb,
+		       sizeof(*hdr));
 		memset(hdr, 0, sizeof(struct wilc_wfi_radiotap_hdr));
 		hdr->hdr.it_version = 0; /* PKTHDR_RADIOTAP_VERSION; */
-		hdr->hdr.it_len = cpu_to_le16(sizeof(struct wilc_wfi_radiotap_hdr));
+		hdr->hdr.it_len =
+			cpu_to_le16(sizeof(struct wilc_wfi_radiotap_hdr));
 		hdr->hdr.it_present = cpu_to_le32
 				(1 << IEEE80211_RADIOTAP_RATE); /* | */
 		hdr->rate = 5; /* txrate->bitrate / 5; */
@@ -196,16 +202,19 @@ static netdev_tx_t WILC_WFI_mon_xmit(struct sk_buff *skb,
 	skb_pull(skb, rtap_len);
 
 	if (skb->data[0] == 0xc0 && (!(memcmp(broadcast, &skb->data[4], 6)))) {
-		skb2 = dev_alloc_skb(skb->len + sizeof(struct wilc_wfi_radiotap_cb_hdr));
+		skb2 = dev_alloc_skb(skb->len +
+			sizeof(struct wilc_wfi_radiotap_cb_hdr));
 
 		memcpy(skb_put(skb2, skb->len), skb->data, skb->len);
 
-		cb_hdr = (struct wilc_wfi_radiotap_cb_hdr *)skb_push(skb2, sizeof(*cb_hdr));
+		cb_hdr = (struct wilc_wfi_radiotap_cb_hdr *)skb_push(skb2,
+			sizeof(*cb_hdr));
 		memset(cb_hdr, 0, sizeof(struct wilc_wfi_radiotap_cb_hdr));
 
 		cb_hdr->hdr.it_version = 0; /* PKTHDR_RADIOTAP_VERSION; */
 
-		cb_hdr->hdr.it_len = cpu_to_le16(sizeof(struct wilc_wfi_radiotap_cb_hdr));
+		cb_hdr->hdr.it_len =
+			cpu_to_le16(sizeof(struct wilc_wfi_radiotap_cb_hdr));
 
 		cb_hdr->hdr.it_present = cpu_to_le32(
 				(1 << IEEE80211_RADIOTAP_RATE) |
-- 
2.9.3


