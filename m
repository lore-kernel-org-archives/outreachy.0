X-GM-THRID: 6668974051336126464
X-Received: by 2002:aca:f4ca:: with SMTP id s193mr8478558oih.21.1552891375011;
        Sun, 17 Mar 2019 23:42:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:114f:: with SMTP id x15ls2455605otq.3.gmail; Sun,
 17 Mar 2019 23:42:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxAiytH0XW7vlvvPxpI5S+VLkkGcMWnnYKM40eFs2WmfDSBERUNOGw07DRY67IzJ9kH4zos
X-Received: by 2002:a9d:64cb:: with SMTP id n11mr9491282otl.48.1552891374337;
        Sun, 17 Mar 2019 23:42:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552891374; cv=none;
        d=google.com; s=arc-20160816;
        b=0Xh2iSE85DvCNBo2miv3h1WPIZNLvRILGC1ZBGIfpE77xEBxwTePkbqtkZ5TDjgzJA
         k1dOmay9w5hGJzJbuMIyHSnVoVY3vWZH7lhoaUgpJY/JoTiyE8D4OnEA6PqRdlvuTywU
         zQIrXWqLToT6IQT/0/RBzdTJRS533gEgGBjQWNm0ikEMf56B4UV24J2SG5/+SEMJS2t1
         8pWW2OAfna/QMa9YC4/xmk9vL6B7/ryFDcE59A/SNB4v1Ma0F7+qHwKJ9LbT80Y9RjMM
         EWViD2GJm56/2S1sCFYXt99Em//29ZFbiNEJ2d6it2IeBR4nD1+lI3pJikRJw7ijlBfb
         uRoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cQP80GGC4KdP/oeQi6IZFVeQuIVihwQbALDrxLIS5b0=;
        b=y2oE6qjVwK045WQf36tY3YcN7CPrYDcyNuJVdGkNJhV0Qg1BFhfSOxLFYNzGeK1R0/
         Mg7VGuY/FlsFT/ClVdHRBTSYyYbyVb8a1Z+nZs3FYKtEUkgJPcTYVpEnVJqYfdEDOw89
         4zN/v4umNyMAjh2PRtsi76E5DPaKhA4kSJh0XM8ek3oEwD3ob73XfB4aAn7YqdLDmbk1
         ++KxHtgXB4Omy0Za9h+H9K9Nl1CI4B1sGDGRwDh+jzRiEf0dsc8R+NeVae+dZLY4wq4T
         tJFBpWH6CBlw9ElPvNgu7YJjM6jmEQBX80yhgsoiJkZ8KbD1B6KfmuOT3qqODTcraNNU
         RCsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YiIyCCpE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a188si528122oih.4.2019.03.17.23.42.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 23:42:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YiIyCCpE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EC4292082F;
	Mon, 18 Mar 2019 06:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552891373;
	bh=dkcaGxL9wkrHJfsIvZHZXZ1jSVGQ3ZOeTmiBPQXmQQ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YiIyCCpEZ9hcYpk27YwEFTfPvt6Wffm+pGbiVKCI8VkpS4F0CmnQ5QAsO7i/8mCBU
	 9xVIR1iO22KWJr0aEX954P2tF9iEh0cFXIGWdWKrfb37UteJQ5x+AjZ0bYvckf/UW8
	 Vy0Ww+W/jiYucle0h5rQ19fUKpIHv8WkP97xgc44=
Date: Mon, 18 Mar 2019 07:42:50 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 3/5] Staging: rtl8723bs:  Change values to standard
 error codes in functions
Message-ID: <20190318064250.GB28557@kroah.com>
References: <cover.1552858206.git.madhumithabiw@gmail.com>
 <3079e4485a34348cdaed25939551424267ee32f6.1552858206.git.madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3079e4485a34348cdaed25939551424267ee32f6.1552858206.git.madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 04:33:56PM -0500, Madhumitha Prabakaran wrote:
> Change values to stand error codes in functions rtw_init_cmd_priv and
> rtw_init_evt_priv, as _SUCCESS should be 0 and _FAIL should be -ENOMEM
> (as in this case, these are memory allocating functions). Also, change
> the values in corresponding call sites of the functions.
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c    | 8 ++++----
>  drivers/staging/rtl8723bs/os_dep/os_intfs.c | 4 ++--
>  2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index ab450f717f34..f8a4f910bfea 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -164,7 +164,7 @@ No irqsave is necessary.
>  
>  int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
>  {
> -	int res = _SUCCESS;
> +	int res = 0;
>  
>  	init_completion(&pcmdpriv->cmd_queue_comp);
>  	init_completion(&pcmdpriv->terminate_cmdthread_comp);
> @@ -178,7 +178,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
>  	pcmdpriv->cmd_allocated_buf = rtw_zmalloc(MAX_CMDSZ + CMDBUFF_ALIGN_SZ);
>  
>  	if (pcmdpriv->cmd_allocated_buf == NULL) {
> -		res = _FAIL;
> +		res = -ENOMEM;
>  		goto exit;
>  	}
>  
> @@ -187,7 +187,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
>  	pcmdpriv->rsp_allocated_buf = rtw_zmalloc(MAX_RSPSZ + 4);
>  
>  	if (pcmdpriv->rsp_allocated_buf == NULL) {
> -		res = _FAIL;
> +		res = -ENOMEM;
>  		goto exit;
>  	}
>  
> @@ -203,7 +203,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
>  static void c2h_wk_callback(_workitem *work);
>  int rtw_init_evt_priv(struct evt_priv *pevtpriv)
>  {
> -	int res = _SUCCESS;
> +	int res = 0;
>  
>  	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
>  	atomic_set(&pevtpriv->event_seq, 0);
> diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> index 143e3f9b31aa..6b3def0397f0 100644
> --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> @@ -757,7 +757,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
>  
>  	rtw_init_hal_com_default_value(padapter);
>  
> -	if ((rtw_init_cmd_priv(&padapter->cmdpriv)) == _FAIL) {
> +	if ((rtw_init_cmd_priv(&padapter->cmdpriv)) == -ENOMEM) {

No need to check for a specific error value, just _any_ error value.

>  		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init cmd_priv\n"));
>  		ret8 = _FAIL;
>  		goto exit;
> @@ -765,7 +765,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
>  
>  	padapter->cmdpriv.padapter = padapter;
>  
> -	if ((rtw_init_evt_priv(&padapter->evtpriv)) == _FAIL) {
> +	if ((rtw_init_evt_priv(&padapter->evtpriv)) == -ENOMEM) {

Same here.

thanks,

greg k-h

