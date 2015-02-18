X-GM-THRID: 262267731968
X-Received: by 10.152.45.7 with SMTP id i7mr3011236lam.9.1424240592219;
        Tue, 17 Feb 2015 22:23:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.198.231 with SMTP id jf7ls81259lac.92.gmail; Tue, 17 Feb
 2015 22:23:10 -0800 (PST)
X-Received: by 10.112.64.171 with SMTP id p11mr3993162lbs.12.1424240590717;
        Tue, 17 Feb 2015 22:23:10 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ew5si8727599wid.1.2015.02.17.22.23.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 22:23:10 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,595,1418079600"; 
   d="scan'208";a="122223039"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Feb 2015 07:23:10 +0100
Date: Wed, 18 Feb 2015 07:23:09 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: drivers: replace
 init_timer by setup_timer
In-Reply-To: <20150218043939.GA21970@localhost.localdomain>
Message-ID: <alpine.DEB.2.02.1502180722580.2066@localhost6.localdomain6>
References: <20150218043939.GA21970@localhost.localdomain>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

On Wed, 18 Feb 2015, Aya Mahfouz wrote:

> This patch replaces init_timer and 2 step initialization of
> function and data by setup_timer using the following coccinelle
> script:
> 
> @@
> expression ds, e1, e2;
> @@
> 
> -init_timer (&ds);
> +setup_timer (&ds, e1, e2);
> ...
> -ds.function = e1;
> ...
> -ds.data = e2;
> 
> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> ---
>  drivers/staging/comedi/drivers/comedi_test.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/comedi_test.c b/drivers/staging/comedi/drivers/comedi_test.c
> index e56525a..fbc4342 100644
> --- a/drivers/staging/comedi/drivers/comedi_test.c
> +++ b/drivers/staging/comedi/drivers/comedi_test.c
> @@ -420,9 +420,8 @@ static int waveform_attach(struct comedi_device *dev,
>  	for (i = 0; i < s->n_chan; i++)
>  		devpriv->ao_loopbacks[i] = s->maxdata / 2;
>  
> -	init_timer(&devpriv->timer);
> -	devpriv->timer.function = waveform_ai_interrupt;
> -	devpriv->timer.data = (unsigned long)dev;
> +	setup_timer(&devpriv->timer, waveform_ai_interrupt,
> +		    (unsigned long)dev);
>  
>  	dev_info(dev->class_dev,
>  		 "%s: %i microvolt, %li microsecond waveform attached\n",
> -- 
> 1.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150218043939.GA21970%40localhost.localdomain.
> For more options, visit https://groups.google.com/d/optout.
> 

