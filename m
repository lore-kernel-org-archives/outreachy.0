X-GM-THRID: 6394528999032225792
X-Received: by 10.46.76.17 with SMTP id z17mr3967425lja.13.1489230969100;
        Sat, 11 Mar 2017 03:16:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.70 with SMTP id x6ls1275149ljd.21.gmail; Sat, 11 Mar
 2017 03:16:08 -0800 (PST)
X-Received: by 10.46.80.1 with SMTP id e1mr3959397ljb.10.1489230968610;
        Sat, 11 Mar 2017 03:16:08 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e72si190818wma.0.2017.03.11.03.16.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 03:16:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,146,1486422000"; 
   d="scan'208";a="216383044"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2017 12:16:07 +0100
Date: Sat, 11 Mar 2017 12:16:06 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: wilc1000: Remove
 unnecessary brackets
In-Reply-To: <20170311110652.8384-2-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1703111214550.2202@hadrien>
References: <20170311110652.8384-1-diaconita.tamara@gmail.com> <20170311110652.8384-2-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 11 Mar 2017, Tamara Diaconita wrote:

> Improved code readability by removing unnecessary brackets and deleting
> tabs to indent.
>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_spi.c | 44 +++++++++++++++++--------------------
>  1 file changed, 20 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
> index 5e28adc..b3c0594 100644
> --- a/drivers/staging/wilc1000/wilc_spi.c
> +++ b/drivers/staging/wilc1000/wilc_spi.c
> @@ -946,39 +946,35 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
>  		}
>  		tmp = (byte_cnt >> 2) & IRQ_DMA_WD_CNT_MASK;
>
> -		{
> -			int happended, j;
> +		int happended, j;

Not correct.  The Linux kernel should not have variable declarations at
random places in a block.

Organize the patches in a different way so that there is not this
intermediate step.

julia

>
> -			j = 0;
> -			do {
> -				u32 irq_flags;
> +		j = 0;
> +		do {
> +			u32 irq_flags;
>
> -				happended = 0;
> +			happended = 0;
>
> -				wilc_spi_read_reg(wilc, 0x1a90, &irq_flags);
> -				tmp |= ((irq_flags >> 27) << IRG_FLAGS_OFFSET);
> +			wilc_spi_read_reg(wilc, 0x1a90, &irq_flags);
> +			tmp |= ((irq_flags >> 27) << IRG_FLAGS_OFFSET);
>
> -				if (g_spi.nint > 5) {
> -					wilc_spi_read_reg(wilc, 0x1a94,
> -							  &irq_flags);
> -					tmp |= (((irq_flags >> 0) & 0x7) << (IRG_FLAGS_OFFSET + 5));
> -				}
> +			if (g_spi.nint > 5) {
> +				wilc_spi_read_reg(wilc, 0x1a94,
> +						  &irq_flags);
> +				tmp |= (((irq_flags >> 0) & 0x7) << (IRG_FLAGS_OFFSET + 5));
> +			}
>
> -				{
> -					u32 unkmown_mask;
> +				u32 unkmown_mask;
>
> -					unkmown_mask = ~((1ul << g_spi.nint) - 1);
> +				unkmown_mask = ~((1ul << g_spi.nint) - 1);
>
> -					if ((tmp >> IRG_FLAGS_OFFSET) & unkmown_mask) {
> -						dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unkmown_mask);
> -						happended = 1;
> -					}
> +				if ((tmp >> IRG_FLAGS_OFFSET) & unkmown_mask) {
> +					dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unkmown_mask);
> +					happended = 1;
>  				}
> -				j++;
> -			} while (happended);
> -		}
> +			j++;
> +		} while (happended);
>
> -		*int_status = tmp;
> +	*int_status = tmp;
>  	}
>
>  _fail_:
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170311110652.8384-2-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

