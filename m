X-GM-THRID: 6254196416995917824
X-Received: by 10.112.155.8 with SMTP id vs8mr1178812lbb.13.1456307912812;
        Wed, 24 Feb 2016 01:58:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.147.12 with SMTP id v12ls41796wmd.32.gmail; Wed, 24 Feb
 2016 01:58:32 -0800 (PST)
X-Received: by 10.28.45.82 with SMTP id t79mr2467833wmt.2.1456307912397;
        Wed, 24 Feb 2016 01:58:32 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 141si119993wmy.2.2016.02.24.01.58.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 01:58:32 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,493,1449529200"; 
   d="scan'208";a="165802408"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2016 10:58:31 +0100
Date: Wed, 24 Feb 2016 10:58:30 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: comedi: drivers: Remove
 use of deprecated pci API
In-Reply-To: <20160223212524.GA29290@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.02.1602241057250.2149@localhost6.localdomain6>
References: <20160223212524.GA29290@amitoj-Inspiron-3542>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 24 Feb 2016, Amitoj Kaur Chawla wrote:

> Replace pci_[alloc|free]_consistent occurences with
> dma_[alloc|free]_coherent.
> 
> The Coccinelle semantic patch that was used to make some of these
> changes is as follows:
> @deprecated@
> idexpression id;
> position p;
> @@
> 
> (
>   pci_dma_supported@p ( id, ...)
> |
>   pci_alloc_consistent@p ( id, ...)
> )
> 
> @bad1@
> idexpression id;
> position deprecated.p;
> @@
> ...when != &id->dev
>    when != pci_get_drvdata ( id )
>    when != pci_enable_device ( id )
> (
>   pci_dma_supported@p ( id, ...)
> |
>   pci_alloc_consistent@p ( id, ...)
> )
> 
> @depends on !bad1@
> idexpression id;
> expression direction;
> position deprecated.p;
> @@
> 
> (
> - pci_dma_supported@p ( id,
> + dma_supported ( &id->dev,
> ...
> + , GFP_ATOMIC
>   )
> |
> - pci_alloc_consistent@p ( id,
> + dma_alloc_coherent ( &id->dev,
> ...
> + , GFP_ATOMIC

It would be clearer to put GFP_KERNEL in the semantic patch.

julia

>   )
> )
> 
> alloc_and_init_dma_members does not affect the interrupt status and is
> only called by auto_attach, which also does not affect the interrupt
> status. auto_attach() also contains a call to comedi_alloc_devpriv()
> which calls kzalloc with GFP_KERNEL flag.  Thus, there seems to be no
> danger that dma_alloc_coherent can be called with interrupts turned off, 
> and GFP_KERNEL can be used.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes in v2:
>         -Used GFP_KERNEL instead of GFP_ATOMIC
> 
>  drivers/staging/comedi/drivers/cb_pcidas64.c | 64 +++++++++++++++-------------
>  1 file changed, 34 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
> index e918d42..c773b8c 100644
> --- a/drivers/staging/comedi/drivers/cb_pcidas64.c
> +++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
> @@ -1480,35 +1480,39 @@ static int alloc_and_init_dma_members(struct comedi_device *dev)
>  	/*  allocate pci dma buffers */
>  	for (i = 0; i < ai_dma_ring_count(board); i++) {
>  		devpriv->ai_buffer[i] =
> -			pci_alloc_consistent(pcidev, DMA_BUFFER_SIZE,
> -					     &devpriv->ai_buffer_bus_addr[i]);
> +			dma_alloc_coherent(&pcidev->dev, DMA_BUFFER_SIZE,
> +					   &devpriv->ai_buffer_bus_addr[i],
> +					   GFP_KERNEL);
>  		if (!devpriv->ai_buffer[i])
>  			return -ENOMEM;
>  	}
>  	for (i = 0; i < AO_DMA_RING_COUNT; i++) {
>  		if (ao_cmd_is_supported(board)) {
>  			devpriv->ao_buffer[i] =
> -				pci_alloc_consistent(pcidev, DMA_BUFFER_SIZE,
> -						     &devpriv->
> -						      ao_buffer_bus_addr[i]);
> +				dma_alloc_coherent(&pcidev->dev,
> +						   DMA_BUFFER_SIZE,
> +						   &devpriv->
> +						   ao_buffer_bus_addr[i],
> +						   GFP_KERNEL);
>  			if (!devpriv->ao_buffer[i])
>  				return -ENOMEM;
>  		}
>  	}
>  	/*  allocate dma descriptors */
>  	devpriv->ai_dma_desc =
> -		pci_alloc_consistent(pcidev, sizeof(struct plx_dma_desc) *
> -				     ai_dma_ring_count(board),
> -				     &devpriv->ai_dma_desc_bus_addr);
> +		dma_alloc_coherent(&pcidev->dev, sizeof(struct plx_dma_desc) *
> +				   ai_dma_ring_count(board),
> +				   &devpriv->ai_dma_desc_bus_addr, GFP_KERNEL);
>  	if (!devpriv->ai_dma_desc)
>  		return -ENOMEM;
>  
>  	if (ao_cmd_is_supported(board)) {
>  		devpriv->ao_dma_desc =
> -			pci_alloc_consistent(pcidev,
> -					     sizeof(struct plx_dma_desc) *
> -					     AO_DMA_RING_COUNT,
> -					     &devpriv->ao_dma_desc_bus_addr);
> +			dma_alloc_coherent(&pcidev->dev,
> +					   sizeof(struct plx_dma_desc) *
> +					   AO_DMA_RING_COUNT,
> +					   &devpriv->ao_dma_desc_bus_addr,
> +					   GFP_KERNEL);
>  		if (!devpriv->ao_dma_desc)
>  			return -ENOMEM;
>  	}
> @@ -1564,31 +1568,31 @@ static void cb_pcidas64_free_dma(struct comedi_device *dev)
>  	/* free pci dma buffers */
>  	for (i = 0; i < ai_dma_ring_count(board); i++) {
>  		if (devpriv->ai_buffer[i])
> -			pci_free_consistent(pcidev,
> -					    DMA_BUFFER_SIZE,
> -					    devpriv->ai_buffer[i],
> -					    devpriv->ai_buffer_bus_addr[i]);
> +			dma_free_coherent(&pcidev->dev,
> +					  DMA_BUFFER_SIZE,
> +					  devpriv->ai_buffer[i],
> +					  devpriv->ai_buffer_bus_addr[i]);
>  	}
>  	for (i = 0; i < AO_DMA_RING_COUNT; i++) {
>  		if (devpriv->ao_buffer[i])
> -			pci_free_consistent(pcidev,
> -					    DMA_BUFFER_SIZE,
> -					    devpriv->ao_buffer[i],
> -					    devpriv->ao_buffer_bus_addr[i]);
> +			dma_free_coherent(&pcidev->dev,
> +					  DMA_BUFFER_SIZE,
> +					  devpriv->ao_buffer[i],
> +					  devpriv->ao_buffer_bus_addr[i]);
>  	}
>  	/* free dma descriptors */
>  	if (devpriv->ai_dma_desc)
> -		pci_free_consistent(pcidev,
> -				    sizeof(struct plx_dma_desc) *
> -				    ai_dma_ring_count(board),
> -				    devpriv->ai_dma_desc,
> -				    devpriv->ai_dma_desc_bus_addr);
> +		dma_free_coherent(&pcidev->dev,
> +				  sizeof(struct plx_dma_desc) *
> +				  ai_dma_ring_count(board),
> +				  devpriv->ai_dma_desc,
> +				  devpriv->ai_dma_desc_bus_addr);
>  	if (devpriv->ao_dma_desc)
> -		pci_free_consistent(pcidev,
> -				    sizeof(struct plx_dma_desc) *
> -				    AO_DMA_RING_COUNT,
> -				    devpriv->ao_dma_desc,
> -				    devpriv->ao_dma_desc_bus_addr);
> +		dma_free_coherent(&pcidev->dev,
> +				  sizeof(struct plx_dma_desc) *
> +				  AO_DMA_RING_COUNT,
> +				  devpriv->ao_dma_desc,
> +				  devpriv->ao_dma_desc_bus_addr);
>  }
>  
>  static inline void warn_external_queue(struct comedi_device *dev)
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160223212524.GA29290%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
> 

