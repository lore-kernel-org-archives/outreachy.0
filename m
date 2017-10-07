X-GM-THRID: 6474243708283781120
X-Received: by 10.28.136.12 with SMTP id k12mr682875wmd.10.1507405624209;
        Sat, 07 Oct 2017 12:47:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.161.79 with SMTP id r15ls316159wrr.9.gmail; Sat, 07 Oct
 2017 12:47:03 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QARz334kTNkIDgDILhgedXawTSDATxOighUpxqFoWXARmUj3oWcOYjquDPB6XmCz04L4EWt
X-Received: by 10.28.63.130 with SMTP id m124mr659720wma.20.1507405623211;
        Sat, 07 Oct 2017 12:47:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507405623; cv=none;
        d=google.com; s=arc-20160816;
        b=BPOC4dbZOon2YopoUpSdvaAshHH3kMeosJrFIRjSFx73zpc3nD7Wl2OBPVtdUiVXbP
         8A1YGigGadoiK8mjWtzEIYzs3E3/1BBAvUjwXeO30bzTfV63b0j+JL5eMNHEKukH9zhM
         09l1ZkhU3a1qjSQdBwBMev6maWBDIEA0gD6XCH/p3LYyf6x5NIyxaQP2P8Y0gkUOE4Lz
         pmQYbPCoa+BVbXs6ZWPWCijjjxeZ1jdrrG0LbKZsrbXyihyGEqreQOX4xTpPoloo33+n
         7OqEW3FDxMzjRkZWXNmKya7tzBmk1PejrThjCtpCiBWD31/+LvX7WnH1llqIJ9+xnMzy
         0wjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=5fuZn1/kWPF9jLE9dngxdgvfimsYJ4++ffd4SW/hVZo=;
        b=RGIggl28dGWw+7jSGFShnlSL40VfSoxpyty30wERfyHhuvPClxXfaxxnuuAEXy15fY
         OOYkoy1ur/zb5aew/IeVw0ERyjxyVLMQiGKaOZxqWwk1iHr5DvKkGUTTP/a3DmnsyeWB
         XsIsyAIAmodt30X2cP3oQtpGb0ulE+Te/5xmAp+Zm7e38SVixF7zBFa9nYDMApHmlwr6
         wvUefGnfHW6gW0HVMX7G2x+A1EFHasxzU14MdsGsEERTTREKZ9VR6/updutg1FjFWBss
         qYTOM80WC5ZvPpGWhUZD1IKy3Lwz5WyTyFo/6Hs+FdV2mRjZxeL5UHiKNAMGgXSGkQrc
         JDMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 200si705050wmj.0.2017.10.07.12.47.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 12:47:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,490,1500933600"; 
   d="scan'208";a="294921568"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2017 21:47:02 +0200
Date: Sat, 7 Oct 2017 21:47:02 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: remove ternary
 operators in assignmet statments
In-Reply-To: <1507402322-28082-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1710072124370.2071@hadrien>
References: <1507402322-28082-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 8 Oct 2017, Aastha Gupta wrote:

> Remove unnecessary ternary operators in assignments statments.
>
> This patch is with the help of following Coccinelle script:
>
> @@
> expression a, b, c;
> binary operator op = {==, !=, <=, >=, <, >, &&, ||};
> @@
>
> c =
> - (a op b) ? true : false
> + a op b
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
> Changes in v2:
> 	- removed error in Coccinelle script
> 	- corrected checkpatch.pl warnings for the patch
>
>  drivers/staging/rtl8723bs/core/rtw_ioctl_set.c  | 2 +-
>  drivers/staging/rtl8723bs/core/rtw_pwrctrl.c    | 5 +++--
>  drivers/staging/rtl8723bs/core/rtw_sta_mgt.c    | 2 +-
>  drivers/staging/rtl8723bs/core/rtw_wlan_util.c  | 2 +-
>  drivers/staging/rtl8723bs/hal/hal_btcoex.c      | 4 ++--
>  drivers/staging/rtl8723bs/hal/hal_com.c         | 6 +++---
>  drivers/staging/rtl8723bs/hal/odm_CfoTracking.c | 2 +-
>  drivers/staging/rtl8723bs/hal/odm_HWConfig.c    | 2 +-
>  drivers/staging/rtl8723bs/hal/sdio_halinit.c    | 4 ++--
>  9 files changed, 15 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
> index d815a69..1dd0b51 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
> @@ -597,7 +597,7 @@ u8 rtw_set_802_11_add_wep(struct adapter *padapter, struct ndis_802_11_wep *wep)
>  	u8 ret = _SUCCESS;
>
>  	bdefaultkey = (wep->KeyIndex & 0x40000000) > 0 ? false : true;   /* for ??? */
> -	btransmitkey = (wep->KeyIndex & 0x80000000) > 0 ? true  : false;	/* for ??? */
> +	btransmitkey = (wep->KeyIndex & 0x80000000) > 0;	/* for ??? */

As the comments suggest, it seems that these two operations are just dead
code.  The values of these variables are not used subsequently.  Maybe
they could just be dropped.

An alternative would be to make these variables booleans, in which case
their definitions could be !(wep->KeyIndex & 0x40000000) and wep->KeyIndex
& 0x80000000, respectively, but since the values are not used there
doesn't seem to be much point.

>  	keyid = wep->KeyIndex & 0x3fffffff;
>
>  	if (keyid >= 4) {
> diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> index 820a061..4cd9798e 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> @@ -1154,7 +1154,7 @@ void rtw_init_pwrctrl_priv(struct adapter *padapter)
>
>  	pwrctrlpriv->LpsIdleCount = 0;
>  	pwrctrlpriv->power_mgnt = padapter->registrypriv.power_mgnt;/*  PS_MODE_MIN; */
> -	pwrctrlpriv->bLeisurePs = (PS_MODE_ACTIVE != pwrctrlpriv->power_mgnt)?true:false;
> +	pwrctrlpriv->bLeisurePs = pwrctrlpriv->power_mgnt != PS_MODE_ACTIVE;
>
>  	pwrctrlpriv->bFwCurrentInPSMode = false;
>
> @@ -1325,7 +1325,8 @@ int rtw_pm_set_lps(struct adapter *padapter, u8 mode)
>  				pwrctrlpriv->LpsIdleCount = 2;
>
>  			pwrctrlpriv->power_mgnt = mode;
> -			pwrctrlpriv->bLeisurePs = (PS_MODE_ACTIVE != pwrctrlpriv->power_mgnt)?true:false;
> +			pwrctrlpriv->bLeisurePs =
> +				pwrctrlpriv->power_mgnt != PS_MODE_ACTIVE;
>  		}
>  	} else
>  		ret = -EINVAL;
> diff --git a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
> index c6ebb9d..958edfb 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
> @@ -633,7 +633,7 @@ u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
>  		res = (match == true) ?  false:true;

This is just res = !match

>
>  	else if (pacl_list->mode == 2)/* deny unless in accept list */
> -		res = (match == true) ?  true:false;
> +		res = match == true;

This is just res = match.  Match is only every true or false.  It would be
better to make its type bool rather than u8.

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

The bAcceptAddbaReq field has type bool, so there is no need for the ==
true either.  Drifting a bit further afield, bAcceptAddbaReq uses camel
case and encodes the type in the variable name (the initial b), neither of
which is wanted for the Linux kernel.  Actually as structure with the same
name has been fixed in a related driver, and the same fix could be done
here.

>  	}
>
>  }
> diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> index 86fee10..25bdbf1 100644
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
> @@ -1417,7 +1417,7 @@ u8 hal_btcoex_Initialize(struct adapter *padapter)
>
>  	memset(&GLBtCoexist, 0, sizeof(GLBtCoexist));
>  	ret1 = EXhalbtcoutsrc_InitlizeVariables((void *)padapter);
> -	ret2 = (ret1 == true) ? true : false;
> +	ret2 = ret1 == true;
>
>  	return ret2;

The above appears to be the same as

return EXhalbtcoutsrc_InitlizeVariables((void *)padapter);

with all of the subsequent lines deleted.  Indeed
EXhalbtcoutsrc_InitlizeVariables also only returns true.

[...] (a bunch of cases that look ok)

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

Check whether the == true is really necessary, ie whether the
bips_processing has boolean type or is only assigned to true or false
values.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1507402322-28082-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

