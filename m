X-GM-THRID: 6254577761914978304
X-Received: by 10.28.156.83 with SMTP id f80mr2147783wme.1.1456257516412;
        Tue, 23 Feb 2016 11:58:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.146.10 with SMTP id u10ls533672lfd.42.gmail; Tue, 23 Feb
 2016 11:58:35 -0800 (PST)
X-Received: by 10.112.155.8 with SMTP id vs8mr861308lbb.13.1456257515886;
        Tue, 23 Feb 2016 11:58:35 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 141si1399741wmy.2.2016.02.23.11.58.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:58:35 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,491,1449529200"; 
   d="scan'208";a="165748635"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 20:58:35 +0100
Date: Tue, 23 Feb 2016 20:58:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: drivers: Do not use
 | with a variable with value 0
In-Reply-To: <20160224005517.GA3677@janani-Inspiron-3521>
Message-ID: <alpine.DEB.2.02.1602232058160.2040@localhost6.localdomain6>
References: <20160224005517.GA3677@janani-Inspiron-3521>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 23 Feb 2016, Janani Ravichandran wrote:

> The variable events has a value equal to 0. There is no point combining
> it with other things with |. Semantic patch used:
> @@
> expression x, e, e1;
> statement S;
> @@
> 
>   if(x == 0) {
>     ... when != x = e1
>         when != while(...) S
> 	when != for(...;...;...) S
> (
> * x |= e
> |
> * x | e
> )
>   ... when any
> }
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/comedi/drivers/amplc_pci230.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/comedi/drivers/amplc_pci230.c b/drivers/staging/comedi/drivers/amplc_pci230.c
> index 4b39f69..0c4d9fe 100644
> --- a/drivers/staging/comedi/drivers/amplc_pci230.c
> +++ b/drivers/staging/comedi/drivers/amplc_pci230.c
> @@ -1107,7 +1107,7 @@ static bool pci230_handle_ao_fifo(struct comedi_device *dev,
>  		/* Check for FIFO underrun. */
>  		if (dacstat & PCI230P2_DAC_FIFO_UNDERRUN_LATCHED) {
>  			dev_err(dev->class_dev, "AO FIFO underrun\n");
> -			events |= COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;
> +			events = COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;

Maybe it's better as is, to keep the code simple and uniform.

julia

>  		}
>  		/*
>  		 * Check for buffer underrun if FIFO less than half full
> -- 
> 2.5.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160224005517.GA3677%40janani-Inspiron-3521.
> For more options, visit https://groups.google.com/d/optout.
> 

