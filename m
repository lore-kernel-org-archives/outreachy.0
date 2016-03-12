X-GM-THRID: 6261204257874116608
X-Received: by 10.13.238.130 with SMTP id x124mr11868100ywe.53.1457800458590;
        Sat, 12 Mar 2016 08:34:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.138 with SMTP id 10ls2558914qgl.13.gmail; Sat, 12 Mar
 2016 08:34:17 -0800 (PST)
X-Received: by 10.129.55.16 with SMTP id e16mr11580719ywa.44.1457800457859;
        Sat, 12 Mar 2016 08:34:17 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id h69si955354pfj.0.2016.03.12.08.34.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 08:34:17 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id u190so75452085pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 08:34:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FpQggKVBEzzlJ6r4PT+fj1XmLBCS9tZ4tXK0zyHe7ZI=;
        b=iSfshznEWWUBMV4L1CGTeHO8Zgu74phgJHNZf0+xE8ALOfOK3349IuS5zdN4chOMKq
         K7C/VVluEUXcpCudEGIS241YJWTZn1x2DBECIGgGYuG1Dyfi3X/cInLKLs/GnTwWaSbo
         EL8YXUz0w9dz4rcaAeS9Wz4G/gipm/6hCLnUbxEHe7+19W8+v/F3eY0ibDGlLAcLIfGS
         VreXPp3OPZxm5/JCgBpoDEYv9GOIvhsdPpOGpiRRxAGkTOShoVZh0wds/e1F1c9fPwUh
         nJt+sQH+sp3PEyrwQ8wBL1DNpe2HjJtVwQfKUTRoIwDYs6FQyVlXMAQ5ZnsJmQuG+m4F
         KsMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FpQggKVBEzzlJ6r4PT+fj1XmLBCS9tZ4tXK0zyHe7ZI=;
        b=b/ArPhg3wykk5uBa3TRkVMssVOe8RJj8VzEWOI4H3pSauoAvMQhKQz3qKqsKoZvsAq
         g9jj9lCp3YWG+5gAmLbVEriGPTbf0huomufA5ZHAlAzVA0nBx4yLNBJcDkqhaRiJGN1Z
         3R1EbqV4mPh0i53ANSYC0qtPycs44YNqkfSlCuJaOBay0iBC9qV8g1faUK/FaaQrZ6Cb
         SyRHNo26tWIJxCMj/iN9AMYpwIVLfR1EHV6XT0MLpFpJnMiyYApidwzTo1KUIkl+oClV
         meAavk19o1RySNfPko9GPdWZQgdRQw0o98kkzCMuCvaIccW2B1/oxLG2qNsS8BY1Vjra
         wuOA==
X-Gm-Message-State: AD7BkJKaPQRfg4zM1dIp7XWFqLyuMNYxg9WN5sIahgTsyS2es3UkHvjYbmVjAyApEYsrTQ==
X-Received: by 10.98.42.207 with SMTP id q198mr16998252pfq.103.1457800457645;
        Sat, 12 Mar 2016 08:34:17 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id s197sm20818899pfs.62.2016.03.12.08.34.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 08:34:17 -0800 (PST)
Date: Sat, 12 Mar 2016 22:04:02 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: wilc1000: Fix line over 80 characters
Message-ID: <7e44233f052b255f609be864c274c74ccbbe5bac.1457800084.git.anchalj109@gmail.com>
References: <cover.1457800084.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457800084.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Break lines so that they do not exceed
80 characters. Problem found using checkpatch.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/wilc1000/linux_mon.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index 44996e2..55f626a 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -69,7 +69,8 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
 	if (pkt_offset & IS_MANAGMEMENT_CALLBACK) {
 		/* hostapd callback mgmt frame */
 
-		skb = dev_alloc_skb(size + sizeof(struct wilc_wfi_radiotap_cb_hdr));
+		skb = dev_alloc_skb(size + sizeof(
+			struct wilc_wfi_radiotap_cb_hdr));
 		if (!skb)
 			return;
 
@@ -80,7 +81,8 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
 
 		cb_hdr->hdr.it_version = 0; /* PKTHDR_RADIOTAP_VERSION; */
 
-		cb_hdr->hdr.it_len = cpu_to_le16(sizeof(struct wilc_wfi_radiotap_cb_hdr));
+		cb_hdr->hdr.it_len = cpu_to_le16(sizeof(
+					struct wilc_wfi_radiotap_cb_hdr));
 
 		cb_hdr->hdr.it_present = cpu_to_le32(
 				(1 << IEEE80211_RADIOTAP_RATE) |
@@ -96,7 +98,8 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
 		}
 
 	} else {
-		skb = dev_alloc_skb(size + sizeof(struct wilc_wfi_radiotap_hdr));
+		skb = dev_alloc_skb(size + sizeof(
+					struct wilc_wfi_radiotap_hdr));
 
 		if (!skb)
 			return;
@@ -105,7 +108,8 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
 		hdr = (struct wilc_wfi_radiotap_hdr *)skb_push(skb, sizeof(*hdr));
 		memset(hdr, 0, sizeof(struct wilc_wfi_radiotap_hdr));
 		hdr->hdr.it_version = 0; /* PKTHDR_RADIOTAP_VERSION; */
-		hdr->hdr.it_len = cpu_to_le16(sizeof(struct wilc_wfi_radiotap_hdr));
+		hdr->hdr.it_len = cpu_to_le16(sizeof(
+					struct wilc_wfi_radiotap_hdr));
 		hdr->hdr.it_present = cpu_to_le32
 				(1 << IEEE80211_RADIOTAP_RATE);                   /* | */
 		hdr->rate = 5; /* txrate->bitrate / 5; */
@@ -197,7 +201,8 @@ static netdev_tx_t WILC_WFI_mon_xmit(struct sk_buff *skb,
 	skb_pull(skb, rtap_len);
 
 	if (skb->data[0] == 0xc0 && (!(memcmp(broadcast, &skb->data[4], 6)))) {
-		skb2 = dev_alloc_skb(skb->len + sizeof(struct wilc_wfi_radiotap_cb_hdr));
+		skb2 = dev_alloc_skb(skb->len + sizeof(
+					struct wilc_wfi_radiotap_cb_hdr));
 
 		memcpy(skb_put(skb2, skb->len), skb->data, skb->len);
 
@@ -206,7 +211,8 @@ static netdev_tx_t WILC_WFI_mon_xmit(struct sk_buff *skb,
 
 		cb_hdr->hdr.it_version = 0; /* PKTHDR_RADIOTAP_VERSION; */
 
-		cb_hdr->hdr.it_len = cpu_to_le16(sizeof(struct wilc_wfi_radiotap_cb_hdr));
+		cb_hdr->hdr.it_len = cpu_to_le16(sizeof(
+					struct wilc_wfi_radiotap_cb_hdr));
 
 		cb_hdr->hdr.it_present = cpu_to_le32(
 				(1 << IEEE80211_RADIOTAP_RATE) |
-- 
1.9.1


