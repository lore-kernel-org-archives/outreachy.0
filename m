X-GM-THRID: 6809913191851622400
X-Received: by 2002:ac5:cdc7:: with SMTP id u7mr12724401vkn.8.1585667201831;
        Tue, 31 Mar 2020 08:06:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:684c:: with SMTP id d73ls2859864vsc.7.gmail; Tue, 31 Mar
 2020 08:06:40 -0700 (PDT)
X-Google-Smtp-Source: APiQypL7s9i8bMfUfe27+UdKnaZvanhaU1Ho7da4oV97j3pBFdO9sMc8GcJgyW2V2csXJF6w4qOf
X-Received: by 2002:a67:2d55:: with SMTP id t82mr13039866vst.215.1585667199985;
        Tue, 31 Mar 2020 08:06:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585667199; cv=none;
        d=google.com; s=arc-20160816;
        b=bV3X5mAl0LzsZS4RQg/Kk3nBfEJOYycpbBxlukpO8H/TN6yQDRp+thu5WLqDO9b3N/
         eOpHrXsQEQj9BFrsUeRAMpO11j9ssyoaEsr5JMQ9k6DFGUnT+tH4HN8rBYDMp/61y+Px
         vS4/7LI9/5aDCY9OsN7GLyBvj3w8B186lNn9pkWicr1KgAHphs2TYlY+/7jnGIWvWcYA
         vaSXXPtIiH3boqJWke4xwxsZMMnxs2E51szZ59CGRDFBvCGaT7GwDAK/TdDIYDGp7A2W
         2YbtU8qQCR2g8/x+QxuwR/6hSfQX/62ETkAH5gipisv7YSvWcGFcMmQt4CfFIi5tZfDq
         pIlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=W1PAMAS1OGaanlI7rWJB2X5nDOVgcgeM6/qgN+57LFI=;
        b=pokz63ZGvlhc6mFwx6AYG7e+h3gNMwNQipdS7tSsoZxZVNr4Qap0o15GuxRtExds6C
         q4KCNF5iq/c68alEPJYYracfQCHH0t8s/VbYfLhDD0uQ/AMR5zjZc8PwtRhBR9dS8klg
         tk081lyiUkbQhUB4JXYtmsMXmRF1zwNvL29t/bz2KuJg63j/tUMWLoax8nyrE4nW6hVr
         EK0AUP9AY/7IHTYpwgDPS/dB8UP1GNXrLngfAgEVgGHynSaeb1DeUtx2jAR3xe1xfjxl
         rBotrZ27kMCMadQYbVlr4/jpm2kWAzqAISVBuUELAP77iyaFCO0KRuA153T9p/V6YJAQ
         Vocg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gTJxySBw;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id f17si1027214vka.5.2020.03.31.08.06.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 08:06:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gTJxySBw;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id w3so8220703plz.5
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 08:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=W1PAMAS1OGaanlI7rWJB2X5nDOVgcgeM6/qgN+57LFI=;
        b=gTJxySBwuavzIl82Rj9hAEkM9uC90cSX3ApCg+4JE8oS8Hbx/gyggdtSySdnncIRIg
         0vTNq/vO90uN8JzANAZFBD4bRlRBKgEpvQqPT6fbSyaOxp6nArmAl680plgcQaYqRY/s
         Tuf/dm7gOwPCbCVD4ke5/ecfsTAIySLuh1xRtFzFOo7pyFXFRh6ULFYDnP1bz0Ff96F+
         yntkOllNcUYI0KVz8f9eCfLVVPu/175TMuaHoPQzxr44U+AdSen5lusPwLjGwBVZB9IC
         Yi9X6IBzHsQgOeqS2x2rMap4x8ncoZBJqcIhCRCygNZkvqilV5VVgm/WyfnAaIjENhjS
         yYaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=W1PAMAS1OGaanlI7rWJB2X5nDOVgcgeM6/qgN+57LFI=;
        b=TJUO4OjB3pd/EWYlTHPMQfYZWLTpeq0R8n7tuD5bh+ZDmYmwHUmIYumfgEFjht9D0p
         u09p5/uNnX50jLa4wZP1puFbHR8ahywj+dhj7YGyqljYzqZkD4E8vH8ndsprGMOkAHdL
         EFFJYmMtWF/2LLLtCYUpN2MGmcpiKfAPvM3nX2OQruqmy3hXaDI2ATgDpUXoZedjFxei
         TYw45CUju6q1waRa45UQtuhQ+uj8pKudgr1Ik8Ms+jiho3tcCHsKFej2lBhU+lINvMz7
         z67jXdQuCAbucAxrRoNvNqPjMCik3Wnttvlkf3Vst0czMDfVsm3zH84jie6/9GKr4r++
         EhkQ==
X-Gm-Message-State: AGi0PuYX/hLQq04NNkmHV7IuCFSVP7Ol3AKzc1NIeIp47CxpZj745dzU
	j8gia66CJsDzvmbPbs56HCE6FUAfIspjcQ==
X-Received: by 2002:a17:90a:2663:: with SMTP id l90mr4202614pje.188.1585667198614;
        Tue, 31 Mar 2020 08:06:38 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from ubuntu ([157.42.231.91])
        by smtp.gmail.com with ESMTPSA id m2sm2135721pjl.21.2020.03.31.08.06.35
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 31 Mar 2020 08:06:37 -0700 (PDT)
Date: Tue, 31 Mar 2020 20:36:31 +0530
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy] [PATCH 2/2] staging: rtl8188eu:
 Line over 80 characters
Message-ID: <20200331150629.GA13555@ubuntu>
References: <20200330082036.12928-1-debsoumyajit100@gmail.com>
 <20200330082036.12928-3-debsoumyajit100@gmail.com>
 <20200330201701.719b8c0f@elisabeth>
 <20200331143356.GA12680@ubuntu>
 <20200331164947.7cd8777b@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200331164947.7cd8777b@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 31, 2020 at 04:49:47PM +0200, Stefano Brivio wrote:
> On Tue, 31 Mar 2020 20:04:02 +0530
> Soumyajit Deb <debsoumyajit100@gmail.com> wrote:
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
> 
> No, wait, the curly brackets are needed as soon as you split those
> lines. They need to be in the same patch.
> 
> > Should I add this new patch to the v2 of this patchset or should I send
> > as a seperate new patch?
> 
> Yes, v2 of this patchset, but for this change specifically, it's not a
> new patch.
> 
> > [...]
> >
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
> > 
> > Okay, I will remove the extra unnecessary parentheses.
> 
> Just for clarity: that needs to be done in a separate patch, in the
> same series.
> 
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
> 
> Yes, see https://en.wiktionary.org/wiki/hunk#Noun in the computing
> sense.
> 
> > Should I add these new chnages as new patches to the v2 of this patchset
> > or should I send a altogether new patchset?
> 
> Some of it (removing ()) is a new patch that needs to be added as v2 of
> this patchset (also called "series"). Some of it are new versions of the
> patch you already posted. You need anyway to re-send the full patchset.
> That is:
> 
> - the current patchset has:
> 	- patch 1/2
> 	- patch 2/2
> 
> - the new patchset (v2) will have:
> 	- patch 1/3 v2 (no changes)
> 	- patch 2/3 v2 (for example, if you remove () here)
> 	- patch 3/3 v2 (this current patch with the changes I suggested)
> 
> -- 
> Stefano
>

Thank you, Stefano
I will make the changes you suggested and will add them in  v2 of this
patch series.

--
Soumyajit

