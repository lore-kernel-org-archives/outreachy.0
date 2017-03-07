X-GM-THRID: 6394466047904186368
X-Received: by 10.46.21.11 with SMTP id s11mr191831ljd.23.1488901755734;
        Tue, 07 Mar 2017 07:49:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.163.204 with SMTP id m195ls11863lfe.0.gmail; Tue, 07 Mar
 2017 07:49:14 -0800 (PST)
X-Received: by 10.46.81.66 with SMTP id b2mr182979lje.3.1488901754857;
        Tue, 07 Mar 2017 07:49:14 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n128si376127wmf.2.2017.03.07.07.49.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 07:49:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,258,1484002800"; 
   d="scan'208";a="215906772"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 16:49:14 +0100
Date: Tue, 7 Mar 2017 16:49:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] media:atomisp:pci: Remove comparinson
 on bool tests
In-Reply-To: <20170306191403.GA4848@fireworks>
Message-ID: <alpine.DEB.2.20.1703071646490.3150@hadrien>
References: <20170306191403.GA4848@fireworks>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 6 Mar 2017, Georgiana Rodica Chelu wrote:

> Remove the comparison when a bool test to make
> the code easy to read.

I wonder if this is really worth doing.  I looked at some of the
functions, and they don't seem like predicates.  It seems that false means
failure.  It could be better to return 0 for success or error codes for
failure.

I would suggest to do this slowly, ie one function at a time, to the
extent possible, rather than trying to do the whole thing at once, which
is likely to be error prone.

julia


>
> Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
> ---
>  .../pci/atomisp2/css2400/runtime/isys/src/virtual_isys.c     | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/virtual_isys.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/virtual_isys.c
> index 0f1e8a2..f1fc3b5 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/virtual_isys.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/virtual_isys.c
> @@ -331,7 +331,7 @@ static bool create_input_system_channel(
>  		break;
>  	}
>
> -	if (rc == false)
> +	if (!rc)
>  		return false;
>
>  	if (!acquire_sid(me->stream2mmio_id, &(me->stream2mmio_sid_id))) {
> @@ -474,7 +474,7 @@ static bool calculate_input_system_channel_cfg(
>
>  	rc = calculate_stream2mmio_cfg(isys_cfg, metadata,
>  			&(channel_cfg->stream2mmio_cfg));
> -	if (rc == false)
> +	if (!rc)
>  		return false;
>
>  	rc = calculate_ibuf_ctrl_cfg(
> @@ -482,7 +482,7 @@ static bool calculate_input_system_channel_cfg(
>  			input_port,
>  			isys_cfg,
>  			&(channel_cfg->ibuf_ctrl_cfg));
> -	if (rc == false)
> +	if (!rc)
>  		return false;
>  	if (metadata)
>  		channel_cfg->ibuf_ctrl_cfg.stores_per_frame = isys_cfg->metadata.lines_per_frame;
> @@ -491,7 +491,7 @@ static bool calculate_input_system_channel_cfg(
>  			channel,
>  			isys_cfg,
>  			&(channel_cfg->dma_cfg));
> -	if (rc == false)
> +	if (!rc)
>  		return false;
>
>  	rc = calculate_isys2401_dma_port_cfg(
> @@ -499,7 +499,7 @@ static bool calculate_input_system_channel_cfg(
>  			false,
>  			metadata,
>  			&(channel_cfg->dma_src_port_cfg));
> -	if (rc == false)
> +	if (!rc)
>  		return false;
>
>  	rc = calculate_isys2401_dma_port_cfg(
> @@ -507,7 +507,7 @@ static bool calculate_input_system_channel_cfg(
>  			isys_cfg->raw_packed,
>  			metadata,
>  			&(channel_cfg->dma_dest_port_cfg));
> -	if (rc == false)
> +	if (!rc)
>  		return false;
>
>  	return true;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170306191403.GA4848%40fireworks.
> For more options, visit https://groups.google.com/d/optout.
>

