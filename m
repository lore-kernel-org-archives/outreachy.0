X-GM-THRID: 6388911007678332928
X-Received: by 10.28.29.216 with SMTP id d207mr540123wmd.2.1487534533723;
        Sun, 19 Feb 2017 12:02:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.184.129 with SMTP id i123ls935715wmf.6.canary-gmail; Sun,
 19 Feb 2017 12:02:12 -0800 (PST)
X-Received: by 10.28.47.67 with SMTP id v64mr583466wmv.3.1487534532782;
        Sun, 19 Feb 2017 12:02:12 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f7si655383wmg.3.2017.02.19.12.02.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 12:02:12 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,182,1484002800"; 
   d="scan'208";a="213986327"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Feb 2017 21:02:11 +0100
Date: Sun, 19 Feb 2017 21:02:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, Lars-Peter Clausen <lars@metafoo.de>, 
    Michael Hennerich <Michael.Hennerich@analog.com>, 
    Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
    Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] staging: iio: ad7152: Use
 BIT() macro for left shifting 1
In-Reply-To: <06283c7cbccd40a7214bf4f047c3829e53b6d448.1487483384.git.karniksayli1995@gmail.com>
Message-ID: <alpine.DEB.2.20.1702192101420.2363@hadrien>
References: <cover.1487483384.git.karniksayli1995@gmail.com> <06283c7cbccd40a7214bf4f047c3829e53b6d448.1487483384.git.karniksayli1995@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 20 Feb 2017, sayli karnik wrote:

> Replace left shifting on 1 with the BIT(x) macro as suggested by
> checkpatch.pl.
>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> v2:
> Used GENMASK() macro instead of BIT() macro for multi-bit bitfields.
> Removed extra parentheses around argument to macro
>
>  drivers/staging/iio/cdc/ad7152.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
> index b91b50f..e8609b8 100644
> --- a/drivers/staging/iio/cdc/ad7152.c
> +++ b/drivers/staging/iio/cdc/ad7152.c
> @@ -41,10 +41,10 @@
>  #define AD7152_REG_CFG2			26
>
>  /* Status Register Bit Designations (AD7152_REG_STATUS) */
> -#define AD7152_STATUS_RDY1		(1 << 0)
> -#define AD7152_STATUS_RDY2		(1 << 1)
> -#define AD7152_STATUS_C1C2		(1 << 2)
> -#define AD7152_STATUS_PWDN		(1 << 7)
> +#define AD7152_STATUS_RDY1		BIT(0)
> +#define AD7152_STATUS_RDY2		BIT(1)
> +#define AD7152_STATUS_C1C2		BIT(2)
> +#define AD7152_STATUS_PWDN		BIT(7)
>
>  /* Setup Register Bit Designations (AD7152_REG_CHx_SETUP) */
>  #define AD7152_SETUP_CAPDIFF		(1 << 5)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/06283c7cbccd40a7214bf4f047c3829e53b6d448.1487483384.git.karniksayli1995%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

