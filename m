X-GM-THRID: 6809913191851622400
X-Received: by 2002:a0c:ffca:: with SMTP id h10mr13204964qvv.100.1585592240223;
        Mon, 30 Mar 2020 11:17:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b21d:: with SMTP id x29ls2807774qvd.0.gmail; Mon, 30 Mar
 2020 11:17:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtzU+R3fEvgVeKIf41xepNEZOUPb+YFrHRBXWT/pF0aHLeeqeOnK3DIgopsctNhYvarh4KY
X-Received: by 2002:a0c:f709:: with SMTP id w9mr13009188qvn.159.1585592238582;
        Mon, 30 Mar 2020 11:17:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585592238; cv=none;
        d=google.com; s=arc-20160816;
        b=T7VZgYvpx9bpkixo2BNmxOeOhnhTfLlgOJwS3giyhhteJ9uNE3+7tOOvyJnZ6Gl7Ey
         80qrZXg9aGWHwQ7unI1YaS0j5eMCnaWfLRlMmTvZ0WmgvhTz+qh3NS5S2hbr5qUMh4Ak
         dxVmmk74Io7rbnT3XJn/O/EEgeoGdcu7/eAz5lZYN5cXm/e8QZtivPAZzNQF8CfeXXN0
         3vbhk/InMQIGOZm6bLxLhQfxYcVu4AaK6w9F5HmhxuxMMikjIrXhbDqTdclFay/Cg42V
         jfGTLg3oSWvtGjaWCTqNI52wqxo8fZapiQtCQ3MaObeWkRk6Dk9m1iDpYrsmtL9MqEme
         /dRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=v1XhoLRgRut4txcbfiPVjnDze3rV2E7tsAoW2mjrsvs=;
        b=XQJQHsJZjr5VznDVrgZ5XgPkR2/xrQJQY8VpHahqNJYPz6KlXn/u+Dh/bUp6jBcd0e
         E/zEIuhjAe8/oijlV60Qa8g1aRPSLugwHKiWDQ7fdCKgXaJdTZCdvHbzwpOfyFdbVei5
         n/3/fMQ/gIwabmSWY5vxHXunX11VbmhYvyhbsdi50ZfEqjKreY9hQR8/Cxj6a8/AlU9Z
         B7Jl8zLAV1U68xaV2vqtmYYHtbLJBqD0d6595v5UqPFJ8pEooUygvgNKL5ecGzVj3nPY
         Hv0OORNkaRKC42bLWi+pmolS3Eo+rOU8oKYoz/jblhUVPNEtP/aSxMePvFTaTyE3L0FM
         K08A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dW5NhyFR;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id z126si976525qkd.2.2020.03.30.11.17.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 11:17:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dW5NhyFR;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585592237;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=v1XhoLRgRut4txcbfiPVjnDze3rV2E7tsAoW2mjrsvs=;
	b=dW5NhyFRuNpn1LfLlu2ExqX7ZZZGF02gxJShtqMp9mj8rbF++EtQIbN98jHBrIU/kcugzP
	EtRBmxcFqEU0RqkM33Gh8ZJ7ibqtKWbyJS6ekuzTcbUmtH7nldOsBZ3Pq2P1eN5Eo+P10l
	/OAWGt/Y2ZxLZc7JtcWpvovBimdL+go=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-445-PCDTbKC4ORiEx-4uWISPdA-1; Mon, 30 Mar 2020 14:17:13 -0400
X-MC-Unique: PCDTbKC4ORiEx-4uWISPdA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6C5AE8017CC;
	Mon, 30 Mar 2020 18:17:12 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 21D6C5DA60;
	Mon, 30 Mar 2020 18:17:09 +0000 (UTC)
Date: Mon, 30 Mar 2020 20:17:01 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy] [PATCH 2/2] staging: rtl8188eu:
 Line over 80 characters
Message-ID: <20200330201701.719b8c0f@elisabeth>
In-Reply-To: <20200330082036.12928-3-debsoumyajit100@gmail.com>
References: <20200330082036.12928-1-debsoumyajit100@gmail.com>
	<20200330082036.12928-3-debsoumyajit100@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 30 Mar 2020 13:50:36 +0530
Soumyajit Deb <debsoumyajit100@gmail.com> wrote:

> Break various lines into multiple lines to respect the 80 character
> width limit.
> Reported by checkpatch.pl
> 
> Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_ap.c | 62 +++++++++++++++++--------
>  1 file changed, 42 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> index 5b2b4d1d56f6..94cfd45e3eaa 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> @@ -264,8 +264,10 @@ void expire_timeout_chk(struct adapter *padapter)
>  			list_del_init(&psta->asoc_list);
>  			pstapriv->asoc_list_cnt--;
>  
> -			DBG_88E("asoc expire %pM, state = 0x%x\n", (psta->hwaddr), psta->state);
> -			updated = ap_free_sta(padapter, psta, true, WLAN_REASON_DEAUTH_LEAVING);
> +			DBG_88E("asoc expire %pM, state = 0x%x\n",
> +				(psta->hwaddr), psta->state);
> +			updated = ap_free_sta(padapter, psta, true,
> +					      WLAN_REASON_DEAUTH_LEAVING);
>  		} else {
>  			/* TODO: Aging mechanism to digest frames in sleep_q to avoid running out of xmitframe */
>  			if (psta->sleepq_len > (NR_XMITFRAME / pstapriv->asoc_list_cnt) &&
> @@ -294,16 +296,20 @@ void expire_timeout_chk(struct adapter *padapter)
>  		for (i = 0; i < chk_alive_num; i++) {
>  			int ret = _FAIL;
>  
> -			psta = rtw_get_stainfo_by_offset(pstapriv, chk_alive_list[i]);
> +			psta = rtw_get_stainfo_by_offset(pstapriv,
> +							 chk_alive_list[i]);
>  
>  			if (psta->state & WIFI_SLEEP_STATE)
> -				ret = issue_nulldata(padapter, psta->hwaddr, 0, 1, 50);
> +				ret = issue_nulldata(padapter, psta->hwaddr, 0,
> +						     1, 50);
>  			else
> -				ret = issue_nulldata(padapter, psta->hwaddr, 0, 3, 50);
> +				ret = issue_nulldata(padapter, psta->hwaddr, 0,
> +						     3, 50);

For both clauses, here, you need curly brackets, checkpatch.pl should
report. Not because they are functionally needed, rather because they
are visually helpful to group the statements and avoid that a second
statement is inadvertently added without curly brackets.

>  
>  			psta->keep_alive_trycnt++;
>  			if (ret == _SUCCESS) {
> -				DBG_88E("asoc check, sta(%pM) is alive\n", (psta->hwaddr));
> +				DBG_88E("asoc check, sta(%pM) is alive\n",
> +					(psta->hwaddr));

Further cleanup (unrelated with this patch): excess parentheses.

>  				psta->expire_to = pstapriv->expire_to;
>  				psta->keep_alive_trycnt = 0;
>  				continue;
> @@ -315,11 +321,13 @@ void expire_timeout_chk(struct adapter *padapter)
>  
>  			psta->keep_alive_trycnt = 0;
>  
> -			DBG_88E("asoc expire %pM, state = 0x%x\n", (psta->hwaddr), psta->state);
> +			DBG_88E("asoc expire %pM, state = 0x%x\n",
> +				(psta->hwaddr), psta->state);
>  			spin_lock_bh(&pstapriv->asoc_list_lock);
>  			list_del_init(&psta->asoc_list);
>  			pstapriv->asoc_list_cnt--;
> -			updated = ap_free_sta(padapter, psta, true, WLAN_REASON_DEAUTH_LEAVING);
> +			updated = ap_free_sta(padapter, psta, true,
> +					      WLAN_REASON_DEAUTH_LEAVING);
>  			spin_unlock_bh(&pstapriv->asoc_list_lock);
>  		}
>  
> @@ -431,7 +439,8 @@ static void update_bmc_sta(struct adapter *padapter)
>  		supportRateNum = rtw_get_rateset_len((u8 *)&pcur_network->SupportedRates);
>  		network_type = rtw_check_network_type((u8 *)&pcur_network->SupportedRates);
>  
> -		memcpy(psta->bssrateset, &pcur_network->SupportedRates, supportRateNum);
> +		memcpy(psta->bssrateset, &pcur_network->SupportedRates,
> +		       supportRateNum);
>  		psta->bssratelen = supportRateNum;
>  
>  		/* b/g mode ra_bitmap */
> @@ -445,7 +454,8 @@ static void update_bmc_sta(struct adapter *padapter)
>  		tx_ra_bitmap = 0xf;
>  
>  		raid = networktype_to_raid(network_type);
> -		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) & 0x3f;
> +		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) &
> +						 0x3f;

This is misleading, it looks like 0x3f somehow belongs to the argument
of get_highest_rate_idx(). It shouldn't be there, it should be aligned
under the start of the first & operand.

>  
>  		/* ap mode */
>  		rtw_hal_set_odm_var(padapter, HAL_ODM_STA_INFO, psta, true);
> @@ -456,7 +466,8 @@ static void update_bmc_sta(struct adapter *padapter)
>  			arg = psta->mac_id & 0x1f;
>  			arg |= BIT(7);
>  			tx_ra_bitmap |= ((raid << 28) & 0xf0000000);
> -			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__, tx_ra_bitmap, arg);
> +			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__,
> +				tx_ra_bitmap, arg);
>  
>  			/* bitmap[0:27] = tx_rate_bitmap */
>  			/* bitmap[28:31]= Rate Adaptive id */
> @@ -647,7 +658,8 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
>  	rtw_hal_set_hwreg(padapter, HW_VAR_SEC_CFG, (u8 *)(&val8));
>  
>  	/* Beacon Control related register */
> -	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL, (u8 *)(&bcn_interval));
> +	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL,
> +			  (u8 *)(&bcn_interval));
>  
>  	UpdateBrateTbl(padapter, pnetwork->SupportedRates);
>  	rtw_hal_set_hwreg(padapter, HW_VAR_BASIC_RATE, pnetwork->SupportedRates);
> @@ -657,7 +669,10 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
>  		Switch_DM_Func(padapter, DYNAMIC_ALL_FUNC_ENABLE, true);
>  	}
>  	/* set channel, bwmode */
> -	p = rtw_get_ie((pnetwork->ies + sizeof(struct ndis_802_11_fixed_ie)), _HT_ADD_INFO_IE_, &ie_len, (pnetwork->ie_length - sizeof(struct ndis_802_11_fixed_ie)));
> +	p = rtw_get_ie((pnetwork->ies + sizeof(struct ndis_802_11_fixed_ie)),
> +		       HT_ADD_INFO_IE_, &ie_len,
> +		       (pnetwork->ie_length -
> +			sizeof(struct ndis_802_11_fixed_ie)));

This looks correct, but still it's horrible, all those excess
parentheses make it quite hard to read. If you plan to remove them,
perhaps it's easier to have a change doing that first, in the same
series, so that this change can be checked more easily.

>  	if (p && ie_len) {
>  		pht_info = (struct HT_info_element *)(p + 2);
>  
> @@ -682,7 +697,8 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
>  	 */
>  	set_channel_bwmode(padapter, cur_channel, cur_ch_offset, cur_bwmode);
>  
> -	DBG_88E("CH =%d, BW =%d, offset =%d\n", cur_channel, cur_bwmode, cur_ch_offset);
> +	DBG_88E("CH =%d, BW =%d, offset =%d\n", cur_channel, cur_bwmode,
> +		cur_ch_offset);
>  
>  	/*  */
>  	pmlmeext->cur_channel = cur_channel;
> @@ -771,7 +787,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
>  	cap = get_unaligned_le16(ie);
>  
>  	/* SSID */
> -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SSID_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SSID_IE_, &ie_len,
> +		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
>  	if (p && ie_len > 0) {
>  		memset(&pbss_network->ssid, 0, sizeof(struct ndis_802_11_ssid));
>  		memcpy(pbss_network->ssid.ssid, (p + 2), ie_len);
> @@ -781,7 +798,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
>  	/* channel */
>  	channel = 0;
>  	pbss_network->Configuration.Length = 0;
> -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _DSSET_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _DSSET_IE_, &ie_len,
> +		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
>  	if (p && ie_len > 0)
>  		channel = *(p + 2);
>  
> @@ -789,14 +807,16 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
>  
>  	memset(supportRate, 0, NDIS_802_11_LENGTH_RATES_EX);
>  	/*  get supported rates */
> -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SUPPORTEDRATES_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SUPPORTEDRATES_IE_, &ie_len,
> +		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
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
> @@ -807,7 +827,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
>  	rtw_set_supported_rate(pbss_network->SupportedRates, network_type);
>  
>  	/* parsing ERP_IE */
> -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _ERPINFO_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _ERPINFO_IE_, &ie_len,
> +		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
>  	if (p && ie_len > 0)
>  		ERP_IE_handler(padapter, (struct ndis_802_11_var_ie *)p);
>  
> @@ -824,7 +845,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
>  	pairwise_cipher = 0;
>  	psecuritypriv->wpa2_group_cipher = _NO_PRIVACY_;
>  	psecuritypriv->wpa2_pairwise_cipher = _NO_PRIVACY_;
> -	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
> +	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len,
> +		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
>  	if (p && ie_len > 0) {
>  		if (rtw_parse_wpa2_ie(p, ie_len + 2, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS) {
>  			psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;

Same also for all these hunks.

-- 
Stefano


