X-GM-THRID: 6670717697091698688
X-Received: by 2002:aca:cc42:: with SMTP id c63mr687199oig.3.1553152768568;
        Thu, 21 Mar 2019 00:19:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:b446:: with SMTP id d67ls144239oif.3.gmail; Thu, 21 Mar
 2019 00:19:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzMMnnysAUvykdUYeLjCfjDvMGa2BHeGMqptrfLLJHkuli6p2VO4THFK7yzHGAU45vHCsrQ
X-Received: by 2002:aca:30c7:: with SMTP id w190mr719153oiw.53.1553152768006;
        Thu, 21 Mar 2019 00:19:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553152768; cv=none;
        d=google.com; s=arc-20160816;
        b=soIxVjcPGRyCFmXQdNSqXgnn2NNRdvIuPa+ZbbfYDfIpS6RmqVDRbdFMyPZkWy8TAM
         SOY8NzdgkhjsDy/0bXBcsDJh8+JuPPA8nGkp8IJ5KlpwUmLEzUTh93/xsGIHq9AIiO/w
         rktm+W0omBzAKF99iB3gxegfA0MnE2rL7a+vBnrWaou5zPmh3BMiVTTFmwDGAkWVf5Ma
         hpD5LUiYLqGuDeAc5ZjXjpi/vWwE+8rYoA7SBe1AIkvMx4za453k2qZFlcJ0xFN/Z5Dl
         h2GLBynm14e5v5csKGxdVbU6GdQ1i3vys4ZEU2fhvT83gDb8i0KQ3/YFHJOOEvwyfkds
         bkNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=kEmLuAWMIc3v7rWIngiZHWz8lgnb1POFc11BWgp61BM=;
        b=s5H98ejNQ1tRcs7GhCs39PBhszNtoNkVT2qKbaKlKZWTu2gvj0Ivs4ruyAf2kXPpYw
         VVdDAA10sJ5djAwpIYLO7nOVwRrxSQclSaF6zkt89/n1QKn01EpUqQCJRs/YrBkKEQE8
         XGngmbNbhFLJQlI8CZkRxvHQTPSw8YIEZsf7KPzS6GDxqZl5gifqWqqX5OsVxi+tvYFl
         AjUHXYYlRtUAA8R/QRTtPoBAbvci5S02IVCMLEoCfxkvUMi3rA5uh1j6TPRdofVsTg0a
         rw6mkLURs5gjwIpkSA0dMZiyWsX16XnLFe38O7ozSO5Vp0KbtutgbHPW5/bhdQwpb0yE
         eklg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ue7941WU;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k21si365196otl.0.2019.03.21.00.19.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:19:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ue7941WU;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B3B41218D4;
	Thu, 21 Mar 2019 07:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553152767;
	bh=NTnOrwlf2qa3sr8LyihsSDyrbINGSS5Kc5kRbbQ3DCk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ue7941WUXS4S/cw6DTQO3c/OIUhLCurqBJn+YHrA4JdRWj3i36aSKMa/P9n9mqdp3
	 GKFKonT4fCmhoW4pzvSODCmgtBU9n+QMPEXuYib/BSSLVUEq2I42Nl/txiVBN3zCBC
	 NI++L7V9+eQIQ1iXtzmO7DZoAW1HF8gJkegV5U7c=
Date: Thu, 21 Mar 2019 08:18:31 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: sm750fb: avoid camelcase
Message-ID: <20190321071831.GC28171@kroah.com>
References: <1553147475-6907-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1553147475-6907-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 11:21:15AM +0530, Payal Kshirsagar wrote:
> Eliminate camelcase to meet the style.

Meet what style?

> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_mode.c | 94 +++++++++++++++++------------------
>  1 file changed, 47 insertions(+), 47 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
> index 4dac691..5dfa87d 100644
> --- a/drivers/staging/sm750fb/ddk750_mode.c
> +++ b/drivers/staging/sm750fb/ddk750_mode.c
> @@ -13,13 +13,13 @@
>   * HW only supports 7 predefined pixel clocks, and clock select is
>   * in bit 29:27 of Display Control register.
>   */
> -static unsigned long displayControlAdjust_SM750LE(struct mode_parameter *pModeParam,
> -						  unsigned long dispControl)
> +static unsigned long display_control_adjust_SM750LE(struct mode_parameter *p_mode_param,
> +						    unsigned long disp_control)

Try doing only one type of fix per patch.

One to fix up structure fields, and then another one for function names.
Putting them all together makes it very hard to review.  This should be
a patch series for this type of fix.

thanks,

greg k-h

