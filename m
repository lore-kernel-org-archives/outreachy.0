X-GM-THRID: 6809913191851622400
X-Received: by 2002:aca:fcd6:: with SMTP id a205mr2362080oii.28.1585666203292;
        Tue, 31 Mar 2020 07:50:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:4007:: with SMTP id m7ls7931392ote.5.gmail; Tue, 31 Mar
 2020 07:50:01 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvZjxhbq9CDIlgnq3H5Em0RaqTrcoX/2GblBOvHRxCOeTfNIEKIbXSpi3XqYxSXhZHQbpF5
X-Received: by 2002:a9d:5e86:: with SMTP id f6mr13996467otl.238.1585666201848;
        Tue, 31 Mar 2020 07:50:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585666201; cv=none;
        d=google.com; s=arc-20160816;
        b=GKKxGeFshZzRLtDK2NC8ydNCdFrFrNe8i+y9tP2oXJMqqS97GIBXTIrRPpjPBD4Rl3
         c5NugxABpPQ6HSb2lvDxkAx0qgsAZgiqM2cgNtzrdnrEEC05ofTy8GXPTacbaRjKx8ci
         rvDIIT0drihq+dVFSSc7eHQRX+1rSzzWZFjDwarqEuh0Ls7an85rYCS59doO1ttiWXFZ
         J+RFPV5JwQUdWincGzzhlGpjSeiNE5FsqYts+fQNX6vhjND4rHWK5tYS83df0ODaaMak
         TdAi8MYt4C6WovWInnKBSyewV2p97FUR71Jc352RVc8ipvOhOH1Psw4Fj85gpnF8pX8x
         7mYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Oq6T7INon8+XRS+ATOEPji8nUUoa5/Cq6hrv/lGIins=;
        b=HBJXW5XliPpnj3596jhhUTkG+QW1sI86J/vBnsqXQUb08Xt5ZMEk+BZznVMOId7lWm
         RmcRBJ9t3ykzm7e+fWPjItkS6eUkO+RC+EI9PSZGRI+CWpe2PxWv4axqyRvBrcqPlbXZ
         cSO/BGFlC1vWN2KYcJRBnZ4MRENtTL/ZdMTiMM9QNgDAGdk67CI5iY6BwyqX/i7dBj59
         3jB+m6+p64Qnumg5LWWyoVCxKMoYUS1Wur/lajoJHP5yUD+J34rjSIiwz17vn9d6yq7x
         Lcn8useLlV7fy165XdYN/24ziAf9NM6q40EnWkq/iHN0EgD8uMPdCNtJqlSojcZLSzwf
         5NcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gTEnvMU1;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id a63si1234735oib.4.2020.03.31.07.50.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2020 07:50:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gTEnvMU1;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585666201;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Oq6T7INon8+XRS+ATOEPji8nUUoa5/Cq6hrv/lGIins=;
	b=gTEnvMU1x3jh2I/3v/KiCA9oTmSTFxcT1DzspMr7OOawi4ph/7t0soX8/TLlz540a/V10g
	ZmH6osa5axmQHWQOdSjRFpVPDO0h21tJTW6CfLU2opPx+A4tEFGE4txIVLqyGRULWBlIcl
	VJPymwYPUX+9Gn0JjJdCptzdscxVye8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-119-V1fdGr0TPUiRwrnokK0bng-1; Tue, 31 Mar 2020 10:49:56 -0400
X-MC-Unique: V1fdGr0TPUiRwrnokK0bng-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 11E318017CE;
	Tue, 31 Mar 2020 14:49:55 +0000 (UTC)
Received: from localhost (unknown [10.36.110.29])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9169A5D9C5;
	Tue, 31 Mar 2020 14:49:53 +0000 (UTC)
Date: Tue, 31 Mar 2020 16:49:47 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>
Subject: Re: [Outreachy kernel] [Outreachy] [PATCH 2/2] staging: rtl8188eu:
 Line over 80 characters
Message-ID: <20200331164947.7cd8777b@redhat.com>
In-Reply-To: <20200331143356.GA12680@ubuntu>
References: <20200330082036.12928-1-debsoumyajit100@gmail.com>
	<20200330082036.12928-3-debsoumyajit100@gmail.com>
	<20200330201701.719b8c0f@elisabeth>
	<20200331143356.GA12680@ubuntu>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 31 Mar 2020 20:04:02 +0530
Soumyajit Deb <debsoumyajit100@gmail.com> wrote:

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

No, wait, the curly brackets are needed as soon as you split those
lines. They need to be in the same patch.

> Should I add this new patch to the v2 of this patchset or should I send
> as a seperate new patch?

Yes, v2 of this patchset, but for this change specifically, it's not a
new patch.

> [...]
>
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
> 
> Okay, I will remove the extra unnecessary parentheses.

Just for clarity: that needs to be done in a separate patch, in the
same series.

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

Yes, see https://en.wiktionary.org/wiki/hunk#Noun in the computing
sense.

> Should I add these new chnages as new patches to the v2 of this patchset
> or should I send a altogether new patchset?

Some of it (removing ()) is a new patch that needs to be added as v2 of
this patchset (also called "series"). Some of it are new versions of the
patch you already posted. You need anyway to re-send the full patchset.
That is:

- the current patchset has:
	- patch 1/2
	- patch 2/2

- the new patchset (v2) will have:
	- patch 1/3 v2 (no changes)
	- patch 2/3 v2 (for example, if you remove () here)
	- patch 3/3 v2 (this current patch with the changes I suggested)

-- 
Stefano


