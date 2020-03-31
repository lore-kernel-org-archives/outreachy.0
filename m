X-GM-THRID: 6809913191851622400
X-Received: by 2002:a17:902:b187:: with SMTP id s7mr4717768plr.84.1585666162221;
        Tue, 31 Mar 2020 07:49:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9688:: with SMTP id n8ls15188984plp.3.gmail; Tue, 31
 Mar 2020 07:49:20 -0700 (PDT)
X-Google-Smtp-Source: APiQypJMNH93dBvl5wyYGfZjaC23G2E/KbmE5GaGo7Ivjdyc3oMd0qMg4TQz1a4RCBxtbCBEzvEB
X-Received: by 2002:a17:90a:e287:: with SMTP id d7mr4570518pjz.76.1585666160405;
        Tue, 31 Mar 2020 07:49:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585666160; cv=none;
        d=google.com; s=arc-20160816;
        b=VLKmK8a/RMIAsZeBoAL9Z4qwE2JTQlNxKANSNz6HAygeSDX7Naw1T+OrS3SfL6jgjj
         hDFmVuX7YF7d5QgS+sd3i6H5nWHpFRiYjfVnrRRbq1pLO+UgL9qDwOo2GbQgs7HV4rUy
         VK+sIHBxALxSgUMpFLJR5f5MJEt3tOjPI6HyrIebkyySo5CqzAxM0rRzkqJQzcaf84Y+
         N4s6feFq9WTAjfz9yxxW7ioDLHcXDZzG83uVqKl0XbAb0ckRAUmtP3tGbdxfjU44gJbw
         /hx0+jFM6LyQivsaW9RNbGeguu31qiotT59extSN8Xmq6kQaNsGV9oiPQOS5ApZOUsbm
         hu/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=oBfBVUqS13+zZnJjqeifRxnEzWfcUEQ14/nCKhhyJMU=;
        b=V37Iy7kRg5ASlxC0czNrD00MRFcyQP036ottEiUBeVGju5s1OmLTk5vhYL/kmoTBi9
         06XOvZNisAh7BqsLDujtj9VJaZqEKlxdkigvK9uEcQ1a+eAC7zImS2q9zBsK9sYGQcrz
         /WgVRO3YF6g/kxyzETYtGgIvyxaHk21eriJvES5/AvsHl5tpz0s/MxTmhoORUlE1NaRG
         HCRyq4dOQ4F/SN01kOSifrKqHDmQXpC6dtbMBTgEKDsLsT++7xprKsRfiDBuxiUSPS+U
         KC4KEjpoUwm3oQv6r7Pf9Rta/giJOOtx+jZtqlx3tflzefL8S9H70uWWBa37pIEunCfy
         DGmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="VeT/Evjs";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id g9si646498pll.5.2020.03.31.07.49.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 07:49:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="VeT/Evjs";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id v23so8190046ply.10
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 07:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oBfBVUqS13+zZnJjqeifRxnEzWfcUEQ14/nCKhhyJMU=;
        b=VeT/EvjspHtiuNDqsol6SVyvPTtrn+7sm3dDXhmDQx/49L3iLqZnJOv3j6z3Z3GPsb
         q3zscGrb2MJQ+cd8tOYcMPcUkbHkBIx3GZX+A0/AT6Wtovm/YXR0tk6HGFmFzeJD3beC
         AeLt2+PRNcwBQ0lF4N+rCsiaazU5sh3RNMPlCMvHXIN4v/xWkIILYkNJG/iZeDNHwyw0
         fGSCfV5YLxxPww0iN1RD+sba6qV9Y0msp1diiEs4qI+c85AS9xiIBgW7A/nz6M1PRKjm
         W5Cxg+nBERfq0iSxOKmsPxqV6nxlCbHqdb4fiYFafobWrl2CFMqMl+t/lWyWfXhA6rXS
         dbOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oBfBVUqS13+zZnJjqeifRxnEzWfcUEQ14/nCKhhyJMU=;
        b=al0EArpTvn6F98lFj0E3KX7zYKzf5GZ5YtMTFcq1h4UbLgoaLhhNdMXx0o3F88z6ZC
         /mqQIbO64AlIc6syHElQr6QIHWwicrAaIJqmlTiVWb8PL+t2ziOWS9DEeLqmACTwvnQV
         1S3HgjV7DyM1+jbU2bIrdzkKOlcRE1cK/MsDVbLAvTeTkHkXGQ2SlNYPfoQsURHbYRCA
         P2skw98RsgoOvAmggkjRLICRWVqWLELRpx3biK+Djnuuc85/CJ5CGl60oG/e0g9Napxk
         3qOIWMXLP/LawCiOKlFa6i/AkgJF/nMTnpEt9NKICDO0BCCP9/Ds3uT/gREYJnPMWL0S
         18Yw==
X-Gm-Message-State: ANhLgQ1PSPxEHNmbxx2fSwpNXwzWqQYNn3QgCpcYRChbRXeRle2+1n6p
	yw6MhVxX18eAq/xasQOBEdw=
X-Received: by 2002:a17:902:8b87:: with SMTP id ay7mr16164990plb.281.1585666159757;
        Tue, 31 Mar 2020 07:49:19 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from ubuntu ([157.42.231.91])
        by smtp.gmail.com with ESMTPSA id m2sm2125416pjk.4.2020.03.31.07.49.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 31 Mar 2020 07:49:19 -0700 (PDT)
Date: Tue, 31 Mar 2020 20:19:12 +0530
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy] [PATCH 2/2] staging: rtl8188eu:
 Line over 80 characters
Message-ID: <20200331144904.GA13035@ubuntu>
References: <20200330082036.12928-1-debsoumyajit100@gmail.com>
 <20200330082036.12928-3-debsoumyajit100@gmail.com>
 <20200330201701.719b8c0f@elisabeth>
 <20200331143356.GA12680@ubuntu>
 <alpine.DEB.2.21.2003311635180.3188@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003311635180.3188@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 31, 2020 at 04:35:46PM +0200, Julia Lawall wrote:
> 
> 
> On Tue, 31 Mar 2020, Soumyajit Deb wrote:
> 
> > On Mon, Mar 30, 2020 at 08:17:01PM +0200, Stefano Brivio wrote:
> > > On Mon, 30 Mar 2020 13:50:36 +0530
> > > Soumyajit Deb <debsoumyajit100@gmail.com> wrote:
> > >
> > > > Break various lines into multiple lines to respect the 80 character
> > > > width limit.
> > > > Reported by checkpatch.pl
> > > >
> > > > Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
> > > > ---
> > > >  drivers/staging/rtl8188eu/core/rtw_ap.c | 62 +++++++++++++++++--------
> > > >  1 file changed, 42 insertions(+), 20 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> > > > index 5b2b4d1d56f6..94cfd45e3eaa 100644
> > > > --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> > > > +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> > > > @@ -264,8 +264,10 @@ void expire_timeout_chk(struct adapter *padapter)
> > > >  			list_del_init(&psta->asoc_list);
> > > >  			pstapriv->asoc_list_cnt--;
> > > >
> > > > -			DBG_88E("asoc expire %pM, state = 0x%x\n", (psta->hwaddr), psta->state);
> > > > -			updated = ap_free_sta(padapter, psta, true, WLAN_REASON_DEAUTH_LEAVING);
> > > > +			DBG_88E("asoc expire %pM, state = 0x%x\n",
> > > > +				(psta->hwaddr), psta->state);
> > > > +			updated = ap_free_sta(padapter, psta, true,
> > > > +					      WLAN_REASON_DEAUTH_LEAVING);
> > > >  		} else {
> > > >  			/* TODO: Aging mechanism to digest frames in sleep_q to avoid running out of xmitframe */
> > > >  			if (psta->sleepq_len > (NR_XMITFRAME / pstapriv->asoc_list_cnt) &&
> > > > @@ -294,16 +296,20 @@ void expire_timeout_chk(struct adapter *padapter)
> > > >  		for (i = 0; i < chk_alive_num; i++) {
> > > >  			int ret = _FAIL;
> > > >
> > > > -			psta = rtw_get_stainfo_by_offset(pstapriv, chk_alive_list[i]);
> > > > +			psta = rtw_get_stainfo_by_offset(pstapriv,
> > > > +							 chk_alive_list[i]);
> > > >
> > > >  			if (psta->state & WIFI_SLEEP_STATE)
> > > > -				ret = issue_nulldata(padapter, psta->hwaddr, 0, 1, 50);
> > > > +				ret = issue_nulldata(padapter, psta->hwaddr, 0,
> > > > +						     1, 50);
> > > >  			else
> > > > -				ret = issue_nulldata(padapter, psta->hwaddr, 0, 3, 50);
> > > > +				ret = issue_nulldata(padapter, psta->hwaddr, 0,
> > > > +						     3, 50);
> > >
> > > For both clauses, here, you need curly brackets, checkpatch.pl should
> > > report. Not because they are functionally needed, rather because they
> > > are visually helpful to group the statements and avoid that a second
> > > statement is inadvertently added without curly brackets.
> > >
> >
> > Okay, yes I will add the curly brackets to the clauses and add them as
> > new patches.
> >
> > Should I add this new patch to the v2 of this patchset or should I send
> > as a seperate new patch?
> 
> If you make multiple changes in one file, they have to be in a series so
> Greg knows the order in which to apply them.
> 
> julia
>

Okay, but my question meant something different. 
Sorry,if my question wasn't clear enough.

My question was do I have to add the new changes as suggested by Stefano
as new patches to the v2 of the current existing patchset or should I
send the changes suggested by Stefano as totally different patches?

Thank you.
--
Soumyajit

> >
> >
> >
> > > >
> > > >  			psta->keep_alive_trycnt++;
> > > >  			if (ret == _SUCCESS) {
> > > > -				DBG_88E("asoc check, sta(%pM) is alive\n", (psta->hwaddr));
> > > > +				DBG_88E("asoc check, sta(%pM) is alive\n",
> > > > +					(psta->hwaddr));
> > >
> > > Further cleanup (unrelated with this patch): excess parentheses.
> > >
> > > >  				psta->expire_to = pstapriv->expire_to;
> > > >  				psta->keep_alive_trycnt = 0;
> > > >  				continue;
> > > > @@ -315,11 +321,13 @@ void expire_timeout_chk(struct adapter *padapter)
> > > >
> > > >  			psta->keep_alive_trycnt = 0;
> > > >
> > > > -			DBG_88E("asoc expire %pM, state = 0x%x\n", (psta->hwaddr), psta->state);
> > > > +			DBG_88E("asoc expire %pM, state = 0x%x\n",
> > > > +				(psta->hwaddr), psta->state);
> > > >  			spin_lock_bh(&pstapriv->asoc_list_lock);
> > > >  			list_del_init(&psta->asoc_list);
> > > >  			pstapriv->asoc_list_cnt--;
> > > > -			updated = ap_free_sta(padapter, psta, true, WLAN_REASON_DEAUTH_LEAVING);
> > > > +			updated = ap_free_sta(padapter, psta, true,
> > > > +					      WLAN_REASON_DEAUTH_LEAVING);
> > > >  			spin_unlock_bh(&pstapriv->asoc_list_lock);
> > > >  		}
> > > >
> > > > @@ -431,7 +439,8 @@ static void update_bmc_sta(struct adapter *padapter)
> > > >  		supportRateNum = rtw_get_rateset_len((u8 *)&pcur_network->SupportedRates);
> > > >  		network_type = rtw_check_network_type((u8 *)&pcur_network->SupportedRates);
> > > >
> > > > -		memcpy(psta->bssrateset, &pcur_network->SupportedRates, supportRateNum);
> > > > +		memcpy(psta->bssrateset, &pcur_network->SupportedRates,
> > > > +		       supportRateNum);
> > > >  		psta->bssratelen = supportRateNum;
> > > >
> > > >  		/* b/g mode ra_bitmap */
> > > > @@ -445,7 +454,8 @@ static void update_bmc_sta(struct adapter *padapter)
> > > >  		tx_ra_bitmap = 0xf;
> > > >
> > > >  		raid = networktype_to_raid(network_type);
> > > > -		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) & 0x3f;
> > > > +		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) &
> > > > +						 0x3f;
> > >
> > > This is misleading, it looks like 0x3f somehow belongs to the argument
> > > of get_highest_rate_idx(). It shouldn't be there, it should be aligned
> > > under the start of the first & operand.
> > >
> >
> > Okay, I will do that. To be honest, I didn't notice that earlier but now
> > you have mentioned it, I can see the confusion current alignment is
> > creating.
> >
> >
> > > >
> > > >  		/* ap mode */
> > > >  		rtw_hal_set_odm_var(padapter, HAL_ODM_STA_INFO, psta, true);
> > > > @@ -456,7 +466,8 @@ static void update_bmc_sta(struct adapter *padapter)
> > > >  			arg = psta->mac_id & 0x1f;
> > > >  			arg |= BIT(7);
> > > >  			tx_ra_bitmap |= ((raid << 28) & 0xf0000000);
> > > > -			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__, tx_ra_bitmap, arg);
> > > > +			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__,
> > > > +				tx_ra_bitmap, arg);
> > > >
> > > >  			/* bitmap[0:27] = tx_rate_bitmap */
> > > >  			/* bitmap[28:31]= Rate Adaptive id */
> > > > @@ -647,7 +658,8 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
> > > >  	rtw_hal_set_hwreg(padapter, HW_VAR_SEC_CFG, (u8 *)(&val8));
> > > >
> > > >  	/* Beacon Control related register */
> > > > -	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL, (u8 *)(&bcn_interval));
> > > > +	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL,
> > > > +			  (u8 *)(&bcn_interval));
> > > >
> > > >  	UpdateBrateTbl(padapter, pnetwork->SupportedRates);
> > > >  	rtw_hal_set_hwreg(padapter, HW_VAR_BASIC_RATE, pnetwork->SupportedRates);
> > > > @@ -657,7 +669,10 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
> > > >  		Switch_DM_Func(padapter, DYNAMIC_ALL_FUNC_ENABLE, true);
> > > >  	}
> > > >  	/* set channel, bwmode */
> > > > -	p = rtw_get_ie((pnetwork->ies + sizeof(struct ndis_802_11_fixed_ie)), _HT_ADD_INFO_IE_, &ie_len, (pnetwork->ie_length - sizeof(struct ndis_802_11_fixed_ie)));
> > > > +	p = rtw_get_ie((pnetwork->ies + sizeof(struct ndis_802_11_fixed_ie)),
> > > > +		       HT_ADD_INFO_IE_, &ie_len,
> > > > +		       (pnetwork->ie_length -
> > > > +			sizeof(struct ndis_802_11_fixed_ie)));
> > >
> > > This looks correct, but still it's horrible, all those excess
> > > parentheses make it quite hard to read. If you plan to remove them,
> > > perhaps it's easier to have a change doing that first, in the same
> > > series, so that this change can be checked more easily.
> > >
> >
> > Okay, I will remove the extra unnecessary parentheses.
> >
> >
> > > >  	if (p && ie_len) {
> > > >  		pht_info = (struct HT_info_element *)(p + 2);
> > > >
> > > > @@ -682,7 +697,8 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
> > > >  	 */
> > > >  	set_channel_bwmode(padapter, cur_channel, cur_ch_offset, cur_bwmode);
> > > >
> > > > -	DBG_88E("CH =%d, BW =%d, offset =%d\n", cur_channel, cur_bwmode, cur_ch_offset);
> > > > +	DBG_88E("CH =%d, BW =%d, offset =%d\n", cur_channel, cur_bwmode,
> > > > +		cur_ch_offset);
> > > >
> > > >  	/*  */
> > > >  	pmlmeext->cur_channel = cur_channel;
> > > > @@ -771,7 +787,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
> > > >  	cap = get_unaligned_le16(ie);
> > > >
> > > >  	/* SSID */
> > > > -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SSID_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> > > > +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SSID_IE_, &ie_len,
> > > > +		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> > > >  	if (p && ie_len > 0) {
> > > >  		memset(&pbss_network->ssid, 0, sizeof(struct ndis_802_11_ssid));
> > > >  		memcpy(pbss_network->ssid.ssid, (p + 2), ie_len);
> > > > @@ -781,7 +798,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
> > > >  	/* channel */
> > > >  	channel = 0;
> > > >  	pbss_network->Configuration.Length = 0;
> > > > -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _DSSET_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> > > > +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _DSSET_IE_, &ie_len,
> > > > +		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> > > >  	if (p && ie_len > 0)
> > > >  		channel = *(p + 2);
> > > >
> > > > @@ -789,14 +807,16 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
> > > >
> > > >  	memset(supportRate, 0, NDIS_802_11_LENGTH_RATES_EX);
> > > >  	/*  get supported rates */
> > > > -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SUPPORTEDRATES_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> > > > +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SUPPORTEDRATES_IE_, &ie_len,
> > > > +		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> > > >  	if (p) {
> > > >  		memcpy(supportRate, p + 2, ie_len);
> > > >  		supportRateNum = ie_len;
> > > >  	}
> > > >
> > > >  	/* get ext_supported rates */
> > > > -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _EXT_SUPPORTEDRATES_IE_, &ie_len, pbss_network->ie_length - _BEACON_IE_OFFSET_);
> > > > +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _EXT_SUPPORTEDRATES_IE_,
> > > > +		       &ie_len, pbss_network->ie_length - _BEACON_IE_OFFSET_);
> > > >  	if (p) {
> > > >  		memcpy(supportRate + supportRateNum, p + 2, ie_len);
> > > >  		supportRateNum += ie_len;
> > > > @@ -807,7 +827,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
> > > >  	rtw_set_supported_rate(pbss_network->SupportedRates, network_type);
> > > >
> > > >  	/* parsing ERP_IE */
> > > > -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _ERPINFO_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> > > > +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _ERPINFO_IE_, &ie_len,
> > > > +		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> > > >  	if (p && ie_len > 0)
> > > >  		ERP_IE_handler(padapter, (struct ndis_802_11_var_ie *)p);
> > > >
> > > > @@ -824,7 +845,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
> > > >  	pairwise_cipher = 0;
> > > >  	psecuritypriv->wpa2_group_cipher = _NO_PRIVACY_;
> > > >  	psecuritypriv->wpa2_pairwise_cipher = _NO_PRIVACY_;
> > > > -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> > > > +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len,
> > > > +		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> > > >  	if (p && ie_len > 0) {
> > > >  		if (rtw_parse_wpa2_ie(p, ie_len + 2, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS) {
> > > >  			psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
> > >
> > > Same also for all these hunks.
> > >
> >
> > I did not understand what you mean by same for all these hunks.
> > Do you mean I should remove extra unnecessary parentheses from these
> > line too as suggested earlier?
> >
> > > --
> > > Stefano
> > >
> >
> > Should I add these new chnages as new patches to the v2 of this patchset
> > or should I send a altogether new patchset?
> >
> > Thank you
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200331143356.GA12680%40ubuntu.
> >

