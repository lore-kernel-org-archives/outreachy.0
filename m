X-GM-THRID: 6949336667395194880
X-Received: by 2002:a63:1202:: with SMTP id h2mr16283946pgl.35.1618018529185;
        Fri, 09 Apr 2021 18:35:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:b48:: with SMTP id a8ls4432222pgl.10.gmail; Fri, 09 Apr
 2021 18:35:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz7mpApRx0acZbzw5GYOv3OFZglPszueWEUv9kvfXzCFuSaeRG6xfuhKeymdFrGBMF6LCUk
X-Received: by 2002:aa7:8a84:0:b029:231:ff56:2c7e with SMTP id a4-20020aa78a840000b0290231ff562c7emr15128696pfc.50.1618018528059;
        Fri, 09 Apr 2021 18:35:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618018528; cv=none;
        d=google.com; s=arc-20160816;
        b=jI+Dm1JEwFZHG/5dQWk5B5QdFWPQZZJ7Z20qT6XqqxXt8JI4UQd8Mda4DpQj/oyDIC
         q8dwQBWfxeG/ouLl8kc69xelWZ3THd9fdMfQfkW4pemxeXfcg0tIfGMa5FngVnkhEaA3
         MSShBOBzXMEiNHV60G48kjcZYfaj6FCkuG5DJfVeVciQLBn9XGxUOYR7DU1UZvY4rvjd
         TH2Bt6i243WS/TuVB8j+jC8WycTKyZ1hsvXMnk5aIIZUQADq+8qxRPQRQD7r1CaPNYcF
         /EDwwJYSYSzlTEWNeChQSEzZGkt26nlMXNyFtdWfsFKDm/z0DWwI8uWvJR1NqKQOGzHk
         yDJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=cgG4mXiFk80jblksoZQMc9jgMHe+qe9jhj0xaapBykQ=;
        b=n3WCSK6SYFm6dZqaFTJ5N/jyqGOXmEMK+9dZgaxCDahSC0m6A7XmcXixpXXShtLKso
         mT4lqHsPRmwDBzsa8sxOiTrwQBlqPYtKYTQiArLmH+4+rzT0myjXFQqakSc1EQ5hRN1A
         aQDGreMZJ8blbBH0yfKBYf6bS0ydBMe7vxgttyZJsY3u16B7ur/+uz9xM5TokGs/0+yc
         A4VVpXK+Z1yhQNvMC1e6XwqfIjWf1Q6yDxg6faWZmXmgFbeTAioRjFfRRUB3HYMenXFt
         kKg+QqpeLPDapeikipALy1bx2O/EoBHbSq52bs4Ila8C0P99z/eEkGcQTB9xUMbA523Z
         bNZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZJkH9Mr+;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id u21si357009pfc.0.2021.04.09.18.35.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 18:35:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZJkH9Mr+;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x436.google.com with SMTP id i190so5347996pfc.12
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 18:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=cgG4mXiFk80jblksoZQMc9jgMHe+qe9jhj0xaapBykQ=;
        b=ZJkH9Mr+fDdJoB7cEjmQumMAzsNitSNtK+OjJOn/vPumF/UqWMpB6muM/7y9MC7SaG
         xcZ1GYxtfdxsW1hgHy4882wYwQ+uWZj0KIXO8cR5ivW+m1xyEUXwgKVB+PTPt3gmq0Nl
         fThLubv3VWFaIQictPvKxcp3LNx4bSzqaU4q/IkNUfsO1OAL4nBFNAIZX3MfSK2BOISn
         fxs1M2l4tGQH7/OiaqaxLalJoXX2n5F6R3sz7dyhJBc3fx23PowgwQg0Ve8+++THg6mm
         GRQZcM7XLHm09GgrsEatpZ0rGUu1bKO3gFLBpoRtcD3YYnYlYhaRUnzBH/TjcvNWZmUb
         czfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=cgG4mXiFk80jblksoZQMc9jgMHe+qe9jhj0xaapBykQ=;
        b=QcOEgOASCIg43u6jl6NnT+nd1NXGnoVpBRBokdDrWbZ+MF36K7XV5ExjShUoHDFQFL
         fj6rWUt+qfmfyuoduuh1gFksos1Vpk6Rwh7PLIqbIW4+2ypLRuBQGawAGF1s1awcpsun
         cAVDxaXzPDbnVs7yO2v+DJBx4255lbSFCNFiruOrT5vfMye9BwrbMwdLs/KOHXskwL1h
         UUhyDn36VgusOE3Umb8AgxZhCBjHuljgo59VPuFOHS9KuhQeiEUxixMCG3x1hNoGBpjx
         T2odvo/1i1qOqJU6VS+mwV5k6QBXLypCVvQ5LSh+wpkJpm5BdBKnGMAbXbWaEhEx3sXj
         Ikwg==
X-Gm-Message-State: AOAM531t3etJ+s/60fMEQ2f3XHBjbF3kDZKy7SlRy1rLXldZ6W+VLDoR
	rsfxnLsX689XSLFmqfhZ5+c=
X-Received: by 2002:a63:c847:: with SMTP id l7mr16322643pgi.445.1618018527642;
        Fri, 09 Apr 2021 18:35:27 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id s21sm3893876pgl.36.2021.04.09.18.35.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 18:35:27 -0700 (PDT)
Date: Sat, 10 Apr 2021 07:05:21 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH 4/6] staging: rtl8192e: matched alignment with open
 parenthesis
Message-ID: <YHEA2Te3Hik5J39t@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Matched the alignment with open parenthesis to meet linux kernel coding
style.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/rtl8192e/rtl819x_HTProc.c | 20 ++++++++++----------
 drivers/staging/rtl8192e/rtl819x_TSProc.c | 18 +++++++++---------
 2 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 0ded86da1562..12f31ba9aa13 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -154,7 +154,7 @@ bool IsHTHalfNmodeAPs(struct rtllib_device *ieee)
 	    (net->ralink_cap_exist))
 		retValue = true;
 	else if (!memcmp(net->bssid, UNKNOWN_BORADCOM, 3) ||
-		!memcmp(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3) ||
+		 !memcmp(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3) ||
 		!memcmp(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM, 3) ||
 		(net->broadcom_cap_exist))
 		retValue = true;
@@ -547,7 +547,7 @@ void HTOnAssocRsp(struct rtllib_device *ieee)
 			     pPeerHTCap, sizeof(struct ht_capab_ele));
 #endif
 	HTSetConnectBwMode(ieee, (enum ht_channel_width)(pPeerHTCap->ChlWidth),
-			  (enum ht_extchnl_offset)(pPeerHTInfo->ExtChlOffset));
+			   (enum ht_extchnl_offset)(pPeerHTInfo->ExtChlOffset));
 	pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth == 1) ?
 				 true : false);
 
@@ -574,9 +574,9 @@ void HTOnAssocRsp(struct rtllib_device *ieee)
 
 	pHTInfo->bCurrentAMPDUEnable = pHTInfo->bAMPDUEnable;
 	if (ieee->rtllib_ap_sec_type &&
-	   (ieee->rtllib_ap_sec_type(ieee) & (SEC_ALG_WEP | SEC_ALG_TKIP))) {
+	    (ieee->rtllib_ap_sec_type(ieee) & (SEC_ALG_WEP | SEC_ALG_TKIP))) {
 		if ((pHTInfo->IOTPeer == HT_IOT_PEER_ATHEROS) ||
-				(pHTInfo->IOTPeer == HT_IOT_PEER_UNKNOWN))
+		    (pHTInfo->IOTPeer == HT_IOT_PEER_UNKNOWN))
 			pHTInfo->bCurrentAMPDUEnable = false;
 	}
 
@@ -626,7 +626,7 @@ void HTOnAssocRsp(struct rtllib_device *ieee)
 	else
 		pMcsFilter = MCS_FILTER_ALL;
 	ieee->HTHighestOperaRate = HTGetHighestMCSRate(ieee,
-				   ieee->dot11HTOperationalRateSet, pMcsFilter);
+						       ieee->dot11HTOperationalRateSet, pMcsFilter);
 	ieee->HTCurrentOperaRate = ieee->HTHighestOperaRate;
 
 	pHTInfo->CurrentOpMode = pPeerHTInfo->OptMode;
@@ -654,13 +654,13 @@ void HTInitializeHTInfo(struct rtllib_device *ieee)
 	pHTInfo->CurrentAMPDUFactor = pHTInfo->AMPDU_Factor;
 
 	memset((void *)(&(pHTInfo->SelfHTCap)), 0,
-		sizeof(pHTInfo->SelfHTCap));
+	       sizeof(pHTInfo->SelfHTCap));
 	memset((void *)(&(pHTInfo->SelfHTInfo)), 0,
-		sizeof(pHTInfo->SelfHTInfo));
+	       sizeof(pHTInfo->SelfHTInfo));
 	memset((void *)(&(pHTInfo->PeerHTCapBuf)), 0,
-		sizeof(pHTInfo->PeerHTCapBuf));
+	       sizeof(pHTInfo->PeerHTCapBuf));
 	memset((void *)(&(pHTInfo->PeerHTInfoBuf)), 0,
-		sizeof(pHTInfo->PeerHTInfoBuf));
+	       sizeof(pHTInfo->PeerHTInfoBuf));
 
 	pHTInfo->bSwBwInProgress = false;
 
@@ -815,7 +815,7 @@ void HTUseDefaultSetting(struct rtllib_device *ieee)
 		HTFilterMCSRate(ieee, ieee->Regdot11TxHTOperationalRateSet,
 				ieee->dot11HTOperationalRateSet);
 		ieee->HTHighestOperaRate = HTGetHighestMCSRate(ieee,
-					   ieee->dot11HTOperationalRateSet,
+							       ieee->dot11HTOperationalRateSet,
 					   MCS_FILTER_ALL);
 		ieee->HTCurrentOperaRate = ieee->HTHighestOperaRate;
 
diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
index 1b994a57633f..65eac33aaa5b 100644
--- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
@@ -34,7 +34,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
 		while (!list_empty(&pRxTs->rx_pending_pkt_list)) {
 			pReorderEntry = (struct rx_reorder_entry *)
 					list_entry(pRxTs->rx_pending_pkt_list.prev,
-					struct rx_reorder_entry, List);
+						   struct rx_reorder_entry, List);
 			if (index == 0)
 				pRxTs->rx_indicate_seq = pReorderEntry->SeqNum;
 
@@ -45,7 +45,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
 				list_del_init(&pReorderEntry->List);
 
 				if (SN_EQUAL(pReorderEntry->SeqNum,
-				    pRxTs->rx_indicate_seq))
+					     pRxTs->rx_indicate_seq))
 					pRxTs->rx_indicate_seq =
 					      (pRxTs->rx_indicate_seq + 1) % 4096;
 
@@ -158,7 +158,7 @@ void TSInitialize(struct rtllib_device *ieee)
 
 		ResetTxTsEntry(pTxTS);
 		list_add_tail(&pTxTS->TsCommonInfo.List,
-				&ieee->Tx_TS_Unused_List);
+			      &ieee->Tx_TS_Unused_List);
 		pTxTS++;
 	}
 
@@ -276,7 +276,7 @@ static void MakeTSEntry(struct ts_common_info *pTsCommonInfo, u8 *Addr,
 
 	if (pTSPEC != NULL)
 		memcpy((u8 *)(&(pTsCommonInfo->TSpec)), (u8 *)pTSPEC,
-			sizeof(union tspec_body));
+		       sizeof(union tspec_body));
 
 	for (count = 0; count < TCLAS_Num; count++)
 		memcpy((u8 *)(&(pTsCommonInfo->TClass[count])),
@@ -355,14 +355,14 @@ bool GetTs(struct rtllib_device *ieee, struct ts_common_info **ppTS,
 		if (TxRxSelect == TX_DIR) {
 			struct tx_ts_record *tmp =
 				container_of(*ppTS,
-				struct tx_ts_record,
-				TsCommonInfo);
+					     struct tx_ts_record,
+					     TsCommonInfo);
 			ResetTxTsEntry(tmp);
 		} else {
 			struct rx_ts_record *tmp =
 				 container_of(*ppTS,
-				 struct rx_ts_record,
-				 ts_common_info);
+					      struct rx_ts_record,
+					      ts_common_info);
 			ResetRxTsEntry(tmp);
 		}
 
@@ -409,7 +409,7 @@ static void RemoveTsEntry(struct rtllib_device *ieee,
 		while (!list_empty(&pRxTS->rx_pending_pkt_list)) {
 			pRxReorderEntry = (struct rx_reorder_entry *)
 					list_entry(pRxTS->rx_pending_pkt_list.prev,
-					struct rx_reorder_entry, List);
+						   struct rx_reorder_entry, List);
 			netdev_dbg(ieee->dev,  "%s(): Delete SeqNum %d!\n",
 				   __func__, pRxReorderEntry->SeqNum);
 			list_del_init(&pRxReorderEntry->List);
-- 
2.30.2


