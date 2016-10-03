X-GM-THRID: 6337248154845446144
X-Received: by 10.28.209.12 with SMTP id i12mr371273wmg.14.1475505731899;
        Mon, 03 Oct 2016 07:42:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.215 with SMTP id 206ls855255ljj.7.gmail; Mon, 03 Oct 2016
 07:42:11 -0700 (PDT)
X-Received: by 10.25.139.9 with SMTP id n9mr1159673lfd.22.1475505731324;
        Mon, 03 Oct 2016 07:42:11 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a126si970876wmd.1.2016.10.03.07.42.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 07:42:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,438,1473112800"; 
   d="scan'208";a="239212305"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Oct 2016 16:42:10 +0200
Date: Mon, 3 Oct 2016 16:42:10 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Muraru Mihaela <mihaela.muraru21@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: use unsigned int
 instead unsigned
In-Reply-To: <20161003143921.GA7591@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.10.1610031641210.3509@hadrien>
References: <20161003143921.GA7591@domino-MS-16Y1>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 3 Oct 2016, Muraru Mihaela wrote:

> This patch fixes a WARNING: Prefer 'unsigned int' to bare use of
> 'unsigned', found by checkpatch.pl. By fixing this the parameters of the
> function became more verbose.

Actually, the word "verbose" has a negative connotation - lots of words
with little content.  Maybe "the types of the parameters of the function
become more explicit".

julia

>
> Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> index 7d90e25..8770a46 100644
> --- a/drivers/staging/sm750fb/sm750.c
> +++ b/drivers/staging/sm750fb/sm750.c
> @@ -575,11 +575,11 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var,
>  	return hw_sm750_crtc_checkMode(crtc, var);
>  }
>
> -static int lynxfb_ops_setcolreg(unsigned regno,
> -				unsigned red,
> -				unsigned green,
> -				unsigned blue,
> -				unsigned transp,
> +static int lynxfb_ops_setcolreg(unsigned int regno,
> +				unsigned int red,
> +				unsigned int green,
> +				unsigned int blue,
> +				unsigned int transp,
>  				struct fb_info *info)
>  {
>  	struct lynxfb_par *par;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161003143921.GA7591%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

