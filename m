X-GM-THRID: 6665770369024
X-Received: by 10.112.40.81 with SMTP id v17mr1021384lbk.5.1425507115270;
        Wed, 04 Mar 2015 14:11:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.233 with SMTP id bb9ls221509wib.29.gmail; Wed, 04 Mar
 2015 14:11:54 -0800 (PST)
X-Received: by 10.181.13.236 with SMTP id fb12mr1491930wid.1.1425507114925;
        Wed, 04 Mar 2015 14:11:54 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id by11si1241069wib.1.2015.03.04.14.11.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 04 Mar 2015 14:11:54 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,343,1422918000"; 
   d="scan'208";a="124421069"
Received: from unknown (HELO [132.207.219.27]) ([132.207.219.27])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Mar 2015 23:11:53 +0100
Date: Wed, 4 Mar 2015 17:11:52 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: remove redundant
 bitwise OR assignment
In-Reply-To: <1425497904-13815-1-git-send-email-hamohammed.sa@gmail.com>
Message-ID: <alpine.DEB.2.10.1503041711150.2734@hadrien>
References: <1425497904-13815-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 4 Mar 2015, Haneen Mohammed wrote:

> No need to combine variable with value of 0 with other expressions using "|", for "0 | x = x".
> eg. if (x == 0)  x |= e;
> same as: if (x == 0) x = e;
> Issue found using coccinelle.
>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/comedi/drivers/amplc_pci230.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/amplc_pci230.c b/drivers/staging/comedi/drivers/amplc_pci230.c
> index a977156..7930438 100644
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

I think that this is not correct.  If the then branch of the above if is
taken, then events will not be 0 any more.

julia

>  		}
>  	}
>  	if (events == 0) {
> @@ -1163,7 +1163,7 @@ static bool pci230_handle_ao_fifo(struct comedi_device *dev,
>  		dacstat = inw(devpriv->daqio + PCI230_DACCON);
>  		if (dacstat & PCI230P2_DAC_FIFO_UNDERRUN_LATCHED) {
>  			dev_err(dev->class_dev, "AO FIFO underrun\n");
> -			events |= COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;
> +			events = COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;
>  		}
>  	}
>  	async->events |= events;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425497904-13815-1-git-send-email-hamohammed.sa%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

