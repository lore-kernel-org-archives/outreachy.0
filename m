X-GM-THRID: 447976833024
X-Received: by 10.112.162.135 with SMTP id ya7mr199065lbb.14.1424297767200;
        Wed, 18 Feb 2015 14:16:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.178 with SMTP id p18ls70783lal.97.gmail; Wed, 18 Feb
 2015 14:16:06 -0800 (PST)
X-Received: by 10.112.99.37 with SMTP id en5mr184309lbb.17.1424297766676;
        Wed, 18 Feb 2015 14:16:06 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ta1si6279650wic.1.2015.02.18.14.16.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 14:16:06 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,604,1418079600"; 
   d="scan'208";a="122357133"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Feb 2015 23:16:05 +0100
Date: Wed, 18 Feb 2015 23:16:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: removed space before
 ')' and after '(' parenthesis.
In-Reply-To: <20150218221315.GA14737@localhost>
Message-ID: <alpine.DEB.2.02.1502182314380.2248@localhost6.localdomain6>
References: <20150218221315.GA14737@localhost>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 19 Feb 2015, Navya Sri Nizamkari wrote:

> This fixes the following checkpatch.pl errors:
> 
> ERROR: space prohibited after that open parenthesis '('
> ERROR: space prohibited before that close parenthesis ')'
> 
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
>  drivers/staging/fbtft/fb_bd663474.c | 76 ++++++++++++++++++-------------------
>  1 file changed, 38 insertions(+), 38 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fb_bd663474.c b/drivers/staging/fbtft/fb_bd663474.c
> index 7e00c60..b64a0b9 100644
> --- a/drivers/staging/fbtft/fb_bd663474.c
> +++ b/drivers/staging/fbtft/fb_bd663474.c
> @@ -47,49 +47,49 @@ static int init_display(struct fbtft_par *par)
>  	/* Initialization sequence from Lib_UTFT */
>  
>  	/* oscillator start */
> -	write_reg(par, 0x000,0x0001);	/*oscillator 0: stop, 1: operation */
> +	write_reg(par, 0x000, 0x0001);	/*oscillator 0: stop, 1: operation */

This change doesn't match your commit message.  Is it left over from a 
previous patch?

julia

>  	mdelay(10);
>  
>  	/* Power settings */
> -	write_reg(par, 0x100, 0x0000 ); /* power supply setup */
> -	write_reg(par, 0x101, 0x0000 );
> -	write_reg(par, 0x102, 0x3110 );
> -	write_reg(par, 0x103, 0xe200 );
> -	write_reg(par, 0x110, 0x009d );
> -	write_reg(par, 0x111, 0x0022 );
> -	write_reg(par, 0x100, 0x0120 );
> -	mdelay( 20 );
> -
> -	write_reg(par, 0x100, 0x3120 );
> -	mdelay( 80 );
> +	write_reg(par, 0x100, 0x0000); /* power supply setup */
> +	write_reg(par, 0x101, 0x0000);
> +	write_reg(par, 0x102, 0x3110);
> +	write_reg(par, 0x103, 0xe200);
> +	write_reg(par, 0x110, 0x009d);
> +	write_reg(par, 0x111, 0x0022);
> +	write_reg(par, 0x100, 0x0120);
> +	mdelay(20);
> +
> +	write_reg(par, 0x100, 0x3120);
> +	mdelay(80);
>  	/* Display control */
> -	write_reg(par, 0x001, 0x0100 );
> -	write_reg(par, 0x002, 0x0000 );
> -	write_reg(par, 0x003, 0x1230 );
> -	write_reg(par, 0x006, 0x0000 );
> -	write_reg(par, 0x007, 0x0101 );
> -	write_reg(par, 0x008, 0x0808 );
> -	write_reg(par, 0x009, 0x0000 );
> -	write_reg(par, 0x00b, 0x0000 );
> -	write_reg(par, 0x00c, 0x0000 );
> -	write_reg(par, 0x00d, 0x0018 );
> +	write_reg(par, 0x001, 0x0100);
> +	write_reg(par, 0x002, 0x0000);
> +	write_reg(par, 0x003, 0x1230);
> +	write_reg(par, 0x006, 0x0000);
> +	write_reg(par, 0x007, 0x0101);
> +	write_reg(par, 0x008, 0x0808);
> +	write_reg(par, 0x009, 0x0000);
> +	write_reg(par, 0x00b, 0x0000);
> +	write_reg(par, 0x00c, 0x0000);
> +	write_reg(par, 0x00d, 0x0018);
>  	/* LTPS control settings */
> -	write_reg(par, 0x012, 0x0000 );
> -	write_reg(par, 0x013, 0x0000 );
> -	write_reg(par, 0x018, 0x0000 );
> -	write_reg(par, 0x019, 0x0000 );
> -
> -	write_reg(par, 0x203, 0x0000 );
> -	write_reg(par, 0x204, 0x0000 );
> -
> -	write_reg(par, 0x210, 0x0000 );
> -	write_reg(par, 0x211, 0x00ef );
> -	write_reg(par, 0x212, 0x0000 );
> -	write_reg(par, 0x213, 0x013f );
> -	write_reg(par, 0x214, 0x0000 );
> -	write_reg(par, 0x215, 0x0000 );
> -	write_reg(par, 0x216, 0x0000 );
> -	write_reg(par, 0x217, 0x0000 );
> +	write_reg(par, 0x012, 0x0000);
> +	write_reg(par, 0x013, 0x0000);
> +	write_reg(par, 0x018, 0x0000);
> +	write_reg(par, 0x019, 0x0000);
> +
> +	write_reg(par, 0x203, 0x0000);
> +	write_reg(par, 0x204, 0x0000);
> +
> +	write_reg(par, 0x210, 0x0000);
> +	write_reg(par, 0x211, 0x00ef);
> +	write_reg(par, 0x212, 0x0000);
> +	write_reg(par, 0x213, 0x013f);
> +	write_reg(par, 0x214, 0x0000);
> +	write_reg(par, 0x215, 0x0000);
> +	write_reg(par, 0x216, 0x0000);
> +	write_reg(par, 0x217, 0x0000);
>  
>  	/* Gray scale settings */
>  	write_reg(par, 0x300, 0x5343);
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150218221315.GA14737%40localhost.
> For more options, visit https://groups.google.com/d/optout.
> 

