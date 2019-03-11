X-GM-THRID: 6666820090157072384
X-Received: by 2002:a24:e984:: with SMTP id f126mr21028900ith.1.1552302998706;
        Mon, 11 Mar 2019 04:16:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:dd1a:: with SMTP id f26ls1367144ioc.1.gmail; Mon, 11 Mar
 2019 04:16:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwJeEx72Hd05ax3sltB9zqidVJ8nJy6xlu9RBdqCELF5qloGZwFMkYiJe+NsrNrOEqNmdxm
X-Received: by 2002:a5d:8b0b:: with SMTP id k11mr19198611ion.3.1552302998179;
        Mon, 11 Mar 2019 04:16:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552302998; cv=none;
        d=google.com; s=arc-20160816;
        b=w3AexTIUWtLyvTxtfC2P4FqzTqV3SmkibeHj6WstMfhY0eiLejC4YvZduppk+vblpC
         NUUkqXB1MLmddAt2O7cZaQI7dH8d8k8MrLLHZaJIwoDu702HHZdpeMkJ/eYLTur7w2GG
         vPqrTIq/QO1saPn+ZezTS/AnM7r21pehMFEYxHjJ5/l8o8f+H5/jumPmyJG03l1KSQCS
         erCDFLkeEq++xqz+0Jz+D8OhA1bW6roOg7fiUp0t87a0lplF5DjTZSLkM3dM5Etm71qt
         VhpXFe/AIoYtghh+O0R3NAofhAwFarvQl5OjOCl047XI3o1EWwaoTghd3cu9hTEWOHvJ
         iWMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=jkhTDu9/TEXp30XF3SVueV13TTWSBVv8CCSrrxwDD9Y=;
        b=IhLosy8tvgRgZPPF37skseCNiya7S55pYqM9DZTIHdlEynzVjgPGjym+edQawnxfhG
         0Vfw8GbN6J2vrF5BDbt0DIqf8s5ccFKqgN8fLPH0BSIy3ScoYu7EOUO8NQabQjgRI7Nv
         5k1ouOMjR7iQ36XSJiO9jmo6A+m2vIjoLj4qwk1YV86wB+bKqcdb+e9S7gpu0lvfnZN8
         Mal0+O8SSD/ObJz2ld40Pa/ZToSs4A/nzZ+fZnY58IPn/AwVTCiPZl0Vj9YOdLai3VBi
         YkQfzR5dLO98fPXp7bKdOM3pXrFRZ/+n7ek4oLILQrNgydF6/05xRt80Kmbd3sYXy1v+
         0xSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y4S1AMwy;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id y204si1006470itb.0.2019.03.11.04.16.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 04:16:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y4S1AMwy;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id k11so3771375pgb.8
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 04:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=jkhTDu9/TEXp30XF3SVueV13TTWSBVv8CCSrrxwDD9Y=;
        b=Y4S1AMwy7kQC0BNoSJ1UJ1PfXghTcXabNWVUE6/6LRlrtdLnwJ+Sh/tnEI1zH0vy9p
         XMnGPH+ra1siGMBYQ12Sy1hljSnU6C8m9KPDDdQuyQGBJn48HOn03T3HtUKGUTS2uvLs
         gcxlmY00ACFqdfDntpCCQV7nUnJQryQYSQVzMYnUrto0yOgnu/uz3BxS9s3bGEgQV8yb
         iBBnkjfFMNg24ouBTOof0vYZeACatsV/Jenk6FMp/955pX0hnJxufNbPrEcr1dk2Bphz
         tOYZCGFir2CgtPWS53iBmRpPGOPSrQLIKQT0FByTPcPDiMTuWhI8RsFrKRzjG83XIvFp
         yU/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=jkhTDu9/TEXp30XF3SVueV13TTWSBVv8CCSrrxwDD9Y=;
        b=cXilmFIzqN0oYna9f5AoI3Ln0S7HSOcLzgrhdZjNFKVRCFZ4MbkHXicjsNVWAAz4vL
         xHPcCHbp4vZReH7xnANUzqypSQrhdlIL8G9nbGQkQJpL86VVO4Ypn2zWWHQtjLEMIDrk
         Rb5Din9TuBbBD5dTfqeAXbSGWAGlA38izgor9VbCUnuBfeQ0+WpAxy2T5YR3qehpsp1h
         HdP42S4DM+sdK4CVpqkBAKt8uiJSfpjjSQzwHINLIPsv3N3DUQbiE3u3w06Ppr/M2HOY
         YCS/4T9DReiolmgceY3HHFr/EhPuy3p3rHTyy4xZU4UFA9EvtbXPj/6mgnfbluYlGYOo
         igvA==
X-Gm-Message-State: APjAAAXse0DmWiQiy9+gf8+cIyDZUfHInlO7GVQ9FuGKZWlsVmDDRuyO
	O074E6ubUUPSLSs4O+rcLsGXn21unQs=
X-Received: by 2002:a63:e553:: with SMTP id z19mr29410097pgj.331.1552302993361;
        Mon, 11 Mar 2019 04:16:33 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id p11sm23586700pfi.10.2019.03.11.04.16.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 04:16:32 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 6/7] Staging: rtl8192u: Remove casts on the return values of list_entry
Date: Mon, 11 Mar 2019 16:46:06 +0530
Message-Id: <20190311111607.28766-7-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190311111607.28766-1-bhanusreemahesh@gmail.com>
References: <20190311111607.28766-1-bhanusreemahesh@gmail.com>

Remove casts return values of on all occurances of list_entry.
Casts on the return values of list_entry are useless.
list_entry is a macro and already casts its return value to the type
mentioned in its second argument.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c   | 8 ++++----
 drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index c2483da9394e..f4c1befe6e8c 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -513,11 +513,11 @@ static bool AddReorderEntry(struct rx_ts_record *pTS, struct rx_reorder_entry *p
 	struct list_head *pList = &pTS->rx_pending_pkt_list;
 	while(pList->next != &pTS->rx_pending_pkt_list)
 	{
-		if( SN_LESS(pReorderEntry->SeqNum, ((struct rx_reorder_entry *)list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
+		if( SN_LESS(pReorderEntry->SeqNum, (list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
 		{
 			pList = pList->next;
 		}
-		else if( SN_EQUAL(pReorderEntry->SeqNum, ((struct rx_reorder_entry *)list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
+		else if( SN_EQUAL(pReorderEntry->SeqNum, (list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
 		{
 			return false;
 		}
@@ -663,7 +663,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 		/* Current packet is going to be inserted into pending list.*/
 		//IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): We RX no ordered packed, insert to ordered list\n",__func__);
 		if(!list_empty(&ieee->RxReorder_Unused_List)) {
-			pReorderEntry = (struct rx_reorder_entry *)list_entry(ieee->RxReorder_Unused_List.next, struct rx_reorder_entry, List);
+			pReorderEntry = list_entry(ieee->RxReorder_Unused_List.next, struct rx_reorder_entry, List);
 			list_del_init(&pReorderEntry->List);
 
 			/* Make a reorder entry and insert into a the packet list.*/
@@ -709,7 +709,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	/* Check if there is any packet need indicate.*/
 	while(!list_empty(&pTS->rx_pending_pkt_list)) {
 		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): start RREORDER indicate\n",__func__);
-		pReorderEntry = (struct rx_reorder_entry *)list_entry(pTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
+		pReorderEntry = list_entry(pTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
 		if (SN_LESS(pReorderEntry->SeqNum, pTS->rx_indicate_seq) ||
 		    SN_EQUAL(pReorderEntry->SeqNum, pTS->rx_indicate_seq))
 		{
diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
index aefa37b285b3..0368e5e3e95d 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
@@ -40,7 +40,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
 	if(pRxTs->rx_timeout_indicate_seq != 0xffff) {
 		// Indicate the pending packets sequentially according to SeqNum until meet the gap.
 		while(!list_empty(&pRxTs->rx_pending_pkt_list)) {
-			pReorderEntry = (struct rx_reorder_entry *)list_entry(pRxTs->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
+			pReorderEntry = list_entry(pRxTs->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
 			if(index == 0)
 				pRxTs->rx_indicate_seq = pReorderEntry->SeqNum;
 
@@ -426,7 +426,7 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, struct ts_common_info *
 		while(!list_empty(&pRxTS->rx_pending_pkt_list)) {
 			spin_lock_irqsave(&(ieee->reorder_spinlock), flags);
 			//pRxReorderEntry = list_entry(&pRxTS->rx_pending_pkt_list.prev,RX_REORDER_ENTRY,List);
-			pRxReorderEntry = (struct rx_reorder_entry *)list_entry(pRxTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
+			pRxReorderEntry = list_entry(pRxTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
 			list_del_init(&pRxReorderEntry->List);
 			{
 				int i = 0;
-- 
2.17.1


