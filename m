X-GM-THRID: 6124910673920
X-Received: by 10.112.125.67 with SMTP id mo3mr752571lbb.6.1425653014820;
        Fri, 06 Mar 2015 06:43:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.10.132 with SMTP id i4ls76957lab.25.gmail; Fri, 06 Mar
 2015 06:43:34 -0800 (PST)
X-Received: by 10.112.199.69 with SMTP id ji5mr2344774lbc.0.1425653014337;
        Fri, 06 Mar 2015 06:43:34 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x22c.google.com (mail-wg0-x22c.google.com. [2a00:1450:400c:c00::22c])
        by gmr-mx.google.com with ESMTPS id r6si165126wix.0.2015.03.06.06.43.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 06:43:34 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) client-ip=2a00:1450:400c:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22c.google.com with SMTP id z12so23389625wgg.9
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 06:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=RZmmgUAawAZKpG8JD8VDQ0PGxuSbDSIFzGzCjJfWto4=;
        b=dennfFQOENeywLMDZ32TeHvG/ewoCFBCd/ds1klKUpNOSOF39AgUoigA98tyB+lF1G
         hgySDMpAQ+VxJECQcNhpAQDRlZL7MHmacFsx5DfIHJLUOe1SZP29a6f//RWb16TI0LJG
         oyFdmReopCDlW/WX2KI1vvjbFYJc+8bmV9JBuxr0vcBOcGULpf3ATC6nywlUvX5gMOsX
         SA+uALWhFs8MPKUBRwuso+9sfreUB/Gcwq9ekDd2qv28SlJytstcWzDW6sAq1w4FczpJ
         XN5paeX30cp4anqVm+i6Yf6iNR223AeOTcQjK/QxklygN1SK5BWCT0itTo+7SlYsMp8o
         0nug==
X-Received: by 10.194.57.206 with SMTP id k14mr30731511wjq.1.1425653014204;
        Fri, 06 Mar 2015 06:43:34 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id s5sm2601447wia.1.2015.03.06.06.43.33
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 06 Mar 2015 06:43:33 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8192u: ieee80211: Move '{' up one line
Date: Fri,  6 Mar 2015 16:43:27 +0200
Message-Id: <1425653007-15415-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

That open brace '{' should be on the previous line.
This Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 99 ++++++++---------------
 1 file changed, 33 insertions(+), 66 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index c0d1468..2913c70 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -185,8 +185,7 @@ int ieee80211_encrypt_fragment(
 	struct ieee80211_crypt_data *crypt = ieee->crypt[ieee->tx_keyidx];
 	int res;
 
-	if (!(crypt && crypt->ops))
-	{
+	if (!(crypt && crypt->ops)) {
 		printk("=========>%s(), crypt is null\n", __func__);
 		return -1;
 	}
@@ -325,40 +324,33 @@ static void ieee80211_tx_query_agg_cap(struct ieee80211_device *ieee,
 	if(!Adapter->HalFunc.GetNmodeSupportBySecCfgHandler(Adapter))
 		return;
 #endif
-	if(!ieee->GetNmodeSupportBySecCfg(ieee->dev))
-	{
+	if(!ieee->GetNmodeSupportBySecCfg(ieee->dev)) {
 		return;
 	}
-	if(pHTInfo->bCurrentAMPDUEnable)
-	{
-		if (!GetTs(ieee, (PTS_COMMON_INFO *)(&pTxTs), hdr->addr1, skb->priority, TX_DIR, true))
-		{
+	if(pHTInfo->bCurrentAMPDUEnable) {
+		if (!GetTs(ieee, (PTS_COMMON_INFO *)(&pTxTs), hdr->addr1, skb->priority, TX_DIR, true)) {
 			printk("===>can't get TS\n");
 			return;
 		}
-		if (pTxTs->TxAdmittedBARecord.bValid == false)
-		{
+		if (pTxTs->TxAdmittedBARecord.bValid == false) {
 			TsStartAddBaProcess(ieee, pTxTs);
 			goto FORCED_AGG_SETTING;
 		}
-		else if (pTxTs->bUsingBa == false)
-		{
+		else if (pTxTs->bUsingBa == false) {
 			if (SN_LESS(pTxTs->TxAdmittedBARecord.BaStartSeqCtrl.field.SeqNum, (pTxTs->TxCurSeq+1)%4096))
 				pTxTs->bUsingBa = true;
 			else
 				goto FORCED_AGG_SETTING;
 		}
 
-		if (ieee->iw_mode == IW_MODE_INFRA)
-		{
+		if (ieee->iw_mode == IW_MODE_INFRA) {
 			tcb_desc->bAMPDUEnable = true;
 			tcb_desc->ampdu_factor = pHTInfo->CurrentAMPDUFactor;
 			tcb_desc->ampdu_density = pHTInfo->CurrentMPDUDensity;
 		}
 	}
 FORCED_AGG_SETTING:
-	switch (pHTInfo->ForcedAMPDUMode )
-	{
+	switch (pHTInfo->ForcedAMPDUMode ){
 		case HT_AGG_AUTO:
 			break;
 
@@ -382,12 +374,10 @@ static void ieee80211_qurey_ShortPreambleMode(struct ieee80211_device *ieee,
 					      cb_desc *tcb_desc)
 {
 	tcb_desc->bUseShortPreamble = false;
-	if (tcb_desc->data_rate == 2)
-	{ /* 1M can only use Long Preamble. 11B spec */
+	if (tcb_desc->data_rate == 2) { /* 1M can only use Long Preamble. 11B spec */
 		return;
 	}
-	else if (ieee->current_network.capability & WLAN_CAPABILITY_SHORT_PREAMBLE)
-	{
+	else if (ieee->current_network.capability & WLAN_CAPABILITY_SHORT_PREAMBLE) {
 		tcb_desc->bUseShortPreamble = true;
 	}
 	return;
@@ -402,8 +392,7 @@ ieee80211_query_HTCapShortGI(struct ieee80211_device *ieee, cb_desc *tcb_desc)
 	if(!pHTInfo->bCurrentHTSupport||!pHTInfo->bEnableHT)
 		return;
 
-	if(pHTInfo->bForcedShortGI)
-	{
+	if(pHTInfo->bForcedShortGI) {
 		tcb_desc->bUseShortGI = true;
 		return;
 	}
@@ -452,19 +441,16 @@ static void ieee80211_query_protectionmode(struct ieee80211_device *ieee,
 	if (is_broadcast_ether_addr(skb->data+16))  /* check addr3 as infrastructure add3 is DA. */
 		return;
 
-	if (ieee->mode < IEEE_N_24G) //b, g mode
-	{
+	if (ieee->mode < IEEE_N_24G) //b, g mode {
 			/* (1) RTS_Threshold is compared to the MPDU, not MSDU.
 			   (2) If there are more than one frag in  this MSDU, only the first frag uses protection frame.
 					Other fragments are protected by previous fragment.
 					So we only need to check the length of first fragment. */
-		if (skb->len > ieee->rts)
-		{
+		if (skb->len > ieee->rts) {
 			tcb_desc->bRTSEnable = true;
 			tcb_desc->rts_rate = MGN_24M;
 		}
-		else if (ieee->current_network.buseprotection)
-		{
+		else if (ieee->current_network.buseprotection) {
 			/* Use CTS-to-SELF in protection mode. */
 			tcb_desc->bRTSEnable = true;
 			tcb_desc->bCTSEnable = true;
@@ -473,42 +459,35 @@ static void ieee80211_query_protectionmode(struct ieee80211_device *ieee,
 		/* otherwise return; */
 		return;
 	}
-	else
-	{/* 11n High throughput case. */
+	else {/* 11n High throughput case. */
 		PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;
-		while (true)
-		{
+		while (true) {
 			/* check ERP protection */
-			if (ieee->current_network.buseprotection)
-			{ /* CTS-to-SELF */
+			if (ieee->current_network.buseprotection) { /* CTS-to-SELF */
 				tcb_desc->bRTSEnable = true;
 				tcb_desc->bCTSEnable = true;
 				tcb_desc->rts_rate = MGN_24M;
 				break;
 			}
 			/* check HT op mode */
-			if(pHTInfo->bCurrentHTSupport  && pHTInfo->bEnableHT)
-			{
+			if(pHTInfo->bCurrentHTSupport  && pHTInfo->bEnableHT) {
 				u8 HTOpMode = pHTInfo->CurrentOpMode;
 				if((pHTInfo->bCurBW40MHz && (HTOpMode == 2 || HTOpMode == 3)) ||
-							(!pHTInfo->bCurBW40MHz && HTOpMode == 3) )
-				{
+							(!pHTInfo->bCurBW40MHz && HTOpMode == 3) ) {
 					tcb_desc->rts_rate = MGN_24M; /* Rate is 24Mbps. */
 					tcb_desc->bRTSEnable = true;
 					break;
 				}
 			}
 			/* check rts */
-			if (skb->len > ieee->rts)
-			{
+			if (skb->len > ieee->rts) {
 				tcb_desc->rts_rate = MGN_24M; /* Rate is 24Mbps. */
 				tcb_desc->bRTSEnable = true;
 				break;
 			}
 			/* to do list: check MIMO power save condition.
 			check AMPDU aggregation for TXOP */
-			if(tcb_desc->bAMPDUEnable)
-			{
+			if(tcb_desc->bAMPDUEnable) {
 				tcb_desc->rts_rate = MGN_24M; /* Rate is 24Mbps.
 				 According to 8190 design, firmware sends CF-End only if RTS/CTS is enabled. However, it degrads
 				 throughput around 10M, so we disable of this mechanism. 2007.08.03 by Emily */
@@ -516,8 +495,7 @@ static void ieee80211_query_protectionmode(struct ieee80211_device *ieee,
 				break;
 			}
 			/* check IOT action */
-			if(pHTInfo->IOTAction & HT_IOT_ACT_FORCED_CTS2SELF)
-			{
+			if(pHTInfo->IOTAction & HT_IOT_ACT_FORCED_CTS2SELF) {
 				tcb_desc->bCTSEnable	= true;
 				tcb_desc->rts_rate  =	MGN_24M;
 				tcb_desc->bRTSEnable = true;
@@ -551,16 +529,14 @@ static void ieee80211_txrate_selectmode(struct ieee80211_device *ieee,
 					cb_desc *tcb_desc)
 {
 #ifdef TO_DO_LIST
-	if(!IsDataFrame(pFrame))
-	{
+	if(!IsDataFrame(pFrame)) {
 		pTcb->bTxDisableRateFallBack = TRUE;
 		pTcb->bTxUseDriverAssingedRate = TRUE;
 		pTcb->RATRIndex = 7;
 		return;
 	}
 
-	if(pMgntInfo->ForcedDataRate!= 0)
-	{
+	if(pMgntInfo->ForcedDataRate!= 0) {
 		pTcb->bTxDisableRateFallBack = TRUE;
 		pTcb->bTxUseDriverAssingedRate = TRUE;
 		return;
@@ -571,8 +547,7 @@ static void ieee80211_txrate_selectmode(struct ieee80211_device *ieee,
 
 	if(ieee->bTxUseDriverAssingedRate)
 		tcb_desc->bTxUseDriverAssingedRate = true;
-	if(!tcb_desc->bTxDisableRateFallBack || !tcb_desc->bTxUseDriverAssingedRate)
-	{
+	if(!tcb_desc->bTxDisableRateFallBack || !tcb_desc->bTxUseDriverAssingedRate) {
 		if (ieee->iw_mode == IW_MODE_INFRA || ieee->iw_mode == IW_MODE_ADHOC)
 			tcb_desc->RATRIndex = 0;
 	}
@@ -583,11 +558,9 @@ static void ieee80211_query_seqnum(struct ieee80211_device *ieee,
 {
 	if (is_multicast_ether_addr(dst))
 		return;
-	if (IsQoSDataFrame(skb->data)) /* we deal qos data only */
-	{
+	if (IsQoSDataFrame(skb->data)) /* we deal qos data only */ {
 		PTX_TS_RECORD pTS = NULL;
-		if (!GetTs(ieee, (PTS_COMMON_INFO *)(&pTS), dst, skb->priority, TX_DIR, true))
-		{
+		if (!GetTs(ieee, (PTS_COMMON_INFO *)(&pTS), dst, skb->priority, TX_DIR, true)) {
 			return;
 		}
 		pTS->TxCurSeq = (pTS->TxCurSeq+1)%4096;
@@ -709,8 +682,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		}
 
 		/* if (ieee->current_network.QoS_Enable) */
-		if(qos_actived)
-		{
+		if(qos_actived) {
 			hdr_len = IEEE80211_3ADDR_LEN + 2;
 
 			skb->priority = ieee80211_classify(skb, &ieee->current_network);
@@ -755,8 +727,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		txb->payload_size = bytes;
 
 		/* if (ieee->current_network.QoS_Enable) */
-		if(qos_actived)
-		{
+		if(qos_actived) {
 			txb->queue_index = UP2AC(skb->priority);
 		} else {
 			txb->queue_index = WME_AC_BK;
@@ -783,8 +754,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 					tcb_desc->bHwSec = 0;
 				skb_reserve(skb_frag, crypt->ops->extra_prefix_len);
 			}
-			else
-			{
+			else {
 				tcb_desc->bHwSec = 0;
 			}
 			frag_hdr = (struct ieee80211_hdr_3addrqos *)skb_put(skb_frag, hdr_len);
@@ -802,8 +772,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 				bytes = bytes_last_frag;
 			}
 			/* if(ieee->current_network.QoS_Enable) */
-			if(qos_actived)
-			{
+			if(qos_actived) {
 				/* add 1 only indicate to corresponding seq number control 2006/7/12 */
 				frag_hdr->seq_ctl = cpu_to_le16(ieee->seq_ctrl[UP2AC(skb->priority)+1]<<4 | i);
 			} else {
@@ -832,8 +801,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 				skb_put(skb_frag, 4);
 		}
 
-		if(qos_actived)
-		{
+		if(qos_actived) {
 		  if (ieee->seq_ctrl[UP2AC(skb->priority) + 1] == 0xFFF)
 			ieee->seq_ctrl[UP2AC(skb->priority) + 1] = 0;
 		  else
@@ -865,8 +833,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 
  success:
 /* WB add to fill data tcb_desc here. only first fragment is considered, need to change, and you may remove to other place. */
-	if (txb)
-	{
+	if (txb) {
 		cb_desc *tcb_desc = (cb_desc *)(txb->fragments[0]->cb + MAX_DEV_ADDR_SIZE);
 		tcb_desc->bTxEnableFwCalcDur = 1;
 		if (is_multicast_ether_addr(header.addr1))
-- 
1.9.1


