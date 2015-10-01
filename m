X-GM-THRID: 6200499301082202112
X-Received: by 10.112.55.69 with SMTP id q5mr1152403lbp.24.1443686306318;
        Thu, 01 Oct 2015 00:58:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.157.136 with SMTP id g130ls85865lfe.73.gmail; Thu, 01 Oct
 2015 00:58:25 -0700 (PDT)
X-Received: by 10.112.209.73 with SMTP id mk9mr1166316lbc.14.1443686305313;
        Thu, 01 Oct 2015 00:58:25 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c7si36989wiy.3.2015.10.01.00.58.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 00:58:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,616,1437429600"; 
   d="scan'208";a="180365354"
Received: from unknown (HELO hadrien.local) ([89.202.203.52])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Oct 2015 09:58:25 +0200
Date: Thu, 1 Oct 2015 09:58:24 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: iio: cdc: Use BIT and
 GENMASK macro
In-Reply-To: <1443666230-8999-1-git-send-email-shraddha.6596@gmail.com>
Message-ID: <alpine.DEB.2.10.1510010957040.2765@hadrien>
References: <1443666230-8999-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 1 Oct 2015, Shraddha Barke wrote:

> Use BIT()/GENMASK() macros for all register definitions instead of
> hand-writing bit masks.

It would be nice to fix the alignment at various palaces as well.

julia

> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
> Changes in v2-
>  Used GENMASK macro; covered more cases of BIT macro and updated
>  commit message
>
>  drivers/staging/iio/cdc/ad7746.c | 52 ++++++++++++++++++++--------------------
>  1 file changed, 26 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
> index 10fa372..a8049ef 100644
> --- a/drivers/staging/iio/cdc/ad7746.c
> +++ b/drivers/staging/iio/cdc/ad7746.c
> @@ -52,42 +52,42 @@
>  #define AD7746_STATUS_RDYCAP		BIT(0)
>
>  /* Capacitive Channel Setup Register Bit Designations (AD7746_REG_CAP_SETUP) */
> -#define AD7746_CAPSETUP_CAPEN		(1 << 7)
> -#define AD7746_CAPSETUP_CIN2		(1 << 6) /* AD7746 only */
> -#define AD7746_CAPSETUP_CAPDIFF		(1 << 5)
> -#define AD7746_CAPSETUP_CACHOP		(1 << 0)
> +#define AD7746_CAPSETUP_CAPEN		BIT(7)
> +#define AD7746_CAPSETUP_CIN2		BIT(6) /* AD7746 only */
> +#define AD7746_CAPSETUP_CAPDIFF		BIT(5)
> +#define AD7746_CAPSETUP_CACHOP		BIT(0)
>
>  /* Voltage/Temperature Setup Register Bit Designations (AD7746_REG_VT_SETUP) */
> -#define AD7746_VTSETUP_VTEN		(1 << 7)
> -#define AD7746_VTSETUP_VTMD_INT_TEMP	(0 << 5)
> -#define AD7746_VTSETUP_VTMD_EXT_TEMP	(1 << 5)
> -#define AD7746_VTSETUP_VTMD_VDD_MON	(2 << 5)
> -#define AD7746_VTSETUP_VTMD_EXT_VIN	(3 << 5)
> -#define AD7746_VTSETUP_EXTREF		(1 << 4)
> -#define AD7746_VTSETUP_VTSHORT		(1 << 1)
> -#define AD7746_VTSETUP_VTCHOP		(1 << 0)
> +#define AD7746_VTSETUP_VTEN		BIT(7)
> +#define AD7746_VTSETUP_VTMD_INT_TEMP	0
> +#define AD7746_VTSETUP_VTMD_EXT_TEMP	BIT(5)
> +#define AD7746_VTSETUP_VTMD_VDD_MON	GENMASK(6, 0)
> +#define AD7746_VTSETUP_VTMD_EXT_VIN	GENMASK(6, 5)
> +#define AD7746_VTSETUP_EXTREF		BIT(4)
> +#define AD7746_VTSETUP_VTSHORT		BIT(1)
> +#define AD7746_VTSETUP_VTCHOP		BIT(0)
>
>  /* Excitation Setup Register Bit Designations (AD7746_REG_EXC_SETUP) */
> -#define AD7746_EXCSETUP_CLKCTRL		(1 << 7)
> -#define AD7746_EXCSETUP_EXCON		(1 << 6)
> -#define AD7746_EXCSETUP_EXCB		(1 << 5)
> -#define AD7746_EXCSETUP_NEXCB		(1 << 4)
> -#define AD7746_EXCSETUP_EXCA		(1 << 3)
> -#define AD7746_EXCSETUP_NEXCA		(1 << 2)
> -#define AD7746_EXCSETUP_EXCLVL(x)	(((x) & 0x3) << 0)
> +#define AD7746_EXCSETUP_CLKCTRL		BIT(7)
> +#define AD7746_EXCSETUP_EXCON		BIT(6)
> +#define AD7746_EXCSETUP_EXCB		BIT(5)
> +#define AD7746_EXCSETUP_NEXCB		BIT(4)
> +#define AD7746_EXCSETUP_EXCA		BIT(3)
> +#define AD7746_EXCSETUP_NEXCA		BIT(2)
> +#define AD7746_EXCSETUP_EXCLVL(x)	GENMASK(((x) & 0x3), 0)
>
>  /* Config Register Bit Designations (AD7746_REG_CFG) */
>  #define AD7746_CONF_VTFS(x)		((x) << 6)
>  #define AD7746_CONF_CAPFS(x)		((x) << 3)
> -#define AD7746_CONF_MODE_IDLE		(0 << 0)
> -#define AD7746_CONF_MODE_CONT_CONV	(1 << 0)
> -#define AD7746_CONF_MODE_SINGLE_CONV	(2 << 0)
> -#define AD7746_CONF_MODE_PWRDN		(3 << 0)
> -#define AD7746_CONF_MODE_OFFS_CAL	(5 << 0)
> -#define AD7746_CONF_MODE_GAIN_CAL	(6 << 0)
> +#define AD7746_CONF_MODE_IDLE		0
> +#define AD7746_CONF_MODE_CONT_CONV	GENMASK(1, 0)
> +#define AD7746_CONF_MODE_SINGLE_CONV	GENMASK(2, 0)
> +#define AD7746_CONF_MODE_PWRDN		GENMASK(3, 0)
> +#define AD7746_CONF_MODE_OFFS_CAL	GENMASK(5, 0)
> +#define AD7746_CONF_MODE_GAIN_CAL	GENMASK(6, 0)
>
>  /* CAPDAC Register Bit Designations (AD7746_REG_CAPDACx) */
> -#define AD7746_CAPDAC_DACEN		(1 << 7)
> +#define AD7746_CAPDAC_DACEN		BIT(7)
>  #define AD7746_CAPDAC_DACP(x)		((x) & 0x7F)
>
>  /*
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443666230-8999-1-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

