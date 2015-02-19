X-GM-THRID: 481953841152
X-Received: by 10.152.88.40 with SMTP id bd8mr345757lab.0.1424327831190;
        Wed, 18 Feb 2015 22:37:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.207.101 with SMTP id lv5ls118340lac.22.gmail; Wed, 18 Feb
 2015 22:37:10 -0800 (PST)
X-Received: by 10.112.64.171 with SMTP id p11mr338008lbs.12.1424327830802;
        Wed, 18 Feb 2015 22:37:10 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id by11si28745wib.1.2015.02.18.22.37.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 22:37:10 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,607,1418079600"; 
   d="scan'208";a="122385758"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 07:37:10 +0100
Date: Thu, 19 Feb 2015 07:37:09 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Katie Dunne <kdunne@mail.ccsf.edu>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: Remove blank line
In-Reply-To: <20150218232203.GA6207@katie-Inspiron-5748>
Message-ID: <alpine.DEB.2.02.1502190735470.2009@localhost6.localdomain6>
References: <20150218232203.GA6207@katie-Inspiron-5748>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Nice concise subject line!

On Wed, 18 Feb 2015, Katie Dunne wrote:

> Multiple blank lines are to be avoided per linux kernel conventions.

This is OK, but a little bit passive.  It doesn't say what you did, it 
says what you are trying to avoid.  Probably the reader can infer whatyou 
did in this case though.

julia

> This patch fixes the checkpatch.pl check:
> CHECK: Please don't use multiple blank lines
> 
> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
> ---
>  drivers/staging/netlogic/platform_net.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netlogic/platform_net.c
> index 77c3c35..0e1cc72 100644
> --- a/drivers/staging/netlogic/platform_net.c
> +++ b/drivers/staging/netlogic/platform_net.c
> @@ -209,7 +209,6 @@ static void xlr_gmac_init(void)
>  		.gpio_addr	= NULL,
>  	};
>  
> -
>  	static struct platform_device xlr_net_dev0 = {
>  		.name		= "xlr-net",
>  		.id		= 0,
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150218232203.GA6207%40katie-Inspiron-5748.
> For more options, visit https://groups.google.com/d/optout.
> 

