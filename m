X-GM-THRID: 6204685727304777728
X-Received: by 10.129.154.137 with SMTP id r131mr23371986ywg.0.1444641765921;
        Mon, 12 Oct 2015 02:22:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.38.10 with SMTP id s10ls2170778qgs.8.gmail; Mon, 12 Oct
 2015 02:22:45 -0700 (PDT)
X-Received: by 10.140.237.202 with SMTP id i193mr23265072qhc.10.1444641765486;
        Mon, 12 Oct 2015 02:22:45 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a11si532254igv.3.2015.10.12.02.22.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 02:22:45 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,671,1437429600"; 
   d="scan'208";a="182290762"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Oct 2015 11:22:43 +0200
Date: Mon, 12 Oct 2015 11:22:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: xgifb: XGI_main_26: Remove
 unused code
In-Reply-To: <20151012090922.GA30043@ubuntu>
Message-ID: <alpine.DEB.2.10.1510121122220.2652@hadrien>
References: <20151012090922.GA30043@ubuntu>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 12 Oct 2015, Shivani Bhardwaj wrote:

> Remove unused variable and its occurences as it is not used anywhere in
> the code.
> Issue found using coccinelle.
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/xgifb/XGI_main_26.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
>
> diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
> index 5a6251a4..e723082 100644
> --- a/drivers/staging/xgifb/XGI_main_26.c
> +++ b/drivers/staging/xgifb/XGI_main_26.c
> @@ -1230,7 +1230,7 @@ static int XGIfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
>  	unsigned int vtotal = 0;
>  	unsigned int drate = 0, hrate = 0;
>  	int found_mode = 0;
> -	int refresh_rate, search_idx;
> +	int search_idx;
>
>  	if ((var->vmode & FB_VMODE_MASK) == FB_VMODE_NONINTERLACED) {
>  		vtotal = var->upper_margin + var->yres + var->lower_margin
> @@ -1266,10 +1266,6 @@ static int XGIfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
>  		xgifb_info->refresh_rate = 60;
>  	}
>
> -	/* Calculation wrong for 1024x600 - force it to 60Hz */
> -	if ((var->xres == 1024) && (var->yres == 600))
> -		refresh_rate = 60;

Could it be supposed to be xgifb_info->refresh_rate = 60; ?

julia

> -
>  	search_idx = 0;
>  	while ((XGIbios_mode[search_idx].mode_no != 0) &&
>  		(XGIbios_mode[search_idx].xres <= var->xres)) {
> --
> 2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151012090922.GA30043%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
>

