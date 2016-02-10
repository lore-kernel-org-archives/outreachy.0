X-GM-THRID: 6249397284630429696
X-Received: by 10.112.17.37 with SMTP id l5mr4471994lbd.21.1455089387367;
        Tue, 09 Feb 2016 23:29:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.166.143 with SMTP id p137ls72188lfe.108.gmail; Tue, 09 Feb
 2016 23:29:46 -0800 (PST)
X-Received: by 10.25.18.227 with SMTP id 96mr183402lfs.4.1455089386717;
        Tue, 09 Feb 2016 23:29:46 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 5si88754wmm.2.2016.02.09.23.29.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 23:29:46 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,425,1449529200"; 
   d="scan'208";a="202409794"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 08:29:46 +0100
Date: Wed, 10 Feb 2016 08:29:45 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: xgifb: Rename local
 variable
In-Reply-To: <20160210033729.GA2677@janani-Inspiron-3521>
Message-ID: <alpine.DEB.2.02.1602100828060.2050@localhost6.localdomain6>
References: <20160210033729.GA2677@janani-Inspiron-3521>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 9 Feb 2016, Janani Ravichandran wrote:

> As one of the global variables and a local variable share the same name,
> change the name of the local variable to avoid confusion.
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
> Changes since v1:
>  * Changed the name of the variable to something more meaningful
> 
>  drivers/staging/xgifb/XGI_main_26.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
> index f11cea1..0091d8d 100644
> --- a/drivers/staging/xgifb/XGI_main_26.c
> +++ b/drivers/staging/xgifb/XGI_main_26.c
> @@ -1230,7 +1230,7 @@ static int XGIfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
>  	unsigned int vtotal = 0;
>  	unsigned int drate = 0, hrate = 0;
>  	int found_mode = 0;
> -	int refresh_rate, search_idx;
> +	int local_refresh_rate, search_idx;
>  
>  	if ((var->vmode & FB_VMODE_MASK) == FB_VMODE_NONINTERLACED) {
>  		vtotal = var->upper_margin + var->yres + var->lower_margin
> @@ -1268,7 +1268,7 @@ static int XGIfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
>  
>  	/* Calculation wrong for 1024x600 - force it to 60Hz */
>  	if ((var->xres == 1024) && (var->yres == 600))
> -		refresh_rate = 60;
> +		local_refresh_rate = 60;

So this variable is only initialized, but never used?  If that is the 
case, then a better solution would be to drop it.

Or maybe it was not intended to introduce the local variable.  You might 
want to see what you can find with git blame on the line that makes the 
local declaration.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160210033729.GA2677%40janani-Inspiron-3521.
> For more options, visit https://groups.google.com/d/optout.
> 

