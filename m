X-GM-THRID: 6666820090157072384
X-Received: by 2002:a02:3941:: with SMTP id w1mr17126711jae.7.1552240019771;
        Sun, 10 Mar 2019 10:46:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b69:: with SMTP id i41ls4809940jaf.3.gmail; Sun, 10 Mar
 2019 10:46:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzT+Xd1PhDCd3KRtvQzI6yikFwDlqI/R0FWucRcv2OSYw8l8ALR06GbNOrQJmzBmhIEZIs4
X-Received: by 2002:a02:5c0f:: with SMTP id q15mr17064060jab.22.1552240019299;
        Sun, 10 Mar 2019 10:46:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552240019; cv=none;
        d=google.com; s=arc-20160816;
        b=nIC1iR4X8g0msDmb/wHoMUxhp9DcZEAwxak2uLN1ezlr58QXlWoPgSCD5gyjkFaaOr
         CBlfI3wudz0OJczumiNq64DKKxEaLtX51dLShjn+X01JfKlbX6wY9IZAoxz3Ay1kTmXR
         njvLLieKN6s+Npyjf4O9gK8SdoaG0wdG61LXUerpOCdQ6Rc6rls9I9PALSJa563idvhS
         3Y7AlJKKcy69EDD5qAtsLnELM1wLP6YOc0Pt4gXS0XSMPIPr9l+dhu99AYgXQ1S31QRi
         EuPRmD13RwdGpVeaBBWQvfy1hIcN8yaZTKTJaJFxvoKA6fVG3ilrmcxgNErDH4AHtEuN
         GYJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=xRSy3rxIUEJNIyc4EZRveKf7aEb0hYHpXqXImMpwDFs=;
        b=snV+BpwlilvtNSNoygcTU95DzFha6OCoJlY8CdaGp92wsb/GcOPMzzz/l3u8tQZ7R/
         osaRnn3ECB8V9KT61yWRGBB+QOCXMdYCoKJ5IH+KYBTY3VstPYWSB/BwrenQMi8vm6Dr
         Ln++ltnVH4W7ZHNJ6FHmOhOgQgGbJ5folgoGAlA1xF9q7+C8EjIh1sqK9KyLR2oIXAgz
         xuOrQMJ4PxyUMavIyuQA3ZzMxT82ZPG75luf0tlq1lEgbxs5fT99m2Vya1E8zvNwfkAl
         7RA1ZYgPuhI0aeBvhfm7xjUGmIt8IjiUpwcyjUpFvWtvkb07/18NN8q+Ofn5HHnr4B8/
         ij/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aSZ6N9kN;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id y204si887747itb.0.2019.03.10.10.46.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 10:46:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aSZ6N9kN;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id r124so2203010pgr.3
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 10:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=xRSy3rxIUEJNIyc4EZRveKf7aEb0hYHpXqXImMpwDFs=;
        b=aSZ6N9kNhvVgGaePAYdhNi6DQl0W41iHTWWZpt8mrUI1rRVX/HYYsKo8gmHFxWU7ZC
         T1duoVY78BPsnOxzr2Z8LrVrWozeJ9455867J/v/DVDM40E0CczUea5iQWOTMiCEJY1A
         fUORXvpD1Ve/Pz6pSivZlgz3IIMeY4RM68nV0vYyyROXti/KjYFxnb9GrS41YIwwQvPY
         esjR2b2fwCtosMONwoFix5ZRbIttysbPCuzIzD2G6/jzm6GjNTFPq/yenD33wUuztxfW
         VXwhIgEEaohOlpVRkrlhziFFx0j3WCgwAJRzUTlhNHOD+8sKAKV+zal2c1ptYXx3SFQL
         /PXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=xRSy3rxIUEJNIyc4EZRveKf7aEb0hYHpXqXImMpwDFs=;
        b=k/VmQLzoioeMIemcKH0QrDmThFXA3WvOVaR7ZySxVWAPpb0rJvnPro47PKqBPNlSq/
         XcQhS64Ta1Xvm4Wds3i4SkjdQAZ7+8AZ6EdOkqf0bOZ0VvQynWsySkbsomo48kAEDIln
         MjksxVFH90pYgx/OT8qS/Ix4yHCwgdY9qnx46HtiCX5tzJk2X0YiUsDWVzfUeWsa00Z+
         V1P22XVTxiuPCSKKVsZxXDFIiQuBkPfK6EfpwQlvMEfiExtln+D/f2jznAG1hnHOiLWo
         hTKCbqGqjaEQwg4iKs3SAD/2F/HCNNPVzBObBqZ0jOy61Qfond+3fnQ9J5apI450J6DZ
         J4Lg==
X-Gm-Message-State: APjAAAX1W5ALuo05uOO/ObeoBUNw+4eWbLmqSxs0w7YjbPpipfu0BpL7
	nngyi3KrWHO23eJJhLKC9HRbxbp7SqY=
X-Received: by 2002:a17:902:ba8d:: with SMTP id k13mr30034104pls.15.1552240018710;
        Sun, 10 Mar 2019 10:46:58 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id h184sm7340275pfc.78.2019.03.10.10.46.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 10:46:58 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 5/5] Staging: rtl8192u: Remove typedef for struct _RX_REORDER_ENTRY
Date: Sun, 10 Mar 2019 23:16:35 +0530
Message-Id: <20190310174635.16923-6-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190310174635.16923-1-bhanusreemahesh@gmail.com>
References: <20190310174635.16923-1-bhanusreemahesh@gmail.com>

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
index 6986b51b37c4..b19b0cf01e1f 100644
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
+	struct rx_reorder_entry		RxReorderEntry[128];
 	struct list_head		RxReorder_Unused_List;
 //#endif
 	// Qos related. Added by Annie, 2005-11-01.
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 5147f7c01e31..17d50476bdb2 100644
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
+	struct rx_reorder_entry	*pReorderEntry = NULL;
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


