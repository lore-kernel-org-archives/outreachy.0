X-GM-THRID: 6204103069755506688
X-Received: by 10.180.210.71 with SMTP id ms7mr1133481wic.4.1444505316789;
        Sat, 10 Oct 2015 12:28:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.232 with SMTP id fr8ls573331wib.28.gmail; Sat, 10 Oct
 2015 12:28:36 -0700 (PDT)
X-Received: by 10.180.85.133 with SMTP id h5mr1123969wiz.1.1444505316427;
        Sat, 10 Oct 2015 12:28:36 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id bh7si191833wib.1.2015.10.10.12.28.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 12:28:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id lk2so108420825wic.0
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 12:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=PQljniVR0ye74QxBm8YHqlyUpA3yDtwCUutf4BA4AbI=;
        b=T9XjXzE0FPHf2PAnODizNkdv91fQzeLai5946Jlfx2a+SVI/M32T35S3VTehJ9CKXC
         WvM9ryw6atSsMvz40ZTMQMOmxee3u6oTrqN0uN1omCbGVtc9BhOnhGOfvbmkGhUO1V+E
         sJx0tmlK/Cu505dzV0NJNTH0wrwjDbVN9gSO2xZbogmSAVdKcgMxySc/MaHnDJrQembP
         sPnvxnJqr1EnBdQUJkBVM4GYGngj4zzDatO0Dsbt5zLsz7UT8Yo8ck6KyCxlvtCSeQaa
         +lesqEnGdj6JScvkZt+vZ812MgY8XWxYweKy4ZceYehZEWQ6bS8Q4LmldhwAan13nObq
         wiJA==
X-Received: by 10.180.106.70 with SMTP id gs6mr6025235wib.19.1444505316322;
        Sat, 10 Oct 2015 12:28:36 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.101.153])
        by smtp.gmail.com with ESMTPSA id h7sm9673447wjz.7.2015.10.10.12.28.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 12:28:35 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 5/6] staging: rtl8192u: Add blank line after declarations
Date: Sat, 10 Oct 2015 22:27:47 +0300
Message-Id: <f70fb2b52aa46e87333e1031d4edc066879950c9.1444500823.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1444500823.git.cristina.moraru09@gmail.com>
References: <cover.1444500823.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1444500823.git.cristina.moraru09@gmail.com>
References: <cover.1444500823.git.cristina.moraru09@gmail.com>

Fix 'WARNING: Missing a blank line after declarations'
checkpatch warning

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index e743380..c639aac 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -390,6 +390,7 @@ ieee80211_rx_frame_decrypt_msdu(struct ieee80211_device *ieee, struct sk_buff *s
 		return 0;
 	if (ieee->hwsec_active) {
 		cb_desc *tcb_desc = (cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
+
 		tcb_desc->bHwSec = 1;
 	}
 
@@ -540,6 +541,7 @@ void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_
 	for (j = 0; j < index; j++) {
 //added by amy for reorder
 		struct ieee80211_rxb *prxb = prxbIndicateArray[j];
+
 		for (i = 0; i < prxb->nr_subframes; i++) {
 			struct sk_buff *sub_skb = prxb->subframes[i];
 
@@ -595,6 +597,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	u16			WinEnd = (pTS->RxIndicateSeq + WinSize - 1)%4096;
 	u8			index = 0;
 	bool			bMatchWinStart = false, bPktInBuf = false;
+
 	IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): Seq is %d, pTS->RxIndicateSeq is %d, WinSize is %d\n", __func__, SeqNum, pTS->RxIndicateSeq, WinSize);
 	/* Rx Reorder initialize condition.*/
 	if (pTS->RxIndicateSeq == 0xffff)
@@ -607,6 +610,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 		pHTInfo->RxReorderDropCounter++;
 		{
 			int i;
+
 			for (i = 0; i < prxb->nr_subframes; i++)
 				dev_kfree_skb(prxb->subframes[i]);
 			kfree(prxb);
@@ -665,6 +669,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 				list_add_tail(&pReorderEntry->List, &ieee->RxReorder_Unused_List);
 				{
 					int i;
+
 					for (i = 0; i < prxb->nr_subframes; i++)
 						dev_kfree_skb(prxb->subframes[i]);
 					kfree(prxb);
@@ -683,6 +688,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 			IEEE80211_DEBUG(IEEE80211_DL_ERR, "RxReorderIndicatePacket(): There is no reorder entry!! Packet is dropped!!\n");
 			{
 				int i;
+
 				for (i = 0; i < prxb->nr_subframes; i++)
 					dev_kfree_skb(prxb->subframes[i]);
 				kfree(prxb);
@@ -931,6 +937,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	/* If spy monitoring on */
 	if (iface->spy_data.spy_number > 0) {
 		struct iw_quality wstats;
+
 		wstats.level = rx_stats->rssi;
 		wstats.noise = rx_stats->noise;
 		wstats.updated = 6;	/* No qual value */
@@ -950,6 +957,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 	if (ieee->host_decrypt) {
 		int idx = 0;
+
 		if (skb->len >= hdrlen + 3)
 			idx = skb->data[hdrlen + 3] >> 6;
 		crypt = ieee->crypt[idx];
@@ -1133,6 +1141,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	if ((frag != 0 || (fc & IEEE80211_FCTL_MOREFRAGS))) {
 		int flen;
 		struct sk_buff *frag_skb = ieee80211_frag_cache_get(ieee, hdr);
+
 		IEEE80211_DEBUG_FRAG("Rx Fragment received (%u)\n", frag);
 
 		if (!frag_skb) {
-- 
1.9.1


