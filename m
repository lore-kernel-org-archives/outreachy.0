X-GM-THRID: 7021611435626070016
X-Received: by 2002:a05:620a:2587:: with SMTP id x7mr8231010qko.181.1634882622103;
        Thu, 21 Oct 2021 23:03:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:27d8:: with SMTP id m24ls4272692qtg.6.gmail; Thu, 21 Oct
 2021 23:03:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz/jF2iQmNsIOEbvC434svc6+rTeXr14Q+FPs4Dksi0F1HkbFrc7WHlxUo2krZSrAL7AIxz
X-Received: by 2002:a05:622a:1a8c:: with SMTP id s12mr10867267qtc.303.1634882621220;
        Thu, 21 Oct 2021 23:03:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634882621; cv=none;
        d=google.com; s=arc-20160816;
        b=WsTYNCRLfpcfjpFH3bxS2NRXXgiqWPHzgzK+psajynTBl50u3zD+HjK5I662253Bv4
         sWdlv8s3nwQ774rBYAQBrSxsZxBxptcLvgaJFgmiZwnTTRM0dZbw/L1WQfqO4600DPBp
         YQQPKgRudXz/1LUAU9BVVu48QLDuE8s/foDI2JIwzcRvZdXyKv8Uf/vpFzKTPlpWLRho
         elX3Nf6D41yenHgqvcYyljqzApN1Pv6Dgud9rnEWvVcrOif5Bc+ywA9QhNeOvAwSoG04
         4ST1VcH+ilDxg41xXIOVktV+Pn/ufhH96ktp5jdp+lcDYHvkY8VLZGkSmEKWYGdoaOTv
         fv6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TK+U5Q771MhRvzUVYU2a4IL5GQ7nLjK+WI5xf/sZ0Zs=;
        b=FBp8Fu/FxjtTEg2bgXVv0wB3pK7ovhttu4ah3oTG9816RCRdrTcg99ZRP/TsMe3HyK
         c0GA1SZOm+2ny6TamFNiKZuplobVlBqrJF8UOFSXr9srRrKg/rkYjdfVAbiNXNSCQJ3l
         K6PfxKTUjC8zE35mx10YUHSqh1CAa2GqXl9+20fW8SDAoO5gw3iRuU4902rKWz8lU2vV
         hqSDBqrml1rwCkoV48YWrIG+G3IpJN4JpdeaHICaQW8CsHfDLATOSFQC4BN1OwKodsR0
         kiJdj1CRFuGIc5l1TYFHks7voFYvxDGz/yBPv9tLDWKFx7Vog391rpjdsT6X4SUHpmyD
         gbDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="gP4eMK/D";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 12si819257qtu.0.2021.10.21.23.03.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Oct 2021 23:03:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="gP4eMK/D";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id D9C0E610CF;
	Fri, 22 Oct 2021 06:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1634882620;
	bh=JzgnnT1vFNgovNqLd0ix+p3ErAjwejA4YDXOJPW46DY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gP4eMK/D/5vCVwIvgd2zAttaYuMFnHtCLmZpd1H506OMwbnAOo/VXsYOw34oPxeSb
	 Wk4A28bCoQy/XAVs2Xhb1xoB9DcJj2t68x8gK/qAQRpS5Nh+jMzzKCre3XevUKSdRN
	 aTAKYkAI9E4YWXy6V9UTCnHQ+J0UUl3KOXJa+tgk=
Date: Fri, 22 Oct 2021 08:03:35 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Kushal Kothari <kushalkothari285@gmail.com>
Cc: fabioaiuto83@gmail.com, ross.schm.dev@gmail.com,
	fmdefrancesco@gmail.com, marcocesati@gmail.com,
	straube.linux@gmail.com, philippesdixon@gmail.com,
	manuelpalenzuelamerino@gmail.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, mike.rapoport@gmail.com,
	kushalkotharitest@googlegroups.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 4/4] staging: rtl8723bs: core: Remove unnecessary blank
 lines
Message-ID: <YXJUNy0VXEwxeBe+@kroah.com>
References: <cover.1634845504.git.kushalkothari285@gmail.com>
 <f6d2ba1d544c70519bad5c04f012cba0214b379a.1634845504.git.kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f6d2ba1d544c70519bad5c04f012cba0214b379a.1634845504.git.kushalkothari285@gmail.com>

On Fri, Oct 22, 2021 at 01:27:53AM +0530, Kushal Kothari wrote:
> Remove useless blank lines
> 
> Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index fce3256cc275..690e4627663c 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -316,8 +316,6 @@ int rtw_cmd_filter(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
>  	return _SUCCESS;
>  }
>  
> -
> -
>  int rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
>  {
>  	int res = _FAIL;
> @@ -367,7 +365,6 @@ void rtw_free_cmd_obj(struct cmd_obj *pcmd)
>  	kfree(pcmd);
>  }
>  
> -
>  void rtw_stop_cmd_thread(struct adapter *adapter)
>  {
>  	if (adapter->cmdThread &&
> @@ -735,8 +732,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
>  	}
>  	/* for ies is fix buf size */
>  	t_len = sizeof(struct wlan_bssid_ex);
> -
> -
> +	

Please do not add new whitespace errors :(

Always run your patches through checkpatch.pl to ensure this.

thanks,

greg k-h

