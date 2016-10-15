X-GM-THRID: 6341582423579426816
X-Received: by 10.28.63.213 with SMTP id m204mr97034wma.21.1476523320978;
        Sat, 15 Oct 2016 02:22:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.223.214 with SMTP id w205ls340082wmg.14.canary; Sat, 15 Oct
 2016 02:22:00 -0700 (PDT)
X-Received: by 10.28.26.75 with SMTP id a72mr98886wma.19.1476523320513;
        Sat, 15 Oct 2016 02:22:00 -0700 (PDT)
Return-Path: <jhovold@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id r65si150860wmf.3.2016.10.15.02.22.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 02:22:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=jhovold@gmail.com
Received: by mail-wm0-x242.google.com with SMTP id 191so1827067wmr.0
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 02:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0hoK8/qNWQ8N5HtHP7QVoL75kgSdA1AaWiSKsO9p0MA=;
        b=Gjb73DVOii4DjGZlbl2YfibT/J9f7md/gABN1OYbCv5Zy17iULRwNT8RyF7J/B5mfm
         IOG5j1/RKo7Iz8Em7HLT0lydM31EE3FFsOgy7iVcyNId9CS0UZm0g0f/u7ZHlJD/imrk
         4FTv6rbbWIXdRylyqL+vsB+LXOE/J2BxKRiuvT37TOyLorjVjSxFI1k5UhJxDIp71tZ8
         LJOPWCstRiO45RTLLcXoQXU6ahQOOzXJnoK40ULWbeQQLcJUmkZ2MK83NrAnK883gEbX
         xY8j0t+HBAcQigLhbk5XzvZBiDw6K7makUpHRnAQMs7GbV+i3091VXvU0RDWigQUMocc
         a5Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=0hoK8/qNWQ8N5HtHP7QVoL75kgSdA1AaWiSKsO9p0MA=;
        b=hpUE7fxouyynJ+tDXvwV/6jpEBpWumDmYsBsWsuNjfip6ggLPDstuapXEcVhM/Pl8x
         BcC3Mk1aT6B3C2IcA/ohQBaMbDEWZt3hbFbuUxgB8zwcfSfVNh+E+v4iFclv/rG1Pj8J
         lhchi8Cl67LqnmlJm1Y4CSshk6KdCq9gx9ARXRmZP6pIe0BHXQzUwm7CRnnPPiZ0bp8y
         cKMs0WmGWp4f8ps9oF5nx5Ikw72KC9aQZbt7QEER4WwQBo1Nw+uoXDQIZCSTmN7mvgVx
         fRRI3j4S8KiWbSFtsY2ddAXVcLhYuEBk15NCi6+ZcxlNa0rYqoG6KhpbPWP1Tb1Pe/Ze
         ie5w==
X-Gm-Message-State: AA6/9RllNraEPa/B+d6bKgV3ZkFBGenr4gtcr+rFENPg+cHaU5ZSykmNW8wCa5aPgw29Cw==
X-Received: by 10.28.0.2 with SMTP id 2mr1456861wma.79.1476523320268;
        Sat, 15 Oct 2016 02:22:00 -0700 (PDT)
Return-Path: <jhovold@gmail.com>
Received: from pi ([94.186.205.19])
        by smtp.gmail.com with ESMTPSA id ma5sm36000214wjb.47.2016.10.15.02.21.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 02:21:59 -0700 (PDT)
Sender: Johan Hovold <jhovold@gmail.com>
X-Google-Original-Sender: <johan@kernel.org>
Received: from johan by pi with local (Exim 4.87)
	(envelope-from <johan@pi>)
	id 1bvLAA-0001ue-FF; Sat, 15 Oct 2016 11:21:54 +0200
Date: Sat, 15 Oct 2016 11:21:54 +0200
From: Johan Hovold <johan@kernel.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	dtwlin@gmail.com, johan@kernel.org, elder@kernel.org
Subject: Re: [PATCH] Staging: greybus: uart: constify tty_port_operations
 structure
Message-ID: <20161015092154.GB13900@localhost>
References: <1476514681-10619-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1476514681-10619-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

[ +CC: staging list ]

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

