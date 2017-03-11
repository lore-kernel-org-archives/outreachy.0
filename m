X-GM-THRID: 6395629856318554112
X-Received: by 10.46.88.70 with SMTP id x6mr3675914ljd.22.1489224143492;
        Sat, 11 Mar 2017 01:22:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.72 with SMTP id a69ls1247005ljb.42.gmail; Sat, 11 Mar
 2017 01:22:23 -0800 (PST)
X-Received: by 10.46.81.66 with SMTP id b2mr3848548lje.3.1489224143001;
        Sat, 11 Mar 2017 01:22:23 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id b186si168035wme.1.2017.03.11.01.22.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 01:22:22 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id u132so2354069wmg.1
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 01:22:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Q+Ntx032AWYm/+5YSOh8xG6Y7JC98m6qdlxxNz7gUOM=;
        b=AEDwcTl3mxvS3Tvmr+hlxPGzRsUsIroHu7y1coWuAcCd2GrCE2/g02SWrZusSNtBMt
         PG/gxQK9yniGaJuCofrKjYp5lBNuoIzjePD2edpyCqELclP1625Ebs96TiIT4hKYNikO
         jtaaC4i1LeBc+QfGRInQH8oAqrWEEDs30fZ3VUbMJ71pIKsBDpkfhUvVdBTexD7BPBR1
         Itd2MI3RXo7u2S8ahocN3XRsDLLjGv853wWhhw4161wo48WmJ4spOaLV4bUEpQp6q+BF
         bjMqs8ppwvh6zvRKl2OOndHSEWhmDiHk51tCMHReU67xMmfTK0FBd8eQHLHXltXHXPmQ
         IUUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Q+Ntx032AWYm/+5YSOh8xG6Y7JC98m6qdlxxNz7gUOM=;
        b=Zc/vcyhGFBZgV1svnBPu2v0yl8nVz4jglYOzhMymQDN3juaNclwKpmKQ2F7Kz5l+4z
         YDzmVBEWjXx/uswKsMLPlWEMsCsrkm99nXAtDaWxUpT0d7F102iTlTVRtm5bDcoEVGmm
         bOUIn5sAoE5DEUVnbOsg+l2j+5GSGACFjvKfb2uOFVF9QJ3GVP9fvLkLjzyH9J19Lg0D
         4/cjTyKG3oS60kySDwTidt7dHpLLwSSKoPZZ7hjfgkNlDoXKrhqtclwNmuk6YkS3fTRn
         zONz+4ntwADamCgu4BWK3WQvVkaEfRN8LFyfuK7HplPxBZp+JKZyhvCs2/mtXgGz66mk
         YK6Q==
X-Gm-Message-State: AFeK/H3GvZCVZpTI0LGKUM/fzlm4MtEGqya9//5sU7nRma8gNlY8N2dj3ppZ9tEOVE/CvA==
X-Received: by 10.28.144.14 with SMTP id s14mr778740wmd.22.1489224142775;
        Sat, 11 Mar 2017 01:22:22 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id c58sm16640446wrc.9.2017.03.11.01.22.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 01:22:21 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v3 2/3] staging: wilc1000: Enhance code formatting
Date: Sat, 11 Mar 2017 11:22:03 +0200
Message-Id: <20170311092204.3465-3-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170311092204.3465-1-diaconita.tamara@gmail.com>
References: <20170311092204.3465-1-diaconita.tamara@gmail.com>

Trims line size at 80 characters in linux_mon.c file by moving parts
of some lines in new lines.

Fixed the checkpath.pl issue:
CHECK: Line over 80 characters.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
Changes since v2:
*Wrap log message lines at 72.

Changes since v1:
*Deleted linux_mon.c from the subject.
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


