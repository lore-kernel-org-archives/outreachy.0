X-GM-THRID: 2862283227136
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c03e4650c4d63c89
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.89.194 with SMTP id bq2mr1465178wib.4.1424711818439;
        Mon, 23 Feb 2015 09:16:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.77.227 with SMTP id v3ls596307wiw.33.gmail; Mon, 23 Feb
 2015 09:16:58 -0800 (PST)
X-Received: by 10.194.142.174 with SMTP id rx14mr1512131wjb.4.1424711818186;
        Mon, 23 Feb 2015 09:16:58 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id cl5si731600wib.3.2015.02.23.09.16.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 09:16:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,631,1418079600"; 
   d="scan'208";a="123036963"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2015 18:16:57 +0100
Date: Mon, 23 Feb 2015 18:16:50 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: octeon-usb: Remove space
 between function name and '('.
In-Reply-To: <1424710970-3454-1-git-send-email-ksenija.stanojevic@gmail.com>
Message-ID: <alpine.DEB.2.10.1502231816180.2479@hadrien>
References: <1424710970-3454-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 23 Feb 2015, Ksenija Stanojevic wrote:

> This patch removes the space between function name and '('.
> Issue found by checkpatch.pl

This change is not correct.  op is not a function here.  It is a macro
parameter that will be instantiated with a binary operator.

julia

>
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/octeon-usb/octeon-hcd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/octeon-usb/octeon-hcd.c b/drivers/staging/octeon-usb/octeon-hcd.c
> index 1daeb31..0408a12 100644
> --- a/drivers/staging/octeon-usb/octeon-hcd.c
> +++ b/drivers/staging/octeon-usb/octeon-hcd.c
> @@ -412,7 +412,7 @@ struct octeon_hcd {
>  		type c;							    \
>  		while (1) {						    \
>  			c.u32 = __cvmx_usb_read_csr32(usb, address);	    \
> -			if (c.s.field op (value)) {			    \
> +			if (c.s.field op(value)) {			    \
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424710970-3454-1-git-send-email-ksenija.stanojevic%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

