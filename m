X-GM-THRID: 6666820090157072384
X-Received: by 2002:a02:9f09:: with SMTP id z9mr6636135jal.2.1552302993405;
        Mon, 11 Mar 2019 04:16:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7a07:: with SMTP id h7ls1960047iom.5.gmail; Mon, 11 Mar
 2019 04:16:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyZqJLhaVf7SBUdlJrKLq6Kpl4TQHLwVTbX2NZUqGeuJB7D4eqEtOgdUZ5vs+x4FLNkChHr
X-Received: by 2002:a5d:9a0d:: with SMTP id s13mr33112iol.26.1552302992687;
        Mon, 11 Mar 2019 04:16:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552302992; cv=none;
        d=google.com; s=arc-20160816;
        b=Y/x60+ldDAuE6sxEj7Hj47WCrsnGBpifIzfRRiZ/0iSOAQr6CrulQVbYjDhGhi3QHH
         mcgrGInjb+XqquoUccpc9ccCeEf0LmHVIGk0mruHkWLsEFeRM3SEwyAgPWBeYM11Y0vt
         oql0RlX91+heS1sKsNbyFeVgOiPWjq8YY843GxvvOE3NEKfD7i+P8pQqQT5t726uQDXI
         GOhWGrUbB3B9Ky+YQpsysqt4OoDioxFT4TJa3jJBPE72dxJZcesNLCBtl0l1eN6Y1mU4
         xP1AME/OLdMjaPPpRvzKGM1itHcN2ZdHF4ER81L5emK5aQmVjensSmBks4Vl5fGKHV9d
         qthg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=1dD8LPjT2UF4U6Qe9eJlr7BOOsIh7tolfr2skUxVubs=;
        b=ZP1+K5eOY/TSe44CvwmEovy2jftRE2nhQoBdxN+k3Xdh/mChNF5QV3LZc2KDAMr+X2
         gxAIq9Bcbrfg5RQDl4TAkV7MHN6aQTk4kPnYOwyrJMdLZG9ktG1otYiBFolacgUsBXXm
         ZPCi/SkRCiDYLNBt08LHBay12mAXg4ZoJ2qkQqtOB8Sss6xwcjsEomfkkf17wgkNcbeG
         RZk7ARpgLlgb9o1br35N5iU+OFZ560sNYbkLJ43/hWm+bnw+/NeIuS6TqTkPS/oFxQdy
         9TM+EN824caC9trxJAwzre8CwLqdgBQNBBqw5fFOrh066aNyQAVA6xlqJn/tpUuue80B
         mahw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MiSFr+m6;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id e74si986448ite.1.2019.03.11.04.16.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 04:16:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MiSFr+m6;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id q206so3784631pgq.4
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 04:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=1dD8LPjT2UF4U6Qe9eJlr7BOOsIh7tolfr2skUxVubs=;
        b=MiSFr+m6HaMOgXjrP7JTiRVCSIVOJ7/YTCAhODJ7Tgx7mrvidSoFWrNK4KM61Li7KL
         /TewHvyT++V2DTmQd1fSizDZhF/zjekuo5DVqQQN4AIMkwSQKosmv8ePjQatlABMhxvd
         UZ6gxjUg+x7uUICTGeLYtV3BxsAW0sD+FujOqrOxBIdUKGDJMV71T7EoNGbPVqS02Fz0
         EHyHKVv3YJRQMIcXhzvsQu+P133Q+p17riMsBc/HyktAGWwGdqkOsb2YUSN4KZSAEcwm
         izHWx9//QRS7nB7kiJkWP2N6yYFxhNDlEZYEhlZ+546vUYE01Yfb0BtTzI6lHPROaaZk
         dnOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=1dD8LPjT2UF4U6Qe9eJlr7BOOsIh7tolfr2skUxVubs=;
        b=IpSzL0f/R7evadW6j/Zkaf7v8G1Xxv4qz8MdBAUL2lxTQOkgyVFgMXYYWcI8+n4p8v
         ySbY8bDt8gRHn1O/GT5Ya8lIIThEa1tbTyXvt6j/xzt1UGoPzNgempM9mssBD88iA93g
         uz7sR+DCFGJQaqCSa3h0NTcOMlPJZNAXqquUB3vFubzSHFsw+TtK1XOnL16J941NqlJQ
         6PsGzqEptR076UDBnJuUCpiDekvKzcc1EwA/JBf2mbPGsbIqsqOCP+/VHusWsmI2m24e
         qfHYCCEYFk5kHrO2ddQbQX3/3LcD8tGdKO1tcFgjDS4mSBedy302XeJhFUuxIt0OQ1Pt
         Cl6A==
X-Gm-Message-State: APjAAAXVc7iv7u5hl1GsT4pEJY3uTL78MTQaNuQxSrcJzKKul6m/iosB
	tGR4wEHq028xtZ2+gHXqrZw4wvcePiw=
X-Received: by 2002:a65:48c1:: with SMTP id o1mr7544222pgs.94.1552302991721;
        Mon, 11 Mar 2019 04:16:31 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id p11sm23586700pfi.10.2019.03.11.04.16.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 04:16:31 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 5/7] Staging: rtl8192u: Remove typedef for struct _RX_REORDER_ENTRY
Date: Mon, 11 Mar 2019 16:46:05 +0530
Message-Id: <20190311111607.28766-6-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190311111607.28766-1-bhanusreemahesh@gmail.com>
References: <20190311111607.28766-1-bhanusreemahesh@gmail.com>

-Avoid typedefs for structure types to maintain kernel coding style.
-Remove typedefs RX_REORDER_ENTRY  and *PRX_REORDER_ENTRY  of struct _RX_REORDER_ENTRY .
-Change Structure name _RX_REORDER_ENTRY  to rx_reorder_entry to maintain Linux kernel Coding Style.
-Replace occurences of RX_REORDER_ENTRY  to struct rx_reorder_entry.
-Replace occurences of PRX_REORDER_ENTRY  to struct rx_reorder_entry *.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h      |  6 +++---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c   | 12 ++++++------
 drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 10 +++++-----
 3 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index fc24df42ca8d..ad5a3ae14804 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1474,11 +1474,11 @@ struct bandwidth_autoswitch {
 
 #define REORDER_WIN_SIZE	128
 #define REORDER_ENTRY_NUM	128
-typedef struct _RX_REORDER_ENTRY {
+struct rx_reorder_entry {
 	struct list_head	List;
 	u16			SeqNum;
 	struct ieee80211_rxb *prxb;
-} RX_REORDER_ENTRY, *PRX_REORDER_ENTRY;
+};
 //added by amy for order
 typedef enum _Fsync_State {
 	Default_Fsync,
@@ -1654,7 +1654,7 @@ struct ieee80211_device {
 	struct list_head		Rx_TS_Unused_List;
 	struct rx_ts_record		RxTsRecord[TOTAL_TS_NUM];
 //#ifdef TO_DO_LIST
-	RX_REORDER_ENTRY	RxReorderEntry[128];
+	struct rx_reorder_entry	RxReorderEntry[128];
 	struct list_head		RxReorder_Unused_List;
 //#endif
 	// Qos related. Added by Annie, 2005-11-01.
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 5147f7c01e31..c2483da9394e 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -508,16 +508,16 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 	return 1;
 }
 
-static bool AddReorderEntry(struct rx_ts_record *pTS, PRX_REORDER_ENTRY pReorderEntry)
+static bool AddReorderEntry(struct rx_ts_record *pTS, struct rx_reorder_entry *pReorderEntry)
 {
 	struct list_head *pList = &pTS->rx_pending_pkt_list;
 	while(pList->next != &pTS->rx_pending_pkt_list)
 	{
-		if( SN_LESS(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next,RX_REORDER_ENTRY,List))->SeqNum) )
+		if( SN_LESS(pReorderEntry->SeqNum, ((struct rx_reorder_entry *)list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
 		{
 			pList = pList->next;
 		}
-		else if( SN_EQUAL(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next,RX_REORDER_ENTRY,List))->SeqNum) )
+		else if( SN_EQUAL(pReorderEntry->SeqNum, ((struct rx_reorder_entry *)list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
 		{
 			return false;
 		}
@@ -589,7 +589,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 				    struct rx_ts_record *pTS, u16 SeqNum)
 {
 	PRT_HIGH_THROUGHPUT	pHTInfo = ieee->pHTInfo;
-	PRX_REORDER_ENTRY	pReorderEntry = NULL;
+	struct rx_reorder_entry *pReorderEntry = NULL;
 	struct ieee80211_rxb **prxbIndicateArray;
 	u8			WinSize = pHTInfo->RxReorderWinSize;
 	u16			WinEnd = (pTS->rx_indicate_seq + WinSize - 1) % 4096;
@@ -663,7 +663,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 		/* Current packet is going to be inserted into pending list.*/
 		//IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): We RX no ordered packed, insert to ordered list\n",__func__);
 		if(!list_empty(&ieee->RxReorder_Unused_List)) {
-			pReorderEntry = (PRX_REORDER_ENTRY)list_entry(ieee->RxReorder_Unused_List.next,RX_REORDER_ENTRY,List);
+			pReorderEntry = (struct rx_reorder_entry *)list_entry(ieee->RxReorder_Unused_List.next, struct rx_reorder_entry, List);
 			list_del_init(&pReorderEntry->List);
 
 			/* Make a reorder entry and insert into a the packet list.*/
@@ -709,7 +709,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	/* Check if there is any packet need indicate.*/
 	while(!list_empty(&pTS->rx_pending_pkt_list)) {
 		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): start RREORDER indicate\n",__func__);
-		pReorderEntry = (PRX_REORDER_ENTRY)list_entry(pTS->rx_pending_pkt_list.prev,RX_REORDER_ENTRY,List);
+		pReorderEntry = (struct rx_reorder_entry *)list_entry(pTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
 		if (SN_LESS(pReorderEntry->SeqNum, pTS->rx_indicate_seq) ||
 		    SN_EQUAL(pReorderEntry->SeqNum, pTS->rx_indicate_seq))
 		{
diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
index c76715ffa08b..aefa37b285b3 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
@@ -28,7 +28,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
 	struct rx_ts_record     *pRxTs = from_timer(pRxTs, t, rx_pkt_pending_timer);
 	struct ieee80211_device *ieee = container_of(pRxTs, struct ieee80211_device, RxTsRecord[pRxTs->num]);
 
-	PRX_REORDER_ENTRY	pReorderEntry = NULL;
+	struct rx_reorder_entry	*pReorderEntry = NULL;
 
 	//u32 flags = 0;
 	unsigned long flags = 0;
@@ -40,7 +40,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
 	if(pRxTs->rx_timeout_indicate_seq != 0xffff) {
 		// Indicate the pending packets sequentially according to SeqNum until meet the gap.
 		while(!list_empty(&pRxTs->rx_pending_pkt_list)) {
-			pReorderEntry = (PRX_REORDER_ENTRY)list_entry(pRxTs->rx_pending_pkt_list.prev, RX_REORDER_ENTRY, List);
+			pReorderEntry = (struct rx_reorder_entry *)list_entry(pRxTs->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
 			if(index == 0)
 				pRxTs->rx_indicate_seq = pReorderEntry->SeqNum;
 
@@ -133,7 +133,7 @@ void TSInitialize(struct ieee80211_device *ieee)
 {
 	struct tx_ts_record     *pTxTS  = ieee->TxTsRecord;
 	struct rx_ts_record     *pRxTS  = ieee->RxTsRecord;
-	PRX_REORDER_ENTRY	pRxReorderEntry = ieee->RxReorderEntry;
+	struct rx_reorder_entry	*pRxReorderEntry = ieee->RxReorderEntry;
 	u8				count = 0;
 	IEEE80211_DEBUG(IEEE80211_DL_TS, "==========>%s()\n", __func__);
 	// Initialize Tx TS related info.
@@ -418,7 +418,7 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, struct ts_common_info *
 
 	if(TxRxSelect == RX_DIR) {
 //#ifdef TO_DO_LIST
-		PRX_REORDER_ENTRY	pRxReorderEntry;
+		struct rx_reorder_entry	*pRxReorderEntry;
 		struct rx_ts_record     *pRxTS = (struct rx_ts_record *)pTs;
 		if(timer_pending(&pRxTS->rx_pkt_pending_timer))
 			del_timer_sync(&pRxTS->rx_pkt_pending_timer);
@@ -426,7 +426,7 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, struct ts_common_info *
 		while(!list_empty(&pRxTS->rx_pending_pkt_list)) {
 			spin_lock_irqsave(&(ieee->reorder_spinlock), flags);
 			//pRxReorderEntry = list_entry(&pRxTS->rx_pending_pkt_list.prev,RX_REORDER_ENTRY,List);
-			pRxReorderEntry = (PRX_REORDER_ENTRY)list_entry(pRxTS->rx_pending_pkt_list.prev, RX_REORDER_ENTRY, List);
+			pRxReorderEntry = (struct rx_reorder_entry *)list_entry(pRxTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
 			list_del_init(&pRxReorderEntry->List);
 			{
 				int i = 0;
-- 
2.17.1


