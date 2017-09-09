X-GM-THRID: 6463854288984604672
X-Received: by 10.28.142.201 with SMTP id q192mr484930wmd.23.1504984321923;
        Sat, 09 Sep 2017 12:12:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.58.12 with SMTP id h12ls502480wma.9.canary-gmail; Sat, 09
 Sep 2017 12:12:00 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCCSpnStmitnKuzGa5yTfxOh5cqrgEf3Rsta1P6OrObmcxap6XlzZKcHMjqXO81Ozyz1uLR
X-Received: by 10.28.230.198 with SMTP id e67mr482075wmi.24.1504984320868;
        Sat, 09 Sep 2017 12:12:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504984320; cv=none;
        d=google.com; s=arc-20160816;
        b=L/OxuL7MkDGZUKO/4EDFBgBCOs0sN3LKACIZUFLB9dzYgkSyeZf/tXcN3gw8yvYuYm
         uNmUkgvam22l84WisPJEvpq21i5uB/HBLI7WveJTzqd7UcB1lvuReIc4XmxDbi7Fc04a
         /Er90aaB0ajQ6bv/6avhZp4k0/9uwpKHe05TFt9L4TNj/QiA/vfixZTaaexjm2aFQfVy
         aWI7h3Uz64Ud7DFcLz4qGbKI90gf13A3sYcLqQHvN4HgD8kucv7GEuGazHynYuXMizRS
         Q0H5SGn1dqiqfMxBoSX5Lv5LMNuMx/ildLhD9tfYOBkRFD7HM83CoZLREl4/5DS2RJLN
         y1qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=FpD5VGJ4vezk0X7gs3SwKVgAZHJ7EOpm8IVUttL4idI=;
        b=c1r07bq2OvuL4vyGCVv6bEHLsH8+JkOcc1L6Af2UZ3Doi+2tYqshPeN9o47Fy++x5B
         dlVntxlLpgR2XzpFwvvXcujRdHUTyfRwIngDMdbXQxkHRRLWv5+7+5omENF0Zm91Zhd3
         LCLFOoB5FvBAhCxoSwX0BYKN0dGJzs2wqa+lwkgbwPOZgfKrYSuZzNr/zRUtnZHrXXva
         DrK9nNa0KVOsNh6YJTN6pDOhBaV0SgWOlIRooajVvookXZePEtaAvcYnG5/Xl7C5MQJh
         Z2+mBeLLzIT8bf8PmfyKRpxZSpNn0mg2TG426DMzkkb+QVgMJEEUX5UxqcdUB3CbNtyg
         unEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 200si479167wmj.0.2017.09.09.12.12.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 12:12:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,368,1500933600"; 
   d="scan'208";a="290304182"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Sep 2017 21:12:00 +0200
Date: Sat, 9 Sep 2017 21:12:00 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shreeya Patel <shreeya.patel23498@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtlwifi: Remove unnecessary
 'out of memory' message.
In-Reply-To: <1504983347-2957-1-git-send-email-shreeya.patel23498@gmail.com>
Message-ID: <alpine.DEB.2.20.1709092109580.2149@hadrien>
References: <1504983347-2957-1-git-send-email-shreeya.patel23498@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 10 Sep 2017, Shreeya Patel wrote:

> This patch removes unnecessary 'out of memory' message to make
> the code more efficient.

I'm not sure it is really an efficiency issue.  The kzalloc will probably
indeed never fail in practice.  And if it does, the system is probably in
a state where efficiency doesn't matter.  On the other hand, regardless of
whether the error occurs or not, the string will take up memory, and
anyway, it is redundant, because kzalloc will emit a backtrace on error
that will point to this call site.

julia


>
> Problem found by checkpatch.
>
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> ---
>
> Changes in v2:
>   -Add a tab before the return statement.
>
>  drivers/staging/rtlwifi/rc.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/rc.c b/drivers/staging/rtlwifi/rc.c
> index 65de0c7..779a5c6 100644
> --- a/drivers/staging/rtlwifi/rc.c
> +++ b/drivers/staging/rtlwifi/rc.c
> @@ -281,10 +281,8 @@ static void *rtl_rate_alloc_sta(void *ppriv,
>  	struct rtl_rate_priv *rate_priv;
>
>  	rate_priv = kzalloc(sizeof(*rate_priv), gfp);
> -	if (!rate_priv) {
> -		pr_err("Unable to allocate private rc structure\n");
> +	if (!rate_priv)
>  		return NULL;
> -	}
>
>  	rtlpriv->rate_priv = rate_priv;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504983347-2957-1-git-send-email-shreeya.patel23498%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

