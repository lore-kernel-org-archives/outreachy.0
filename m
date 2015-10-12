X-GM-THRID: 6204685727304777728
X-Received: by 10.112.159.4 with SMTP id wy4mr3565527lbb.15.1444649202260;
        Mon, 12 Oct 2015 04:26:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.150.209 with SMTP id y200ls457960lfd.17.gmail; Mon, 12 Oct
 2015 04:26:41 -0700 (PDT)
X-Received: by 10.112.54.197 with SMTP id l5mr5429604lbp.21.1444649201756;
        Mon, 12 Oct 2015 04:26:41 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ch7si478423wib.2.2015.10.12.04.26.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 04:26:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,672,1437429600"; 
   d="scan'208";a="182315084"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Oct 2015 13:26:41 +0200
Date: Mon, 12 Oct 2015 13:26:39 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
cc: Shivani Bhardwaj <shivanib134@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: xgifb: XGI_main_26: Remove
 unused code
In-Reply-To: <20151012104452.GE13596@sudip-pc>
Message-ID: <alpine.DEB.2.10.1510121325341.2652@hadrien>
References: <20151012090922.GA30043@ubuntu> <alpine.DEB.2.10.1510121122220.2652@hadrien> <CAKHNQQHhftvBwJ+6ACmA-MgvaqRbwXhsCHyP8Wpc=wwQVg2wbw@mail.gmail.com> <20151012104452.GE13596@sudip-pc>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 12 Oct 2015, Sudip Mukherjee wrote:

> On Mon, Oct 12, 2015 at 03:28:33PM +0530, Shivani Bhardwaj wrote:
> > On Mon, Oct 12, 2015 at 2:52 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > > On Mon, 12 Oct 2015, Shivani Bhardwaj wrote:
> > >
> > >> Remove unused variable and its occurences as it is not used anywhere in
> > >> the code.
> > >> Issue found using coccinelle.
> > >>
> > >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> > >> ---
> > >>
> > >> -     /* Calculation wrong for 1024x600 - force it to 60Hz */
> > >> -     if ((var->xres == 1024) && (var->yres == 600))
> > >> -             refresh_rate = 60;
> > >
> > > Could it be supposed to be xgifb_info->refresh_rate = 60; ?
> > >
> > > julia
> > >
> >
> > Won't that be a part of structure whose object is xgifb_info? This is
> > any normal int type. Plus, it doesn't give any errors when removed, it
> > should have if it were xgifb_info's member. Please correct me if I  am
> > wrong.
>
> From C syntax point of view your patch is correct. But looking at the
> comment mentioned there this could have been:
>
> diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
> index 5a6251a4..0436dbe 100644
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
> @@ -1268,7 +1268,7 @@ static int XGIfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
>
>  	/* Calculation wrong for 1024x600 - force it to 60Hz */
>  	if ((var->xres == 1024) && (var->yres == 600))
> -		refresh_rate = 60;
> +		xgifb_info->refresh_rate = 60;
>
>  	search_idx = 0;
>  	while ((XGIbios_mode[search_idx].mode_no != 0) &&
>
> ---
> Maybe this was the actual intention of the developer as there is also
> another global static variable named as refresh_rate which is having the
> refresh frequency and saving the Hz value in xgifb_info->refresh_rate.
> But that part is in the probe function and the probe will be called
> before fb_check_var callback.
> Anyways, this was just a thought, please donot send v2 based on this.
> Let Greg see it first.

Perhaps it is possible to ask the specific maintainer for the code, or the
original developer.

julia

