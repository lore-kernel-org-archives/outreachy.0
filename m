X-GM-THRID: 6400988055125098496
X-Received: by 10.107.168.208 with SMTP id e77mr6932128ioj.26.1490616403041;
        Mon, 27 Mar 2017 05:06:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.68.202 with SMTP id p10ls10422914otg.18.gmail; Mon, 27 Mar
 2017 05:06:42 -0700 (PDT)
X-Received: by 10.13.235.74 with SMTP id u71mr7996994ywe.115.1490616402618;
        Mon, 27 Mar 2017 05:06:42 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y90si52547pfa.6.2017.03.27.05.06.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 05:06:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id BEAEB95E;
	Mon, 27 Mar 2017 12:06:41 +0000 (UTC)
Date: Mon, 27 Mar 2017 14:06:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anar Adilova <anaradilovab@gmail.com>
Cc: thomas.petazzoni@free-electrons.com, devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Staging: fbtft: Fix checkpatch warning
Message-ID: <20170327120628.GA1249@kroah.com>
References: <20170324090244.mit7ciqsq6t2z35r@anar-Lenovo-Z50-70>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170324090244.mit7ciqsq6t2z35r@anar-Lenovo-Z50-70>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Fri, Mar 24, 2017 at 03:02:45PM +0600, Anar Adilova wrote:
> This patch fixes the checkpatch.pl warning:
> 
> EXPORT_SYMBOL(foo); should immediately follow its function/variable.
> 
> The EXPORT_SYMBOL statements are placed inside if blocks, after both function implementations.
>

Please always wrap your changelog text at 72 columns.

> Signed-off-by: Anar Adilova <anaradilovab@gmail.com>
> ---
>  drivers/staging/fbtft/fbtft-core.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
> index b742ee7..d2e3e8d 100644
> --- a/drivers/staging/fbtft/fbtft-core.c
> +++ b/drivers/staging/fbtft/fbtft-core.c
> @@ -284,6 +284,7 @@ void fbtft_unregister_backlight(struct fbtft_par *par)
>  		par->info->bl_dev = NULL;
>  	}
>  }
> +EXPORT_SYMBOL(fbtft_unregister_backlight);
>  
>  static const struct backlight_ops fbtft_bl_ops = {
>  	.get_brightness	= fbtft_backlight_get_brightness,
> @@ -321,12 +322,13 @@ void fbtft_register_backlight(struct fbtft_par *par)
>  	if (!par->fbtftops.unregister_backlight)
>  		par->fbtftops.unregister_backlight = fbtft_unregister_backlight;
>  }
> +EXPORT_SYMBOL(fbtft_register_backlight);
>  #else
>  void fbtft_register_backlight(struct fbtft_par *par) { };
> -void fbtft_unregister_backlight(struct fbtft_par *par) { };
> -#endif
>  EXPORT_SYMBOL(fbtft_register_backlight);
> +void fbtft_unregister_backlight(struct fbtft_par *par) { };
>  EXPORT_SYMBOL(fbtft_unregister_backlight);
> +#endif

No, the original code here is "nicer" in that you don't have duplicate
declarations like your change added.

You can ignore the checkpatch warning here.

thanks,

greg k-h

