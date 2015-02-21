X-GM-THRID: 2063631122432
X-Received: by 10.180.101.101 with SMTP id ff5mr390907wib.5.1424548980695;
        Sat, 21 Feb 2015 12:03:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.140 with SMTP id jo12ls412159lab.19.gmail; Sat, 21 Feb
 2015 12:03:00 -0800 (PST)
X-Received: by 10.112.25.7 with SMTP id y7mr419342lbf.21.1424548980233;
        Sat, 21 Feb 2015 12:03:00 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id o3si359291wib.2.2015.02.21.12.03.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 12:03:00 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x230.google.com with SMTP id h11so9361384wiw.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 12:03:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=sYV6Ql5ByyHX2TqqypeRlbWe2WfJr70/8FLgn8hHOi4=;
        b=dZiWV8XG9v3R7mPQ7213b83Uim9j/aTJyYWgMZ8yoFrPJKUiBxfWKO0lKWMQQiaJ1l
         5xvPuaieFaTcAFDyplubE1XKxQyusdqmvRvxyEA5IiKQnNOCCYQBui+GIZOzb3qp5/mq
         u0kPMQVLLMm0yhROKG+4oO3LquiW2iMzqhpi+2im6uqdE1d6k4DSw/wKr7pHOUOeM5ET
         mUAx7dm7Dy5R/ghxFVveDakPcs6rfnB8gYyiHM4sEO6iooPzV7YhFTZjh9Pa6YyypqX3
         +BKD+1UC1K5N+wIX0/ScwH99y6ghAsLvgXOttg5YUVtFPYfYcnur3o+SEHEnuBVEdIyW
         uiIw==
X-Received: by 10.180.171.35 with SMTP id ar3mr6792449wic.24.1424548980131;
        Sat, 21 Feb 2015 12:03:00 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id do1sm8293576wib.3.2015.02.21.12.02.58
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 12:02:59 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Convert comments from C99 to C89 style
Date: Sat, 21 Feb 2015 21:02:50 +0100
Message-Id: <1424548970-28835-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Kernel style for comments is C89 style. Issue found by checkpatch.pl.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 .../staging/rtl8192u/ieee80211/rtl819x_TSProc.c    | 120 ++++++++++-----------
 1 file changed, 60 insertions(+), 60 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
index acaa723..f6272c0 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
@@ -5,20 +5,20 @@
 
 static void TsSetupTimeOut(unsigned long data)
 {
-	// Not implement yet
-	// This is used for WMMSA and ACM , that would send ADDTSReq frame.
+	/* Not implement yet */
+	/* This is used for WMMSA and ACM , that would send ADDTSReq frame. */
 }
 
 static void TsInactTimeout(unsigned long data)
 {
-	// Not implement yet
-	// This is used for WMMSA and ACM.
-	// This function would be call when TS is no Tx/Rx for some period of time.
+	/* Not implement yet */
+	/* This is used for WMMSA and ACM. */
+	/* This function would be call when TS is no Tx/Rx for some period of time. */
 }
 
 /********************************************************************************************************************
  *function:  I still not understand this function, so wait for further implementation
- *   input:  unsigned long	 data		//acturally we send TX_TS_RECORD or RX_TS_RECORD to these timer
+ *   input:  unsigned long	 data		/* acturally we send TX_TS_RECORD or RX_TS_RECORD to these timer */
  *  return:  NULL
  *  notice:
 ********************************************************************************************************************/
@@ -29,7 +29,7 @@ static void RxPktPendingTimeout(unsigned long data)
 
 	PRX_REORDER_ENTRY	pReorderEntry = NULL;
 
-	//u32 flags = 0;
+	/* u32 flags = 0; */
 	unsigned long flags = 0;
 	struct ieee80211_rxb *stats_IndicateArray[REORDER_WIN_SIZE];
 	u8 index = 0;
@@ -37,11 +37,11 @@ static void RxPktPendingTimeout(unsigned long data)
 
 
 	spin_lock_irqsave(&(ieee->reorder_spinlock), flags);
-	//PlatformAcquireSpinLock(Adapter, RT_RX_SPINLOCK);
+	/* PlatformAcquireSpinLock(Adapter, RT_RX_SPINLOCK); */
 	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"==================>%s()\n",__func__);
 	if(pRxTs->RxTimeoutIndicateSeq != 0xffff)
 	{
-		// Indicate the pending packets sequentially according to SeqNum until meet the gap.
+		/* Indicate the pending packets sequentially according to SeqNum until meet the gap. */
 		while(!list_empty(&pRxTs->RxPendingPktList))
 		{
 			pReorderEntry = (PRX_REORDER_ENTRY)list_entry(pRxTs->RxPendingPktList.prev,RX_REORDER_ENTRY,List);
@@ -72,10 +72,10 @@ static void RxPktPendingTimeout(unsigned long data)
 
 	if(index>0)
 	{
-		// Set RxTimeoutIndicateSeq to 0xffff to indicate no pending packets in buffer now.
+		/* Set RxTimeoutIndicateSeq to 0xffff to indicate no pending packets in buffer now. */
 		pRxTs->RxTimeoutIndicateSeq = 0xffff;
 
-		// Indicate packets
+		/* Indicate packets */
 		if(index > REORDER_WIN_SIZE){
 			IEEE80211_DEBUG(IEEE80211_DL_ERR, "RxReorderIndicatePacket(): Rx Reorer buffer full!! \n");
 			spin_unlock_irqrestore(&(ieee->reorder_spinlock), flags);
@@ -90,12 +90,12 @@ static void RxPktPendingTimeout(unsigned long data)
 		mod_timer(&pRxTs->RxPktPendingTimer,  jiffies + MSECS(ieee->pHTInfo->RxReorderPendingTime));
 	}
 	spin_unlock_irqrestore(&(ieee->reorder_spinlock), flags);
-	//PlatformReleaseSpinLock(Adapter, RT_RX_SPINLOCK);
+	/* PlatformReleaseSpinLock(Adapter, RT_RX_SPINLOCK); */
 }
 
 /********************************************************************************************************************
  *function:  Add BA timer function
- *   input:  unsigned long	 data		//acturally we send TX_TS_RECORD or RX_TS_RECORD to these timer
+ *   input:  unsigned long	 data		/* acturally we send TX_TS_RECORD or RX_TS_RECORD to these timer */
  *  return:  NULL
  *  notice:
 ********************************************************************************************************************/
@@ -126,16 +126,16 @@ static void ResetTxTsEntry(PTX_TS_RECORD pTS)
 	pTS->bAddBaReqInProgress = false;
 	pTS->bAddBaReqDelayed = false;
 	pTS->bUsingBa = false;
-	ResetBaEntry(&pTS->TxAdmittedBARecord); //For BA Originator
+	ResetBaEntry(&pTS->TxAdmittedBARecord); /* For BA Originator */
 	ResetBaEntry(&pTS->TxPendingBARecord);
 }
 
 static void ResetRxTsEntry(PRX_TS_RECORD pTS)
 {
 	ResetTsCommonInfo(&pTS->TsCommonInfo);
-	pTS->RxIndicateSeq = 0xffff; // This indicate the RxIndicateSeq is not used now!!
-	pTS->RxTimeoutIndicateSeq = 0xffff; // This indicate the RxTimeoutIndicateSeq is not used now!!
-	ResetBaEntry(&pTS->RxAdmittedBARecord);	  // For BA Recipient
+	pTS->RxIndicateSeq = 0xffff; /* This indicate the RxIndicateSeq is not used now!! */
+	pTS->RxTimeoutIndicateSeq = 0xffff; /* This indicate the RxTimeoutIndicateSeq is not used now!! */
+	ResetBaEntry(&pTS->RxAdmittedBARecord);	  /* For BA Recipient */
 }
 
 void TSInitialize(struct ieee80211_device *ieee)
@@ -145,17 +145,17 @@ void TSInitialize(struct ieee80211_device *ieee)
 	PRX_REORDER_ENTRY	pRxReorderEntry = ieee->RxReorderEntry;
 	u8				count = 0;
 	IEEE80211_DEBUG(IEEE80211_DL_TS, "==========>%s()\n", __func__);
-	// Initialize Tx TS related info.
+	/* Initialize Tx TS related info. */
 	INIT_LIST_HEAD(&ieee->Tx_TS_Admit_List);
 	INIT_LIST_HEAD(&ieee->Tx_TS_Pending_List);
 	INIT_LIST_HEAD(&ieee->Tx_TS_Unused_List);
 
 	for(count = 0; count < TOTAL_TS_NUM; count++)
 	{
-		//
+		/*  */
 		pTxTS->num = count;
-		// The timers for the operation of Traffic Stream and Block Ack.
-		// DLS related timer will be add here in the future!!
+		/* The timers for the operation of Traffic Stream and Block Ack. */
+		/* DLS related timer will be add here in the future!! */
 		init_timer(&pTxTS->TsCommonInfo.SetupTimer);
 		pTxTS->TsCommonInfo.SetupTimer.data = (unsigned long)pTxTS;
 		pTxTS->TsCommonInfo.SetupTimer.function = TsSetupTimeOut;
@@ -181,7 +181,7 @@ void TSInitialize(struct ieee80211_device *ieee)
 		pTxTS++;
 	}
 
-	// Initialize Rx TS related info.
+	/* Initialize Rx TS related info. */
 	INIT_LIST_HEAD(&ieee->Rx_TS_Admit_List);
 	INIT_LIST_HEAD(&ieee->Rx_TS_Pending_List);
 	INIT_LIST_HEAD(&ieee->Rx_TS_Unused_List);
@@ -210,9 +210,9 @@ void TSInitialize(struct ieee80211_device *ieee)
 		list_add_tail(&pRxTS->TsCommonInfo.List, &ieee->Rx_TS_Unused_List);
 		pRxTS++;
 	}
-	// Initialize unused Rx Reorder List.
+	/* Initialize unused Rx Reorder List. */
 	INIT_LIST_HEAD(&ieee->RxReorder_Unused_List);
-//#ifdef TO_DO_LIST
+/* #ifdef TO_DO_LIST */
 	for(count = 0; count < REORDER_ENTRY_NUM; count++)
 	{
 		list_add_tail( &pRxReorderEntry->List,&ieee->RxReorder_Unused_List);
@@ -220,7 +220,7 @@ void TSInitialize(struct ieee80211_device *ieee)
 			break;
 		pRxReorderEntry = &ieee->RxReorderEntry[count+1];
 	}
-//#endif
+/* #endif */
 
 }
 
@@ -239,12 +239,12 @@ static PTS_COMMON_INFO SearchAdmitTRStream(struct ieee80211_device *ieee,
 					   u8 *Addr, u8 TID,
 					   TR_SELECT TxRxSelect)
 {
-	//DIRECTION_VALUE	dir;
+	/* DIRECTION_VALUE	dir; */
 	u8	dir;
 	bool				search_dir[4] = {0};
-	struct list_head		*psearch_list; //FIXME
+	struct list_head		*psearch_list; /* FIXME */
 	PTS_COMMON_INFO	pRet = NULL;
-	if(ieee->iw_mode == IW_MODE_MASTER) //ap mode
+	if(ieee->iw_mode == IW_MODE_MASTER) /* ap mode */
 	{
 		if(TxRxSelect == TX_DIR)
 		{
@@ -285,18 +285,18 @@ static PTS_COMMON_INFO SearchAdmitTRStream(struct ieee80211_device *ieee,
 	else
 		psearch_list = &ieee->Rx_TS_Admit_List;
 
-	//for(dir = DIR_UP; dir <= DIR_BI_DIR; dir++)
+	/* for(dir = DIR_UP; dir <= DIR_BI_DIR; dir++) */
 	for(dir = 0; dir <= DIR_BI_DIR; dir++)
 	{
 		if(search_dir[dir] ==false )
 			continue;
 		list_for_each_entry(pRet, psearch_list, List){
-	//		IEEE80211_DEBUG(IEEE80211_DL_TS, "ADD:%pM, TID:%d, dir:%d\n", pRet->Addr, pRet->TSpec.f.TSInfo.field.ucTSID, pRet->TSpec.f.TSInfo.field.ucDirection);
+	/* IEEE80211_DEBUG(IEEE80211_DL_TS, "ADD:%pM, TID:%d, dir:%d\n", pRet->Addr, pRet->TSpec.f.TSInfo.field.ucTSID, pRet->TSpec.f.TSInfo.field.ucDirection); */
 			if (memcmp(pRet->Addr, Addr, 6) == 0)
 				if (pRet->TSpec.f.TSInfo.field.ucTSID == TID)
 					if(pRet->TSpec.f.TSInfo.field.ucDirection == dir)
 					{
-	//					printk("Bingo! got it\n");
+	/* printk("Bingo! got it\n"); */
 						break;
 					}
 
@@ -339,15 +339,15 @@ bool GetTs(
 	PTS_COMMON_INFO			*ppTS,
 	u8				*Addr,
 	u8				TID,
-	TR_SELECT			TxRxSelect,  //Rx:1, Tx:0
+	TR_SELECT			TxRxSelect,  /* Rx:1, Tx:0 */
 	bool				bAddNewTs
 	)
 {
 	u8	UP = 0;
-	//
-	// We do not build any TS for Broadcast or Multicast stream.
-	// So reject these kinds of search here.
-	//
+	/*  */
+	/* We do not build any TS for Broadcast or Multicast stream. */
+	/* So reject these kinds of search here. */
+	/*  */
 	if (is_multicast_ether_addr(Addr))
 	{
 		IEEE80211_DEBUG(IEEE80211_DL_ERR, "get TS for Broadcast or Multicast\n");
@@ -358,7 +358,7 @@ bool GetTs(
 		UP = 0;
 	else
 	{
-		// In WMM case: we use 4 TID only
+		/* In WMM case: we use 4 TID only */
 		if (!IsACValid(TID))
 		{
 			IEEE80211_DEBUG(IEEE80211_DL_ERR, " in %s(), TID(%d) is not valid\n", __func__, TID);
@@ -407,11 +407,11 @@ bool GetTs(
 		}
 		else
 		{
-			//
-			// Create a new Traffic stream for current Tx/Rx
-			// This is for EDCA and WMM to add a new TS.
-			// For HCCA or WMMSA, TS cannot be addmit without negotiation.
-			//
+			/*  */
+			/* Create a new Traffic stream for current Tx/Rx */
+			/* This is for EDCA and WMM to add a new TS. */
+			/* For HCCA or WMMSA, TS cannot be addmit without negotiation. */
+			/*  */
 			TSPEC_BODY	TSpec;
 			PQOS_TSINFO		pTSInfo = &TSpec.f.TSInfo;
 			struct list_head	*pUnusedList =
@@ -443,21 +443,21 @@ bool GetTs(
 				}
 
 				IEEE80211_DEBUG(IEEE80211_DL_TS, "to init current TS, UP:%d, Dir:%d, addr:%pM\n", UP, Dir, Addr);
-				// Prepare TS Info releated field
-				pTSInfo->field.ucTrafficType = 0;			// Traffic type: WMM is reserved in this field
-				pTSInfo->field.ucTSID = UP;			// TSID
-				pTSInfo->field.ucDirection = Dir;			// Direction: if there is DirectLink, this need additional consideration.
-				pTSInfo->field.ucAccessPolicy = 1;		// Access policy
-				pTSInfo->field.ucAggregation = 0;		// Aggregation
-				pTSInfo->field.ucPSB = 0;				// Aggregation
-				pTSInfo->field.ucUP = UP;				// User priority
-				pTSInfo->field.ucTSInfoAckPolicy = 0;		// Ack policy
-				pTSInfo->field.ucSchedule = 0;			// Schedule
+				/* Prepare TS Info releated field */
+				pTSInfo->field.ucTrafficType = 0;			/* Traffic type: WMM is reserved in this field */
+				pTSInfo->field.ucTSID = UP;			/* TSID */
+				pTSInfo->field.ucDirection = Dir;			/* Direction: if there is DirectLink, this need additional consideration. */
+				pTSInfo->field.ucAccessPolicy = 1;		/* Access policy */
+				pTSInfo->field.ucAggregation = 0;		/* Aggregation */
+				pTSInfo->field.ucPSB = 0;				/* Aggregation */
+				pTSInfo->field.ucUP = UP;				/* User priority */
+				pTSInfo->field.ucTSInfoAckPolicy = 0;		/* Ack policy */
+				pTSInfo->field.ucSchedule = 0;			/* Schedule */
 
 				MakeTSEntry(*ppTS, Addr, &TSpec, NULL, 0, 0);
 				AdmitTS(ieee, *ppTS, 0);
 				list_add_tail(&((*ppTS)->List), pAddmitList);
-				// if there is DirectLink, we need to do additional operation here!!
+				/* if there is DirectLink, we need to do additional operation here!! */
 
 				return true;
 			}
@@ -473,7 +473,7 @@ bool GetTs(
 static void RemoveTsEntry(struct ieee80211_device *ieee, PTS_COMMON_INFO pTs,
 			  TR_SELECT TxRxSelect)
 {
-	//u32 flags = 0;
+	/* u32 flags = 0; */
 	unsigned long flags = 0;
 	del_timer_sync(&pTs->SetupTimer);
 	del_timer_sync(&pTs->InactTimer);
@@ -481,7 +481,7 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, PTS_COMMON_INFO pTs,
 
 	if(TxRxSelect == RX_DIR)
 	{
-//#ifdef TO_DO_LIST
+/* #ifdef TO_DO_LIST */
 		PRX_REORDER_ENTRY	pRxReorderEntry;
 		PRX_TS_RECORD		pRxTS = (PRX_TS_RECORD)pTs;
 		if(timer_pending(&pRxTS->RxPktPendingTimer))
@@ -489,9 +489,9 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, PTS_COMMON_INFO pTs,
 
 		while(!list_empty(&pRxTS->RxPendingPktList))
 		{
-		//      PlatformAcquireSpinLock(Adapter, RT_RX_SPINLOCK);
+		/* PlatformAcquireSpinLock(Adapter, RT_RX_SPINLOCK); */
 			spin_lock_irqsave(&(ieee->reorder_spinlock), flags);
-			//pRxReorderEntry = list_entry(&pRxTS->RxPendingPktList.prev,RX_REORDER_ENTRY,List);
+			/* pRxReorderEntry = list_entry(&pRxTS->RxPendingPktList.prev,RX_REORDER_ENTRY,List); */
 			pRxReorderEntry = (PRX_REORDER_ENTRY)list_entry(pRxTS->RxPendingPktList.prev,RX_REORDER_ENTRY,List);
 			list_del_init(&pRxReorderEntry->List);
 			{
@@ -509,11 +509,11 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, PTS_COMMON_INFO pTs,
 				prxb = NULL;
 			}
 			list_add_tail(&pRxReorderEntry->List,&ieee->RxReorder_Unused_List);
-			//PlatformReleaseSpinLock(Adapter, RT_RX_SPINLOCK);
+			/* PlatformReleaseSpinLock(Adapter, RT_RX_SPINLOCK); */
 			spin_unlock_irqrestore(&(ieee->reorder_spinlock), flags);
 		}
 
-//#endif
+/* #endif */
 	}
 	else
 	{
@@ -615,7 +615,7 @@ void TsStartAddBaProcess(struct ieee80211_device *ieee, PTX_TS_RECORD	pTxTS)
 		else
 		{
 			IEEE80211_DEBUG(IEEE80211_DL_BA,"TsStartAddBaProcess(): Immediately Start ADDBA now!!\n");
-			mod_timer(&pTxTS->TsAddBaTimer, jiffies+10); //set 10 ticks
+			mod_timer(&pTxTS->TsAddBaTimer, jiffies+10); /* set 10 ticks */
 		}
 	}
 	else
-- 
1.9.1


