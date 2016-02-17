X-GM-THRID: 6252325247022792704
X-Received: by 10.112.201.104 with SMTP id jz8mr670756lbc.13.1455752380201;
        Wed, 17 Feb 2016 15:39:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.86.70 with SMTP id k67ls983817lfb.62.gmail; Wed, 17 Feb
 2016 15:39:39 -0800 (PST)
X-Received: by 10.25.15.161 with SMTP id 33mr659840lfp.0.1455752379304;
        Wed, 17 Feb 2016 15:39:39 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w128si12222wmd.0.2016.02.17.15.39.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 15:39:39 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,463,1449529200"; 
   d="scan'208";a="203564119"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Feb 2016 00:39:38 +0100
Date: Wed, 17 Feb 2016 18:39:35 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: drivers: Delete
 double assignment
In-Reply-To: <1455732899-17222-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1602171837210.4547@hadrien>
References: <1455732899-17222-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 17 Feb 2016, Bhumika Goyal wrote:

> The two assignments here are identical so one can be removed.
> Found using coccinelle:
> @@
> expression i;
> @@
>
> *i = ...;
>  i = ...;
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/comedi/drivers/dt2814.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/comedi/drivers/dt2814.c b/drivers/staging/comedi/drivers/dt2814.c
> index 66705f9..e40ad56 100644
> --- a/drivers/staging/comedi/drivers/dt2814.c
> +++ b/drivers/staging/comedi/drivers/dt2814.c
> @@ -249,7 +249,6 @@ static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
>  		return -EIO;
>  	}
>  	i = inb(dev->iobase + DT2814_DATA);
> -	i = inb(dev->iobase + DT2814_DATA);

Inb reads from the device.  The first call may have a side effect.

julia

>
>  	if (it->options[1]) {
>  		ret = request_irq(it->options[1], dt2814_interrupt, 0,
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455732899-17222-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

