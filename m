X-GM-THRID: 6341582423579426816
X-Received: by 10.25.99.78 with SMTP id x75mr431288lfb.11.1476523429587;
        Sat, 15 Oct 2016 02:23:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.76.214 with SMTP id z205ls1615879lfa.32.gmail; Sat, 15 Oct
 2016 02:23:48 -0700 (PDT)
X-Received: by 10.25.211.204 with SMTP id k195mr486408lfg.24.1476523428919;
        Sat, 15 Oct 2016 02:23:48 -0700 (PDT)
Return-Path: <jhovold@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id w63si97366wmf.2.2016.10.15.02.23.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 02:23:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=jhovold@gmail.com
Received: by mail-wm0-x242.google.com with SMTP id b80so1821996wme.2
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 02:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=UbgOmr2NepXJXxIjdIRisQ/uas7pm2tTnHWSnFhIfjw=;
        b=VWXcJJSlRPPDz0fptf54zAiUYIn1indE38nupKGd6Ghp6Y3+v8R1GXABLwSoAuV6b8
         y0L9TNR7fqoNRgQMh0rp/FMBeHK687LGB2hD3fmIrAPxs7fURj90EQ6Id70HzXP0w8/n
         taICHmZcxDk4KWtU2GVqUt3afvXJZjnZ907cycVKgAsQf/z3ZyPL95k2LSs41NGB4Tev
         0hwfosTRuknJKvP93ZL6bkYBpPNckjjApxSRxf0dddxB4LEgGnv5GvkOmENTpOFnhSQh
         kQHk3aF1pGwMler9x3J4oUD7n7n62uBMIlYkCBYm0C+gI1BzS2CBBNUNpykSTYgkm2j5
         hjLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=UbgOmr2NepXJXxIjdIRisQ/uas7pm2tTnHWSnFhIfjw=;
        b=jn1LSZxdP8y2gdYazRyNkGSGf0NX4WDaBZ1GUjy9XMKkKAP/6/tuR5mOOQtLRqMRJn
         RV+vX8RS/PYcdAceDxjeZUBS6wAvUUD2goEUhaTsxcwJtH++hEcVr0KPrHoGYshGLy9f
         dxETqIhILRTcFjCSS5eufhUQ9MD4UtXQVwOwyMEIQqYNk5NJpK3+F0H08+k6mu6rlAFL
         0KBqANgzf6SIOxeQ8QEggMFZrsBlXQesEWU+LMDW8i7TA9T5m6w7PZNJBsQtO5lRbYVd
         Y0CsQaPMp2iENkpa09p3OqqOba3q+B7S7xj1Yj2vXlsphhl64ea2kz4V28CC6ylWHqDW
         qwsA==
X-Gm-Message-State: AA6/9RkA2B2xfdtcEfpYuFkgKwIwFfwwn+PxYwzg8EZjpvSTxciWV4yQQKwP7cp2lv4X/A==
X-Received: by 10.28.126.68 with SMTP id z65mr1254968wmc.81.1476523428643;
        Sat, 15 Oct 2016 02:23:48 -0700 (PDT)
Return-Path: <jhovold@gmail.com>
Received: from pi ([94.186.205.19])
        by smtp.gmail.com with ESMTPSA id ct1sm36011238wjd.13.2016.10.15.02.23.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 02:23:48 -0700 (PDT)
Sender: Johan Hovold <jhovold@gmail.com>
X-Google-Original-Sender: <johan@kernel.org>
Received: from johan by pi with local (Exim 4.87)
	(envelope-from <johan@pi>)
	id 1bvLBv-0001yq-5V; Sat, 15 Oct 2016 11:23:43 +0200
Date: Sat, 15 Oct 2016 11:23:43 +0200
From: Johan Hovold <johan@kernel.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	dtwlin@gmail.com, johan@kernel.org, elder@kernel.org,
	devel@driverdev.osuosl.org
Subject: Re: [PATCH] Staging: greybus: uart: constify tty_port_operations
 structure
Message-ID: <20161015092343.GC13900@localhost>
References: <1476514681-10619-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1476514681-10619-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

[ +CC: staging list (for real this time) ]

On Sat, Oct 15, 2016 at 12:28:01PM +0530, Bhumika Goyal wrote:
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

Acked-by: Johan Hovold <johan@kernel.org>

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

