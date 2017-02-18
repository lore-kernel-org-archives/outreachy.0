X-GM-THRID: 6388430317309394944
X-Received: by 10.28.126.210 with SMTP id z201mr410217wmc.7.1487423213872;
        Sat, 18 Feb 2017 05:06:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.141 with SMTP id c13ls351883ljd.11.gmail; Sat, 18 Feb
 2017 05:06:52 -0800 (PST)
X-Received: by 10.46.88.70 with SMTP id x6mr1145582ljd.22.1487423212810;
        Sat, 18 Feb 2017 05:06:52 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q4si364305wma.3.2017.02.18.05.06.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 05:06:52 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,174,1484002800"; 
   d="scan'208";a="213891888"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2017 14:06:52 +0100
Date: Sat, 18 Feb 2017 14:06:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 2/6] staging: rtl8192e: Remove
 CamelCase
In-Reply-To: <20170218125217.GA5942@singhal-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1702181405280.3112@hadrien>
References: <20170218125217.GA5942@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sat, 18 Feb 2017, simran singhal wrote:

> This patch renames pBA to pba to avoid camelcase.

I think that this was tried in the last round and was rejected, because BA
is meaningful.  You also see BA in the name of a header file.  The kind of
camel case that one should remove is whenTextIsWrittenLikeThis.

julia

>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl819x_BAProc.c | 100 +++++++++++++++---------------
>  1 file changed, 50 insertions(+), 50 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
> index bdbd21c..e51ec16 100644
> --- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
> +++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
> @@ -18,18 +18,18 @@
>  #include "rtllib.h"
>  #include "rtl819x_BA.h"
>
> -static void ActivateBAEntry(struct rtllib_device *ieee, struct ba_record *pBA,
> +static void ActivateBAEntry(struct rtllib_device *ieee, struct ba_record *pba,
>  			    u16 Time)
>  {
> -	pBA->bValid = true;
> +	pba->bValid = true;
>  	if (Time != 0)
> -		mod_timer(&pBA->Timer, jiffies + msecs_to_jiffies(Time));
> +		mod_timer(&pba->Timer, jiffies + msecs_to_jiffies(Time));
>  }
>
> -static void DeActivateBAEntry(struct rtllib_device *ieee, struct ba_record *pBA)
> +static void DeActivateBAEntry(struct rtllib_device *ieee, struct ba_record *pba)
>  {
> -	pBA->bValid = false;
> -	del_timer_sync(&pBA->Timer);
> +	pba->bValid = false;
> +	del_timer_sync(&pba->Timer);
>  }
>
>  static u8 TxTsDeleteBA(struct rtllib_device *ieee, struct tx_ts_record *pTxTs)
> @@ -63,16 +63,16 @@ static u8 RxTsDeleteBA(struct rtllib_device *ieee, struct rx_ts_record *pRxTs)
>  	return bSendDELBA;
>  }
>
> -void ResetBaEntry(struct ba_record *pBA)
> +void ResetBaEntry(struct ba_record *pba)
>  {
> -	pBA->bValid			= false;
> -	pBA->BaParamSet.shortData	= 0;
> -	pBA->BaTimeoutValue		= 0;
> -	pBA->DialogToken		= 0;
> -	pBA->BaStartSeqCtrl.ShortData	= 0;
> +	pba->bValid			= false;
> +	pba->BaParamSet.shortData	= 0;
> +	pba->BaTimeoutValue		= 0;
> +	pba->DialogToken		= 0;
> +	pba->BaStartSeqCtrl.ShortData	= 0;
>  }
>  static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
> -				    struct ba_record *pBA,
> +				    struct ba_record *pba,
>  				    u16 StatusCode, u8 type)
>  {
>  	struct sk_buff *skb = NULL;
> @@ -83,8 +83,8 @@ static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
>  	netdev_dbg(ieee->dev, "%s(): frame(%d) sentd to: %pM, ieee->dev:%p\n",
>  		   __func__, type, Dst, ieee->dev);
>
> -	if (!pBA) {
> -		netdev_warn(ieee->dev, "pBA is NULL\n");
> +	if (!pba) {
> +		netdev_warn(ieee->dev, "pba is NULL\n");
>  		return NULL;
>  	}
>  	skb = dev_alloc_skb(len + sizeof(struct rtllib_hdr_3addr));
> @@ -107,7 +107,7 @@ static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
>  	tag = (u8 *)skb_put(skb, 9);
>  	*tag++ = ACT_CAT_BA;
>  	*tag++ = type;
> -	*tag++ = pBA->DialogToken;
> +	*tag++ = pba->DialogToken;
>
>  	if (type == ACT_ADDBARSP) {
>  		RT_TRACE(COMP_DBG, "====>to send ADDBARSP\n");
> @@ -116,14 +116,14 @@ static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
>  		tag += 2;
>  	}
>
> -	put_unaligned_le16(pBA->BaParamSet.shortData, tag);
> +	put_unaligned_le16(pba->BaParamSet.shortData, tag);
>  	tag += 2;
>
> -	put_unaligned_le16(pBA->BaTimeoutValue, tag);
> +	put_unaligned_le16(pba->BaTimeoutValue, tag);
>  	tag += 2;
>
>  	if (type == ACT_ADDBAREQ) {
> -		memcpy(tag, (u8 *)&(pBA->BaStartSeqCtrl), 2);
> +		memcpy(tag, (u8 *)&(pba->BaStartSeqCtrl), 2);
>  		tag += 2;
>  	}
>
> @@ -135,7 +135,7 @@ static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
>  }
>
>  static struct sk_buff *rtllib_DELBA(struct rtllib_device *ieee, u8 *dst,
> -				    struct ba_record *pBA,
> +				    struct ba_record *pba,
>  				    enum tr_select TxRxSelect, u16 ReasonCode)
>  {
>  	union delba_param_set DelbaParamSet;
> @@ -151,7 +151,7 @@ static struct sk_buff *rtllib_DELBA(struct rtllib_device *ieee, u8 *dst,
>  	memset(&DelbaParamSet, 0, 2);
>
>  	DelbaParamSet.field.Initiator = (TxRxSelect == TX_DIR) ? 1 : 0;
> -	DelbaParamSet.field.TID	= pBA->BaParamSet.field.TID;
> +	DelbaParamSet.field.TID	= pba->BaParamSet.field.TID;
>
>  	skb = dev_alloc_skb(len + sizeof(struct rtllib_hdr_3addr));
>  	if (!skb)
> @@ -187,11 +187,11 @@ static struct sk_buff *rtllib_DELBA(struct rtllib_device *ieee, u8 *dst,
>  }
>
>  static void rtllib_send_ADDBAReq(struct rtllib_device *ieee, u8 *dst,
> -				 struct ba_record *pBA)
> +				 struct ba_record *pba)
>  {
>  	struct sk_buff *skb;
>
> -	skb = rtllib_ADDBA(ieee, dst, pBA, 0, ACT_ADDBAREQ);
> +	skb = rtllib_ADDBA(ieee, dst, pba, 0, ACT_ADDBAREQ);
>
>  	if (skb) {
>  		RT_TRACE(COMP_DBG, "====>to send ADDBAREQ!!!!!\n");
> @@ -202,11 +202,11 @@ static void rtllib_send_ADDBAReq(struct rtllib_device *ieee, u8 *dst,
>  }
>
>  static void rtllib_send_ADDBARsp(struct rtllib_device *ieee, u8 *dst,
> -				 struct ba_record *pBA, u16 StatusCode)
> +				 struct ba_record *pba, u16 StatusCode)
>  {
>  	struct sk_buff *skb;
>
> -	skb = rtllib_ADDBA(ieee, dst, pBA, StatusCode, ACT_ADDBARSP);
> +	skb = rtllib_ADDBA(ieee, dst, pba, StatusCode, ACT_ADDBARSP);
>  	if (skb)
>  		softmac_mgmt_xmit(skb, ieee);
>  	else
> @@ -214,12 +214,12 @@ static void rtllib_send_ADDBARsp(struct rtllib_device *ieee, u8 *dst,
>  }
>
>  static void rtllib_send_DELBA(struct rtllib_device *ieee, u8 *dst,
> -			      struct ba_record *pBA, enum tr_select TxRxSelect,
> +			      struct ba_record *pba, enum tr_select TxRxSelect,
>  			      u16 ReasonCode)
>  {
>  	struct sk_buff *skb;
>
> -	skb = rtllib_DELBA(ieee, dst, pBA, TxRxSelect, ReasonCode);
> +	skb = rtllib_DELBA(ieee, dst, pba, TxRxSelect, ReasonCode);
>  	if (skb)
>  		softmac_mgmt_xmit(skb, ieee);
>  	else
> @@ -231,7 +231,7 @@ int rtllib_rx_ADDBAReq(struct rtllib_device *ieee, struct sk_buff *skb)
>  	struct rtllib_hdr_3addr *req = NULL;
>  	u16 rc = 0;
>  	u8 *dst = NULL, *pDialogToken = NULL, *tag = NULL;
> -	struct ba_record *pBA = NULL;
> +	struct ba_record *pba = NULL;
>  	union ba_param_set *pBaParamSet = NULL;
>  	u16 *pBaTimeoutVal = NULL;
>  	union sequence_control *pBaStartSeqCtrl = NULL;
> @@ -275,7 +275,7 @@ int rtllib_rx_ADDBAReq(struct rtllib_device *ieee, struct sk_buff *skb)
>  		netdev_warn(ieee->dev, "%s(): can't get TS\n", __func__);
>  		goto OnADDBAReq_Fail;
>  	}
> -	pBA = &pTS->RxAdmittedBARecord;
> +	pba = &pTS->RxAdmittedBARecord;
>
>  	if (pBaParamSet->field.BAPolicy == BA_POLICY_DELAYED) {
>  		rc = ADDBA_STATUS_INVALID_PARAM;
> @@ -286,20 +286,20 @@ int rtllib_rx_ADDBAReq(struct rtllib_device *ieee, struct sk_buff *skb)
>
>  	rtllib_FlushRxTsPendingPkts(ieee, pTS);
>
> -	DeActivateBAEntry(ieee, pBA);
> -	pBA->DialogToken = *pDialogToken;
> -	pBA->BaParamSet = *pBaParamSet;
> -	pBA->BaTimeoutValue = *pBaTimeoutVal;
> -	pBA->BaStartSeqCtrl = *pBaStartSeqCtrl;
> +	DeActivateBAEntry(ieee, pba);
> +	pba->DialogToken = *pDialogToken;
> +	pba->BaParamSet = *pBaParamSet;
> +	pba->BaTimeoutValue = *pBaTimeoutVal;
> +	pba->BaStartSeqCtrl = *pBaStartSeqCtrl;
>
>  	if (ieee->GetHalfNmodeSupportByAPsHandler(ieee->dev) ||
>  	   (ieee->pHTInfo->IOTAction & HT_IOT_ACT_ALLOW_PEER_AGG_ONE_PKT))
> -		pBA->BaParamSet.field.BufferSize = 1;
> +		pba->BaParamSet.field.BufferSize = 1;
>  	else
> -		pBA->BaParamSet.field.BufferSize = 32;
> +		pba->BaParamSet.field.BufferSize = 32;
>
> -	ActivateBAEntry(ieee, pBA, 0);
> -	rtllib_send_ADDBARsp(ieee, dst, pBA, ADDBA_STATUS_SUCCESS);
> +	ActivateBAEntry(ieee, pba, 0);
> +	rtllib_send_ADDBARsp(ieee, dst, pba, ADDBA_STATUS_SUCCESS);
>
>  	return 0;
>
> @@ -485,25 +485,25 @@ int rtllib_rx_DELBA(struct rtllib_device *ieee, struct sk_buff *skb)
>  void TsInitAddBA(struct rtllib_device *ieee, struct tx_ts_record *pTS,
>  		 u8 Policy, u8	bOverwritePending)
>  {
> -	struct ba_record *pBA = &pTS->TxPendingBARecord;
> +	struct ba_record *pba = &pTS->TxPendingBARecord;
>
> -	if (pBA->bValid == true && bOverwritePending == false)
> +	if (pba->bValid == true && bOverwritePending == false)
>  		return;
>
> -	DeActivateBAEntry(ieee, pBA);
> +	DeActivateBAEntry(ieee, pba);
>
> -	pBA->DialogToken++;
> -	pBA->BaParamSet.field.AMSDU_Support = 0;
> -	pBA->BaParamSet.field.BAPolicy = Policy;
> -	pBA->BaParamSet.field.TID =
> +	pba->DialogToken++;
> +	pba->BaParamSet.field.AMSDU_Support = 0;
> +	pba->BaParamSet.field.BAPolicy = Policy;
> +	pba->BaParamSet.field.TID =
>  			 pTS->TsCommonInfo.TSpec.f.TSInfo.field.ucTSID;
> -	pBA->BaParamSet.field.BufferSize = 32;
> -	pBA->BaTimeoutValue = 0;
> -	pBA->BaStartSeqCtrl.field.SeqNum = (pTS->TxCurSeq + 3) % 4096;
> +	pba->BaParamSet.field.BufferSize = 32;
> +	pba->BaTimeoutValue = 0;
> +	pba->BaStartSeqCtrl.field.SeqNum = (pTS->TxCurSeq + 3) % 4096;
>
> -	ActivateBAEntry(ieee, pBA, BA_SETUP_TIMEOUT);
> +	ActivateBAEntry(ieee, pba, BA_SETUP_TIMEOUT);
>
> -	rtllib_send_ADDBAReq(ieee, pTS->TsCommonInfo.Addr, pBA);
> +	rtllib_send_ADDBAReq(ieee, pTS->TsCommonInfo.Addr, pba);
>  }
>
>  void TsInitDelBA(struct rtllib_device *ieee,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170218125217.GA5942%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.
>

