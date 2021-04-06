X-GM-THRID: 6947727064751407104
X-Received: by 2002:a17:90a:e454:: with SMTP id jp20mr4266171pjb.129.1617711220874;
        Tue, 06 Apr 2021 05:13:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1d50:: with SMTP id d77ls7522496pfd.4.gmail; Tue, 06 Apr
 2021 05:13:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzb4HSBNYXO0VitXOR5WVuu7gH7o4yhh0lowYkqRBiwZsrBtrSRODJqYudJ9hXPur0h/aMu
X-Received: by 2002:a63:174e:: with SMTP id 14mr26402624pgx.125.1617711219790;
        Tue, 06 Apr 2021 05:13:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617711219; cv=none;
        d=google.com; s=arc-20160816;
        b=nu4FBHqQKNVEJc6ITjZydKKjmqV5AKmAsbO5Lw+E5pccMNG1HXBUp6sSao5w+IL5nt
         9RS2Fe0ruOI38yb00MtVQbKmAftmEOhE4ShOGkvS493tcAJxntehCnlhyuQQUKVx9Y6d
         qFlLQVjx5BRtDOK0TkhJD/G15OwpAF5iSyidTeGKUYs0CQSfnIPobi4/iHVpYkL5JgdS
         clke3OJR+5Bd3GVfi/jGWcGvibx+YI1fK0AwQNsow0la1QM9E9owflhejFIfDtz9DR2U
         6PYS4ms13hiOvnkKoMzfes+t/9qAjPTB5Y5mwRfGD8+inz74BTXcTO7+sqODOToBEuqW
         cF2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=REBQy7wq7/QWkJwXyzY0NJsaQytglR8kGrWc5iaBwBA=;
        b=pZEnqqif1/A4bZj6V8EPxhmt7vdiv9K6oOL+gtFx60yeoY6RuPPlOZx2AmTDFqYg0w
         8aRw3rUvo8mcosX2Gu/rvGKzRf7bVYlXg98U/XxGSl6knpDEakgQPr9IeMmQSkWqXRZr
         AjT3iDnjwxEq/D52IFHiVyisv8RuC3qjQ5FiHqey/kWMicn6W49cbY+mB0GiCAN+1rn2
         YrSLVt8S4RbgLv0VU8Te3DHHB4DV2bx62lzenvJB2gmo4psG+Hba4oLl7F6YO7tWLjw+
         zaMZ+4J50lg4hnA1UAsFOGYX6sHS3QshT+yyX00hYIuDT9dv0hCuMjXeukCIaSBa1sX2
         eisA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="xw/1H6Y4";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z22si2147589pfc.6.2021.04.06.05.13.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 05:13:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="xw/1H6Y4";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9EA846139E;
	Tue,  6 Apr 2021 12:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617711219;
	bh=e7eFd02Z9wUi0fdYUZP7ksNxGrIRXxvKr6qEjvDuAgY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=xw/1H6Y41hhakwQEtXX9g7On8WHn2oMiIPnleRAi0ku5UDHmdEoDek0ceMnaLGALl
	 WFULMx1nelXHeE/vMi0+zu9ESPoiaskrzTmPjNdi+Oy+SiPpU41pyOVWT08orMbxcF
	 4GWI+2GCdQ2MnCe3if2uvEG6hQkeNsrIufg7lSB4=
Date: Tue, 6 Apr 2021 14:13:36 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 3/4] staging: rtl8723bs: core: reorganize characters so
 the lines are under 100 ch
Message-ID: <YGxQcEvmxHrNz2US@kroah.com>
References: <cover.1617641790.git.martinsdecarvalhobeatriz@gmail.com>
 <6ce5f20399f2bea9f08bb37150fc67fe3c2b2a55.1617641790.git.martinsdecarvalhobeatriz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6ce5f20399f2bea9f08bb37150fc67fe3c2b2a55.1617641790.git.martinsdecarvalhobeatriz@gmail.com>

On Mon, Apr 05, 2021 at 06:29:19PM +0100, Beatriz Martins de Carvalho wrote:
> Cleans up warnings of "line over 100 characters" but avoinding
> more than 90 characters in file rtw_ap.c
> 
> Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_ap.c | 22 ++++++++++++++--------
>  1 file changed, 14 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
> index 4dab4d741675..ca6fec52d213 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_ap.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
> @@ -278,11 +278,13 @@ void expire_timeout_chk(struct adapter *padapter)
>  
>  			if (psta->state & WIFI_SLEEP_STATE) {
>  				if (!(psta->state & WIFI_STA_ALIVE_CHK_STATE)) {
> -					/* to check if alive by another methods if station is at ps mode. */
> +					/* to check if alive by another methods */
> +					/* if station is at ps mode. */
>  					psta->expire_to = pstapriv->expire_to;
>  					psta->state |= WIFI_STA_ALIVE_CHK_STATE;
>  
> -					/* DBG_871X("alive chk, sta:%pM is at ps mode!\n", MAC_ARG(psta->hwaddr)); */
> +					/* DBG_871X("alive chk, sta:%pM is at ps */
> +					/* mode!\n", MAC_ARG(psta->hwaddr)); */

You just wrapped a code line :(

Just remove it, it's not needed.


>  
>  					/* to update bcn with tim_bitmap for this station */
>  					pstapriv->tim_bitmap |= BIT(psta->aid);
> @@ -309,7 +311,8 @@ void expire_timeout_chk(struct adapter *padapter)
>  			);
>  			updated = ap_free_sta(padapter, psta, false, WLAN_REASON_DEAUTH_LEAVING);
>  		} else {
> -			/* TODO: Aging mechanism to digest frames in sleep_q to avoid running out of xmitframe */
> +			/* TODO: Aging mechanism to digest frames in sleep_q to */
> +			/* avoid running out of xmitframe */
>  			if (psta->sleepq_len > (NR_XMITFRAME / pstapriv->asoc_list_cnt)
>  				&& padapter->xmitpriv.free_xmitframe_cnt < ((
>  					NR_XMITFRAME / pstapriv->asoc_list_cnt
> @@ -375,7 +378,8 @@ void expire_timeout_chk(struct adapter *padapter)
>  			if (list_empty(&psta->asoc_list) == false) {
>  				list_del_init(&psta->asoc_list);
>  				pstapriv->asoc_list_cnt--;
> -				updated = ap_free_sta(padapter, psta, false, WLAN_REASON_DEAUTH_LEAVING);
> +				updated = ap_free_sta(padapter, psta, false,
> +						      WLAN_REASON_DEAUTH_LEAVING);
>  			}
>  			spin_unlock_bh(&pstapriv->asoc_list_lock);
>  		}
> @@ -469,7 +473,8 @@ void update_bmc_sta(struct adapter *padapter)
>  
>  		memset((void *)&psta->sta_stats, 0, sizeof(struct stainfo_stats));
>  
> -		/* psta->dot118021XPrivacy = _NO_PRIVACY_;//!!! remove it, because it has been set before this. */
> +		/* psta->dot118021XPrivacy = _NO_PRIVACY_;//!!! remove it, */
> +		/* because it has been set before this. */

Again, look at what you are changing to see if it makes sense.

>  
>  		/* prepare for add_RATid */
>  		supportRateNum = rtw_get_rateset_len((u8 *)&pcur_network->SupportedRates);
> @@ -748,8 +753,8 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
>  	cur_ch_offset = HAL_PRIME_CHNL_OFFSET_DONT_CARE;
>  
>  	/* check if there is wps ie, */
> -	/* if there is wpsie in beacon, the hostapd will update beacon twice when stating hostapd, */
> -	/* and at first time the security ie (RSN/WPA IE) will not include in beacon. */
> +	/* if there is wpsie in beacon, the hostapd will update beacon twice when stating */
> +	/* hostapd, and at first time the security ie (RSN/WPA IE) will not include in beacon. */

These changes do not look correct, you made them longer?

thanks,

greg k-h

