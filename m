X-GM-THRID: 6249397284630429696
X-Received: by 10.112.135.234 with SMTP id pv10mr4249488lbb.24.1455055166199;
        Tue, 09 Feb 2016 13:59:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.145.212 with SMTP id t203ls683981wmd.42.canary; Tue, 09 Feb
 2016 13:59:25 -0800 (PST)
X-Received: by 10.28.45.151 with SMTP id t145mr891781wmt.6.1455055165836;
        Tue, 09 Feb 2016 13:59:25 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h73si13088wme.0.2016.02.09.13.59.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 13:59:25 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,423,1449529200"; 
   d="scan'208";a="164106142"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Feb 2016 22:59:24 +0100
Date: Tue, 9 Feb 2016 22:59:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: xgifb: Rename local
 variable
In-Reply-To: <20160210015234.GA12338@janani-Inspiron-3521>
Message-ID: <alpine.DEB.2.02.1602092258480.2066@localhost6.localdomain6>
References: <20160210015234.GA12338@janani-Inspiron-3521>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 9 Feb 2016, Janani Ravichandran wrote:

> As one of the global variables and a local variable share the same name,
> change the name of the local variable to avoid confusion.

Maybe local_refresh_rate might be better?  I'm not sure that ref is so 
obvious as an abbreviation for refresh.

julia

> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/xgifb/XGI_main_26.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
> index f11cea1..ad8aaa2 100644
> --- a/drivers/staging/xgifb/XGI_main_26.c
> +++ b/drivers/staging/xgifb/XGI_main_26.c
> @@ -1230,7 +1230,7 @@ static int XGIfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
>  	unsigned int vtotal = 0;
>  	unsigned int drate = 0, hrate = 0;
>  	int found_mode = 0;
> -	int refresh_rate, search_idx;
> +	int ref_rate, search_idx;
>  
>  	if ((var->vmode & FB_VMODE_MASK) == FB_VMODE_NONINTERLACED) {
>  		vtotal = var->upper_margin + var->yres + var->lower_margin
> @@ -1268,7 +1268,7 @@ static int XGIfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
>  
>  	/* Calculation wrong for 1024x600 - force it to 60Hz */
>  	if ((var->xres == 1024) && (var->yres == 600))
> -		refresh_rate = 60;
> +		ref_rate = 60;
>  
>  	search_idx = 0;
>  	while ((XGIbios_mode[search_idx].mode_no != 0) &&
> -- 
> 2.5.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160210015234.GA12338%40janani-Inspiron-3521.
> For more options, visit https://groups.google.com/d/optout.
> 

