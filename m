X-GM-THRID: 6200307025703862272
X-Received: by 10.195.18.100 with SMTP id gl4mr613547wjd.4.1443623984481;
        Wed, 30 Sep 2015 07:39:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.21.39 with SMTP id s7ls48612lae.15.gmail; Wed, 30 Sep 2015
 07:39:43 -0700 (PDT)
X-Received: by 10.112.198.33 with SMTP id iz1mr607719lbc.8.1443623983870;
        Wed, 30 Sep 2015 07:39:43 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id bj4si28118wib.1.2015.09.30.07.39.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 07:39:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,612,1437429600"; 
   d="scan'208";a="180222257"
Received: from unknown (HELO hadrien.local) ([89.202.203.52])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 30 Sep 2015 16:39:42 +0200
Date: Wed, 30 Sep 2015 16:39:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: cdc: Prefer using the
 BIT macro
In-Reply-To: <1443621463-8343-1-git-send-email-shraddha.6596@gmail.com>
Message-ID: <alpine.DEB.2.10.1509301638480.2526@hadrien>
References: <1443621463-8343-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 30 Sep 2015, Shraddha Barke wrote:

> Replace bit shifting on 1 with the BIT(x) macro
>
> This was done with coccinelle:
> @@ int g; @@
>
> -(1 << g)
> +BIT(g)
>
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/iio/cdc/ad7746.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
> index 10fa372..aa97437 100644
> --- a/drivers/staging/iio/cdc/ad7746.c
> +++ b/drivers/staging/iio/cdc/ad7746.c
> @@ -52,10 +52,10 @@
>  #define AD7746_STATUS_RDYCAP		BIT(0)
>
>  /* Capacitive Channel Setup Register Bit Designations (AD7746_REG_CAP_SETUP) */
> -#define AD7746_CAPSETUP_CAPEN		(1 << 7)
> -#define AD7746_CAPSETUP_CIN2		(1 << 6) /* AD7746 only */
> -#define AD7746_CAPSETUP_CAPDIFF		(1 << 5)
> -#define AD7746_CAPSETUP_CACHOP		(1 << 0)
> +#define AD7746_CAPSETUP_CAPEN		BIT(7)
> +#define AD7746_CAPSETUP_CIN2		BIT(6) /* AD7746 only */

It looks like you could improve the indentation here, since BIT is a
little shorter than the original code.

julia

> +#define AD7746_CAPSETUP_CAPDIFF		BIT(5)
> +#define AD7746_CAPSETUP_CACHOP		BIT(0)
>
>  /* Voltage/Temperature Setup Register Bit Designations (AD7746_REG_VT_SETUP) */
>  #define AD7746_VTSETUP_VTEN		(1 << 7)
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443621463-8343-1-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

