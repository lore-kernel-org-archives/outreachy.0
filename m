X-GM-THRID: 6395629856318554112
X-Received: by 10.25.196.68 with SMTP id u65mr4151254lff.0.1489353501675;
        Sun, 12 Mar 2017 14:18:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.92.129 with SMTP id q123ls1330408ljb.23.gmail; Sun, 12 Mar
 2017 14:18:21 -0700 (PDT)
X-Received: by 10.25.151.69 with SMTP id z66mr3885925lfd.12.1489353501313;
        Sun, 12 Mar 2017 14:18:21 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t131si453149wmf.1.2017.03.12.14.18.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 14:18:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,154,1486422000"; 
   d="scan'208";a="216465119"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2017 22:18:20 +0100
Date: Sun, 12 Mar 2017 22:18:18 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/3] staging: wilc1000: Correct
 name of variables
In-Reply-To: <20170312211518.3172-3-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1703122217500.7649@hadrien>
References: <20170312211518.3172-1-diaconita.tamara@gmail.com> <20170312211518.3172-3-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 12 Mar 2017, Tamara Diaconita wrote:

> Correct misspelled variables:
> 'unkmown_mask' to 'unknown_mask' and 'happended' to 'happened'
> to improve code readability.
>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_spi.c | 21 ++++++++++-----------
>  1 file changed, 10 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
> index e1ead47..9cde575 100644
> --- a/drivers/staging/wilc1000/wilc_spi.c
> +++ b/drivers/staging/wilc1000/wilc_spi.c
> @@ -937,17 +937,16 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
>  {
>  	struct spi_device *spi = to_spi_device(wilc->dev);
>  	int ret;
> -	int happended, j;
> +	int happened, j;
>  	u32 irq_flags;
> -	u32 unkmown_mask;
> +	u32 unknown_mask;
> +	u32 tmp;
> +	u32 byte_cnt;

This is doing things other than fixing the spelling mistakes.

julia

>
>  	if (g_spi.has_thrpt_enh) {
>  		ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
>  					int_status);
>  	} else {
> -		u32 tmp;
> -		u32 byte_cnt;
> -
>  		ret = wilc_spi_read_reg(wilc, WILC_VMM_TO_HOST_SIZE,
>  					&byte_cnt);
>  		if (!ret) {
> @@ -960,7 +959,7 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
>  		{
>  			j = 0;
>  			do {
> -				happended = 0;
> +				happened = 0;
>
>  				wilc_spi_read_reg(wilc, 0x1a90, &irq_flags);
>  				tmp |= ((irq_flags >> 27) << IRG_FLAGS_OFFSET);
> @@ -972,15 +971,15 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
>  				}
>
>  				{
> -					unkmown_mask = ~((1ul << g_spi.nint) - 1);
> +					unknown_mask = ~((1ul << g_spi.nint) - 1);
>
> -					if ((tmp >> IRG_FLAGS_OFFSET) & unkmown_mask) {
> -						dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unkmown_mask);
> -						happended = 1;
> +					if ((tmp >> IRG_FLAGS_OFFSET) & unknown_mask) {
> +						dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unknown_mask);
> +						happened = 1;
>  					}
>  				}
>  				j++;
> -			} while (happended);
> +			} while (happened);
>  		}
>
>  		*int_status = tmp;
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170312211518.3172-3-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

