X-GM-THRID: 6396588867730800640
X-Received: by 10.46.80.82 with SMTP id v18mr4572720ljd.27.1489330440972;
        Sun, 12 Mar 2017 07:54:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.83 with SMTP id v19ls1410204ljd.25.gmail; Sun, 12 Mar
 2017 07:54:00 -0700 (PDT)
X-Received: by 10.25.72.71 with SMTP id v68mr1724200lfa.9.1489330440445;
        Sun, 12 Mar 2017 07:54:00 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si550069wmd.0.2017.03.12.07.54.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 07:54:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,152,1486422000"; 
   d="scan'208";a="216448152"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2017 15:53:59 +0100
Date: Sun, 12 Mar 2017 15:53:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: Ian Abbott <abbotti@mev.co.uk>, 
    H Hartley Sweeten <hsweeten@visionengravers.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: comedi: Compress return
 logic into one line.
In-Reply-To: <58c55fcb.cb2a620a.8e3bd.8223@mx.google.com>
Message-ID: <alpine.DEB.2.20.1703121551210.2174@hadrien>
References: <58c55fcb.cb2a620a.8e3bd.8223@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 12 Mar 2017, Varsha Rao wrote:

> Simplify function return by merging assignment and return into a single
> line. The following coccinelle script is used to fix this issue.
>
> @@
> expression e,ret;

If you change the declaration of ret from expression to local
idexpression, then you will be perfectly safe.  Coccinelle will only
report on cases where the variable is local.

julia

> @@
>
> -ret = e;
> -return ret;
> +return e;
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
> Changes in v2:
>
> - It is not a good idea to remove structure member initialisations. As
>   the value of structure members are not limited to scope of the function.
>   So it has not been included in this patch version.
>
>  drivers/staging/comedi/drivers/cb_pcidas64.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
> index 3b98193..b761f00 100644
> --- a/drivers/staging/comedi/drivers/cb_pcidas64.c
> +++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
> @@ -1417,9 +1417,7 @@ static int set_ai_fifo_size(struct comedi_device *dev, unsigned int num_samples)
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58c55fcb.cb2a620a.8e3bd.8223%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

