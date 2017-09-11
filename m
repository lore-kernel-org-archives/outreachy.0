X-GM-THRID: 6463854288984604672
X-Received: by 10.46.22.11 with SMTP id w11mr753321ljd.30.1505149302744;
        Mon, 11 Sep 2017 10:01:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.58.12 with SMTP id h12ls1317392wma.9.canary-gmail; Mon, 11
 Sep 2017 10:01:41 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCHss83obSqyOLKpljxMvzCPajJDmgB+WiL+CGFmt5aA7mejj47Id6hs0Kwe8qWmfYyJid9
X-Received: by 10.28.134.137 with SMTP id i131mr963823wmd.29.1505149300672;
        Mon, 11 Sep 2017 10:01:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505149300; cv=none;
        d=google.com; s=arc-20160816;
        b=HueXiMVAhK57NX0yAHJve1HIpRWuw1Bq97+qyo8+wWAzAbgkEZO800T7RNW3fp0wzL
         2IaAMSA7AjuIvbEuPT2GWvczKSj+418oJDo48nuCdnAtGdaH8+KxdXTSsOILFETbkfcR
         sn7uZ4XhdFq4B3X69SIacXt7vxRAvxdKr89BMZwhugrgd4QuAucgKB+PGtdOtfpnpTGf
         a9r7XkUbrmGQP5WXJwmKbTXCAFbc32J9vI5J+KZ1457p2xVjs7Iz/WGCok4R65isRPa2
         QpX2HyDoI0BnvzBy5ywtWbNID+TDXhpRPQLCkLHh/Dep6LH6Iv0D3t3Xt4qwhprkvSRh
         T+lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=1WpSSEVpCIXEoZK4QBZ8yLY1A86kt+x1blSjG242Z8I=;
        b=dKZ9jpuOXc6TcxOrlnNKyj5zqyDZptnOQQYdv39SDyfU2NAapCgNPucfqusZUvartK
         c8vzB61P8ihtqSCJueonruv8US+9EYmrhseFrQTf8VFepGLUVmVHMn66BcJleGsywagD
         EHpJOLvaf3XXUGrv7Nn2nf3IhQa+ArPK0RJ6v0dI5TKAlZM1mPYBM4oM4fDeyW4dhItd
         fFAVM1R7oMwMXomMZLtlMZekW/O8f38ANJdnxyG3TMS+EtXSCAieqTmiXzUKgh2ZVLX+
         W91cQWWIxGcT42W8mD9+a28fyBK0JlnAI7/FagiNJR2Gi0YYg+BKkSaOhmiJRuMQj+vi
         nBiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o7si408484wme.1.2017.09.11.10.01.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:01:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,378,1500933600"; 
   d="scan'208";a="237088452"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Sep 2017 19:01:40 +0200
Date: Mon, 11 Sep 2017 19:01:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shreeya Patel <shreeya.patel23498@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v4] Staging: rtlwifi: Remove
 unnecessary 'out of memory' message.
In-Reply-To: <6e7b1bf6-89b9-a40e-4a67-af79312b12a7@gmail.com>
Message-ID: <alpine.DEB.2.20.1709111900220.16190@hadrien>
References: <1505036405-3702-1-git-send-email-shreeya.patel23498@gmail.com> <20170911163210.GA26981@kroah.com> <6e7b1bf6-89b9-a40e-4a67-af79312b12a7@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 11 Sep 2017, Shreeya Patel wrote:

>
>
>
> On Monday 11 September 2017 10:02 PM, Greg KH wrote:
>
> On Sun, Sep 10, 2017 at 03:10:05PM +0530, Shreeya Patel wrote:
>
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
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
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
> This patch is sent corrupted (leading space is gone), and git doesn't
> like it.  Can you please fix it up and resend?
>
> thanks,
>
> greg k-h
>
>
> Hello sir,
>
> If i am not removing the leading spaces then checkpatch is showing me errors
> for trailing whitespace.

Maybe you are not using checkpatch properly?  What is your command line?

julia

> But there are no leading spaces present in the file which i have modified.
> When i convert my changes into the patch, the whitespace errors are shown
> up.
> Can you please help me with this to make me understand why this is
> happening?
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/6e7b1bf6-89b9-a40e-4a67-
> af79312b12a7%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

