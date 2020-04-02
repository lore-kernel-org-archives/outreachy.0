X-GM-THRID: 6809913191851622400
X-Received: by 2002:a2e:700e:: with SMTP id l14mr2892331ljc.51.1585855220777;
        Thu, 02 Apr 2020 12:20:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:a49b:: with SMTP id h27ls799869lji.2.gmail; Thu, 02 Apr
 2020 12:20:19 -0700 (PDT)
X-Google-Smtp-Source: APiQypJVCYkmjAu1byla4Cm9Xn9CSLPWXChDSvlovEv/YoDQUuWaWkI5UEew451mMeG77toOSbeI
X-Received: by 2002:a2e:a548:: with SMTP id e8mr2854244ljn.151.1585855219139;
        Thu, 02 Apr 2020 12:20:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585855219; cv=none;
        d=google.com; s=arc-20160816;
        b=OYUmAawFZcrr/JNocolcqNhK/0GJVC27ZgszY/6Bajwbs68aEC4leat35d9mXS1tpU
         UhEYb8pHyH4uXZ+USY1sIpKrQSvkqRMJv3lF+YGrGgsQVtCKuuqSA4iJGfdgPacp8bQJ
         S/gG4S3Poq3JBmevPm3Bu+CY5sHRY0etM87xfvCwn8oq05HmZwOUQg+MSPjnEp2UG7b4
         ebEYEC6rYCIGiOd/wqJrWX09UQQtZ8zNGFpWtW0Fg7e1vXrpC9692onH4l6uYZ760AQk
         VEGluIshI0YQ+ilKQY15NuK/MIb78rfLZh0JZ8dKKUPe3vXzh240SLHF3YrVIsOICFd3
         mRbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Q+sSjBE00dH5KqtDEveJhEd+EeZAhosx/OQ5G2UISwc=;
        b=fUYN0YwSJ18qVnZYvZbJf6PNhVHqo3cfCez28Ia239jv2N4GFYUg5sC7R3jOQMjUjg
         rAn02PHbeharkHYDyolSYVXJosoi/HzP91Sewl6Ebxc0E/fUwkn1kqp0UMWqRDbpXqZg
         xQr4wJhWQ/XSBclnluZ/uDjFJe8G4wCA88WNnpPp+vK5Sjw/GuvNhrLVQuhA3JaH+eKG
         QYWGMcX/ct3JtBuVD1bYjLIANhj0VQTum8wPEnf4Hri+YY2sqwygxnOFxr+gmL89s9p4
         PQA31TMezDQUI6IYn+hQqWPKCrq3pvk87OtNf9b9wpzbXUyvEN9NGLsuiH+wBBfgTNra
         HOCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u10si358055lfq.1.2020.04.02.12.20.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 12:20:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,336,1580770800"; 
   d="scan'208";a="443583144"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Apr 2020 21:20:18 +0200
Date: Thu, 2 Apr 2020 21:20:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Soumyajit Deb <debsoumyajit100@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    sbrivio@redhat.com, julia.lawall@inria.fr, Larry.Finger@lwfinger.net
Subject: Re: [Outreachy] [PATCH v3 3/3] staging: rtl8188eu: Line over 80
 characters
In-Reply-To: <20200402182621.61694-4-debsoumyajit100@gmail.com>
Message-ID: <alpine.DEB.2.21.2004022117590.3014@hadrien>
References: <20200402182621.61694-1-debsoumyajit100@gmail.com> <20200402182621.61694-4-debsoumyajit100@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 2 Apr 2020, Soumyajit Deb wrote:

> Break various lines into multiple lines to respect 80 character width
> limit.
> Reported by checkpatch.pl
>
> Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_ap.c | 67 +++++++++++++++++--------
>  1 file changed, 45 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> index bd9a59dd3dd9..c88557c07211 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> @@ -264,8 +264,10 @@ void expire_timeout_chk(struct adapter *padapter)
>  			list_del_init(&psta->asoc_list);
>  			pstapriv->asoc_list_cnt--;
>
> -			DBG_88E("asoc expire %pM, state = 0x%x\n", (psta->hwaddr), psta->state);
> -			updated = ap_free_sta(padapter, psta, true, WLAN_REASON_DEAUTH_LEAVING);
> +			DBG_88E("asoc expire %pM, state = 0x%x\n",
> +				psta->hwaddr, psta->state);

You did something else here, which is to drop some unnecessary
parentheses.

> +			updated = ap_free_sta(padapter, psta, true,
> +					      WLAN_REASON_DEAUTH_LEAVING);
>  		} else {
>  			/* TODO: Aging mechanism to digest frames in sleep_q to avoid running out of xmitframe */
>  			if (psta->sleepq_len > (NR_XMITFRAME / pstapriv->asoc_list_cnt) &&
> @@ -294,16 +296,21 @@ void expire_timeout_chk(struct adapter *padapter)
>  		for (i = 0; i < chk_alive_num; i++) {
>  			int ret = _FAIL;
>
> -			psta = rtw_get_stainfo_by_offset(pstapriv, chk_alive_list[i]);
> +			psta = rtw_get_stainfo_by_offset(pstapriv,
> +							 chk_alive_list[i]);
>
> -			if (psta->state & WIFI_SLEEP_STATE)
> -				ret = issue_nulldata(padapter, psta->hwaddr, 0, 1, 50);
> -			else
> -				ret = issue_nulldata(padapter, psta->hwaddr, 0, 3, 50);
> +			if (psta->state & WIFI_SLEEP_STATE) {
> +				ret = issue_nulldata(padapter, psta->hwaddr, 0,
> +						     1, 50);
> +			} else {
> +				ret = issue_nulldata(padapter, psta->hwaddr, 0,
> +						     3, 50);

It might look nicer to put all the integers on the same line.

> +			}
>
>  			psta->keep_alive_trycnt++;
>  			if (ret == _SUCCESS) {
> -				DBG_88E("asoc check, sta(%pM) is alive\n", (psta->hwaddr));
> +				DBG_88E("asoc check, sta(%pM) is alive\n",
> +					psta->hwaddr);

Again, parentheses dropped here as well.

julia

>  				psta->expire_to = pstapriv->expire_to;
>  				psta->keep_alive_trycnt = 0;
>  				continue;
> @@ -315,11 +322,13 @@ void expire_timeout_chk(struct adapter *padapter)
>
>  			psta->keep_alive_trycnt = 0;
>
> -			DBG_88E("asoc expire %pM, state = 0x%x\n", psta->hwaddr, psta->state);
> +			DBG_88E("asoc expire %pM, state = 0x%x\n",
> +				psta->hwaddr, psta->state);
>  			spin_lock_bh(&pstapriv->asoc_list_lock);
>  			list_del_init(&psta->asoc_list);
>  			pstapriv->asoc_list_cnt--;
> -			updated = ap_free_sta(padapter, psta, true, WLAN_REASON_DEAUTH_LEAVING);
> +			updated = ap_free_sta(padapter, psta, true,
> +					      WLAN_REASON_DEAUTH_LEAVING);
>  			spin_unlock_bh(&pstapriv->asoc_list_lock);
>  		}
>
> @@ -431,7 +440,8 @@ static void update_bmc_sta(struct adapter *padapter)
>  		supportRateNum = rtw_get_rateset_len((u8 *)&pcur_network->SupportedRates);
>  		network_type = rtw_check_network_type((u8 *)&pcur_network->SupportedRates);
>
> -		memcpy(psta->bssrateset, &pcur_network->SupportedRates, supportRateNum);
> +		memcpy(psta->bssrateset, &pcur_network->SupportedRates,
> +		       supportRateNum);
>  		psta->bssratelen = supportRateNum;
>
>  		/* b/g mode ra_bitmap */
> @@ -445,7 +455,8 @@ static void update_bmc_sta(struct adapter *padapter)
>  		tx_ra_bitmap = 0xf;
>
>  		raid = networktype_to_raid(network_type);
> -		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) & 0x3f;
> +		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) &
> +			    0x3f;
>
>  		/* ap mode */
>  		rtw_hal_set_odm_var(padapter, HAL_ODM_STA_INFO, psta, true);
> @@ -456,7 +467,8 @@ static void update_bmc_sta(struct adapter *padapter)
>  			arg = psta->mac_id & 0x1f;
>  			arg |= BIT(7);
>  			tx_ra_bitmap |= ((raid << 28) & 0xf0000000);
> -			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__, tx_ra_bitmap, arg);
> +			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__,
> +				tx_ra_bitmap, arg);
>
>  			/* bitmap[0:27] = tx_rate_bitmap */
>  			/* bitmap[28:31]= Rate Adaptive id */
> @@ -647,7 +659,8 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
>  	rtw_hal_set_hwreg(padapter, HW_VAR_SEC_CFG, (u8 *)(&val8));
>
>  	/* Beacon Control related register */
> -	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL, (u8 *)(&bcn_interval));
> +	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL,
> +			  (u8 *)(&bcn_interval));
>
>  	UpdateBrateTbl(padapter, pnetwork->SupportedRates);
>  	rtw_hal_set_hwreg(padapter, HW_VAR_BASIC_RATE, pnetwork->SupportedRates);
> @@ -657,7 +670,10 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
>  		Switch_DM_Func(padapter, DYNAMIC_ALL_FUNC_ENABLE, true);
>  	}
>  	/* set channel, bwmode */
> -	p = rtw_get_ie(pnetwork->ies + sizeof(struct ndis_802_11_fixed_ie), _HT_ADD_INFO_IE_, &ie_len, pnetwork->ie_length - sizeof(struct ndis_802_11_fixed_ie));
> +	p = rtw_get_ie(pnetwork->ies + sizeof(struct ndis_802_11_fixed_ie),
> +		       _HT_ADD_INFO_IE_, &ie_len,
> +		       pnetwork->ie_length -
> +		       sizeof(struct ndis_802_11_fixed_ie));
>  	if (p && ie_len) {
>  		pht_info = (struct HT_info_element *)(p + 2);
>
> @@ -682,7 +698,8 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
>  	 */
>  	set_channel_bwmode(padapter, cur_channel, cur_ch_offset, cur_bwmode);
>
> -	DBG_88E("CH =%d, BW =%d, offset =%d\n", cur_channel, cur_bwmode, cur_ch_offset);
> +	DBG_88E("CH =%d, BW =%d, offset =%d\n", cur_channel, cur_bwmode,
> +		cur_ch_offset);
>
>  	/*  */
>  	pmlmeext->cur_channel = cur_channel;
> @@ -771,7 +788,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
>  	cap = get_unaligned_le16(ie);
>
>  	/* SSID */
> -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SSID_IE_, &ie_len, pbss_network->ie_length - _BEACON_IE_OFFSET_);
> +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SSID_IE_, &ie_len,
> +		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
>  	if (p && ie_len > 0) {
>  		memset(&pbss_network->ssid, 0, sizeof(struct ndis_802_11_ssid));
>  		memcpy(pbss_network->ssid.ssid, p + 2, ie_len);
> @@ -781,7 +799,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
>  	/* channel */
>  	channel = 0;
>  	pbss_network->Configuration.Length = 0;
> -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _DSSET_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _DSSET_IE_, &ie_len,
> +		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
>  	if (p && ie_len > 0)
>  		channel = *(p + 2);
>
> @@ -789,14 +808,16 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
>
>  	memset(supportRate, 0, NDIS_802_11_LENGTH_RATES_EX);
>  	/*  get supported rates */
> -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SUPPORTEDRATES_IE_, &ie_len, pbss_network->ie_length - _BEACON_IE_OFFSET_);
> +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SUPPORTEDRATES_IE_, &ie_len,
> +		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
>  	if (p) {
>  		memcpy(supportRate, p + 2, ie_len);
>  		supportRateNum = ie_len;
>  	}
>
>  	/* get ext_supported rates */
> -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _EXT_SUPPORTEDRATES_IE_, &ie_len, pbss_network->ie_length - _BEACON_IE_OFFSET_);
> +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _EXT_SUPPORTEDRATES_IE_,
> +		       &ie_len, pbss_network->ie_length - _BEACON_IE_OFFSET_);
>  	if (p) {
>  		memcpy(supportRate + supportRateNum, p + 2, ie_len);
>  		supportRateNum += ie_len;
> @@ -807,7 +828,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
>  	rtw_set_supported_rate(pbss_network->SupportedRates, network_type);
>
>  	/* parsing ERP_IE */
> -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _ERPINFO_IE_, &ie_len, pbss_network->ie_length - _BEACON_IE_OFFSET_);
> +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _ERPINFO_IE_, &ie_len,
> +		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
>  	if (p && ie_len > 0)
>  		ERP_IE_handler(padapter, (struct ndis_802_11_var_ie *)p);
>
> @@ -824,7 +846,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
>  	pairwise_cipher = 0;
>  	psecuritypriv->wpa2_group_cipher = _NO_PRIVACY_;
>  	psecuritypriv->wpa2_pairwise_cipher = _NO_PRIVACY_;
> -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len, pbss_network->ie_length - _BEACON_IE_OFFSET_);
> +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len,
> +		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
>  	if (p && ie_len > 0) {
>  		if (rtw_parse_wpa2_ie(p, ie_len + 2, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS) {
>  			psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
> --
> 2.17.1
>
>

