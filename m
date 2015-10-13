X-GM-THRID: 6205242953520119808
X-Received: by 10.112.169.34 with SMTP id ab2mr7391218lbc.23.1444771288211;
        Tue, 13 Oct 2015 14:21:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.109.200 with SMTP id hu8ls1154671wib.0.gmail; Tue, 13 Oct
 2015 14:21:27 -0700 (PDT)
X-Received: by 10.194.94.66 with SMTP id da2mr3165926wjb.7.1444771287862;
        Tue, 13 Oct 2015 14:21:27 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c7si797421wiy.3.2015.10.13.14.21.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 14:21:27 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,680,1437429600"; 
   d="scan'208";a="150446198"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Oct 2015 23:21:27 +0200
Date: Tue, 13 Oct 2015 23:21:26 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: sm750: Remove unused
 code
In-Reply-To: <20151013211140.GA12128@ubuntu>
Message-ID: <alpine.DEB.2.02.1510132319500.2189@localhost6.localdomain6>
References: <20151013211140.GA12128@ubuntu>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:

> Remove declaration and a statement comprising of a variable which is not
> used throughout the code.

This could be a little more helpful to the reader.

The variable ret is only declared and initialized to 0, but never 
referenced, so remove it.

Ret is a common variable name, so mentioning it conveys some information.

julia

> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> index 8c1ecb3..805a403 100644
> --- a/drivers/staging/sm750fb/sm750.c
> +++ b/drivers/staging/sm750fb/sm750.c
> @@ -524,14 +524,12 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var,
>  	struct lynxfb_crtc *crtc;
>  	struct lynxfb_output *output;
>  	struct lynx_share *share;
> -	int ret;
>  	resource_size_t request;
>  
>  	par = info->par;
>  	crtc = &par->crtc;
>  	output = &par->output;
>  	share = par->share;
> -	ret = 0;
>  
>  	pr_debug("check var:%dx%d-%d\n",
>  		 var->xres,
> -- 
> 2.1.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151013211140.GA12128%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
> 

