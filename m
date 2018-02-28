X-GM-THRID: 6527357137219223552
X-Received: by 10.80.138.132 with SMTP id j4mr5164174edj.4.1519804702969;
        Tue, 27 Feb 2018 23:58:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.170.50 with SMTP id o47ls1821782edc.3.gmail; Tue, 27 Feb
 2018 23:58:20 -0800 (PST)
X-Google-Smtp-Source: AH8x2259cYKaEKEbaYscmqJ2lDjnnawnkXNNdif3NF72JkU0W6C4UrCaaR2GzorD6BLGY/2Ss7ME
X-Received: by 10.80.177.147 with SMTP id m19mr5169111edd.11.1519804700732;
        Tue, 27 Feb 2018 23:58:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519804700; cv=none;
        d=google.com; s=arc-20160816;
        b=SR2alBcK7EPqL0eT9/YUo5rzXznI0+rYamDUJVGlM2DjTKRGjrDXW5VkONF5YU4tCl
         wNcAk/5kGXYKHTy9xhK+79keDKGfgMox7HpH0vS/P9RqM1PmbMohwXLkkLksdWZDRnw3
         8i5M6nOJt2y9kuoFyVIrQ7pPRXNGEEPDE9InKHpv+6RSItTVkXW5cOVIytUwmnOuxtHi
         FqpH5r1qjvZZJ/w1Hl0IV8pbAjjvrhhgWRNSOIElEWwQrWDfix6NwrYJEcUrskbMkuYo
         FaYXsYOONYPcPvxsIDXqR+ewHuLXGELFnwEeHUNlYIJLyeK2xg+ZDQ6KkAcpUoDrmVtp
         77tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=c+VK/OSWAHGewWbTRu0QmCDw66FYdhJoxs7AdztAvEI=;
        b=kM5oDb9gSwNMkVDvVqM8YBnDIO5pr08nQNZNgbdD7+boMm6v84ctOCh4ZQR1gGpztJ
         XYmuyk25+BwY9wmOeocU8LFPeJW5JaSB9Bai6QkOdcRHowuFw9rKIC52cCLWDgdP4xZ8
         nmQHKe/9BZISXTdeGUU34J+cZXtnC+TCSyobDaTMYHHFjOI+WvU88dLg50A38hm45DHU
         0Z+WVyEOf6Pohsgif+MS8RfcBb955cwM/umHrFBRDEgEoAJPHwlKAcmHaOr5Al7MM8KN
         pjfeAKx1RjYoue3rZLoRv+p8fh911FpMQmwzXtzFTr/1VXISlhnXhsrJ1/cNMVdgKq6m
         mCnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y16si113799edc.1.2018.02.27.23.58.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 23:58:20 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,404,1515452400"; 
   d="scan'208";a="315595633"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2018 08:58:20 +0100
Date: Wed, 28 Feb 2018 08:58:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: Gilles Muller <Gilles.Muller@lip6.fr>, nicolas.palix@imag.fr, 
    michal.lkml@markovi.net, Masahiro Yamada <yamada.masahiro@socionext.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Coccinelle: memdup: Fix typo in warning messages
In-Reply-To: <20180227215914.GA4522@gmail.com>
Message-ID: <alpine.DEB.2.20.1802280856280.2657@hadrien>
References: <20180227215914.GA4522@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 27 Feb 2018, Dafna Hirschfeld wrote:

> Replace 'kmemdep' with 'kmemdup' in warning messages.

Thanks for the detailed commit log.  Because I stared and stared at it and
couldn't see the difference :)

>
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  scripts/coccinelle/api/memdup.cocci | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/scripts/coccinelle/api/memdup.cocci b/scripts/coccinelle/api/memdup.cocci
> index 1249b72..8fd6437 100644
> --- a/scripts/coccinelle/api/memdup.cocci
> +++ b/scripts/coccinelle/api/memdup.cocci
> @@ -56,10 +56,10 @@ statement S;
>  p << r.p;
>  @@
>
> -coccilib.org.print_todo(p[0], "WARNING opportunity for kmemdep")
> +coccilib.org.print_todo(p[0], "WARNING opportunity for kmemdup")
>
>  @script:python depends on report@
>  p << r.p;
>  @@
>
> -coccilib.report.print_report(p[0], "WARNING opportunity for kmemdep")
> +coccilib.report.print_report(p[0], "WARNING opportunity for kmemdup")
> --
> 2.7.4
>
>

