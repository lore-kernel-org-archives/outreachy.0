X-GM-THRID: 8441271681024
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,357f64e33847ef5b
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.18.102 with SMTP id v6mr67306450obd.11.1426519570511;
        Mon, 16 Mar 2015 08:26:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.39.74 with SMTP id n71ls2049979ion.54.gmail; Mon, 16 Mar
 2015 08:26:10 -0700 (PDT)
X-Received: by 10.66.162.137 with SMTP id ya9mr61640642pab.47.1426519570321;
        Mon, 16 Mar 2015 08:26:10 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ni4si1961425pdb.2.2015.03.16.08.26.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 08:26:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.wifi.rsr.lip6.fr [132.227.77.84])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6F0EFAC6;
	Mon, 16 Mar 2015 15:26:09 +0000 (UTC)
Date: Mon, 16 Mar 2015 16:26:07 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: fbtft: Remove unnecessary
 parenthesis and split lines to increase readability
Message-ID: <20150316152607.GC22971@kroah.com>
References: <20150315115705.GA28579@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150315115705.GA28579@akanksha>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 15, 2015 at 05:27:05PM +0530, Vatika Harlalka wrote:
> Remove unnecessary parenthesis in condition statement and
> split lines to increase readability.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  Changes in v2: Changed subject line to make it more
> 		descriptive.
>  drivers/staging/fbtft/fb_ra8875.c | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fb_ra8875.c b/drivers/staging/fbtft/fb_ra8875.c
> index e21af6c..bc8ca1e 100644
> --- a/drivers/staging/fbtft/fb_ra8875.c
> +++ b/drivers/staging/fbtft/fb_ra8875.c
> @@ -72,12 +72,13 @@ static int init_display(struct fbtft_par *par)
>  
>  	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par,
>  		"%s()\n", __func__);
> -	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par,
> -		"display size %dx%d\n", par->info->var.xres, par->info->var.yres);
> +	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par, "display size %dx%d\n",
> +			par->info->var.xres, par->info->var.yres);
>  
>  	par->fbtftops.reset(par);
>  
> -	if ((par->info->var.xres == 320) && (par->info->var.yres == 240)) {
> +	if (par->info->var.xres == 320 &&
> +		par->info->var.yres == 240) {

While yes, these () are not needed, it's good to keep them there, just
to be "obvious" as to what is going on.  So they are fine to leave
alone.

thanks,

greg k-h

