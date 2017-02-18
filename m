X-GM-THRID: 6388430317309394944
X-Received: by 10.99.8.196 with SMTP id 187mr4073722pgi.115.1487422342255;
        Sat, 18 Feb 2017 04:52:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.81 with SMTP id n17ls637097otd.19.gmail; Sat, 18 Feb
 2017 04:52:21 -0800 (PST)
X-Received: by 10.129.40.134 with SMTP id o128mr1834265ywo.82.1487422341745;
        Sat, 18 Feb 2017 04:52:21 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id f7si1285754pfk.5.2017.02.18.04.52.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 04:52:21 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 5so7313784pgj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 04:52:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4b2He20tRNDnFG75savW7Z7t1lgF5mj6VVNSebGcqEQ=;
        b=olfZyBqkjojZqp0daqVPbLuttk4xhT3NEddMJLhEoRzrwJZLz5kCOs6/8USd0YbUtZ
         cWXbquE30Mu2eI8RYy8krJVfWJBFQ/n1FLBRouJq8Wcd8eRL5txXUReikejUEYb3ODXx
         SW519Q0B2tllTMNqF4wWIkP0cjhNAgPOGzh8Poa2oWtI6W3WaW2onNKIHIsNFtwDjm0R
         31MJmj4OFEfqYv7t+wYlKlniCSaZHNMTmDKv0+f16gmZ3bz0EyTn6+7QatmG4CKvs4+S
         Reu3FWQ4Pp9QjTnj3VDaYI5NB0d1KWUm5lmrOCwCUBrFDRDbeFzAJA/DRlDe0oVKuSPw
         bLWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4b2He20tRNDnFG75savW7Z7t1lgF5mj6VVNSebGcqEQ=;
        b=hPC0QcyhCDC2Zp5lPg/BXT1V5xbOvooQL4PqjcHaEntP8uCRZCKZ42y9x24mc7eHyZ
         f9MJ9dAbvCXP5NCxLdOtzy+UedFmoQ+M+EaDb6CMYgX9bEkPKPmZxWUtVjjkcQCEl+dn
         46TDZ8MM+t6zz9VJjl0JnWqu1JHR7XHzHiiV81XA8YmhCpcf+dfKhyzJDBOXX4xwMPRV
         IUPrRum3YUfZiEL1V6VAkI5QkgL4nBsPw0eG5X1BZHmngO8PO6wStXt1c+bPSEqPM0N7
         JEhA03pejKeFqB0HtfHGSWhAXz5SzO+vUw0iGTmQV9NYKrlQQLgBPtvijw4rWTQfLyFQ
         PT7A==
X-Gm-Message-State: AMke39nrtzWHd3Dha+Rufo6QIN+TVyEUO9BMSlqli+JtMhqKo6T3btKEmCss/lXchMdzyg==
X-Received: by 10.84.231.201 with SMTP id g9mr18211929pln.13.1487422341442;
        Sat, 18 Feb 2017 04:52:21 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 67sm25217085pfd.120.2017.02.18.04.52.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Feb 2017 04:52:20 -0800 (PST)
Date: Sat, 18 Feb 2017 18:22:18 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/6] staging: rtl8192e: Remove CamelCase
Message-ID: <20170218125217.GA5942@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch renames pBA to pba to avoid camelcase.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8192e/rtl819x_BAProc.c | 100 +++++++++++++++---------------
 1 file changed, 50 insertions(+), 50 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
index bdbd21c..e51ec16 100644
--- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
@@ -18,18 +18,18 @@
 #include "rtllib.h"
 #include "rtl819x_BA.h"
 
-static void ActivateBAEntry(struct rtllib_device *ieee, struct ba_record *pBA,
+static void ActivateBAEntry(struct rtllib_device *ieee, struct ba_record *pba,
 			    u16 Time)
 {
-	pBA->bValid = true;
+	pba->bValid = true;
 	if (Time != 0)
-		mod_timer(&pBA->Timer, jiffies + msecs_to_jiffies(Time));
+		mod_timer(&pba->Timer, jiffies + msecs_to_jiffies(Time));
 }
 
-static void DeActivateBAEntry(struct rtllib_device *ieee, struct ba_record *pBA)
+static void DeActivateBAEntry(struct rtllib_device *ieee, struct ba_record *pba)
 {
-	pBA->bValid = false;
-	del_timer_sync(&pBA->Timer);
+	pba->bValid = false;
+	del_timer_sync(&pba->Timer);
 }
 
 static u8 TxTsDeleteBA(struct rtllib_device *ieee, struct tx_ts_record *pTxTs)
@@ -63,16 +63,16 @@ static u8 RxTsDeleteBA(struct rtllib_device *ieee, struct rx_ts_record *pRxTs)
 	return bSendDELBA;
 }
 
-void ResetBaEntry(struct ba_record *pBA)
+void ResetBaEntry(struct ba_record *pba)
 {
-	pBA->bValid			= false;
-	pBA->BaParamSet.shortData	= 0;
-	pBA->BaTimeoutValue		= 0;
-	pBA->DialogToken		= 0;
-	pBA->BaStartSeqCtrl.ShortData	= 0;
+	pba->bValid			= false;
+	pba->BaParamSet.shortData	= 0;
+	pba->BaTimeoutValue		= 0;
+	pba->DialogToken		= 0;
+	pba->BaStartSeqCtrl.ShortData	= 0;
 }
 static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
-				    struct ba_record *pBA,
+				    struct ba_record *pba,
 				    u16 StatusCode, u8 type)
 {
 	struct sk_buff *skb = NULL;
@@ -83,8 +83,8 @@ static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
 	netdev_dbg(ieee->dev, "%s(): frame(%d) sentd to: %pM, ieee->dev:%p\n",
 		   __func__, type, Dst, ieee->dev);
 
-	if (!pBA) {
-		netdev_warn(ieee->dev, "pBA is NULL\n");
+	if (!pba) {
+		netdev_warn(ieee->dev, "pba is NULL\n");
 		return NULL;
 	}
 	skb = dev_alloc_skb(len + sizeof(struct rtllib_hdr_3addr));
@@ -107,7 +107,7 @@ static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
 	tag = (u8 *)skb_put(skb, 9);
 	*tag++ = ACT_CAT_BA;
 	*tag++ = type;
-	*tag++ = pBA->DialogToken;
+	*tag++ = pba->DialogToken;
 
 	if (type == ACT_ADDBARSP) {
 		RT_TRACE(COMP_DBG, "====>to send ADDBARSP\n");
@@ -116,14 +116,14 @@ static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
 		tag += 2;
 	}
 
-	put_unaligned_le16(pBA->BaParamSet.shortData, tag);
+	put_unaligned_le16(pba->BaParamSet.shortData, tag);
 	tag += 2;
 
-	put_unaligned_le16(pBA->BaTimeoutValue, tag);
+	put_unaligned_le16(pba->BaTimeoutValue, tag);
 	tag += 2;
 
 	if (type == ACT_ADDBAREQ) {
-		memcpy(tag, (u8 *)&(pBA->BaStartSeqCtrl), 2);
+		memcpy(tag, (u8 *)&(pba->BaStartSeqCtrl), 2);
 		tag += 2;
 	}
 
@@ -135,7 +135,7 @@ static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
 }
 
 static struct sk_buff *rtllib_DELBA(struct rtllib_device *ieee, u8 *dst,
-				    struct ba_record *pBA,
+				    struct ba_record *pba,
 				    enum tr_select TxRxSelect, u16 ReasonCode)
 {
 	union delba_param_set DelbaParamSet;
@@ -151,7 +151,7 @@ static struct sk_buff *rtllib_DELBA(struct rtllib_device *ieee, u8 *dst,
 	memset(&DelbaParamSet, 0, 2);
 
 	DelbaParamSet.field.Initiator = (TxRxSelect == TX_DIR) ? 1 : 0;
-	DelbaParamSet.field.TID	= pBA->BaParamSet.field.TID;
+	DelbaParamSet.field.TID	= pba->BaParamSet.field.TID;
 
 	skb = dev_alloc_skb(len + sizeof(struct rtllib_hdr_3addr));
 	if (!skb)
@@ -187,11 +187,11 @@ static struct sk_buff *rtllib_DELBA(struct rtllib_device *ieee, u8 *dst,
 }
 
 static void rtllib_send_ADDBAReq(struct rtllib_device *ieee, u8 *dst,
-				 struct ba_record *pBA)
+				 struct ba_record *pba)
 {
 	struct sk_buff *skb;
 
-	skb = rtllib_ADDBA(ieee, dst, pBA, 0, ACT_ADDBAREQ);
+	skb = rtllib_ADDBA(ieee, dst, pba, 0, ACT_ADDBAREQ);
 
 	if (skb) {
 		RT_TRACE(COMP_DBG, "====>to send ADDBAREQ!!!!!\n");
@@ -202,11 +202,11 @@ static void rtllib_send_ADDBAReq(struct rtllib_device *ieee, u8 *dst,
 }
 
 static void rtllib_send_ADDBARsp(struct rtllib_device *ieee, u8 *dst,
-				 struct ba_record *pBA, u16 StatusCode)
+				 struct ba_record *pba, u16 StatusCode)
 {
 	struct sk_buff *skb;
 
-	skb = rtllib_ADDBA(ieee, dst, pBA, StatusCode, ACT_ADDBARSP);
+	skb = rtllib_ADDBA(ieee, dst, pba, StatusCode, ACT_ADDBARSP);
 	if (skb)
 		softmac_mgmt_xmit(skb, ieee);
 	else
@@ -214,12 +214,12 @@ static void rtllib_send_ADDBARsp(struct rtllib_device *ieee, u8 *dst,
 }
 
 static void rtllib_send_DELBA(struct rtllib_device *ieee, u8 *dst,
-			      struct ba_record *pBA, enum tr_select TxRxSelect,
+			      struct ba_record *pba, enum tr_select TxRxSelect,
 			      u16 ReasonCode)
 {
 	struct sk_buff *skb;
 
-	skb = rtllib_DELBA(ieee, dst, pBA, TxRxSelect, ReasonCode);
+	skb = rtllib_DELBA(ieee, dst, pba, TxRxSelect, ReasonCode);
 	if (skb)
 		softmac_mgmt_xmit(skb, ieee);
 	else
@@ -231,7 +231,7 @@ int rtllib_rx_ADDBAReq(struct rtllib_device *ieee, struct sk_buff *skb)
 	struct rtllib_hdr_3addr *req = NULL;
 	u16 rc = 0;
 	u8 *dst = NULL, *pDialogToken = NULL, *tag = NULL;
-	struct ba_record *pBA = NULL;
+	struct ba_record *pba = NULL;
 	union ba_param_set *pBaParamSet = NULL;
 	u16 *pBaTimeoutVal = NULL;
 	union sequence_control *pBaStartSeqCtrl = NULL;
@@ -275,7 +275,7 @@ int rtllib_rx_ADDBAReq(struct rtllib_device *ieee, struct sk_buff *skb)
 		netdev_warn(ieee->dev, "%s(): can't get TS\n", __func__);
 		goto OnADDBAReq_Fail;
 	}
-	pBA = &pTS->RxAdmittedBARecord;
+	pba = &pTS->RxAdmittedBARecord;
 
 	if (pBaParamSet->field.BAPolicy == BA_POLICY_DELAYED) {
 		rc = ADDBA_STATUS_INVALID_PARAM;
@@ -286,20 +286,20 @@ int rtllib_rx_ADDBAReq(struct rtllib_device *ieee, struct sk_buff *skb)
 
 	rtllib_FlushRxTsPendingPkts(ieee, pTS);
 
-	DeActivateBAEntry(ieee, pBA);
-	pBA->DialogToken = *pDialogToken;
-	pBA->BaParamSet = *pBaParamSet;
-	pBA->BaTimeoutValue = *pBaTimeoutVal;
-	pBA->BaStartSeqCtrl = *pBaStartSeqCtrl;
+	DeActivateBAEntry(ieee, pba);
+	pba->DialogToken = *pDialogToken;
+	pba->BaParamSet = *pBaParamSet;
+	pba->BaTimeoutValue = *pBaTimeoutVal;
+	pba->BaStartSeqCtrl = *pBaStartSeqCtrl;
 
 	if (ieee->GetHalfNmodeSupportByAPsHandler(ieee->dev) ||
 	   (ieee->pHTInfo->IOTAction & HT_IOT_ACT_ALLOW_PEER_AGG_ONE_PKT))
-		pBA->BaParamSet.field.BufferSize = 1;
+		pba->BaParamSet.field.BufferSize = 1;
 	else
-		pBA->BaParamSet.field.BufferSize = 32;
+		pba->BaParamSet.field.BufferSize = 32;
 
-	ActivateBAEntry(ieee, pBA, 0);
-	rtllib_send_ADDBARsp(ieee, dst, pBA, ADDBA_STATUS_SUCCESS);
+	ActivateBAEntry(ieee, pba, 0);
+	rtllib_send_ADDBARsp(ieee, dst, pba, ADDBA_STATUS_SUCCESS);
 
 	return 0;
 
@@ -485,25 +485,25 @@ int rtllib_rx_DELBA(struct rtllib_device *ieee, struct sk_buff *skb)
 void TsInitAddBA(struct rtllib_device *ieee, struct tx_ts_record *pTS,
 		 u8 Policy, u8	bOverwritePending)
 {
-	struct ba_record *pBA = &pTS->TxPendingBARecord;
+	struct ba_record *pba = &pTS->TxPendingBARecord;
 
-	if (pBA->bValid == true && bOverwritePending == false)
+	if (pba->bValid == true && bOverwritePending == false)
 		return;
 
-	DeActivateBAEntry(ieee, pBA);
+	DeActivateBAEntry(ieee, pba);
 
-	pBA->DialogToken++;
-	pBA->BaParamSet.field.AMSDU_Support = 0;
-	pBA->BaParamSet.field.BAPolicy = Policy;
-	pBA->BaParamSet.field.TID =
+	pba->DialogToken++;
+	pba->BaParamSet.field.AMSDU_Support = 0;
+	pba->BaParamSet.field.BAPolicy = Policy;
+	pba->BaParamSet.field.TID =
 			 pTS->TsCommonInfo.TSpec.f.TSInfo.field.ucTSID;
-	pBA->BaParamSet.field.BufferSize = 32;
-	pBA->BaTimeoutValue = 0;
-	pBA->BaStartSeqCtrl.field.SeqNum = (pTS->TxCurSeq + 3) % 4096;
+	pba->BaParamSet.field.BufferSize = 32;
+	pba->BaTimeoutValue = 0;
+	pba->BaStartSeqCtrl.field.SeqNum = (pTS->TxCurSeq + 3) % 4096;
 
-	ActivateBAEntry(ieee, pBA, BA_SETUP_TIMEOUT);
+	ActivateBAEntry(ieee, pba, BA_SETUP_TIMEOUT);
 
-	rtllib_send_ADDBAReq(ieee, pTS->TsCommonInfo.Addr, pBA);
+	rtllib_send_ADDBAReq(ieee, pTS->TsCommonInfo.Addr, pba);
 }
 
 void TsInitDelBA(struct rtllib_device *ieee,
-- 
2.7.4


