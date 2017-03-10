X-GM-THRID: 6395915539952173056
X-Received: by 10.25.204.21 with SMTP id c21mr2896639lfg.19.1489165131316;
        Fri, 10 Mar 2017 08:58:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.87.92 with SMTP id r28ls1092234ljd.11.gmail; Fri, 10 Mar
 2017 08:58:50 -0800 (PST)
X-Received: by 10.25.195.206 with SMTP id t197mr2951842lff.11.1489165130751;
        Fri, 10 Mar 2017 08:58:50 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id n128si224644wmf.2.2017.03.10.08.58.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:58:50 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id n11so3219859wma.0
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 08:58:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=q2lbmHon3UX53popaU+S6bFjywYIGve9l+17phXuaUo=;
        b=hJhfgOAezYt04EI8scrtM8GTh/1C82YhVqNLVpoyVraWlcfX549xaDpFzqNOxK+9vs
         MfBzB9jdfvSrRVNF1Rzx0Qk3XGDV2RlYQymanOLK+Ywa3/kiip74V01/Tk4feqUh9V4U
         DPvbQ7LXeWW/PfqxJTqPEmq0tzJs5nXkuVEX04gjZN9P2iHZdPEHCPTJ/2U4EJPUAo1Q
         pFyJBjCPqA8+NYKqznJ8nONJ8K0kMTTxKfgD8qRz4biQs7QHE/2oDJ1pPr5kJvQRB5z1
         Roj5ez4ZcoCZdzt/H4HjeOFX4k4ALwLRX4oG5Wao4McE4BQIx0vyLmeZP0RVxmYYam7m
         blKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=q2lbmHon3UX53popaU+S6bFjywYIGve9l+17phXuaUo=;
        b=hBE1oXIia4AIK88df7Z9LYMyE7EnCRhxDhhhes6oTykyB6UxP/Vd0kuXH69DreDRH2
         wgLKoOHTkwW0QGntEsta3ec9MllN3U+ejwaL8wSNoKiy4spro1LXV9iSArkWzPzRoBt0
         RNlYXzKwnv/iA3c+NG990eGLSCc30A03cpkChlT7uZjHQnieiitn9Vl1glZ1Tr3ftMhJ
         VM91N5twCSGRr7PktxeiJXcI0VvoyMpZxoXtaJ/zMPGAkSVfAWFTbaDCVzkTfCWuyoGw
         bgSzcVD+BcJdAEMzv8ksQIUUfUFyHbCW3+72W/W2/JDFCCTi5tlwIqaf+n6lI3Bgey2m
         Rs6g==
X-Gm-Message-State: AFeK/H1LYdUQAkgkdvFlKMJefOJMEzWeaNMHvMk2dAkyEVfXZ+sOyr95LUl16ILWTaSrMw==
X-Received: by 10.28.30.19 with SMTP id e19mr3247305wme.52.1489165130487;
        Fri, 10 Mar 2017 08:58:50 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:9935:36c4:c373:a2cc])
        by smtp.gmail.com with ESMTPSA id h3sm13646760wrb.6.2017.03.10.08.58.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 08:58:49 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 2/4] staging: wilc1000: linux_mon: Enhance code formatting
Date: Fri, 10 Mar 2017 18:58:47 +0200
Message-Id: <20170310165847.4082-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Trims line size at 80 characters in linux_mon.c file by moving parts of some lines in new lines.

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


