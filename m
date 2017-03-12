X-GM-THRID: 6395629856318554112
X-Received: by 10.99.4.2 with SMTP id 2mr15415460pge.70.1489362193508;
        Sun, 12 Mar 2017 16:43:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.83 with SMTP id t19ls7589277ott.28.gmail; Sun, 12 Mar
 2017 16:43:13 -0700 (PDT)
X-Received: by 10.13.211.5 with SMTP id v5mr14057831ywd.128.1489362193167;
        Sun, 12 Mar 2017 16:43:13 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id u12si2879052pfd.3.2017.03.12.16.43.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 16:43:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id j5so17136033pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 16:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mI8TH0kr42uxwQg8a/eAKSpnP35WgWv4vnM1F4LoenY=;
        b=n0sw/zYwJk1a2BCZOohfGANCGFt4IXsJdUaMcxuzFoPuWxRcqwmJPHlI9xf2DS5V/6
         Y3B5v0+uvSvHZk3ZX9uB3QeOKpaHcrCskaIlYxleR3lzCSoxv/Zzn+1Ohxk+ckepIheK
         T2bnJefVdL74MYKsEILnn3cUYvSL5z24O8VhSRC/GF3705u5RmPNSZ8hVA1eWocnqs7/
         GX7amL5hY/SaIN5cLgEWtl5qsuprF5GR/WqzcTQi4lh1vTsTZ5G2cDtXC4sn4wD+6JyS
         oMoKmcJ0vSQuayhW5amlFR8NZqCt7CZP0s/tSnb6eWmnefeXJ1IQiXxxxPRTeTbh63bm
         7fug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mI8TH0kr42uxwQg8a/eAKSpnP35WgWv4vnM1F4LoenY=;
        b=jGisUPM5HOnVz8xAsNxdPtNNZ6lmZTxT4d50fyIcNWXGlWDo4bkU1YQfMSdGSnQjDs
         gElGh9SFIzNhIhM0vJ8a/RnUa6wNSlqPVU37Oo/gePNq+r04tfhzfRGzqtHmPN9hEiT2
         LYRs6L09TZBrkfmI3cWICoayQ4elMxJyzplwrSN/IUPOogz+f15JasBl52j4BS4oHBlm
         0Ifbo4aZlcqIuLsmgumyLEHus1qjoTuNb1CBMxWnmRWMPtZaPpZrH8BtGHYkmcZaC+D+
         PkjqkRlm+2Ny2TMe3ugHWWqq8ZQQD/12EjLUGliAVaTZgNsFEiM3GDF5J/lQg7uSrNwP
         MiGw==
X-Gm-Message-State: AMke39kiPxGkw9upIzvpWuaVHhv7wacvRZucfv+PSJGMhtx1yzkmqrtdvY0blZrKtD+2kg==
X-Received: by 10.84.241.130 with SMTP id b2mr43799031pll.32.1489362192910;
        Sun, 12 Mar 2017 16:43:12 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id b11sm29973103pfj.27.2017.03.12.16.43.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 16:43:12 -0700 (PDT)
Date: Sun, 12 Mar 2017 16:43:11 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] staging: wilc1000: Declare
 variables at top of function
Message-ID: <20170312234310.GB14759@d830.WORKGROUP>
References: <20170312211518.3172-1-diaconita.tamara@gmail.com>
 <20170312211518.3172-2-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170312211518.3172-2-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 12, 2017 at 11:15:16PM +0200, Tamara Diaconita wrote:
> Moving declaration of some variables at top of wilc_spi_read_int
> function to improve code readability.

Imperative:  "Move declaration..."  
and "to top of ..."

> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_spi.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
> index d5fd0e7..e1ead47 100644
> --- a/drivers/staging/wilc1000/wilc_spi.c
> +++ b/drivers/staging/wilc1000/wilc_spi.c
> @@ -937,6 +937,9 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
>  {
>  	struct spi_device *spi = to_spi_device(wilc->dev);
>  	int ret;
> +	int happended, j;
> +	u32 irq_flags;
> +	u32 unkmown_mask;
>  
>  	if (g_spi.has_thrpt_enh) {
>  		ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
> @@ -955,12 +958,8 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
>  		tmp = (byte_cnt >> 2) & IRQ_DMA_WD_CNT_MASK;
>  
>  		{
> -			int happended, j;
> -
>  			j = 0;
>  			do {
> -				u32 irq_flags;
> -
>  				happended = 0;
>  
>  				wilc_spi_read_reg(wilc, 0x1a90, &irq_flags);
> @@ -973,8 +972,6 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
>  				}
>  
>  				{
> -					u32 unkmown_mask;
> -
>  					unkmown_mask = ~((1ul << g_spi.nint) - 1);
>  
>  					if ((tmp >> IRG_FLAGS_OFFSET) & unkmown_mask) {
> -- 
> 2.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170312211518.3172-2-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

