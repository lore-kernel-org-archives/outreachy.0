X-GM-THRID: 6809913191851622400
X-Received: by 2002:adf:f6c8:: with SMTP id y8mr22141866wrp.403.1585665348668;
        Tue, 31 Mar 2020 07:35:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4e07:: with SMTP id g7ls1553236wmh.0.canary-gmail; Tue,
 31 Mar 2020 07:35:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv0TCwSFW+bRGP2lC9nprrc5Gy5nITi0hFt8kXqRfM4Tu1+BiDh9SYsk1Ddaq9zp8y6wzcH
X-Received: by 2002:a05:600c:24a:: with SMTP id 10mr3771128wmj.98.1585665347309;
        Tue, 31 Mar 2020 07:35:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585665347; cv=none;
        d=google.com; s=arc-20160816;
        b=Dm8d1JUutBX7GghggfA+RGxek4Mln4mrBm0RLw3Mmb0XcP9h/gj8l1IRSkc4k5oavJ
         mlv5ld6E/zXpqVN3T2zBRTXPOy5CuoHSoldBr8Rg1Cb5VOwAveGEtPcFxjefvtJXWOnw
         4mKVnIDyQIfNj2j/H31/QEHYKP6rQQBc0Lt+RJhK4b9RniVIokOaozJnR6BI/Q4TpkTH
         BYuE70AqbFLuQsu+peoBa/6iOFMZZ1LOqnG5ar+TaNTSHVArjwUlNx4tWg68uXzG2wzi
         bRKj7ryaaE13zPEEsPUf9tCv0lnyU8ZFGrJFS45uTCYooae/GJaPO5UZTjnhcl4SvMdb
         dMeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=gu7ujXvQwDUeLXquuxO1Kjt8DeubFTK9GK2C6UBjyzk=;
        b=fWSfyH9Vk1V0ctB+++YT95wq36IBm118MVGNlpRsPc5aFofE0qrTlmyGLFIsHUwGT0
         eq+if98BAN7Ya6Bee0yKscXcLiDDDO+WtOHbds6NF3XPIA9CGfLNyEPl80JXDsdP05gb
         IW0qrhcVDwU7rXv2OKHp8A0mQn0FR7LAubCapDe4w83todR+FP0z7QyH/gTmk2u1uEPF
         dMGfEIqb5cBtlQhFLKzTtKbEQUgsjhOFJS4u9eBND0V2ljFjKDZEGPSPqOTi7AOdNuZW
         oXd/9YdwN1A9+IBwVZwMSfo8tbkBlPNaPLABcIofSAa84jpiXV0fe5fQHi4yD1yj65xE
         1cxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o125si144665wme.4.2020.03.31.07.35.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2020 07:35:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,328,1580770800"; 
   d="scan'208";a="344477430"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Mar 2020 16:35:46 +0200
Date: Tue, 31 Mar 2020 16:35:46 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Soumyajit Deb <debsoumyajit100@gmail.com>
cc: Stefano Brivio <sbrivio@redhat.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy] [PATCH 2/2] staging: rtl8188eu:
 Line over 80 characters
In-Reply-To: <20200331143356.GA12680@ubuntu>
Message-ID: <alpine.DEB.2.21.2003311635180.3188@hadrien>
References: <20200330082036.12928-1-debsoumyajit100@gmail.com> <20200330082036.12928-3-debsoumyajit100@gmail.com> <20200330201701.719b8c0f@elisabeth> <20200331143356.GA12680@ubuntu>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 31 Mar 2020, Soumyajit Deb wrote:

> On Mon, Mar 30, 2020 at 08:17:01PM +0200, Stefano Brivio wrote:
> > On Mon, 30 Mar 2020 13:50:36 +0530
> > Soumyajit Deb <debsoumyajit100@gmail.com> wrote:
> >
> > > Break various lines into multiple lines to respect the 80 character
> > > width limit.
> > > Reported by checkpatch.pl
> > >
> > > Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
> > > ---
> > >  drivers/staging/rtl8188eu/core/rtw_ap.c | 62 +++++++++++++++++--------
> > >  1 file changed, 42 insertions(+), 20 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> > > index 5b2b4d1d56f6..94cfd45e3eaa 100644
> > > --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> > > +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> > > @@ -264,8 +264,10 @@ void expire_timeout_chk(struct adapter *padapter)
> > >  			list_del_init(&psta->asoc_list);
> > >  			pstapriv->asoc_list_cnt--;
> > >
> > > -			DBG_88E("asoc expire %pM, state = 0x%x\n", (psta->hwaddr), psta->state);
> > > -			updated = ap_free_sta(padapter, psta, true, WLAN_REASON_DEAUTH_LEAVING);
> > > +			DBG_88E("asoc expire %pM, state = 0x%x\n",
> > > +				(psta->hwaddr), psta->state);
> > > +			updated = ap_free_sta(padapter, psta, true,
> > > +					      WLAN_REASON_DEAUTH_LEAVING);
> > >  		} else {
> > >  			/* TODO: Aging mechanism to digest frames in sleep_q to avoid running out of xmitframe */
> > >  			if (psta->sleepq_len > (NR_XMITFRAME / pstapriv->asoc_list_cnt) &&
> > > @@ -294,16 +296,20 @@ void expire_timeout_chk(struct adapter *padapter)
> > >  		for (i = 0; i < chk_alive_num; i++) {
> > >  			int ret = _FAIL;
> > >
> > > -			psta = rtw_get_stainfo_by_offset(pstapriv, chk_alive_list[i]);
> > > +			psta = rtw_get_stainfo_by_offset(pstapriv,
> > > +							 chk_alive_list[i]);
> > >
> > >  			if (psta->state & WIFI_SLEEP_STATE)
> > > -				ret = issue_nulldata(padapter, psta->hwaddr, 0, 1, 50);
> > > +				ret = issue_nulldata(padapter, psta->hwaddr, 0,
> > > +						     1, 50);
> > >  			else
> > > -				ret = issue_nulldata(padapter, psta->hwaddr, 0, 3, 50);
> > > +				ret = issue_nulldata(padapter, psta->hwaddr, 0,
> > > +						     3, 50);
> >
> > For both clauses, here, you need curly brackets, checkpatch.pl should
> > report. Not because they are functionally needed, rather because they
> > are visually helpful to group the statements and avoid that a second
> > statement is inadvertently added without curly brackets.
> >
>
> Okay, yes I will add the curly brackets to the clauses and add them as
> new patches.
>
> Should I add this new patch to the v2 of this patchset or should I send
> as a seperate new patch?

If you make multiple changes in one file, they have to be in a series so
Greg knows the order in which to apply them.

julia

>
>
>
> > >
> > >  			psta->keep_alive_trycnt++;
> > >  			if (ret == _SUCCESS) {
> > > -				DBG_88E("asoc check, sta(%pM) is alive\n", (psta->hwaddr));
> > > +				DBG_88E("asoc check, sta(%pM) is alive\n",
> > > +					(psta->hwaddr));
> >
> > Further cleanup (unrelated with this patch): excess parentheses.
> >
> > >  				psta->expire_to = pstapriv->expire_to;
> > >  				psta->keep_alive_trycnt = 0;
> > >  				continue;
> > > @@ -315,11 +321,13 @@ void expire_timeout_chk(struct adapter *padapter)
> > >
> > >  			psta->keep_alive_trycnt = 0;
> > >
> > > -			DBG_88E("asoc expire %pM, state = 0x%x\n", (psta->hwaddr), psta->state);
> > > +			DBG_88E("asoc expire %pM, state = 0x%x\n",
> > > +				(psta->hwaddr), psta->state);
> > >  			spin_lock_bh(&pstapriv->asoc_list_lock);
> > >  			list_del_init(&psta->asoc_list);
> > >  			pstapriv->asoc_list_cnt--;
> > > -			updated = ap_free_sta(padapter, psta, true, WLAN_REASON_DEAUTH_LEAVING);
> > > +			updated = ap_free_sta(padapter, psta, true,
> > > +					      WLAN_REASON_DEAUTH_LEAVING);
> > >  			spin_unlock_bh(&pstapriv->asoc_list_lock);
> > >  		}
> > >
> > > @@ -431,7 +439,8 @@ static void update_bmc_sta(struct adapter *padapter)
> > >  		supportRateNum = rtw_get_rateset_len((u8 *)&pcur_network->SupportedRates);
> > >  		network_type = rtw_check_network_type((u8 *)&pcur_network->SupportedRates);
> > >
> > > -		memcpy(psta->bssrateset, &pcur_network->SupportedRates, supportRateNum);
> > > +		memcpy(psta->bssrateset, &pcur_network->SupportedRates,
> > > +		       supportRateNum);
> > >  		psta->bssratelen = supportRateNum;
> > >
> > >  		/* b/g mode ra_bitmap */
> > > @@ -445,7 +454,8 @@ static void update_bmc_sta(struct adapter *padapter)
> > >  		tx_ra_bitmap = 0xf;
> > >
> > >  		raid = networktype_to_raid(network_type);
> > > -		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) & 0x3f;
> > > +		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) &
> > > +						 0x3f;
> >
> > This is misleading, it looks like 0x3f somehow belongs to the argument
> > of get_highest_rate_idx(). It shouldn't be there, it should be aligned
> > under the start of the first & operand.
> >
>
> Okay, I will do that. To be honest, I didn't notice that earlier but now
> you have mentioned it, I can see the confusion current alignment is
> creating.
>
>
> > >
> > >  		/* ap mode */
> > >  		rtw_hal_set_odm_var(padapter, HAL_ODM_STA_INFO, psta, true);
> > > @@ -456,7 +466,8 @@ static void update_bmc_sta(struct adapter *padapter)
> > >  			arg = psta->mac_id & 0x1f;
> > >  			arg |= BIT(7);
> > >  			tx_ra_bitmap |= ((raid << 28) & 0xf0000000);
> > > -			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__, tx_ra_bitmap, arg);
> > > +			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__,
> > > +				tx_ra_bitmap, arg);
> > >
> > >  			/* bitmap[0:27] = tx_rate_bitmap */
> > >  			/* bitmap[28:31]= Rate Adaptive id */
> > > @@ -647,7 +658,8 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
> > >  	rtw_hal_set_hwreg(padapter, HW_VAR_SEC_CFG, (u8 *)(&val8));
> > >
> > >  	/* Beacon Control related register */
> > > -	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL, (u8 *)(&bcn_interval));
> > > +	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL,
> > > +			  (u8 *)(&bcn_interval));
> > >
> > >  	UpdateBrateTbl(padapter, pnetwork->SupportedRates);
> > >  	rtw_hal_set_hwreg(padapter, HW_VAR_BASIC_RATE, pnetwork->SupportedRates);
> > > @@ -657,7 +669,10 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
> > >  		Switch_DM_Func(padapter, DYNAMIC_ALL_FUNC_ENABLE, true);
> > >  	}
> > >  	/* set channel, bwmode */
> > > -	p = rtw_get_ie((pnetwork->ies + sizeof(struct ndis_802_11_fixed_ie)), _HT_ADD_INFO_IE_, &ie_len, (pnetwork->ie_length - sizeof(struct ndis_802_11_fixed_ie)));
> > > +	p = rtw_get_ie((pnetwork->ies + sizeof(struct ndis_802_11_fixed_ie)),
> > > +		       HT_ADD_INFO_IE_, &ie_len,
> > > +		       (pnetwork->ie_length -
> > > +			sizeof(struct ndis_802_11_fixed_ie)));
> >
> > This looks correct, but still it's horrible, all those excess
> > parentheses make it quite hard to read. If you plan to remove them,
> > perhaps it's easier to have a change doing that first, in the same
> > series, so that this change can be checked more easily.
> >
>
> Okay, I will remove the extra unnecessary parentheses.
>
>
> > >  	if (p && ie_len) {
> > >  		pht_info = (struct HT_info_element *)(p + 2);
> > >
> > > @@ -682,7 +697,8 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
> > >  	 */
> > >  	set_channel_bwmode(padapter, cur_channel, cur_ch_offset, cur_bwmode);
> > >
> > > -	DBG_88E("CH =%d, BW =%d, offset =%d\n", cur_channel, cur_bwmode, cur_ch_offset);
> > > +	DBG_88E("CH =%d, BW =%d, offset =%d\n", cur_channel, cur_bwmode,
> > > +		cur_ch_offset);
> > >
> > >  	/*  */
> > >  	pmlmeext->cur_channel = cur_channel;
> > > @@ -771,7 +787,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
> > >  	cap = get_unaligned_le16(ie);
> > >
> > >  	/* SSID */
> > > -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SSID_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> > > +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SSID_IE_, &ie_len,
> > > +		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> > >  	if (p && ie_len > 0) {
> > >  		memset(&pbss_network->ssid, 0, sizeof(struct ndis_802_11_ssid));
> > >  		memcpy(pbss_network->ssid.ssid, (p + 2), ie_len);
> > > @@ -781,7 +798,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
> > >  	/* channel */
> > >  	channel = 0;
> > >  	pbss_network->Configuration.Length = 0;
> > > -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _DSSET_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> > > +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _DSSET_IE_, &ie_len,
> > > +		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> > >  	if (p && ie_len > 0)
> > >  		channel = *(p + 2);
> > >
> > > @@ -789,14 +807,16 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
> > >
> > >  	memset(supportRate, 0, NDIS_802_11_LENGTH_RATES_EX);
> > >  	/*  get supported rates */
> > > -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SUPPORTEDRATES_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> > > +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SUPPORTEDRATES_IE_, &ie_len,
> > > +		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> > >  	if (p) {
> > >  		memcpy(supportRate, p + 2, ie_len);
> > >  		supportRateNum = ie_len;
> > >  	}
> > >
> > >  	/* get ext_supported rates */
> > > -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _EXT_SUPPORTEDRATES_IE_, &ie_len, pbss_network->ie_length - _BEACON_IE_OFFSET_);
> > > +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _EXT_SUPPORTEDRATES_IE_,
> > > +		       &ie_len, pbss_network->ie_length - _BEACON_IE_OFFSET_);
> > >  	if (p) {
> > >  		memcpy(supportRate + supportRateNum, p + 2, ie_len);
> > >  		supportRateNum += ie_len;
> > > @@ -807,7 +827,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
> > >  	rtw_set_supported_rate(pbss_network->SupportedRates, network_type);
> > >
> > >  	/* parsing ERP_IE */
> > > -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _ERPINFO_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> > > +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _ERPINFO_IE_, &ie_len,
> > > +		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> > >  	if (p && ie_len > 0)
> > >  		ERP_IE_handler(padapter, (struct ndis_802_11_var_ie *)p);
> > >
> > > @@ -824,7 +845,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
> > >  	pairwise_cipher = 0;
> > >  	psecuritypriv->wpa2_group_cipher = _NO_PRIVACY_;
> > >  	psecuritypriv->wpa2_pairwise_cipher = _NO_PRIVACY_;
> > > -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> > > +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len,
> > > +		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> > >  	if (p && ie_len > 0) {
> > >  		if (rtw_parse_wpa2_ie(p, ie_len + 2, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS) {
> > >  			psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
> >
> > Same also for all these hunks.
> >
>
> I did not understand what you mean by same for all these hunks.
> Do you mean I should remove extra unnecessary parentheses from these
> line too as suggested earlier?
>
> > --
> > Stefano
> >
>
> Should I add these new chnages as new patches to the v2 of this patchset
> or should I send a altogether new patchset?
>
> Thank you
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200331143356.GA12680%40ubuntu.
>

