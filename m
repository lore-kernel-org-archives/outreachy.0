X-GM-THRID: 2891853070336
X-Received: by 10.180.160.176 with SMTP id xl16mr937492wib.6.1424760790025;
        Mon, 23 Feb 2015 22:53:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.65 with SMTP id o1ls171859laj.67.gmail; Mon, 23 Feb
 2015 22:53:09 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr1871322lbb.11.1424760789493;
        Mon, 23 Feb 2015 22:53:09 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id by11si1072938wib.1.2015.02.23.22.53.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 22:53:09 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,637,1418079600"; 
   d="scan'208";a="101090610"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2015 07:53:08 +0100
Date: Tue, 24 Feb 2015 07:53:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: octeon-usb: Remove
 unnecessary braces
In-Reply-To: <1424712752-3728-1-git-send-email-ksenija.stanojevic@gmail.com>
Message-ID: <alpine.DEB.2.02.1502240750270.2032@localhost6.localdomain6>
References: <1424712752-3728-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 23 Feb 2015, Ksenija Stanojevic wrote:

> This patch removes unnecessary braces. Issue found by checkpatch.pl
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
> v2: remove braces instead of space.
> 
>  drivers/staging/octeon-usb/octeon-hcd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/octeon-usb/octeon-hcd.c b/drivers/staging/octeon-usb/octeon-hcd.c
> index 1daeb31..400a630 100644
> --- a/drivers/staging/octeon-usb/octeon-hcd.c
> +++ b/drivers/staging/octeon-usb/octeon-hcd.c
> @@ -412,7 +412,7 @@ struct octeon_hcd {
>  		type c;							    \
>  		while (1) {						    \
>  			c.u32 = __cvmx_usb_read_csr32(usb, address);	    \
> -			if (c.s.field op (value)) {			    \
> +			if (c.s.field op value) {			    \

These are parentheses.  Braces are {}.

But the change is not a good idea.  I assume that value is a parameter of 
the macro.  There are some expressions that when inlined here will have 
the wrong precedence if you don't use the parentheses.

julia

>  				result = 0;				    \
>  				break;					    \
>  			} else if (cvmx_get_cycle() > done) {		    \
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424712752-3728-1-git-send-email-ksenija.stanojevic%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

