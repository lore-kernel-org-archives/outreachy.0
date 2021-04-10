X-GM-THRID: 6949457058068430848
X-Received: by 2002:a17:90b:1b4e:: with SMTP id nv14mr18593301pjb.115.1618047081687;
        Sat, 10 Apr 2021 02:31:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:530e:: with SMTP id h14ls4707436pgb.11.gmail; Sat, 10
 Apr 2021 02:31:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxs2nLvqG3AmniVaAYoDqeIPrGFpSv8kRPF4UDwh9EqP3ojkHvDAVm1PSNBvRhDNoWfpCSC
X-Received: by 2002:a63:3644:: with SMTP id d65mr17004600pga.49.1618047080257;
        Sat, 10 Apr 2021 02:31:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618047080; cv=none;
        d=google.com; s=arc-20160816;
        b=NxhbHr0qAlyizkqkzuABcQtCHgQ84wolUZeEiHo31lNLJjFv0Ubjp8zLjA4DmdEHK1
         b578Xkzfhv0cIF6QIL48SaYDafCH84M5d8KSRlv6cruPnPJ1H5+XpJhvA42YwXgscveI
         KLXqMNJ7nBe6d8OcjXeRlA8ATiuQhHRfl/u/OeKRAX4qVNm4XA9XeJEwQ9yNx7wej20H
         8g5ReTrOumgj+zwZCY8jxgg8Y6OigRS4zXmO4UYVFh4nZrzUhjKIEYJ/26eIFC7TKrx9
         uU9Rw+dRrrjANAuFswa7CUW+Nn3AcKwTJCoG6z7Q1tfYuAg8wNFXh6/GPDcy1HYIt8R8
         l3Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QmDeOf2A4hKLarKn6DOUlAq0URX3uf7EHQP7rc2Tiz0=;
        b=O8MBpzB6o6QQRlBQ3/84OGqkVca3W6Io5JI7OzY9dmJhvOWI2UkpFgaromYrHyMhK/
         Rga7MAB8slm3h+Dhe7qZOtHruBzNxQTQDowD+IaloWsJ0UY8/h/s1qLHe5TkDkSH7e9Z
         Iwi07tlhHP1UloWblGUyiGnDH4zXzla7ENSz5fdulB1isEwFH0jtbvy7t9gbuK2308QK
         c+/a1z2mzqsOtbJynvBO2L+hjMZMugPuggYF6oq2LT7KAF4S5oRaavBzB+LsMHdhGtqA
         S/VapOl59D4E4DMV9dkv1gIdnihTF7H8fyrjnlYMlUR3rFHkI+aY9FacSgs7hhtsEot0
         MTRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=ZR5uxYuJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id mp9si332802pjb.1.2021.04.10.02.31.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 02:31:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=ZR5uxYuJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5494461182;
	Sat, 10 Apr 2021 09:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618047079;
	bh=dLqzpPxQV6VLbGBARRZ7SF+swEOzYvvusa6Xhacvhsk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZR5uxYuJNKPQjKllJFffuIUxykNDky0RWSygO3WaeD1KbCrS9Ml/xR0fNbTenb/5y
	 9Hb3Vq7CVYMPO/3bCsvZLBScu0mDlFalUC8cmdJ4Lle4wi8f4sHTVbM5hK1oQHR45t
	 KpT2GlZp4Lq6Ak4kCSuOdwFlJLoUSky3Ms4Y3auE=
Date: Sat, 10 Apr 2021 11:31:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8723bs: Change the
 type and use of a variable
Message-ID: <YHFwZCh+s7ymrsQN@kroah.com>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com>
 <20210410092232.15155-5-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210410092232.15155-5-fmdefrancesco@gmail.com>

On Sat, Apr 10, 2021 at 11:22:32AM +0200, Fabio M. De Francesco wrote:
> Change the type of fw_current_in_ps_mode from u8 to bool, because
> it is used everywhere as a bool and, accordingly, it should be
> declared as a bool. Shorten the controlling
> expression of an 'if' statement.
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/hal_intf.c        | 2 +-
>  drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c b/drivers/staging/rtl8723bs/hal/hal_intf.c
> index 96fe172ced8d..8dc4dd8c6d4c 100644
> --- a/drivers/staging/rtl8723bs/hal/hal_intf.c
> +++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
> @@ -348,7 +348,7 @@ void rtw_hal_dm_watchdog(struct adapter *padapter)
>  
>  void rtw_hal_dm_watchdog_in_lps(struct adapter *padapter)
>  {
> -	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode == true) {
> +	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode) {
>  		if (padapter->HalFunc.hal_dm_watchdog_in_lps)
>  			padapter->HalFunc.hal_dm_watchdog_in_lps(padapter); /* this function caller is in interrupt context */
>  	}
> diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> index 0a48f1653be5..0767dbb84199 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> @@ -203,7 +203,7 @@ struct pwrctrl_priv {
>  	u8 LpsIdleCount;
>  	u8 power_mgnt;
>  	u8 org_power_mgnt;
> -	u8 fw_current_in_ps_mode;
> +	bool fw_current_in_ps_mode;
>  	unsigned long	DelayLPSLastTimeStamp;
>  	s32		pnp_current_pwr_state;
>  	u8 pnp_bstop_trx;

If this is only checked, how can it ever be true?  Who ever sets this
value?

thanks,

greg k-h

