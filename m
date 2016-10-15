X-GM-THRID: 6341582423579426816
X-Received: by 10.25.127.6 with SMTP id a6mr416622lfd.31.1476514885029;
        Sat, 15 Oct 2016 00:01:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.29.67 with SMTP id d64ls288149wmd.4.gmail; Sat, 15 Oct 2016
 00:01:24 -0700 (PDT)
X-Received: by 10.194.96.177 with SMTP id dt17mr451342wjb.21.1476514884369;
        Sat, 15 Oct 2016 00:01:24 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r65si111631wmf.3.2016.10.15.00.01.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 00:01:24 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,496,1473112800"; 
   d="scan'208";a="196861373"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Oct 2016 09:01:23 +0200
Date: Sat, 15 Oct 2016 09:01:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    dtwlin@gmail.com, johan@kernel.org, elder@kernel.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: greybus: uart: constify
 tty_port_operations structure
In-Reply-To: <1476514681-10619-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.20.1610150901010.9280@hadrien>
References: <1476514681-10619-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 15 Oct 2016, Bhumika Goyal wrote:

> Declare tty_port_operations structure as const as it is only stored in
> the ops field of a tty_port structure which is a field of a gb_tty
> structure. The ops field is of type const struct tty_port_operations *,
> so tty_port_operations structures having this property can be
> declared as const.
> Done using Coccinelle:
>
> @r1 disable optional_qualifier @
> identifier i;
> position p;
> @@
> static struct tty_port_operations i@p = {...};
>
> @ok1@
> identifier r1.i;
> position p;
> struct gb_tty q;
> @@
> q.port.ops=&i@p
>
> @bad@
> position p!={r1.p,ok1.p};
> identifier r1.i;
> @@
> i@p
>
> @depends on !bad disable optional_qualifier@
> identifier r1.i;
> @@
> static
> +const
> struct tty_port_operations i={...};
>
> @depends on !bad disable optional_qualifier@
> identifier r1.i;
> @@
> +const
> struct tty_port_operations i;
>
> File size before:
>    text	   data	    bss	    dec	    hex	filename
>    7646	    512	     56	   8214	   2016	drivers/staging/greybus/uart.o
>
> File size after:
>    text	   data	    bss	    dec	    hex	filename
>    7710	    448	     56	   8214	   2016	drivers/staging/greybus/uart.o
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/greybus/uart.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
> index 5ee7954..8162886 100644
> --- a/drivers/staging/greybus/uart.c
> +++ b/drivers/staging/greybus/uart.c
> @@ -832,7 +832,7 @@ static void gb_tty_port_shutdown(struct tty_port *port)
>  	.tiocmset =		gb_tty_tiocmset,
>  };
>
> -static struct tty_port_operations gb_port_ops = {
> +static const struct tty_port_operations gb_port_ops = {
>  	.dtr_rts =		gb_tty_dtr_rts,
>  	.activate =		gb_tty_port_activate,
>  	.shutdown =		gb_tty_port_shutdown,
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1476514681-10619-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

