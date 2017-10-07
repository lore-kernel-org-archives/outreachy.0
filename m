X-GM-THRID: 6474175078570393600
X-Received: by 10.176.5.201 with SMTP id e67mr1079722uae.85.1507400293516;
        Sat, 07 Oct 2017 11:18:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.188.207 with SMTP id m198ls358181vkf.21.gmail; Sat, 07 Oct
 2017 11:18:12 -0700 (PDT)
X-Received: by 10.176.0.203 with SMTP id 69mr1123514uaj.69.1507400292506;
        Sat, 07 Oct 2017 11:18:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507400292; cv=none;
        d=google.com; s=arc-20160816;
        b=RmHMvFF9or+pdnRmb4lIh573EuOdyi5G1AKcZ/aUzWj3LmfFlIGvBaPacbwZZl7oby
         vLzQVLoyFlRmZo7dQ+1kXoj1vjrl3oa7M7q7eLSZ2oXCOQ51fJnUDUKnwSr0hlsNrNLd
         y1x2RoYl0uRBEwLfqXiAfHyv1RnVfBMxwRCsWhlu8LKw3REa6YfWhvF0dJLVRYB78IyV
         f8DiXpRJjhH37lYm2knUqQh9+++L0PvmQ9mcOEJ2glytGJwhJFLGjfVLXdRk7GtIVEXU
         sASJ48e8lK1uCqhZE86O+mOJ4SBtKgvmjKQIfsnQHazqxYEuLF7h6uGLWqhVciGPttWO
         7zeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=VIYsvyzsCptd9fOHZ+Imn0T/tWQ+qC+XrntrQ0tMqXY=;
        b=EJ4kZaLiWyUyhub6GTi6F9HjxLV/1j42B+EjKyCiUe6p7C2RIB0l3qxpIa6PcJoh1Z
         +huOR8FpjAAOYr5bPs+t1ess/hdtl08hFVIswA6w07W50/uJjCKel2iwvA9pYYYXiU9a
         CuXet3bIirhuPlzTqucdAw2/Nss7Fnp245zIYpcwDnwOAvBMFlJKeA4YSBauMowZB/nq
         sighi+7Dc40F1P5oau6FDAZ5Ylei+hh63gUt98NxD5QvCF95HPtdCyA9tcNhwPlHymaY
         PFCxi+mCK1UKyib2hQg859MhiGQdnuMmlpVURq9lWC7T6vg0Q3niphDaewoGYh0Q+dPi
         Fm2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RTA75SVE;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id w187si228552vkb.4.2017.10.07.11.18.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 11:18:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RTA75SVE;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id b5so5032946vkf.1
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 11:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=VIYsvyzsCptd9fOHZ+Imn0T/tWQ+qC+XrntrQ0tMqXY=;
        b=RTA75SVEROd9AHqm/mg6//c+6lc5XG2rKU/7cqgDsmQVrpjTF/sa5r+YNeNtKxtJD6
         EBpt4eLugBzA6Z6AMhX9F0NSnetXrRSYNYeuH1zQFhJvCNyCrZL73NuIncoiC0l0yfUg
         5zzxyTBUkTOIvFDWj4ploFatZe6Mb7mHZ2YTH1rrYxLFVLhhdcGPt3vDysH/dOecoSk/
         OmrWdvqcldiU6tU/rW6SRctD3MwmyZUEyzTQxw83VJIp3vbXCNWDGtJ1+tm6Ps+0DeNs
         IY51QezNZR8ceJ2SppUNFw1madzhgnkj34hlaZ/8vcEsvD2xz9CyClpJ+hGwFUHJ/0sj
         1Upw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=VIYsvyzsCptd9fOHZ+Imn0T/tWQ+qC+XrntrQ0tMqXY=;
        b=i28zCayKhbGSuENfkyEUQcO2Mm90Wznf+JXymTEdeIt5CwUN0r4LgUsN+2iyOTZ78B
         LOSeq8C8xQS7R1abHpd1THx3Gj8A+WeQoUaBfSDMuN+bP3AI5gVnRQOXWWedyrn0UupU
         ePtfzYtTy1D7203NpR+IFASPbooWZRglMyWjNmGxu2jNA4FHWn52b6v2aG+m17+szZxP
         10H3ArccukOpMO69Gh/jkP/ECnPEi7v7DC9sQMeIQnQYNBGO71qJg4nBgFSXmhnTFi7l
         lTRTGsF1B5v5LEq7Pr9oe/ZXaM1/opDvikwDqMeMc7VLwBmwhAa23usUWpatTitM7K2Y
         Tn2w==
X-Gm-Message-State: AMCzsaXgwLuCArMQIwcTX+YcqzvSD4UQJBVdIlVAWvIOvw7vvWN9l4j0
	Xd23bAZ/O4stXZ3ge70do29RzDB3Syw3AfYTfIU=
X-Google-Smtp-Source: AOwi7QAS7kkDYj0lRBWbb6TfQHbn3znvG973S29L1Kxhw5bh5Tqkl/B9I0r/UB04OTXsqrIhO6xJR6ISncnqHSHpcbs=
X-Received: by 10.31.140.6 with SMTP id o6mr2765656vkd.182.1507400291850; Sat,
 07 Oct 2017 11:18:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.63.140 with HTTP; Sat, 7 Oct 2017 11:18:11 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1710072007560.2134@hadrien>
References: <1507386342-16293-1-git-send-email-aastha.gupta4104@gmail.com> <alpine.DEB.2.20.1710072007560.2134@hadrien>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Sat, 7 Oct 2017 23:48:11 +0530
Message-ID: <CAHXiS5_8WJ-twCm9ODss+vJzLSnJ22yz_Q0ej-4gZ1eSeS4ESA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] taging: rtl8723bs: remove ternary
 operators in assignmet statments
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On Sat, Oct 7, 2017 at 11:40 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 7 Oct 2017, Aastha Gupta wrote:
>
>> Remove unnecessary ternary operators in assignments statments.
>> Patch by Coccinelle:
>>
>> @@
>> expression a, b, c;
>> binary operator op = {==, !=, <=, >=, <, >, &&, ||};
>> @@
>>
>> c =
>> (
>> - (a op b) ? true : false
>> + a op b
>> |
>> - (a op b) ? false : true
>> + a op b
>
> This part of the rule does not look right to me.  Coccinelle lets you mess
> things up on a grand scale too...
>
> Looking further at the patch, there are also a few cases where you could
> make the code that you are changing look a little nicer, by lining up
> comments and respecting the 80 column boundary.
>
> julia

Yes you are right. It will assign true when false should be assigned.
I will correct it and send it.
>
>> )
>>
>> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
>> ---
>>  drivers/staging/rtl8723bs/core/rtw_ioctl_set.c  | 4 ++--
>>  drivers/staging/rtl8723bs/core/rtw_pwrctrl.c    | 4 ++--
>>  drivers/staging/rtl8723bs/core/rtw_sta_mgt.c    | 4 ++--
>>  drivers/staging/rtl8723bs/core/rtw_wlan_util.c  | 2 +-
>>  drivers/staging/rtl8723bs/hal/hal_btcoex.c      | 6 +++---
>>  drivers/staging/rtl8723bs/hal/hal_com.c         | 6 +++---
>>  drivers/staging/rtl8723bs/hal/odm_CfoTracking.c | 2 +-
>>  drivers/staging/rtl8723bs/hal/odm_HWConfig.c    | 2 +-
>>  drivers/staging/rtl8723bs/hal/sdio_halinit.c    | 4 ++--
>>  9 files changed, 17 insertions(+), 17 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
>> index d815a69..be6f4d9 100644
>> --- a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
>> +++ b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
>> @@ -596,8 +596,8 @@ u8 rtw_set_802_11_add_wep(struct adapter *padapter, struct ndis_802_11_wep *wep)
>>       struct security_priv *psecuritypriv = &(padapter->securitypriv);
>>       u8 ret = _SUCCESS;
>>
>> -     bdefaultkey = (wep->KeyIndex & 0x40000000) > 0 ? false : true;   /* for ??? */
>> -     btransmitkey = (wep->KeyIndex & 0x80000000) > 0 ? true  : false;        /* for ??? */
>> +     bdefaultkey = (wep->KeyIndex & 0x40000000) > 0;   /* for ??? */
>> +     btransmitkey = (wep->KeyIndex & 0x80000000) > 0;        /* for ??? */
>>       keyid = wep->KeyIndex & 0x3fffffff;
>>
>>       if (keyid >= 4) {
>> diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
>> index 820a061..7fc9f79 100644
>> --- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
>> +++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
>> @@ -1154,7 +1154,7 @@ void rtw_init_pwrctrl_priv(struct adapter *padapter)
>>
>>       pwrctrlpriv->LpsIdleCount = 0;
>>       pwrctrlpriv->power_mgnt = padapter->registrypriv.power_mgnt;/*  PS_MODE_MIN; */
>> -     pwrctrlpriv->bLeisurePs = (PS_MODE_ACTIVE != pwrctrlpriv->power_mgnt)?true:false;
>> +     pwrctrlpriv->bLeisurePs = PS_MODE_ACTIVE != pwrctrlpriv->power_mgnt;
>>
>>       pwrctrlpriv->bFwCurrentInPSMode = false;
>>
>> @@ -1325,7 +1325,7 @@ int rtw_pm_set_lps(struct adapter *padapter, u8 mode)
>>                               pwrctrlpriv->LpsIdleCount = 2;
>>
>>                       pwrctrlpriv->power_mgnt = mode;
>> -                     pwrctrlpriv->bLeisurePs = (PS_MODE_ACTIVE != pwrctrlpriv->power_mgnt)?true:false;
>> +                     pwrctrlpriv->bLeisurePs = PS_MODE_ACTIVE != pwrctrlpriv->power_mgnt;
>>               }
>>       } else
>>               ret = -EINVAL;
>> diff --git a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
>> index c6ebb9d..8387ebb 100644
>> --- a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
>> +++ b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
>> @@ -630,10 +630,10 @@ u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
>>
>>
>>       if (pacl_list->mode == 1) /* accept unless in deny list */
>> -             res = (match == true) ?  false:true;
>> +             res = match == true;
>>
>>       else if (pacl_list->mode == 2)/* deny unless in accept list */
>> -             res = (match == true) ?  true:false;
>> +             res = match == true;
>>       else
>>                res = true;
>>
>> diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
>> index a169534..d8bfc1a 100644
>> --- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
>> +++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
>> @@ -1946,7 +1946,7 @@ void process_addba_req(struct adapter *padapter, u8 *paddba_req, u8 *addr)
>>               preorder_ctrl->indicate_seq = 0xffff;
>>               #endif
>>
>> -             preorder_ctrl->enable = (pmlmeinfo->bAcceptAddbaReq == true) ? true : false;
>> +             preorder_ctrl->enable = pmlmeinfo->bAcceptAddbaReq == true;
>>       }
>>
>>  }
>> diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
>> index 86fee10..b556deb 100644
>> --- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
>> +++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
>> @@ -463,7 +463,7 @@ static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
>>               break;
>>
>>       case BTC_GET_BL_WIFI_UNDER_5G:
>> -             *pu8 = (pHalData->CurrentBandType == 1) ? true : false;
>> +             *pu8 = pHalData->CurrentBandType == 1;
>>               break;
>>
>>       case BTC_GET_BL_WIFI_AP_MODE_ENABLE:
>> @@ -471,7 +471,7 @@ static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
>>               break;
>>
>>       case BTC_GET_BL_WIFI_ENABLE_ENCRYPTION:
>> -             *pu8 = padapter->securitypriv.dot11PrivacyAlgrthm == 0 ? false : true;
>> +             *pu8 = padapter->securitypriv.dot11PrivacyAlgrthm == 0;
>>               break;
>>
>>       case BTC_GET_BL_WIFI_UNDER_B_MODE:
>> @@ -1417,7 +1417,7 @@ u8 hal_btcoex_Initialize(struct adapter *padapter)
>>
>>       memset(&GLBtCoexist, 0, sizeof(GLBtCoexist));
>>       ret1 = EXhalbtcoutsrc_InitlizeVariables((void *)padapter);
>> -     ret2 = (ret1 == true) ? true : false;
>> +     ret2 = ret1 == true;
>>
>>       return ret2;
>>  }
>> diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
>> index 03554a4..dec887a 100644
>> --- a/drivers/staging/rtl8723bs/hal/hal_com.c
>> +++ b/drivers/staging/rtl8723bs/hal/hal_com.c
>> @@ -1623,7 +1623,7 @@ void rtw_get_raw_rssi_info(void *sel, struct adapter *padapter)
>>               psample_pkt_rssi->pwdball, psample_pkt_rssi->pwr_all
>>       );
>>
>> -     isCCKrate = (psample_pkt_rssi->data_rate <= DESC_RATE11M) ? true : false;
>> +     isCCKrate = psample_pkt_rssi->data_rate <= DESC_RATE11M;
>>
>>       if (isCCKrate)
>>               psample_pkt_rssi->mimo_singal_strength[0] = psample_pkt_rssi->pwdball;
>> @@ -1656,7 +1656,7 @@ void rtw_dump_raw_rssi_info(struct adapter *padapter)
>>       DBG_871X("RxRate = %s, PWDBALL = %d(%%), rx_pwr_all = %d(dBm)\n",
>>                       HDATA_RATE(psample_pkt_rssi->data_rate), psample_pkt_rssi->pwdball, psample_pkt_rssi->pwr_all);
>>
>> -     isCCKrate = (psample_pkt_rssi->data_rate <= DESC_RATE11M) ? true : false;
>> +     isCCKrate = psample_pkt_rssi->data_rate <= DESC_RATE11M;
>>
>>       if (isCCKrate)
>>               psample_pkt_rssi->mimo_singal_strength[0] = psample_pkt_rssi->pwdball;
>> @@ -1684,7 +1684,7 @@ void rtw_store_phy_info(struct adapter *padapter, union recv_frame *prframe)
>>       struct rx_raw_rssi *psample_pkt_rssi = &padapter->recvpriv.raw_rssi_info;
>>
>>       psample_pkt_rssi->data_rate = pattrib->data_rate;
>> -     isCCKrate = (pattrib->data_rate <= DESC_RATE11M) ? true : false;
>> +     isCCKrate = pattrib->data_rate <= DESC_RATE11M;
>>
>>       psample_pkt_rssi->pwdball = pPhyInfo->RxPWDBAll;
>>       psample_pkt_rssi->pwr_all = pPhyInfo->RecvSignalPower;
>> diff --git a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
>> index 9cde6c6..71853e6 100644
>> --- a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
>> +++ b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
>> @@ -23,7 +23,7 @@ static void odm_SetCrystalCap(void *pDM_VOID, u8 CrystalCap)
>>       struct adapter *Adapter = pDM_Odm->Adapter;
>>       struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
>>
>> -     bEEPROMCheck = (pHalData->EEPROMVersion >= 0x01) ? true : false;
>> +     bEEPROMCheck = pHalData->EEPROMVersion >= 0x01;
>>
>>       if (pCfoTrack->CrystalCap == CrystalCap)
>>               return;
>> diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
>> index ba27001..8dd6da8 100644
>> --- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
>> +++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
>> @@ -106,7 +106,7 @@ static void odm_RxPhyStatus92CSeries_Parsing(
>>       u8 LNA_idx, VGA_idx;
>>       PPHY_STATUS_RPT_8192CD_T pPhyStaRpt = (PPHY_STATUS_RPT_8192CD_T)pPhyStatus;
>>
>> -     isCCKrate = (pPktinfo->DataRate <= DESC_RATE11M) ? true : false;
>> +     isCCKrate = pPktinfo->DataRate <= DESC_RATE11M;
>>       pPhyInfo->RxMIMOSignalQuality[ODM_RF_PATH_A] = -1;
>>       pPhyInfo->RxMIMOSignalQuality[ODM_RF_PATH_B] = -1;
>>
>> diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
>> index 6dfb06a..d4d922c 100644
>> --- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
>> +++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
>> @@ -1019,8 +1019,8 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
>>
>>                       rtw_btcoex_IQKNotify(padapter, true);
>>
>> -                     restore_iqk_rst = (pwrpriv->bips_processing == true) ? true : false;
>> -                     b2Ant = pHalData->EEPROMBluetoothAntNum == Ant_x2 ? true : false;
>> +                     restore_iqk_rst = pwrpriv->bips_processing == true;
>> +                     b2Ant = pHalData->EEPROMBluetoothAntNum == Ant_x2;
>>                       PHY_IQCalibrate_8723B(padapter, false, restore_iqk_rst, b2Ant, pHalData->ant_path);
>>                       pHalData->odmpriv.RFCalibrateInfo.bIQKInitialized = true;
>>
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1507386342-16293-1-git-send-email-aastha.gupta4104%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

