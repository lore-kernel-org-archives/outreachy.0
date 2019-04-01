X-GM-THRID: 6674748196483235840
X-Received: by 2002:a37:9ac6:: with SMTP id c189mr6755763qke.10.1554140452034;
        Mon, 01 Apr 2019 10:40:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4c4c:: with SMTP id z73ls47423qka.8.gmail; Mon, 01 Apr
 2019 10:40:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwH1FLuHCgDL6YfUWUlKD/YT0lbStJSLyMMP01x/rLkdm/lGSKKD3A9ku61i2SSb7R0U4zI
X-Received: by 2002:a37:40d3:: with SMTP id n202mr6155096qka.58.1554140451422;
        Mon, 01 Apr 2019 10:40:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554140451; cv=none;
        d=google.com; s=arc-20160816;
        b=P/p+NPY3ggdck2IxP/UDTqXHd40T8mi83jB585l4SFApWRdzhsd3X2uOx6xe/6czjE
         MOS6CYmX/1SfPua9iaY0fg70NN8RVoCpsAGLP1rR3cBiFeoEqoiAjlqLjatSISLecGJX
         WkC+OyvEIlEwM3i50hEyh+hl1pqXg+9F31EVSilkuMyCnJtPVAGPz4JQEHChEZIzdr5M
         fIz+u71+dtx8zMC9rYJrqrzAyD1dWWCG3vcKoGWIHLGeJx5zIVbTj49+/JrC81z1btNk
         qEo9DShmtXnrJWmOXy/+jNw6EhW1cideXWcE8f9rnEBiL2s2XQmbFo4oB7V0p0YARpom
         SOCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NPEuRdIwI9R+JiiY2xNeyyFpGGU5YQgH1y1esyF5ci0=;
        b=zE8lcZrHau6ky7SMCcmIXpPyLqvgqM9BGCjURFn7FB4xZV3yV+9vcX1c4fnTTCNPX9
         a7uOOP6GF8rhYbK9WAEiebvTbmmAbzmp9spMAo2TohlgzSBlx8LZj9AEOeyZ1gSKnomt
         xkJd82xRVkB0cvZqV0fHFk661A+xx2VmXFIK3YchwfBaahOW1otShuduBbtgSI1d+VuU
         x9f4Olqtj3pfNScZdN85DgnlMDhrPUjnGCGc8lZNe70VLyIBRbCccFLxc1MWAOE74qbt
         j/45Gm/vhf0/oFYezSIDAKcKpTDTZOAJEmc09QE7a6I0yZ0Y8ciU9gyhEZpICy6+Ixoc
         ZZDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MtjG6Z60;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q58si511377qtf.5.2019.04.01.10.40.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 10:40:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MtjG6Z60;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F247320880;
	Mon,  1 Apr 2019 17:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1554140449;
	bh=j9K2dmp0tzc40+jFrpdQeWpxWt5qHHEvG0z9q/1NYis=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MtjG6Z60QtjususLK0I7sxua4I4uFkNzeLTgj/6TDtxYDauuPt6rervRA2enx9GxT
	 wrdhhMpBVesgb5J0TxfTr+e8jJI7Eq63SxMcNG4BYbOYa1jOB7TSRUVEgZWYtyb3k1
	 +FVsRmiDdKz+DeebFNKXYj/9sX443aMcONMJMHr0=
Date: Mon, 1 Apr 2019 19:27:54 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: rtl8723bs: core: rtw_mlme_ext.c: Remove
 typecast in kfree
Message-ID: <20190401172754.GA5990@kroah.com>
References: <20190401143349.6618-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190401143349.6618-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Mon, Apr 01, 2019 at 09:33:49AM -0500, Madhumitha Prabakaran wrote:
> Remove typecast in kfree, as per definition of kfree in
> include/linux/slab.h#L144, the parameter type of kfree is void*, and
> hence C compiler casts any pointer type to void*.
> that is allocated with kmalloc.
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> 
> ---
> Changes in v2:
> - Modified commit log
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 22 +++++++++----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> index d97c1e6d5c01..430758f298af 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> @@ -816,7 +816,7 @@ unsigned int OnBeacon(struct adapter *padapter, union recv_frame *precv_frame)
>  					update_network(&(pmlmepriv->cur_network.network), pbss, padapter, true);
>  					rtw_get_bcn_info(&(pmlmepriv->cur_network));
>  				}
> -				kfree((u8 *)pbss);
> +				kfree(pbss);
>  			}
>  
>  			/* check the vendor of the assoc AP */
> @@ -5043,7 +5043,7 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
>  	cmdsz = (sizeof(struct survey_event) + sizeof(struct C2HEvent_Header));
>  	pevtcmd = rtw_zmalloc(cmdsz);
>  	if (pevtcmd == NULL) {
> -		kfree((u8 *)pcmd_obj);
> +		kfree(pcmd_obj);
>  		return;
>  	}
>  
> @@ -5064,8 +5064,8 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
>  	psurvey_evt = (struct survey_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
>  
>  	if (collect_bss_info(padapter, precv_frame, (struct wlan_bssid_ex *)&psurvey_evt->bss) == _FAIL) {
> -		kfree((u8 *)pcmd_obj);
> -		kfree((u8 *)pevtcmd);
> +		kfree(pcmd_obj);
> +		kfree(pevtcmd);
>  		return;
>  	}
>  
> @@ -5096,7 +5096,7 @@ void report_surveydone_event(struct adapter *padapter)
>  	cmdsz = (sizeof(struct surveydone_event) + sizeof(struct C2HEvent_Header));
>  	pevtcmd = rtw_zmalloc(cmdsz);
>  	if (pevtcmd == NULL) {
> -		kfree((u8 *)pcmd_obj);
> +		kfree(pcmd_obj);
>  		return;
>  	}
>  
> @@ -5143,7 +5143,7 @@ void report_join_res(struct adapter *padapter, int res)
>  	cmdsz = (sizeof(struct joinbss_event) + sizeof(struct C2HEvent_Header));
>  	pevtcmd = rtw_zmalloc(cmdsz);
>  	if (pevtcmd == NULL) {
> -		kfree((u8 *)pcmd_obj);
> +		kfree(pcmd_obj);
>  		return;
>  	}
>  
> @@ -5194,7 +5194,7 @@ void report_wmm_edca_update(struct adapter *padapter)
>  	cmdsz = (sizeof(struct wmm_event) + sizeof(struct C2HEvent_Header));
>  	pevtcmd = rtw_zmalloc(cmdsz);
>  	if (pevtcmd == NULL) {
> -		kfree((u8 *)pcmd_obj);
> +		kfree((pcmd_obj);

ALWAYS test build your patches, otherwise you will get a grumpy
maintainer when their build breaks when they apply your patch :(

This line is obviously incorrect :(

Please fix up and resend.

thanks,

greg k-h

