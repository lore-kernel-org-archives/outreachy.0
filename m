X-GM-THRID: 6919445020672
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,a263a5af8260271c,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.53.225 with SMTP id e1mr2381638wjp.4.1425652881706;
        Fri, 06 Mar 2015 06:41:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.207 with SMTP id jq15ls78513lab.107.gmail; Fri, 06 Mar
 2015 06:41:21 -0800 (PST)
X-Received: by 10.112.13.228 with SMTP id k4mr2322176lbc.8.1425652881200;
        Fri, 06 Mar 2015 06:41:21 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id o3si146220wib.2.2015.03.06.06.41.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 06:41:21 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggx13 with SMTP id x13so20323804wgg.4
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 06:41:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=z24iZnrugDoB7JoIljdFUiBOtgcThZU7ZD5+Yb7Yn7c=;
        b=cikV4y9qOe2NrKXeBD8ON0pglXgsjwF8QkhvVqBsVHRkeE/62bvRyumrUju4/HEDER
         AJsDq1SJz6WENURxbv7ARVD63ovmF+y61xJbPAfKk3WRL0VtJ5XZyqdNByEIGA9109E7
         8bfS4y4sj89XRfQ+lm5lAaYaJE0lmxSsxgT1bi9uhvdU0SexNwb3JgAYo5FQEOrFbikS
         XPlxdeH4jC2pIkKqBbrBo99ennnrxsxhpYG4axDyN4hTObITS7nsxFaxz0XsbBL6ZahX
         iXbe5aaY/iuESZEacYh+xQtOlgpVIjt9CGxnnUnGmbQc6Ol2td9l7gqxq6h/EUasCutN
         TFnQ==
X-Received: by 10.180.10.131 with SMTP id i3mr34444136wib.54.1425652879693;
        Fri, 06 Mar 2015 06:41:19 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id lb6sm15221639wjb.22.2015.03.06.06.41.18
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 06 Mar 2015 06:41:18 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Add blank line after declarations
Date: Fri,  6 Mar 2015 16:41:10 +0200
Message-Id: <1425652870-3874-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c WARNING: Missing a blank line after declarations

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 175bbb6..0d8d06a 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -393,6 +393,7 @@ ieee80211_rx_frame_decrypt_msdu(struct ieee80211_device *ieee, struct sk_buff *s
 	if (ieee->hwsec_active)
 	{
 		cb_desc *tcb_desc = (cb_desc *)(skb->cb+ MAX_DEV_ADDR_SIZE);
+
 		tcb_desc->bHwSec = 1;
 	}
 
@@ -518,7 +519,9 @@ drop:
 static bool AddReorderEntry(PRX_TS_RECORD pTS, PRX_REORDER_ENTRY pReorderEntry)
 {
 	struct list_head *pList = &pTS->RxPendingPktList;
+
 	while(pList->next != &pTS->RxPendingPktList)
+
 	{
 		if( SN_LESS(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next,RX_REORDER_ENTRY,List))->SeqNum) )
 		{
@@ -551,6 +554,7 @@ void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_
 	{
 //added by amy for reorder
 		struct ieee80211_rxb *prxb = prxbIndicateArray[j];
+		
 		for(i = 0; i<prxb->nr_subframes; i++) {
 			struct sk_buff *sub_skb = prxb->subframes[i];
 
@@ -606,6 +610,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	u16			WinEnd = (pTS->RxIndicateSeq + WinSize -1)%4096;
 	u8			index = 0;
 	bool			bMatchWinStart = false, bPktInBuf = false;
+	
 	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): Seq is %d,pTS->RxIndicateSeq is %d, WinSize is %d\n",__func__,SeqNum,pTS->RxIndicateSeq,WinSize);
 	/* Rx Reorder initialize condition.*/
 	if(pTS->RxIndicateSeq == 0xffff) {
@@ -619,6 +624,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 		pHTInfo->RxReorderDropCounter++;
 		{
 			int i;
+
 			for(i =0; i < prxb->nr_subframes; i++) {
 				dev_kfree_skb(prxb->subframes[i]);
 			}
@@ -1164,6 +1170,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	if ((frag != 0 || (fc & IEEE80211_FCTL_MOREFRAGS))) {
 		int flen;
 		struct sk_buff *frag_skb = ieee80211_frag_cache_get(ieee, hdr);
+
 		IEEE80211_DEBUG_FRAG("Rx Fragment received (%u)\n", frag);
 
 		if (!frag_skb) {
-- 
1.9.1


