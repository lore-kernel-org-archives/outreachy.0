X-GM-THRID: 6395175390898290688
X-Received: by 10.99.111.143 with SMTP id k137mr4027803pgc.1.1489004072418;
        Wed, 08 Mar 2017 12:14:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.194 with SMTP id 60ls4190360otx.21.gmail; Wed, 08 Mar
 2017 12:14:32 -0800 (PST)
X-Received: by 10.13.200.3 with SMTP id k3mr3232117ywd.136.1489004072032;
        Wed, 08 Mar 2017 12:14:32 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id r66si802390pfb.7.2017.03.08.12.14.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 12:14:31 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id v190so4835831pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 12:14:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JH2FwreudUJFgscBmAmTQ2+lVvpnT52IHelB85XF7vU=;
        b=aKqwggQcmQEkwTKvbCFy6jlMMwPHNF5A0U9f3qTsPgxM+drH+wMHBEhTLaRLxlSU3Q
         Ww0tOo6wncG2jOAESkirJzxNQwsTMBnboLa4ltsOkhoKB0zRFZuNhVjJ8F7nwUSN3qL/
         zuXYLTlU3WqPQqkUhN8iCij/u0iOfDWull0DSkV7JIfKSiLTtIqwY2XTj5htNppGJyiA
         uYARXv49UMqlrbpyqNzm05C4XvVefi8BR7V+6vDb7Zi5799MjH/z1R7UXBZWxl2GdPBw
         7YndHolNonX1iCNm1QeEU5nl4aMjxFhQIrTwxBkmwVpYpPWlVO2A/OLj1gD++3GTZntx
         xJrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JH2FwreudUJFgscBmAmTQ2+lVvpnT52IHelB85XF7vU=;
        b=Nm+qKqTUsEvZDzwDRku0DCYRvYKOMDlPqPO6fAHnOi7bNG7DezWy4XgLrpWfZeWVeP
         88YwekN4g3oDVi1YBVCHf+W8tdXwMHPCQGc0SUnf8LeVe62Cm0gtpeqkcutWUmaoVLFo
         Px4swcVIh1xtvzafqL2DXVi2EtEqAgOrcO+HbPGvhIULmhkwDfEIAZ4D7QWOYjnvME33
         akkDxaKu42rs+5iWEcG3JoJRuz5x1psuURwjH6Md3gJgq5wDVkEPuEPr4C9uhxjUr0vM
         l5/KhFB4dSR0pU4+FgLbM6Rq1o++tAC0gg5WcnFMOql6wZ/jNjtbxVLV+OsSMHwhwYjo
         sWcw==
X-Gm-Message-State: AMke39meuO1gR4el9Z3goQaOmIJpuuIclDil8/+cZRecKUdSZMAPNUn/9xwo1ImeTGN0+g==
X-Received: by 10.84.225.146 with SMTP id u18mr11498547plj.157.1489004071769;
        Wed, 08 Mar 2017 12:14:31 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id d2sm7857794pgf.35.2017.03.08.12.14.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 12:14:30 -0800 (PST)
Date: Wed, 8 Mar 2017 12:14:30 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: wilc1000: wilc_spi:
 Correct variable name
Message-ID: <20170308201429.GB2787@d830.WORKGROUP>
References: <20170308170637.3947-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170308170637.3947-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 08, 2017 at 07:06:37PM +0200, Tamara Diaconita wrote:
> Correct 'unkmown_mask' variable name to 'unknown_mask'.
> 
> Fix the checkpath.pl issue:
> CHECK: unkmown may be misspelled, perhaps 'unknown'?.

Hi Tamara,
I can't get this one to compile.  Please check.

When you redo it, you can correct "happended" also:
staging/wilc1000$ codespell wilc*.c
wilc_spi.c:964: happended  ==> happened
wilc_spi.c:970: happended  ==> happened
wilc_spi.c:994: happended  ==> happened
wilc_spi.c:998: happended  ==> happened

Subject can be: Correct spelling of variable names.

Thanks,
alisons

> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_spi.c | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
> index 2464b4c..4a4b8c3 100644
> --- a/drivers/staging/wilc1000/wilc_spi.c
> +++ b/drivers/staging/wilc1000/wilc_spi.c
> @@ -969,16 +969,22 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
>  				if (g_spi.nint > 5) {
>  					wilc_spi_read_reg(wilc, 0x1a94,
>  							  &irq_flags);
> -					tmp |= (((irq_flags >> 0) & 0x7) << (IRG_FLAGS_OFFSET + 5));
> +					tmp |= (((irq_flags >> 0) & 0x7) <<
> +						  (IRG_FLAGS_OFFSET + 5));
>  				}
>  
>  				{
> -					u32 unkmown_mask;
> +					u32 unknown_mask;
>  
> -					unkmown_mask = ~((1ul << g_spi.nint) - 1);
> +					unknown_mask = ~((1ul << g_spi.nint)
> +							  - 1);
>  
> -					if ((tmp >> IRG_FLAGS_OFFSET) & unkmown_mask) {
> -						dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unkmown_mask);
> +					if ((tmp >> IRG_FLAGS_OFFSET) &
> +					     unknown_mask) {
> +						dev_err(&spi->dev, "Unexpected
> +							interrupt (2): j=%d,
> +							tmp=%x, mask=%x\n", j,
> +							tmp, unknown_mask);
>  						happended = 1;
>  					}
>  				}
> -- 
> 2.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170308170637.3947-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

