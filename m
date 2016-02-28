X-GM-THRID: 6256220277260156928
X-Received: by 10.112.173.6 with SMTP id bg6mr1068730lbc.0.1456663416260;
        Sun, 28 Feb 2016 04:43:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.86.135 with SMTP id k129ls188618wmb.26.canary; Sun, 28 Feb
 2016 04:43:35 -0800 (PST)
X-Received: by 10.28.129.210 with SMTP id c201mr595119wmd.1.1456663415636;
        Sun, 28 Feb 2016 04:43:35 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w128si407873wmd.0.2016.02.28.04.43.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 04:43:35 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,514,1449529200"; 
   d="scan'208";a="204936642"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2016 13:43:35 +0100
Date: Sun, 28 Feb 2016 13:43:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: Cleanup dmesg
 output
In-Reply-To: <1456639780-8087-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.02.1602281341310.2147@localhost6.localdomain6>
References: <1456639780-8087-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 28 Feb 2016, Bhumika Goyal wrote:

> This patch does cleanup of dmesg output by removing printing of function
> name because printing device name is sufficient.

It seems a little bit arbitrary to say that it is sufficient.  Why is it 
sufficient?

> This makes the function
> dev_err more compact and readable.

Actually, it doesn't do anything to the function.  It may do something to 
the call to the function.

> Thus the  __func__ argument can be
> dropped.

It looks like the "thus" follows from the sentence just before, about 
compact and readable.  But making something compact and readable doesn't 
make it possible to do the thing.

julia

> Done using coccinelle:
> 
> @r1@
> expression e,x;
> expression g;
> @@
> dev_err(e,g,__func__,x)
> 
> @script:python b@
> g2 <<r1.g;
> y;
> @@
> if(g2.find("%s:")==True):
> 	coccinelle.y=g2[5:]
> elif(g2.find("%s")==True):
> 	coccinelle.y=g2[4:]
> coccinelle.y='"'+coccinelle.y
> 
> @c@
> expression  r1.g;
> identifier b.y;
> expression r1.e,r1.x;
> @@
> - dev_err(e,g,__func__,x)
> + dev_err(e,y,x)
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/media/lirc/lirc_sasem.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
> index 2218d00..0818212 100644
> --- a/drivers/staging/media/lirc/lirc_sasem.c
> +++ b/drivers/staging/media/lirc/lirc_sasem.c
> @@ -181,8 +181,7 @@ static void deregister_from_lirc(struct sasem_context *context)
>  	retval = lirc_unregister_driver(minor);
>  	if (retval)
>  		dev_err(&context->dev->dev,
> -			"%s: unable to deregister from lirc (%d)\n",
> -			__func__, retval);
> +			"unable to deregister from lirc (%d)\n", retval);
>  	else
>  		dev_info(&context->dev->dev,
>  			 "Deregistered Sasem driver (minor:%d)\n", minor);
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1456639780-8087-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

