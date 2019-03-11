X-GM-THRID: 6666820090157072384
X-Received: by 2002:a25:9345:: with SMTP id g5mr6643722ybo.64.1552318927778;
        Mon, 11 Mar 2019 08:42:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3414:: with SMTP id b20ls740112yba.2.gmail; Mon, 11 Mar
 2019 08:42:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqziV5xMJjz3LaMN9xRvpskaF9Lvbh3D66r2kCwJ2sV9SfgpQNy7Ulj2wHFIQqYrasLRCLuD
X-Received: by 2002:a25:6c8a:: with SMTP id h132mr13454962ybc.18.1552318927280;
        Mon, 11 Mar 2019 08:42:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552318927; cv=none;
        d=google.com; s=arc-20160816;
        b=rL5vk9Z2/o5aWBt2z9sp4e5o2k3od/f6stoFU4ovgxElKKp5HdCz7sUQHmP0zQ9tR8
         iWMMQ6MpvClYELsknYwCAjN67gpSDUFpnnJDa1XgmPTbRdH75yUVYr5yYw7yi0wf8Otz
         B9iVmFppgHKhUw7ZSdmUXpzvdkAuViW/jJOis4CSqklqKWZX5MinvHh+Aha5ZRdhI2ts
         FkzqK8X09B3kZzQoV75PvsK/eJwhW07qSnayxaMoiGpU6jfD5di7dP9V5aHiNNx5G4IV
         b9HQGbcOhOmX1DCWnMT3IFdlUWmEM4e7oJlal0z6KHOgfoTnj9CML0ok9rtaSONDLUqD
         nTIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=1dD8LPjT2UF4U6Qe9eJlr7BOOsIh7tolfr2skUxVubs=;
        b=S8Hiex7dHOf9u2qUtK97JJp2mC5K7UERLWJRXPSfiOdHxXOLS4fkx98oZGMUaRVEnZ
         wFIDMXDroSV/RSH8W10Z1tk0gzsg1LhyH0FbnL5H/m2SwSrGLb2U6Sep/btKeQGhp6V/
         dXOIUZt5XPZrhjcrBZZkzvxzY5Rjp5b6Z/NJH8hrMmndUFSQJqgQpBudePpwnT5bvBT6
         J+GEHcrVBuajiElp7wm+ij08PdHzbZD45PLl1tkMqk1Ze26W2CSLvZ97seYHDB8CavId
         0gQ//SyLM8wsyN2fECvKv+vOSEcuDw4n0VocBpWzWwiqE+RwOibVtZg69yoryE6e2XsV
         hFYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="quCEwyg/";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id l39si346956ywh.5.2019.03.11.08.42.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:42:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="quCEwyg/";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id q206so4330455pgq.4
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 08:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=1dD8LPjT2UF4U6Qe9eJlr7BOOsIh7tolfr2skUxVubs=;
        b=quCEwyg/kVkNHxzN8vzcwyfOJcLG2KT+G/j4ITXnrMepF6D38T7KUU/kf8ERTZfW01
         3cXgHNGheSuwni7enbZZgUDB3ztdV8Yx27Fiwsbz+dw5cAklOpPl5nxsWRXzPb/8RB+7
         waICgDcOpJCMhxqDXNm3y/I5TpbjNP2SysU3NhcH8habv2hVdfJ5iYK1kQnCmRPC8ynz
         QZl9HRWncgww1ObJn1T1J7KSS9YrGJbD2zTU/L+11fecn7JOfMH6jXFv3n5xtesafp3i
         SxtTKEzg4FRwXhDzid31hNgU7C2FRLnJGclLui0LvEyxl94LwigGCuqoFIjGJS6z6ETA
         WddQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=1dD8LPjT2UF4U6Qe9eJlr7BOOsIh7tolfr2skUxVubs=;
        b=gntUZ1d44fRhOmrjspy2RmFFjRRjvWuS5uVWYdLjpo5g/UZ3t47aU9s0y3DIKJw3zT
         zReMDawwMEJEq1WcqvgxnZvoKYPzaFxgOaljHxt1ZRfx7liioABU50Svm3p6nl/NrVSV
         EEeDmKflhQNWsIOFp8ySeMccpwjFaW6ZdbdYPDb4r048Vmbf+Kuw1l0D91GduOYYF8TF
         8EYw2icXNEgecdQjZ9T5qHh835MdHFHYKnucbFzawomg0IOf1fjFDhFYbgjUKGECTF42
         VEwS2s1hRwZmMk7xVjtE7IzDH32wWehZk9V/z4/l2ryKljdHD23zciB0UfHQe2KCMDqv
         tRYw==
X-Gm-Message-State: APjAAAXV6WnUYEgyT0dGqfvFMhMyXoiKIdB7btq26722WwT4lr/r4d+K
	Fud33XeORb5uVQhbi17Wf9MoDCKh7tw=
X-Received: by 2002:a17:902:8b82:: with SMTP id ay2mr34162136plb.64.1552318926181;
        Mon, 11 Mar 2019 08:42:06 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id u184sm8798080pgd.13.2019.03.11.08.42.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:42:05 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4 5/7] Staging: rtl8192u: Remove typedef for struct _RX_REORDER_ENTRY
Date: Mon, 11 Mar 2019 21:11:39 +0530
Message-Id: <20190311154141.31401-6-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190311154141.31401-1-bhanusreemahesh@gmail.com>
References: <20190311154141.31401-1-bhanusreemahesh@gmail.com>

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


