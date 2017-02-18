X-GM-THRID: 6388545566354178048
X-Received: by 10.46.87.92 with SMTP id r28mr1359192ljd.15.1487450133762;
        Sat, 18 Feb 2017 12:35:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.93 with SMTP id t29ls366682ljd.29.gmail; Sat, 18 Feb
 2017 12:35:33 -0800 (PST)
X-Received: by 10.25.168.20 with SMTP id r20mr1409052lfe.10.1487450133201;
        Sat, 18 Feb 2017 12:35:33 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c188si314375wmd.0.2017.02.18.12.35.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 12:35:33 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,176,1484002800"; 
   d="scan'208";a="261109997"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2017 21:35:32 +0100
Date: Sat, 18 Feb 2017 21:35:32 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, Lars-Peter Clausen <lars@metafoo.de>, 
    Michael Hennerich <Michael.Hennerich@analog.com>, 
    Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
    Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: iio: ad7152: Use GENMASK()
 macro for left shifts
In-Reply-To: <92240a3dca0138880fe47a7df0a5e6df869c8199.1487448326.git.karniksayli1995@gmail.com>
Message-ID: <alpine.DEB.2.20.1702182135010.2383@hadrien>
References: <cover.1487448326.git.karniksayli1995@gmail.com> <92240a3dca0138880fe47a7df0a5e6df869c8199.1487448326.git.karniksayli1995@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 19 Feb 2017, sayli karnik wrote:

> Use GENMASK() macro for left shifting integers.
> Done using coccinelle:
> @@ int a,b; @@
>
> -(a << b)
> +GENMASK(a, b)
>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/iio/cdc/ad7152.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
> index 0c97d5a..988b89b 100644
> --- a/drivers/staging/iio/cdc/ad7152.c
> +++ b/drivers/staging/iio/cdc/ad7152.c
> @@ -48,27 +48,27 @@
>
>  /* Setup Register Bit Designations (AD7152_REG_CHx_SETUP) */
>  #define AD7152_SETUP_CAPDIFF		BIT(5)
> -#define AD7152_SETUP_RANGE_2pF		(0 << 6)
> +#define AD7152_SETUP_RANGE_2pF		GENMASK(0, 6)
>  #define AD7152_SETUP_RANGE_0_5pF	BIT(6)
> -#define AD7152_SETUP_RANGE_1pF		(2 << 6)
> -#define AD7152_SETUP_RANGE_4pF		(3 << 6)
> +#define AD7152_SETUP_RANGE_1pF		GENMASK(2, 6)
> +#define AD7152_SETUP_RANGE_4pF		GENMASK(3, 6)
>  #define AD7152_SETUP_RANGE(x)		((x) << 6)

I think it would be more understandable to do all of the cases in the same
way.

julia

>
>  /* Config Register Bit Designations (AD7152_REG_CFG) */
>  #define AD7152_CONF_CH2EN		BIT(3)
>  #define AD7152_CONF_CH1EN		BIT(4)
> -#define AD7152_CONF_MODE_IDLE		(0 << 0)
> +#define AD7152_CONF_MODE_IDLE		GENMASK(0, 0)
>  #define AD7152_CONF_MODE_CONT_CONV	BIT(0)
> -#define AD7152_CONF_MODE_SINGLE_CONV	(2 << 0)
> -#define AD7152_CONF_MODE_OFFS_CAL	(5 << 0)
> -#define AD7152_CONF_MODE_GAIN_CAL	(6 << 0)
> +#define AD7152_CONF_MODE_SINGLE_CONV	GENMASK(2, 0)
> +#define AD7152_CONF_MODE_OFFS_CAL	GENMASK(5, 0)
> +#define AD7152_CONF_MODE_GAIN_CAL	GENMASK(6, 0)
>
>  /* Capdac Register Bit Designations (AD7152_REG_CAPDAC_XXX) */
>  #define AD7152_CAPDAC_DACEN		BIT(7)
>  #define AD7152_CAPDAC_DACP(x)		((x) & 0x1F)
>
>  /* CFG2 Register Bit Designations (AD7152_REG_CFG2) */
> -#define AD7152_CFG2_OSR(x)		(((x) & 0x3) << 4)
> +#define AD7152_CFG2_OSR(x)		GENMASK(((x) & 0x3), 4)
>
>  enum {
>  	AD7152_DATA,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/92240a3dca0138880fe47a7df0a5e6df869c8199.1487448326.git.karniksayli1995%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

