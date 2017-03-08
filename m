X-GM-THRID: 6395188144195502080
X-Received: by 10.223.175.34 with SMTP id z31mr142931wrc.0.1488996061833;
        Wed, 08 Mar 2017 10:01:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.94.146 with SMTP id s140ls595818wmb.4.gmail; Wed, 08 Mar
 2017 10:01:00 -0800 (PST)
X-Received: by 10.223.165.69 with SMTP id j5mr139506wrb.4.1488996060952;
        Wed, 08 Mar 2017 10:01:00 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p144si445307wme.2.2017.03.08.10.01.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 10:01:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,265,1486422000"; 
   d="scan'208";a="263736056"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2017 19:00:45 +0100
Date: Wed, 8 Mar 2017 19:00:33 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Remove useless
 type conversion
In-Reply-To: <1488995622-25258-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1703081859280.3058@hadrien>
References: <1488995622-25258-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

y

On Wed, 8 Mar 2017, Gargi Sharma wrote:

> Some type conversions like casting a pointer to a pointer of same type,
> casting to the original type using addressof(&) operator etc. are not
> needed. Therefore, remove them. Done using coccinelle:

This is not really accurate because non-pointer types are being considered
(and transformed) as well.

> @@
> type t;
> t *p;
> t a;
> @@
> (
> - (t)(a)
> + a
> |
> - (t *)(p)
> + p
> |
> - (t *)(&a)
> + &a
> )
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c | 32 +++++++++++---------------
>  1 file changed, 13 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
> index 8d6bca6..5c1d830 100644
> --- a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
> +++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
> @@ -135,7 +135,7 @@ void rtl92e_set_reg(struct net_device *dev, u8 variable, u8 *val)
>  	{
>  		u32	RegRCR, Type;
>
> -		Type = ((u8 *)(val))[0];
> +		Type = (val)[0];

In various places you end up with parentheses around a variable.  You can
remove the parentheses.

julia

>  		RegRCR = rtl92e_readl(dev, RCR);
>  		priv->ReceiveConfig = RegRCR;
>
> @@ -161,7 +161,7 @@ void rtl92e_set_reg(struct net_device *dev, u8 variable, u8 *val)
>  	{
>  		u32 regTmp;
>
> -		priv->short_preamble = (bool)(*(u8 *)val);
> +		priv->short_preamble = (bool)(*val);
>  		regTmp = priv->basic_rate;
>  		if (priv->short_preamble)
>  			regTmp |= BRSR_AckShortPmb;
> @@ -175,7 +175,7 @@ void rtl92e_set_reg(struct net_device *dev, u8 variable, u8 *val)
>
>  	case HW_VAR_AC_PARAM:
>  	{
> -		u8	pAcParam = *((u8 *)val);
> +		u8	pAcParam = *(val);
>  		u32	eACI = pAcParam;
>  		u8		u1bAIFS;
>  		u32		u4bAcParam;
> @@ -221,7 +221,7 @@ void rtl92e_set_reg(struct net_device *dev, u8 variable, u8 *val)
>  			break;
>  		}
>  		priv->rtllib->SetHwRegHandler(dev, HW_VAR_ACM_CTRL,
> -					      (u8 *)(&pAcParam));
> +					      &pAcParam);
>  		break;
>  	}
>
> @@ -229,7 +229,7 @@ void rtl92e_set_reg(struct net_device *dev, u8 variable, u8 *val)
>  	{
>  		struct rtllib_qos_parameters *qos_parameters =
>  			 &priv->rtllib->current_network.qos_data.parameters;
> -		u8 pAcParam = *((u8 *)val);
> +		u8 pAcParam = *(val);
>  		u32 eACI = pAcParam;
>  		union aci_aifsn *pAciAifsn = (union aci_aifsn *) &
>  					      (qos_parameters->aifs[0]);
> @@ -293,7 +293,7 @@ void rtl92e_set_reg(struct net_device *dev, u8 variable, u8 *val)
>
>  	case HW_VAR_RF_TIMING:
>  	{
> -		u8 Rf_Timing = *((u8 *)val);
> +		u8 Rf_Timing = *(val);
>
>  		rtl92e_writeb(dev, rFPGA0_RFTiming1, Rf_Timing);
>  		break;
> @@ -372,7 +372,7 @@ static void _rtl92e_read_eeprom_info(struct net_device *dev)
>  	if (!priv->AutoloadFailFlag) {
>  		for (i = 0; i < 6; i += 2) {
>  			usValue = rtl92e_eeprom_read(dev,
> -				 (u16)((EEPROM_NODE_ADDRESS_BYTE_0 + i) >> 1));
> +				 (EEPROM_NODE_ADDRESS_BYTE_0 + i) >> 1);
>  			*(u16 *)(&dev->dev_addr[i]) = usValue;
>  		}
>  	} else {
> @@ -436,8 +436,7 @@ static void _rtl92e_read_eeprom_info(struct net_device *dev)
>  			for (i = 0; i < 14; i += 2) {
>  				if (!priv->AutoloadFailFlag)
>  					usValue = rtl92e_eeprom_read(dev,
> -						  (u16)((EEPROM_TxPwIndex_CCK +
> -						  i) >> 1));
> +						  (EEPROM_TxPwIndex_CCK + i) >> 1);
>  				else
>  					usValue = EEPROM_Default_TxPower;
>  				*((u16 *)(&priv->EEPROMTxPowerLevelCCK[i])) =
> @@ -452,8 +451,7 @@ static void _rtl92e_read_eeprom_info(struct net_device *dev)
>  			for (i = 0; i < 14; i += 2) {
>  				if (!priv->AutoloadFailFlag)
>  					usValue = rtl92e_eeprom_read(dev,
> -						(u16)((EEPROM_TxPwIndex_OFDM_24G
> -						+ i) >> 1));
> +						(EEPROM_TxPwIndex_OFDM_24G + i) >> 1);
>  				else
>  					usValue = EEPROM_Default_TxPower;
>  				*((u16 *)(&priv->EEPROMTxPowerLevelOFDM24G[i]))
> @@ -1650,15 +1648,11 @@ static void _rtl92e_query_rxphystatus(
>  			evm = rtl92e_evm_db_to_percent(rx_evmX);
>  			if (bpacket_match_bssid) {
>  				if (i == 0) {
> -					pstats->SignalQuality = (u8)(evm &
> -								 0xff);
> -					precord_stats->SignalQuality = (u8)(evm
> -									& 0xff);
> +					pstats->SignalQuality = evm & 0xff;
> +					precord_stats->SignalQuality = evm & 0xff;
>  				}
> -				pstats->RxMIMOSignalQuality[i] = (u8)(evm &
> -								 0xff);
> -				precord_stats->RxMIMOSignalQuality[i] = (u8)(evm
> -									& 0xff);
> +				pstats->RxMIMOSignalQuality[i] = evm & 0xff;
> +				precord_stats->RxMIMOSignalQuality[i] = evm & 0xff;
>  			}
>  		}
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488995622-25258-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

