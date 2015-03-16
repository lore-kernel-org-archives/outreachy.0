X-GM-THRID: 8445029777408
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6b650e31a320e555
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.122.7 with SMTP id lo7mr31635543igb.7.1426519641509;
        Mon, 16 Mar 2015 08:27:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.203 with SMTP id u69ls2710526qge.13.gmail; Mon, 16 Mar
 2015 08:27:21 -0700 (PDT)
X-Received: by 10.236.15.167 with SMTP id f27mr62452726yhf.8.1426519641308;
        Mon, 16 Mar 2015 08:27:21 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si1961503pac.2.2015.03.16.08.27.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 08:27:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.wifi.rsr.lip6.fr [132.227.77.84])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 676F2AAE;
	Mon, 16 Mar 2015 15:27:20 +0000 (UTC)
Date: Mon, 16 Mar 2015 16:27:18 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtft: Move variable
 declarations to improve codestyle
Message-ID: <20150316152718.GA26262@kroah.com>
References: <20150315135428.GA5372@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20150315135428.GA5372@akanksha>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 15, 2015 at 07:24:28PM +0530, Vatika Harlalka wrote:
> Move variable declarations, use typedefs to define
> variables and reindent code to improve compactness
> and readability.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/fbtft/fb_agm1264k-fl.c | 39 ++++++++++++++++------------------
>  1 file changed, 18 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
> index 7aa9e8c..acf5acb 100644
> --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> @@ -33,13 +33,13 @@
>  #define WIDTH		64
>  #define HEIGHT		64
>  #define TOTALWIDTH	(WIDTH * 2)	 /* because 2 x ks0108 in one display */
> -#define FPS			20
> +#define FPS		20
>  
>  #define EPIN		gpio.wr
> -#define RS			gpio.dc
> -#define RW			gpio.aux[2]
> -#define CS0			gpio.aux[0]
> -#define CS1			gpio.aux[1]
> +#define RS		gpio.dc
> +#define RW		gpio.aux[2]
> +#define CS0		gpio.aux[0]
> +#define CS1		gpio.aux[1]
>  
>  
>  /* diffusing error (“Floyd-Steinberg”) */
> @@ -275,22 +275,25 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  {
>  	u16 *vmem16 = (u16 *)par->info->screen_base;
>  	u8 *buf = par->txbuf.buf;
> +	u16 i, j, b, g, r;
>  	int x, y;
>  	int ret = 0;
> +	s16 pixel, error_b, error_w, error, *write_pos;
> +	s8 coeff;
>  
>  	/* buffer to convert RGB565 -> grayscale16 -> Ditherd image 1bpp */
> -	signed short *convert_buf = kmalloc(par->info->var.xres *
> +	s16 *convert_buf = kmalloc(par->info->var.xres *
>  		par->info->var.yres * sizeof(signed short), GFP_NOIO);
> -
>  	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "%s()\n", __func__);
>  
>  	/* converting to grayscale16 */
>  	for (x = 0; x < par->info->var.xres; ++x)
>  		for (y = 0; y < par->info->var.yres; ++y) {
>  			u16 pixel = vmem16[y *  par->info->var.xres + x];
> -			u16 b = pixel & 0x1f;
> -			u16 g = (pixel & (0x3f << 5)) >> 5;
> -			u16 r = (pixel & (0x1f << (5 + 6))) >> (5 + 6);
> +
> +			b = pixel & 0x1f;
> +			g = (pixel & (0x3f << 5)) >> 5;
> +			r = (pixel & (0x1f << (5 + 6))) >> (5 + 6);

I don't really think this helped out at all.  The original code is just
fine, no need to change it.

thanks,

greg k-h

