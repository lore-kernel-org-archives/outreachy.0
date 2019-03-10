X-GM-THRID: 6666794148561944576
X-Received: by 2002:a65:4004:: with SMTP id f4mr6893402pgp.122.1552233975383;
        Sun, 10 Mar 2019 09:06:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:6c81:: with SMTP id h123ls5117032pgc.5.gmail; Sun, 10
 Mar 2019 09:06:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzFjr6JlMrcE/Oai86yp76e03laM85HPkBhZFDB/UyAq/kpfRMpNn8QwAx7lv1b6gjZONLB
X-Received: by 2002:a63:c847:: with SMTP id l7mr10968804pgi.119.1552233974819;
        Sun, 10 Mar 2019 09:06:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552233974; cv=none;
        d=google.com; s=arc-20160816;
        b=fiN48ILiKOsEiqEG8T6Eh7w82V8JDe4wSKoDsCxq4fRTeoUhy2cRM15yzdwZJqINuI
         UP8AMjG5EdlSYn9Zm2Yjghesgs5dcpNE9qhVX/K9yd8V0ODVthMSt0xvlmAqc4e25YP+
         wd793clwDma3Ldx73TcHpkvcToI5cIYssNOuzYT1pvlQ1yBX+vsByOvtyKqfbf4XR4Zn
         GXHjVxuz9kqGxGhZ9vU/7E95NBCIUTdHDHUFPgLF8oqtuwECdJJZd6CRazwzF3os18wW
         XtlT7XZB4WYQivGBaV0UJ8hxKew+dNa3vuHqhB5DzlQ2wCDbM8qWTDG3woyqN57ompiz
         9mWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=3vapFNcefn07/6S8dX6EmWk77iKucfl/FOtfULc8za8=;
        b=L3Nzs3HJWYNfbcUWZzHap/HZXzy46wXWTP9XnXwcifVo0WEpHstnEB1HgFSsbOQly5
         Byhj4hbIxoslmh/OZEdHv8roIi9GFzEbu1PFIsizP0uGniKKaCqFRkyGMGsFC7Px9gdz
         slsmJY4i1umZK1HUPK6s6UadxxIT6xM8h4IVltmicbywFLvPeLTx4SHnncaUKD04H0jm
         wBg3cNzfDw/2H/koUOlLapOwZ1oO/PjNJwAR50JG/rK0eE+GnA3ijwHvbdxW+/ZIqVY6
         poQ+BNtNeteDcEqgcUxJU4EPf+yWTd31ElAIbKnqEDRGLtDtNocv6EU/QvlCy6cZll2q
         5eWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Es4aB+03;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id c12si162568pfc.2.2019.03.10.09.06.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 09:06:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Es4aB+03;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id h11so2100189pgl.0
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 09:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=3vapFNcefn07/6S8dX6EmWk77iKucfl/FOtfULc8za8=;
        b=Es4aB+03K71hJ5dA+Zn/2uCKY1+HTw4NL6FSSYBdUes3m1/IiLn7uEJSkKODPPbN2i
         CD4QH4uCD0FaCCN9t1zbJ+y6daYF5bvQlWjgFmXWNKIlaftoxTH54YWEbx7TLh+biIxS
         m81Biqrc43oUOzpvcgVm3BCUIhbfXMpGetJcDI5xz1/YQki+6rDeL07HhJX8mY/AUgd2
         0EzLRI2FNJP1+T7OkPrkt93CjLcXeMQ2ImGRZcOHWHOws0UL7Mwr1KkGHbv1aTNTjjyr
         iLkaZFEIO4LvIt+JIZnVIhtH7rUdwJUzUBRJo691dWE/W4HctPsqOdvlc2jYkltxfezt
         Sh+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=3vapFNcefn07/6S8dX6EmWk77iKucfl/FOtfULc8za8=;
        b=f8hWulCrxgxXapAjEMxYf3OwUrReQtsFH2e59CTl1yHKobYnFsYDS1YnOAzELeCp0Q
         EgmbSP14DipyfimmFSpTtC9Pd5x0ymuJSiPYcbk590/m/2Z0IP7RL0wgw0wCA4VPJNvu
         E3mDKqEMlSMIEzFegAAoN3we5VLwN5fEKb7IzXZH4CdcyqYmhHIVcLjoZAyb6MManRo8
         gwsH74jGLBHrncF7gnPkws+IcWbPlrdCfa711ieQoZ45xQp2mD2r+re/vUoh5pcSXk5A
         lAVk22ZkuRbb3xevlkcBX7WSZlSreurkubZhWudGFNp96Z04wpiIFWKnfUBWXNH+XHMZ
         9n+g==
X-Gm-Message-State: APjAAAXqUhLwiNz82lB3J4i+KGF6wGs2TmSfVMcqmwXNA9TOBPdyzjoV
	z6MGrTUNtMluW8UieB/scYZdlcoHIAE=
X-Received: by 2002:a63:6a48:: with SMTP id f69mr25893670pgc.7.1552233974259;
        Sun, 10 Mar 2019 09:06:14 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id x23sm10000292pfe.0.2019.03.10.09.06.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 09:06:13 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] Staging: rtl8192: Remove occurances of typedef struct datatypes
Date: Sun, 10 Mar 2019 21:35:54 +0530
Message-Id: <20190310160554.4479-3-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190310160554.4479-1-bhanusreemahesh@gmail.com>
References: <20190310160554.4479-1-bhanusreemahesh@gmail.com>

Remove all occurances of typedef struct type datatypes.
Replace all occurances of IbssParms with struct _IbssParms
Replace all occurances of RX_REORDER_ENTRY with struct _RX_REORDER_ENTRY
Replace all occurances of bandwidth_autoswitch with struct _bandwidth_autoswitch
Replace all occurances of RT_LINK_DETECT_T with struct _RT_LINK_DETECT_T
Replace all occurances of RT_POWER_SAVE_CONTROL with struct _RT_POWER_SAVE_CONTROL
Replace all occurances of PRX_REORDER_ENTRY with struct _RX_REORDER_ENTRY *

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h      | 10 +++++-----
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c   | 12 ++++++------
 drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 10 +++++-----
 3 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index b1036d522640..092ae4621e04 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1554,7 +1554,7 @@ struct _RT_POWER_SAVE_CONTROL {
 	struct octet_string			tmpSuppRateSet;
 	u8					tmpSuppRateBuf[MAX_NUM_RATES];
 	bool				bTmpSuppRate;
-	IbssParms				tmpIbpm;
+	struct _IbssParms				tmpIbpm;
 	bool				bTmpIbpm;
 
 	//
@@ -1654,7 +1654,7 @@ struct ieee80211_device {
 	struct list_head		Rx_TS_Unused_List;
 	struct rx_ts_record		RxTsRecord[TOTAL_TS_NUM];
 //#ifdef TO_DO_LIST
-	RX_REORDER_ENTRY	RxReorderEntry[128];
+	struct	_RX_REORDER_ENTRY	RxReorderEntry[128];
 	struct list_head		RxReorder_Unused_List;
 //#endif
 	// Qos related. Added by Annie, 2005-11-01.
@@ -1871,14 +1871,14 @@ struct ieee80211_device {
 	Fsync_State			fsync_state;
 	bool		bis_any_nonbepkts;
 	//20Mhz 40Mhz AutoSwitch Threshold
-	bandwidth_autoswitch bandwidth_auto_switch;
+	struct _bandwidth_autoswitch bandwidth_auto_switch;
 	//for txpower tracking
 	bool FwRWRF;
 
 	//added by amy for AP roaming
-	RT_LINK_DETECT_T	LinkDetectInfo;
+	struct _RT_LINK_DETECT_T	LinkDetectInfo;
 	//added by amy for ps
-	RT_POWER_SAVE_CONTROL	PowerSaveControl;
+	struct _RT_POWER_SAVE_CONTROL	PowerSaveControl;
 //}
 	/* used if IEEE_SOFTMAC_TX_QUEUE is set */
 	struct  tx_pending tx_pending;
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 5147f7c01e31..fe5a716ae3e7 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -508,16 +508,16 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 	return 1;
 }
 
-static bool AddReorderEntry(struct rx_ts_record *pTS, PRX_REORDER_ENTRY pReorderEntry)
+static bool AddReorderEntry(struct rx_ts_record *pTS, struct _RX_REORDER_ENTRY *pReorderEntry)
 {
 	struct list_head *pList = &pTS->rx_pending_pkt_list;
 	while(pList->next != &pTS->rx_pending_pkt_list)
 	{
-		if( SN_LESS(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next,RX_REORDER_ENTRY,List))->SeqNum) )
+		if( SN_LESS(pReorderEntry->SeqNum, ((struct _RX_REORDER_ENTRY *)list_entry(pList->next, struct _RX_REORDER_ENTRY,List))->SeqNum) )
 		{
 			pList = pList->next;
 		}
-		else if( SN_EQUAL(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next,RX_REORDER_ENTRY,List))->SeqNum) )
+		else if( SN_EQUAL(pReorderEntry->SeqNum, ((struct _RX_REORDER_ENTRY *)list_entry(pList->next, struct _RX_REORDER_ENTRY,List))->SeqNum) )
 		{
 			return false;
 		}
@@ -589,7 +589,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 				    struct rx_ts_record *pTS, u16 SeqNum)
 {
 	PRT_HIGH_THROUGHPUT	pHTInfo = ieee->pHTInfo;
-	PRX_REORDER_ENTRY	pReorderEntry = NULL;
+	struct _RX_REORDER_ENTRY	*pReorderEntry = NULL;
 	struct ieee80211_rxb **prxbIndicateArray;
 	u8			WinSize = pHTInfo->RxReorderWinSize;
 	u16			WinEnd = (pTS->rx_indicate_seq + WinSize - 1) % 4096;
@@ -663,7 +663,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 		/* Current packet is going to be inserted into pending list.*/
 		//IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): We RX no ordered packed, insert to ordered list\n",__func__);
 		if(!list_empty(&ieee->RxReorder_Unused_List)) {
-			pReorderEntry = (PRX_REORDER_ENTRY)list_entry(ieee->RxReorder_Unused_List.next,RX_REORDER_ENTRY,List);
+			pReorderEntry = (struct _RX_REORDER_ENTRY *)list_entry(ieee->RxReorder_Unused_List.next,struct _RX_REORDER_ENTRY,List);
 			list_del_init(&pReorderEntry->List);
 
 			/* Make a reorder entry and insert into a the packet list.*/
@@ -709,7 +709,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	/* Check if there is any packet need indicate.*/
 	while(!list_empty(&pTS->rx_pending_pkt_list)) {
 		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): start RREORDER indicate\n",__func__);
-		pReorderEntry = (PRX_REORDER_ENTRY)list_entry(pTS->rx_pending_pkt_list.prev,RX_REORDER_ENTRY,List);
+		pReorderEntry = (struct _RX_REORDER_ENTRY *)list_entry(pTS->rx_pending_pkt_list.prev,struct _RX_REORDER_ENTRY,List);
 		if (SN_LESS(pReorderEntry->SeqNum, pTS->rx_indicate_seq) ||
 		    SN_EQUAL(pReorderEntry->SeqNum, pTS->rx_indicate_seq))
 		{
diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
index c76715ffa08b..7e3740f16399 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
@@ -28,7 +28,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
 	struct rx_ts_record     *pRxTs = from_timer(pRxTs, t, rx_pkt_pending_timer);
 	struct ieee80211_device *ieee = container_of(pRxTs, struct ieee80211_device, RxTsRecord[pRxTs->num]);
 
-	PRX_REORDER_ENTRY	pReorderEntry = NULL;
+	struct _RX_REORDER_ENTRY	*pReorderEntry = NULL;
 
 	//u32 flags = 0;
 	unsigned long flags = 0;
@@ -40,7 +40,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
 	if(pRxTs->rx_timeout_indicate_seq != 0xffff) {
 		// Indicate the pending packets sequentially according to SeqNum until meet the gap.
 		while(!list_empty(&pRxTs->rx_pending_pkt_list)) {
-			pReorderEntry = (PRX_REORDER_ENTRY)list_entry(pRxTs->rx_pending_pkt_list.prev, RX_REORDER_ENTRY, List);
+			pReorderEntry = (struct _RX_REORDER_ENTRY *)list_entry(pRxTs->rx_pending_pkt_list.prev, struct _RX_REORDER_ENTRY, List);
 			if(index == 0)
 				pRxTs->rx_indicate_seq = pReorderEntry->SeqNum;
 
@@ -133,7 +133,7 @@ void TSInitialize(struct ieee80211_device *ieee)
 {
 	struct tx_ts_record     *pTxTS  = ieee->TxTsRecord;
 	struct rx_ts_record     *pRxTS  = ieee->RxTsRecord;
-	PRX_REORDER_ENTRY	pRxReorderEntry = ieee->RxReorderEntry;
+	struct _RX_REORDER_ENTRY	*pRxReorderEntry = ieee->RxReorderEntry;
 	u8				count = 0;
 	IEEE80211_DEBUG(IEEE80211_DL_TS, "==========>%s()\n", __func__);
 	// Initialize Tx TS related info.
@@ -418,7 +418,7 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, struct ts_common_info *
 
 	if(TxRxSelect == RX_DIR) {
 //#ifdef TO_DO_LIST
-		PRX_REORDER_ENTRY	pRxReorderEntry;
+		struct _RX_REORDER_ENTRY	*pRxReorderEntry;
 		struct rx_ts_record     *pRxTS = (struct rx_ts_record *)pTs;
 		if(timer_pending(&pRxTS->rx_pkt_pending_timer))
 			del_timer_sync(&pRxTS->rx_pkt_pending_timer);
@@ -426,7 +426,7 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, struct ts_common_info *
 		while(!list_empty(&pRxTS->rx_pending_pkt_list)) {
 			spin_lock_irqsave(&(ieee->reorder_spinlock), flags);
 			//pRxReorderEntry = list_entry(&pRxTS->rx_pending_pkt_list.prev,RX_REORDER_ENTRY,List);
-			pRxReorderEntry = (PRX_REORDER_ENTRY)list_entry(pRxTS->rx_pending_pkt_list.prev, RX_REORDER_ENTRY, List);
+			pRxReorderEntry = (struct _RX_REORDER_ENTRY *)list_entry(pRxTS->rx_pending_pkt_list.prev, struct _RX_REORDER_ENTRY, List);
 			list_del_init(&pRxReorderEntry->List);
 			{
 				int i = 0;
-- 
2.17.1


