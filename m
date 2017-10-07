X-GM-THRID: 6474175078570393600
X-Received: by 10.28.128.211 with SMTP id b202mr630030wmd.5.1507399823818;
        Sat, 07 Oct 2017 11:10:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.142.79 with SMTP id n73ls303968wrb.3.gmail; Sat, 07 Oct
 2017 11:10:23 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAyVGtZVYU3OOEg1k0Reqs051JBDcYd/4Kropiuvh75gbfAF6u2Mb6u5n7LhiQ67EZscO/X
X-Received: by 10.28.238.220 with SMTP id j89mr629591wmi.6.1507399823036;
        Sat, 07 Oct 2017 11:10:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507399823; cv=none;
        d=google.com; s=arc-20160816;
        b=SVBwY/n7zVetM6ef9wGzmA44Xn+SMWXUSf+bNIUDm74VCFim1IAJ2Y+Oc4DlYIr4mN
         UA9vYPYBy1NvFfjGUSO1RWL8aHGGUXQj+Zvksz+Ld2Nm2vR8wb5NTnV8f4A2H17bRti2
         tQngV3T8Us8usAmo0bKHdhXyNvr1qQgIVNogohtd7T4qRwgPB/0wd6OgXw6bXzXlxaGz
         dvjEqYQkSWB+2eFyHq3HnfVAoqx1kNPKG2vMp+ztv8NCy6ymZN8xlGmNjQBKZKsDOulh
         VlWMwJ4CSkb7kgarz2NvowfEWUaGGFKVTNsZf/DUfSr4W8VUS4d5r5Y5u6hOmyAhSY/d
         M8vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=NsdmnkFjKKvaHTltf6vKSKgcfyaLgnpTm/Ex6ftg2z8=;
        b=JIBqHci3PDUjoqh9gezsBCuB+xA5hPm+VJcflKQmsi2KA2+ZkJFaszRWu0AQNwitIC
         Q9IItBGKIn7TAydsVJr6a/14yTPgK6Fr4T0gdcEhoWnR3gIAaenuf7h1OrYYs1qNyoZA
         sA+cBH2RP+nXWOtlTRpehKXWQQZxbjZpZTtLYkmfPgGtxDDZErztnkihASjnjrcCgwPI
         KA9M7vbcW3l1MtqPxz+kzbtLYu0/zVYrpy3UvsOWQqhm5OBKiKx0XhVD1SU5B8Gj7Apl
         MhKg0JYXwAg82gk3NgASdpyzCBjg4BZmjTgCuhj5M5rlAE7xr2rska7uyICsjMgo3tHK
         mB6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d82si491185wmd.1.2017.10.07.11.10.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 11:10:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,490,1500933600"; 
   d="scan'208";a="240114607"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2017 20:10:22 +0200
Date: Sat, 7 Oct 2017 20:10:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] taging: rtl8723bs: remove ternary
 operators in assignmet statments
In-Reply-To: <1507386342-16293-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1710072007560.2134@hadrien>
References: <1507386342-16293-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 7 Oct 2017, Aastha Gupta wrote:

> Remove unnecessary ternary operators in assignments statments.
> Patch by Coccinelle:
>
> @@
> expression a, b, c;
> binary operator op = {==, !=, <=, >=, <, >, &&, ||};
> @@
>
> c =
> (
> - (a op b) ? true : false
> + a op b
> |
> - (a op b) ? false : true
> + a op b

This part of the rule does not look right to me.  Coccinelle lets you mess
things up on a grand scale too...

Looking further at the patch, there are also a few cases where you could
make the code that you are changing look a little nicer, by lining up
comments and respecting the 80 column boundary.

julia

> )
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_ioctl_set.c  | 4 ++--
>  drivers/staging/rtl8723bs/core/rtw_pwrctrl.c    | 4 ++--
>  drivers/staging/rtl8723bs/core/rtw_sta_mgt.c    | 4 ++--
>  drivers/staging/rtl8723bs/core/rtw_wlan_util.c  | 2 +-
>  drivers/staging/rtl8723bs/hal/hal_btcoex.c      | 6 +++---
>  drivers/staging/rtl8723bs/hal/hal_com.c         | 6 +++---
>  drivers/staging/rtl8723bs/hal/odm_CfoTracking.c | 2 +-
>  drivers/staging/rtl8723bs/hal/odm_HWConfig.c    | 2 +-
>  drivers/staging/rtl8723bs/hal/sdio_halinit.c    | 4 ++--
>  9 files changed, 17 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
> index d815a69..be6f4d9 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
> @@ -596,8 +596,8 @@ u8 rtw_set_802_11_add_wep(struct adapter *padapter, struct ndis_802_11_wep *wep)
>  	struct security_priv *psecuritypriv = &(padapter->securitypriv);
>  	u8 ret = _SUCCESS;
>
> -	bdefaultkey = (wep->KeyIndex & 0x40000000) > 0 ? false : true;   /* for ??? */
> -	btransmitkey = (wep->KeyIndex & 0x80000000) > 0 ? true  : false;	/* for ??? */
> +	bdefaultkey = (wep->KeyIndex & 0x40000000) > 0;   /* for ??? */
> +	btransmitkey = (wep->KeyIndex & 0x80000000) > 0;	/* for ??? */
>  	keyid = wep->KeyIndex & 0x3fffffff;
>
>  	if (keyid >= 4) {
> diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> index 820a061..7fc9f79 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> @@ -1154,7 +1154,7 @@ void rtw_init_pwrctrl_priv(struct adapter *padapter)
>
>  	pwrctrlpriv->LpsIdleCount = 0;
>  	pwrctrlpriv->power_mgnt = padapter->registrypriv.power_mgnt;/*  PS_MODE_MIN; */
> -	pwrctrlpriv->bLeisurePs = (PS_MODE_ACTIVE != pwrctrlpriv->power_mgnt)?true:false;
> +	pwrctrlpriv->bLeisurePs = PS_MODE_ACTIVE != pwrctrlpriv->power_mgnt;
>
>  	pwrctrlpriv->bFwCurrentInPSMode = false;
>
> @@ -1325,7 +1325,7 @@ int rtw_pm_set_lps(struct adapter *padapter, u8 mode)
>  				pwrctrlpriv->LpsIdleCount = 2;
>
>  			pwrctrlpriv->power_mgnt = mode;
> -			pwrctrlpriv->bLeisurePs = (PS_MODE_ACTIVE != pwrctrlpriv->power_mgnt)?true:false;
> +			pwrctrlpriv->bLeisurePs = PS_MODE_ACTIVE != pwrctrlpriv->power_mgnt;
>  		}
>  	} else
>  		ret = -EINVAL;
> diff --git a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
> index c6ebb9d..8387ebb 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
> @@ -630,10 +630,10 @@ u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
>
>
>  	if (pacl_list->mode == 1) /* accept unless in deny list */
> -		res = (match == true) ?  false:true;
> +		res = match == true;
>
>  	else if (pacl_list->mode == 2)/* deny unless in accept list */
> -		res = (match == true) ?  true:false;
> +		res = match == true;
>  	else
>  		 res = true;
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
> index a169534..d8bfc1a 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
> @@ -1946,7 +1946,7 @@ void process_addba_req(struct adapter *padapter, u8 *paddba_req, u8 *addr)
>  		preorder_ctrl->indicate_seq = 0xffff;
>  		#endif
>
> -		preorder_ctrl->enable = (pmlmeinfo->bAcceptAddbaReq == true) ? true : false;
> +		preorder_ctrl->enable = pmlmeinfo->bAcceptAddbaReq == true;
>  	}
>
>  }
> diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> index 86fee10..b556deb 100644
> --- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> +++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> @@ -463,7 +463,7 @@ static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
>  		break;
>
>  	case BTC_GET_BL_WIFI_UNDER_5G:
> -		*pu8 = (pHalData->CurrentBandType == 1) ? true : false;
> +		*pu8 = pHalData->CurrentBandType == 1;
>  		break;
>
>  	case BTC_GET_BL_WIFI_AP_MODE_ENABLE:
> @@ -471,7 +471,7 @@ static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
>  		break;
>
>  	case BTC_GET_BL_WIFI_ENABLE_ENCRYPTION:
> -		*pu8 = padapter->securitypriv.dot11PrivacyAlgrthm == 0 ? false : true;
> +		*pu8 = padapter->securitypriv.dot11PrivacyAlgrthm == 0;
>  		break;
>
>  	case BTC_GET_BL_WIFI_UNDER_B_MODE:
> @@ -1417,7 +1417,7 @@ u8 hal_btcoex_Initialize(struct adapter *padapter)
>
>  	memset(&GLBtCoexist, 0, sizeof(GLBtCoexist));
>  	ret1 = EXhalbtcoutsrc_InitlizeVariables((void *)padapter);
> -	ret2 = (ret1 == true) ? true : false;
> +	ret2 = ret1 == true;
>
>  	return ret2;
>  }
> diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
> index 03554a4..dec887a 100644
> --- a/drivers/staging/rtl8723bs/hal/hal_com.c
> +++ b/drivers/staging/rtl8723bs/hal/hal_com.c
> @@ -1623,7 +1623,7 @@ void rtw_get_raw_rssi_info(void *sel, struct adapter *padapter)
>  		psample_pkt_rssi->pwdball, psample_pkt_rssi->pwr_all
>  	);
>
> -	isCCKrate = (psample_pkt_rssi->data_rate <= DESC_RATE11M) ? true : false;
> +	isCCKrate = psample_pkt_rssi->data_rate <= DESC_RATE11M;
>
>  	if (isCCKrate)
>  		psample_pkt_rssi->mimo_singal_strength[0] = psample_pkt_rssi->pwdball;
> @@ -1656,7 +1656,7 @@ void rtw_dump_raw_rssi_info(struct adapter *padapter)
>  	DBG_871X("RxRate = %s, PWDBALL = %d(%%), rx_pwr_all = %d(dBm)\n",
>  			HDATA_RATE(psample_pkt_rssi->data_rate), psample_pkt_rssi->pwdball, psample_pkt_rssi->pwr_all);
>
> -	isCCKrate = (psample_pkt_rssi->data_rate <= DESC_RATE11M) ? true : false;
> +	isCCKrate = psample_pkt_rssi->data_rate <= DESC_RATE11M;
>
>  	if (isCCKrate)
>  		psample_pkt_rssi->mimo_singal_strength[0] = psample_pkt_rssi->pwdball;
> @@ -1684,7 +1684,7 @@ void rtw_store_phy_info(struct adapter *padapter, union recv_frame *prframe)
>  	struct rx_raw_rssi *psample_pkt_rssi = &padapter->recvpriv.raw_rssi_info;
>
>  	psample_pkt_rssi->data_rate = pattrib->data_rate;
> -	isCCKrate = (pattrib->data_rate <= DESC_RATE11M) ? true : false;
> +	isCCKrate = pattrib->data_rate <= DESC_RATE11M;
>
>  	psample_pkt_rssi->pwdball = pPhyInfo->RxPWDBAll;
>  	psample_pkt_rssi->pwr_all = pPhyInfo->RecvSignalPower;
> diff --git a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
> index 9cde6c6..71853e6 100644
> --- a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
> +++ b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
> @@ -23,7 +23,7 @@ static void odm_SetCrystalCap(void *pDM_VOID, u8 CrystalCap)
>  	struct adapter *Adapter = pDM_Odm->Adapter;
>  	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
>
> -	bEEPROMCheck = (pHalData->EEPROMVersion >= 0x01) ? true : false;
> +	bEEPROMCheck = pHalData->EEPROMVersion >= 0x01;
>
>  	if (pCfoTrack->CrystalCap == CrystalCap)
>  		return;
> diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
> index ba27001..8dd6da8 100644
> --- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
> +++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
> @@ -106,7 +106,7 @@ static void odm_RxPhyStatus92CSeries_Parsing(
>  	u8 LNA_idx, VGA_idx;
>  	PPHY_STATUS_RPT_8192CD_T pPhyStaRpt = (PPHY_STATUS_RPT_8192CD_T)pPhyStatus;
>
> -	isCCKrate = (pPktinfo->DataRate <= DESC_RATE11M) ? true : false;
> +	isCCKrate = pPktinfo->DataRate <= DESC_RATE11M;
>  	pPhyInfo->RxMIMOSignalQuality[ODM_RF_PATH_A] = -1;
>  	pPhyInfo->RxMIMOSignalQuality[ODM_RF_PATH_B] = -1;
>
> diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
> index 6dfb06a..d4d922c 100644
> --- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
> +++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
> @@ -1019,8 +1019,8 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
>
>  			rtw_btcoex_IQKNotify(padapter, true);
>
> -			restore_iqk_rst = (pwrpriv->bips_processing == true) ? true : false;
> -			b2Ant = pHalData->EEPROMBluetoothAntNum == Ant_x2 ? true : false;
> +			restore_iqk_rst = pwrpriv->bips_processing == true;
> +			b2Ant = pHalData->EEPROMBluetoothAntNum == Ant_x2;
>  			PHY_IQCalibrate_8723B(padapter, false, restore_iqk_rst, b2Ant, pHalData->ant_path);
>  			pHalData->odmpriv.RFCalibrateInfo.bIQKInitialized = true;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1507386342-16293-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

