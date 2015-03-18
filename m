X-GM-THRID: 9022009769984
X-Received: by 10.112.219.102 with SMTP id pn6mr11042877lbc.12.1426696521386;
        Wed, 18 Mar 2015 09:35:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.135 with SMTP id p7ls1140966wic.45.canary; Wed, 18 Mar
 2015 09:35:21 -0700 (PDT)
X-Received: by 10.180.91.76 with SMTP id cc12mr930550wib.7.1426696521061;
        Wed, 18 Mar 2015 09:35:21 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o3si172930wib.2.2015.03.18.09.35.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 18 Mar 2015 09:35:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,423,1422918000"; 
   d="scan'208";a="126607002"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Mar 2015 17:35:00 +0100
Date: Wed, 18 Mar 2015 17:34:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Somya Anand <somyaanand214@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: Avoid bitwise OR
 operator with zero valued variable
In-Reply-To: <1426696229-25453-1-git-send-email-somyaanand214@gmail.com>
Message-ID: <alpine.DEB.2.10.1503181732230.2398@hadrien>
References: <1426696229-25453-1-git-send-email-somyaanand214@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 18 Mar 2015, Somya Anand wrote:

> Zero ORed with any expression is equal to that expression itself. So, it
> is redundant to do OR with a variable whose value is 0.
>
> This patch identifies the issue and simplify the code by using expression x
> itself instead of 0 | x where ever it is possible. While doing so, checks has
> been made that the variable is not further assigned some non zero value or
> there is no for or while loop. This change is done via following coccinelle script
>
> @@
> expression x,e,e1;
> statement S;
> @@
>
> if (x == 0) {
>   <... when != x = e1
>        when != while(...) S
>        when != for(...;...;...) S
> (
> -  x |= e;
> +  x = e;
> |
> -  x | e
> +  e
> )
>  ...>
> }
>
> Signed-off-by: Somya Anand <somyaanand214@gmail.com>
> ---
>  drivers/staging/comedi/drivers/amplc_pci230.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/amplc_pci230.c b/drivers/staging/comedi/drivers/amplc_pci230.c
> index 2dd794d..330bc46 100644
> --- a/drivers/staging/comedi/drivers/amplc_pci230.c
> +++ b/drivers/staging/comedi/drivers/amplc_pci230.c
> @@ -1108,7 +1108,7 @@ static bool pci230_handle_ao_fifo(struct comedi_device *dev,
>  		/* Check for FIFO underrun. */
>  		if (dacstat & PCI230P2_DAC_FIFO_UNDERRUN_LATCHED) {
>  			dev_err(dev->class_dev, "AO FIFO underrun\n");
> -			events |= COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;
> +			events = COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;
>  		}
>  		/*
>  		 * Check for buffer underrun if FIFO less than half full
> @@ -1118,7 +1118,7 @@ static bool pci230_handle_ao_fifo(struct comedi_device *dev,
>  		if (num_scans == 0 &&
>  		    (dacstat & PCI230P2_DAC_FIFO_HALF) == 0) {
>  			dev_err(dev->class_dev, "AO buffer underrun\n");
> -			events |= COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;
> +			events = COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;

I think that this code was discussed already, and it was decided not to
make the change.  On the one hand, the issue is that your semantic patch
only considers an assignment using =, whereas here before the second case
there is an update of events using |= (ie the first case).  On the other
hand, the two assignments actually |= the same value, so they are actually
the same as an = assignment.  But maybe in reading the code it could look
strange to abandon the previous value.

julia


>  		}
>  	}
>  	if (events == 0) {
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1426696229-25453-1-git-send-email-somyaanand214%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

