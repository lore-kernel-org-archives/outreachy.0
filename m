X-GM-THRID: 6396588867730800640
X-Received: by 10.25.29.11 with SMTP id d11mr3938611lfd.14.1489322152616;
        Sun, 12 Mar 2017 05:35:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.40.17 with SMTP id o17ls220971lfo.23.gmail; Sun, 12 Mar
 2017 05:35:52 -0700 (PDT)
X-Received: by 10.46.5.136 with SMTP id 130mr4449882ljf.6.1489322152068;
        Sun, 12 Mar 2017 05:35:52 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i76si427305wmh.1.2017.03.12.05.35.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 05:35:52 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,152,1486422000"; 
   d="scan'208";a="264195920"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2017 13:35:51 +0100
Date: Sun, 12 Mar 2017 13:35:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: Ian Abbott <abbotti@mev.co.uk>, 
    H Hartley Sweeten <hsweeten@visionengravers.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Compress return
 logic into one line.
In-Reply-To: <58c53fae.4737620a.4ce3e.692c@mx.google.com>
Message-ID: <alpine.DEB.2.20.1703121334310.2174@hadrien>
References: <58c53fae.4737620a.4ce3e.692c@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 12 Mar 2017, Varsha Rao wrote:

> Simplify function return by merging assignment and return into a single
> line. The following coccinelle script is used to fix this issue.
>
> @@
> expression e,ret;
> @@
>
> -ret = e;
> -return ret;
> +return e;

This is too general.  For example, in your first example, you remove the
initialization of dev->private.  It's fine to remove the initialization of
a local variable that is about to go out of scope, but not to remove the
initialization of a field of a structure that can be accessed after the
end of the function.

julia

>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  drivers/staging/comedi/drivers.c             | 3 +--
>  drivers/staging/comedi/drivers/cb_pcidas64.c | 8 ++------
>  2 files changed, 3 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers.c b/drivers/staging/comedi/drivers.c
> index a5bf2cc..76e399c 100644
> --- a/drivers/staging/comedi/drivers.c
> +++ b/drivers/staging/comedi/drivers.c
> @@ -86,8 +86,7 @@ static void comedi_clear_hw_dev(struct comedi_device *dev)
>   */
>  void *comedi_alloc_devpriv(struct comedi_device *dev, size_t size)
>  {
> -	dev->private = kzalloc(size, GFP_KERNEL);
> -	return dev->private;
> +	return kzalloc(size, GFP_KERNEL);
>  }
>  EXPORT_SYMBOL_GPL(comedi_alloc_devpriv);
>
> diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
> index 3b98193..be65f71 100644
> --- a/drivers/staging/comedi/drivers/cb_pcidas64.c
> +++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
> @@ -1394,9 +1394,7 @@ static int set_ai_fifo_segment_length(struct comedi_device *dev,
>  	writew(devpriv->fifo_size_bits,
>  	       devpriv->main_iobase + FIFO_SIZE_REG);
>
> -	devpriv->ai_fifo_segment_length = num_increments * increment_size;
> -
> -	return devpriv->ai_fifo_segment_length;
> +	return num_increments * increment_size;
>  }
>
>  /*
> @@ -1417,9 +1415,7 @@ static int set_ai_fifo_size(struct comedi_device *dev, unsigned int num_samples)
>  	if (retval < 0)
>  		return retval;
>
> -	num_samples = retval * fifo->num_segments * fifo->sample_packing_ratio;
> -
> -	return num_samples;
> +	return retval * fifo->num_segments * fifo->sample_packing_ratio;
>  }
>
>  /* query length of fifo */
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58c53fae.4737620a.4ce3e.692c%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

