X-GM-THRID: 929564721152
X-Received: by 10.112.119.141 with SMTP id ku13mr844090lbb.7.1424377877037;
        Thu, 19 Feb 2015 12:31:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.27.131 with SMTP id jg3ls374594wid.12.gmail; Thu, 19 Feb
 2015 12:31:16 -0800 (PST)
X-Received: by 10.180.91.76 with SMTP id cc12mr957406wib.7.1424377876740;
        Thu, 19 Feb 2015 12:31:16 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ew5si9111595wid.1.2015.02.19.12.31.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 12:31:16 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,610,1418079600"; 
   d="scan'208";a="100663731"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 21:31:16 +0100
Date: Thu, 19 Feb 2015 21:31:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: vino: Convert comments
 from C99 to C89 style
In-Reply-To: <1424377421-20388-1-git-send-email-ksenija.stanojevic@gmail.com>
Message-ID: <alpine.DEB.2.02.1502192130240.2192@localhost6.localdomain6>
References: <1424377421-20388-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 19 Feb 2015, Ksenija Stanojevic wrote:

> This patch fixes the checkpatch.pl error:
> ERROR: "Do not use C99 // comments"
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/media/vino/indycam.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/vino/indycam.c b/drivers/staging/media/vino/indycam.c
> index f1d192b..8e223bd 100644
> --- a/drivers/staging/media/vino/indycam.c
> +++ b/drivers/staging/media/vino/indycam.c
> @@ -34,7 +34,7 @@ MODULE_AUTHOR("Mikael Nousiainen <tmnousia@cc.hut.fi>");
>  MODULE_LICENSE("GPL");
>  
>  
> -// #define INDYCAM_DEBUG
> +/* #define INDYCAM_DEBUG */
>  
>  #ifdef INDYCAM_DEBUG
>  #define dprintk(x...) printk("IndyCam: " x);

You could consider whether you could get rid of dprintk, and replace it by 
the use of standard Linux debug logging functions, such as dev_dbg.

julia

> @@ -324,7 +324,7 @@ static int indycam_probe(struct i2c_client *client,
>  
>  	indycam_regdump(sd);
>  
> -	// initialize
> +	/* initialize */
>  	err = indycam_write_block(sd, 0, sizeof(initseq), (u8 *)&initseq);
>  	if (err) {
>  		printk(KERN_ERR "IndyCam initialization failed\n");
> @@ -334,7 +334,7 @@ static int indycam_probe(struct i2c_client *client,
>  
>  	indycam_regdump(sd);
>  
> -	// white balance
> +	/* white balance */
>  	err = indycam_write_reg(sd, INDYCAM_REG_CONTROL,
>  			  INDYCAM_CONTROL_AGCENA | INDYCAM_CONTROL_AWBCTL);
>  	if (err) {
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424377421-20388-1-git-send-email-ksenija.stanojevic%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

