X-GM-THRID: 6463854288984604672
X-Received: by 10.223.150.118 with SMTP id c51mr418563wra.20.1505038392452;
        Sun, 10 Sep 2017 03:13:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.65.81 with SMTP id o78ls23844lja.34.gmail; Sun, 10 Sep 2017
 03:13:10 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAICJiPZmISP7rV+5adlYcaNORZHiY97O8EINq6jImq8OQ6H1XK9aAVrJoHaUi0kSdHO0Iu
X-Received: by 10.46.77.5 with SMTP id a5mr570420ljb.33.1505038390813;
        Sun, 10 Sep 2017 03:13:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505038390; cv=none;
        d=google.com; s=arc-20160816;
        b=Pqk5bj9C5MBHLAFL+IRsU6i2N64Ol+Rue/fg8suXAg7gTk+V8WDi8/1hEbLMque/8L
         e6jwZmAT0CfLaaoMkajKBINI54yk3BnlEZgIQtwAyeDxy7hR2GIVzefErQUuh4Zg4K1W
         PlOfh6PU9FZmlq8LnkgtN9lO0G/x/X9il6qsIam0IKE9+Wxt7Zw0F0tAc20OMeLJLP5t
         MfGg7USnE1dV9tiW/YyXetnj0SEaU9dtVkP8FT9GOombeMYtswZMa7+WsNcEhHXzf9k9
         V2lBh/BTMVbQViB8gxXXeQ/Y1QVaz8l1nZfS0OnqTlJ9idlv28Kun1alOmkYf3Ean6u0
         Sc8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=g2Pobmlp6Y+Zeo+1hKBfxwrIy5z4rg+vluCUpJc4ieM=;
        b=RfvcuXsn9OejoYajX2PFVVI3vl/RT5oBLDxa/efZfVR8Rwoty3gbK9uQxo4mt9Vfmm
         P/6nbMqVJDbTk5VwCsq9qnewcfHJ9K71bYGeuSCaj08mx2ARDmiLteHIBr0hw2yGOeCl
         9lSMoMKB9eP9nhdbU3PS1myeXuFZadjzkvIqZnpBlwVFwPQ0d/PnXr+snd53oy//P+Zt
         cVO5slf6n89bcPMyWZ6I/MtQwcvT+9EBJ3ij5dYzLSyvfHaL3Yx4lsDdUpBJrgRqzl+n
         09HKPmZJnUEzeeI0hdtZi2VX7H3IH/xuGfXTBteIvz4XKGxcE4cp0lQcCffKthwgzpd1
         7HJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q145si105784wme.4.2017.09.10.03.13.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 03:13:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,372,1500933600"; 
   d="scan'208";a="290351322"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Sep 2017 12:13:10 +0200
Date: Sun, 10 Sep 2017 12:13:10 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shreeya Patel <shreeya.patel23498@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: rtlwifi: Remove unnecessary
 'out of memory' message.
In-Reply-To: <1505036405-3702-1-git-send-email-shreeya.patel23498@gmail.com>
Message-ID: <alpine.DEB.2.20.1709101212580.6842@hadrien>
References: <1505036405-3702-1-git-send-email-shreeya.patel23498@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 10 Sep 2017, Shreeya Patel wrote:

> Logging messages that show some type of 'out of memory' error
> are generally unnecessary as there is a generic message and
> a stack dump done by the memory subsystem.
>
> These messages generally increase kernel size without much
> added value.
>
> Problem found by checkpatch.
>
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>
> Changes in v4:
>   -Include v2 and v3 in the patch.
>
> Changes in v3:
>   -Make the commit message more appropriate.
>
> changes in v2:
>   -Original patch was not sent to the mailing list.
>    Also, add a tab before the return statement.
>
>  drivers/staging/rtlwifi/rc.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/rc.c b/drivers/staging/rtlwifi/rc.c
> index 65de0c7..779a5c6 100644
> --- a/drivers/staging/rtlwifi/rc.c
> +++ b/drivers/staging/rtlwifi/rc.c
> @@ -281,10 +281,8 @@ static void *rtl_rate_alloc_sta(void *ppriv,
> 	struct rtl_rate_priv *rate_priv;
>
> 	rate_priv = kzalloc(sizeof(*rate_priv), gfp);
> -	if (!rate_priv) {
> -		pr_err("Unable to allocate private rc structure\n");
> +	if (!rate_priv)
> 		return NULL;
> -	}
>
> 	rtlpriv->rate_priv = rate_priv;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505036405-3702-1-git-send-email-shreeya.patel23498%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

