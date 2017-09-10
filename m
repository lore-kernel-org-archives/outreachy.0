X-GM-THRID: 6463854288984604672
X-Received: by 10.25.195.206 with SMTP id t197mr60562lff.40.1505034685014;
        Sun, 10 Sep 2017 02:11:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.87.148 with SMTP id l142ls676748wmb.14.canary-gmail; Sun,
 10 Sep 2017 02:11:24 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb4++zRI7PPCvfsZgdojcpkNKXftAns14tCTzzQoLAzqsHQU95+r0HKrWJEeCiwqt+QsdA+Z
X-Received: by 10.28.145.206 with SMTP id t197mr595201wmd.11.1505034684108;
        Sun, 10 Sep 2017 02:11:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505034684; cv=none;
        d=google.com; s=arc-20160816;
        b=eBM7lAuUNjsxADCfKNK6W20ogIXk+2lNKSofDp3XTKAQNoWHuB3y5FtftkBGdcgng9
         9K4dRUgqAlgcpQ1+FoKJ+3C95HcJCrEx6gs5OWmc82t094Yoj5wtLQLLSZApyJPnBd5Y
         S1ORgbS/vW3/IYbOdgsfcCNC5leOwT/RwhbxCoescM6PdhxQGpWP8NowDm6TgJWF4UXH
         RH/8pknsfTI2X7mePGsSYvg2102/Nl3BTuneN73b6p62SWl3JK0g/6d3NIUrhok3ZsWt
         S+50N9prt0fwAQtnJT9jLInrE0t1SfV08S14JfqyaVAnacj+704UGY4RovQtI86VCWnf
         wSTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=YGYeZq8mLcXGw6bjXwvOE+/jojR6pXcM87HpqqqB0O0=;
        b=aLbdLqxssOb2czPIOxcrq8cc2Z22LKLtjwLvYiznike07nkwEyUwozNq1+kPECbYVi
         6iwX0nYrpYRXlkU2tGXm1zBFFdopupWhjn51a+k8kvJXRsWqBbJj3pMyLSYqghEM0Ucg
         +6HfUvpYYWySocUo30rUbCJHD98L3qY9bpZ5LAGTQkvKLDCexc7XhQcHxmY52KSkXE7J
         UO0PE5Eb+3Q6jfZF5Ob6zZtnneuNtleSPu86TUsHmzd8E6n94CEA36Ph9IAKCFhjQP1H
         uomxidbVjcWRPF/EBjPpR1djmjY3t5fOw08ElLQ1p0ij96vR/BTcUU9POSb7IqBPFNAL
         la4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b130si312769wme.0.2017.09.10.02.11.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 02:11:24 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,372,1500933600"; 
   d="scan'208";a="236930601"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Sep 2017 11:11:23 +0200
Date: Sun, 10 Sep 2017 11:11:23 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shreeya Patel <shreeya.patel23498@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: rtlwifi: Remove unnecessary
 'out of memory' message.
In-Reply-To: <1505033456-3365-1-git-send-email-shreeya.patel23498@gmail.com>
Message-ID: <alpine.DEB.2.20.1709101107400.6842@hadrien>
References: <1505033456-3365-1-git-send-email-shreeya.patel23498@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 10 Sep 2017, Shreeya Patel wrote:

> Logging messages that show some type of "out of memory" error
> are generally unnecessary as there is a generic message and
> a stack dump done by the memory subsystem.
>
> These messages generally increase kernel size without much
> added value.
>
> Problem found by checkpatch.
>
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
>
> Changes in v3:
>   -Make the commit message more appropriate.

The changelog needs to be under the ---.  In that way it will be discarded
when the patch is committed.  When looking at the git tree, the
information about the previous versions is not relevant, because those
versions aren't available in the git tree.  Explain all the changes, not
just the most recent one.  It's a bit awkward in this case because v1
wasn't sent to the list, but put something for that, so that it will be
clear why we are up to the current version number.

julia

>
> ---
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505033456-3365-1-git-send-email-shreeya.patel23498%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

