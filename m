X-GM-THRID: 6388911007678332928
X-Received: by 10.46.22.3 with SMTP id w3mr1616436ljd.8.1487534672178;
        Sun, 19 Feb 2017 12:04:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.5.18 with SMTP id 18ls935185wmf.21.canary-gmail; Sun, 19
 Feb 2017 12:04:31 -0800 (PST)
X-Received: by 10.28.51.80 with SMTP id z77mr649554wmz.0.1487534671466;
        Sun, 19 Feb 2017 12:04:31 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y19si561144wmd.0.2017.02.19.12.04.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 12:04:31 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,182,1484002800"; 
   d="scan'208";a="261185948"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Feb 2017 21:04:15 +0100
Date: Sun, 19 Feb 2017 21:04:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, Lars-Peter Clausen <lars@metafoo.de>, 
    Michael Hennerich <Michael.Hennerich@analog.com>, 
    Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
    Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] staging: iio: ad7152: Use
 GENMASK() macro for left shifts
In-Reply-To: <b74094e5c94e11cad734b1bde11db0356e6d3aab.1487483384.git.karniksayli1995@gmail.com>
Message-ID: <alpine.DEB.2.20.1702192103530.2363@hadrien>
References: <cover.1487483384.git.karniksayli1995@gmail.com> <b74094e5c94e11cad734b1bde11db0356e6d3aab.1487483384.git.karniksayli1995@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 20 Feb 2017, sayli karnik wrote:

> Use GENMASK() macro for left shifting integers.
>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>

It looks nicer this way :)

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> v2:
> Used GENMASK() macro instead of BIT() macro for multi-bit bitfields.
> Removed extra parentheses around argument to macro
>
>  drivers/staging/iio/cdc/ad7152.c | 32 ++++++++++++++++----------------
>  1 file changed, 16 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
> index e8609b8..ab94fad 100644
> --- a/drivers/staging/iio/cdc/ad7152.c
> +++ b/drivers/staging/iio/cdc/ad7152.c
> @@ -47,28 +47,28 @@
>  #define AD7152_STATUS_PWDN		BIT(7)
>
>  /* Setup Register Bit Designations (AD7152_REG_CHx_SETUP) */
> -#define AD7152_SETUP_CAPDIFF		(1 << 5)
> -#define AD7152_SETUP_RANGE_2pF		(0 << 6)
> -#define AD7152_SETUP_RANGE_0_5pF	(1 << 6)
> -#define AD7152_SETUP_RANGE_1pF		(2 << 6)
> -#define AD7152_SETUP_RANGE_4pF		(3 << 6)
> -#define AD7152_SETUP_RANGE(x)		((x) << 6)
> +#define AD7152_SETUP_CAPDIFF		GENMASK(1, 5)
> +#define AD7152_SETUP_RANGE_2pF		GENMASK(0, 6)
> +#define AD7152_SETUP_RANGE_0_5pF	GENMASK(1, 6)
> +#define AD7152_SETUP_RANGE_1pF		GENMASK(2, 6)
> +#define AD7152_SETUP_RANGE_4pF		GENMASK(3, 6)
> +#define AD7152_SETUP_RANGE(x)		GENMASK(x, 6)
>
>  /* Config Register Bit Designations (AD7152_REG_CFG) */
> -#define AD7152_CONF_CH2EN		(1 << 3)
> -#define AD7152_CONF_CH1EN		(1 << 4)
> -#define AD7152_CONF_MODE_IDLE		(0 << 0)
> -#define AD7152_CONF_MODE_CONT_CONV	(1 << 0)
> -#define AD7152_CONF_MODE_SINGLE_CONV	(2 << 0)
> -#define AD7152_CONF_MODE_OFFS_CAL	(5 << 0)
> -#define AD7152_CONF_MODE_GAIN_CAL	(6 << 0)
> +#define AD7152_CONF_CH2EN		GENMASK(1, 3)
> +#define AD7152_CONF_CH1EN		GENMASK(1, 4)
> +#define AD7152_CONF_MODE_IDLE		GENMASK(0, 0)
> +#define AD7152_CONF_MODE_CONT_CONV	GENMASK(1, 0)
> +#define AD7152_CONF_MODE_SINGLE_CONV	GENMASK(2, 0)
> +#define AD7152_CONF_MODE_OFFS_CAL	GENMASK(5, 0)
> +#define AD7152_CONF_MODE_GAIN_CAL	GENMASK(6, 0)
>
>  /* Capdac Register Bit Designations (AD7152_REG_CAPDAC_XXX) */
> -#define AD7152_CAPDAC_DACEN		(1 << 7)
> -#define AD7152_CAPDAC_DACP(x)		((x) & 0x1F)
> +#define AD7152_CAPDAC_DACEN		GENMASK(1, 7)
> +#define AD7152_CAPDAC_DACP(x)		GENMASK(x, 0x1F)
>
>  /* CFG2 Register Bit Designations (AD7152_REG_CFG2) */
> -#define AD7152_CFG2_OSR(x)		(((x) & 0x3) << 4)
> +#define AD7152_CFG2_OSR(x)		GENMASK((x) & 0x3, 4)
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/b74094e5c94e11cad734b1bde11db0356e6d3aab.1487483384.git.karniksayli1995%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

