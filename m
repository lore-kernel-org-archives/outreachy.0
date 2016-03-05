X-GM-THRID: 6254199111711457280
X-Received: by 10.194.216.3 with SMTP id om3mr1888468wjc.7.1457218469469;
        Sat, 05 Mar 2016 14:54:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.83.213 with SMTP id h204ls225402lfb.51.gmail; Sat, 05 Mar
 2016 14:54:28 -0800 (PST)
X-Received: by 10.112.130.42 with SMTP id ob10mr752577lbb.2.1457218468776;
        Sat, 05 Mar 2016 14:54:28 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c140si201200wmh.1.2016.03.05.14.54.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 14:54:28 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3FFA3DE1;
	Sat,  5 Mar 2016 22:54:27 +0000 (UTC)
Date: Sat, 5 Mar 2016 14:54:26 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: drivers: gsc_hpdi:
 Remove use of deprecated pci API
Message-ID: <20160305225426.GA28583@kroah.com>
References: <20160222192639.GA3502@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160222192639.GA3502@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Feb 23, 2016 at 12:56:39AM +0530, Amitoj Kaur Chawla wrote:
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
>   )
> )
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/comedi/drivers/gsc_hpdi.c | 32 ++++++++++++++++---------------
>  1 file changed, 17 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/gsc_hpdi.c b/drivers/staging/comedi/drivers/gsc_hpdi.c
> index 46ca5d9..956756a 100644
> --- a/drivers/staging/comedi/drivers/gsc_hpdi.c
> +++ b/drivers/staging/comedi/drivers/gsc_hpdi.c
> @@ -499,18 +499,18 @@ static void gsc_hpdi_free_dma(struct comedi_device *dev)
>  	/* free pci dma buffers */
>  	for (i = 0; i < NUM_DMA_BUFFERS; i++) {
>  		if (devpriv->dio_buffer[i])
> -			pci_free_consistent(pcidev,
> -					    DMA_BUFFER_SIZE,
> -					    devpriv->dio_buffer[i],
> -					    devpriv->dio_buffer_phys_addr[i]);
> +			dma_free_coherent(&pcidev->dev,
> +					  DMA_BUFFER_SIZE,
> +					  devpriv->dio_buffer[i],
> +					  devpriv->dio_buffer_phys_addr[i]);
>  	}
>  	/* free dma descriptors */
>  	if (devpriv->dma_desc)
> -		pci_free_consistent(pcidev,
> -				    sizeof(struct plx_dma_desc) *
> -				    NUM_DMA_DESCRIPTORS,
> -				    devpriv->dma_desc,
> -				    devpriv->dma_desc_phys_addr);
> +		dma_free_coherent(&pcidev->dev,
> +				  sizeof(struct plx_dma_desc) *
> +				  NUM_DMA_DESCRIPTORS,
> +				  devpriv->dma_desc,
> +				  devpriv->dma_desc_phys_addr);
>  }
>  
>  static int gsc_hpdi_init(struct comedi_device *dev)
> @@ -630,14 +630,16 @@ static int gsc_hpdi_auto_attach(struct comedi_device *dev,
>  	/* allocate pci dma buffers */
>  	for (i = 0; i < NUM_DMA_BUFFERS; i++) {
>  		devpriv->dio_buffer[i] =
> -		    pci_alloc_consistent(pcidev, DMA_BUFFER_SIZE,
> -					 &devpriv->dio_buffer_phys_addr[i]);
> +		    dma_alloc_coherent(&pcidev->dev, DMA_BUFFER_SIZE,
> +				       &devpriv->dio_buffer_phys_addr[i],
> +				       GFP_ATOMIC);
>  	}
>  	/* allocate dma descriptors */
> -	devpriv->dma_desc = pci_alloc_consistent(pcidev,
> -						 sizeof(struct plx_dma_desc) *
> -						 NUM_DMA_DESCRIPTORS,
> -						 &devpriv->dma_desc_phys_addr);
> +	devpriv->dma_desc = dma_alloc_coherent(&pcidev->dev,
> +					       sizeof(struct plx_dma_desc) *
> +					       NUM_DMA_DESCRIPTORS,
> +					       &devpriv->dma_desc_phys_addr,
> +					       GFP_ATOMIC);

As others have pointed out, this should not be GFP_ATOMIC, sorry, you
can't do these automatically, you have to check them by hand.

greg k-h

