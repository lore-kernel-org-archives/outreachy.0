X-GM-THRID: 6253767440848650240
X-Received: by 10.112.156.33 with SMTP id wb1mr2879110lbb.7.1456069169797;
        Sun, 21 Feb 2016 07:39:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.157.205 with SMTP id g196ls218394lfe.25.gmail; Sun, 21 Feb
 2016 07:39:29 -0800 (PST)
X-Received: by 10.112.157.164 with SMTP id wn4mr2879768lbb.5.1456069169129;
        Sun, 21 Feb 2016 07:39:29 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e130si779291wme.2.2016.02.21.07.39.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 07:39:29 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,481,1449529200"; 
   d="scan'208";a="203987098"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2016 16:39:28 +0100
Date: Sun, 21 Feb 2016 10:39:26 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: slicoss: Eliminate commented
 out code
In-Reply-To: <20160221203050.GA30530@janani-Inspiron-3521>
Message-ID: <alpine.DEB.2.10.1602211038071.4210@hadrien>
References: <20160221203050.GA30530@janani-Inspiron-3521>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 21 Feb 2016, Janani Ravichandran wrote:

> Remove commented out code to reduce code clutter.
>
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/slicoss/slicoss.c | 17 +----------------
>  1 file changed, 1 insertion(+), 16 deletions(-)
>
> diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
> index a91c60a..59f829e 100644
> --- a/drivers/staging/slicoss/slicoss.c
> +++ b/drivers/staging/slicoss/slicoss.c
> @@ -546,13 +546,6 @@ static int slic_card_download(struct adapter *adapter)
>  			index += 4;
>
>  			/* Check SRAM location zero. If it is non-zero. Abort.*/

Is the above comment needed?  It seems that the code that it describes is
comented/removed.

julia

> -		     /*
> -		      * failure = readl((u32 __iomem *)&slic_regs->slic_reset);
> -		      * if (failure) {
> -		      *	release_firmware(fw);
> -		      *	return -EIO;
> -		      * }
> -		      */
>  		}
>  	}
>  	release_firmware(fw);
> @@ -907,11 +900,6 @@ static void slic_upr_start(struct adapter *adapter)
>  {
>  	struct slic_upr *upr;
>  	__iomem struct slic_regs *slic_regs = adapter->slic_regs;
> -/*
> - *  char * ptr1;
> - *  char * ptr2;
> - *  uint cmdoffset;
> - */
>  	upr = adapter->upr_list;
>  	if (!upr)
>  		return;
> @@ -2914,7 +2902,6 @@ static void slic_init_adapter(struct net_device *netdev,
>  	struct slic_handle *pslic_handle;
>  	struct adapter *adapter = netdev_priv(netdev);
>
> -/*	adapter->pcidev = pcidev;*/
>  	adapter->vendid = pci_tbl_entry->vendor;
>  	adapter->devid = pci_tbl_entry->device;
>  	adapter->subsysid = pci_tbl_entry->subdevice;
> @@ -2923,9 +2910,8 @@ static void slic_init_adapter(struct net_device *netdev,
>  	adapter->functionnumber = (pcidev->devfn & 0x7);
>  	adapter->slic_regs = memaddr;
>  	adapter->irq = pcidev->irq;
> -/*	adapter->netdev = netdev;*/
>  	adapter->chipid = chip_idx;
> -	adapter->port = 0;	/*adapter->functionnumber;*/
> +	adapter->port = 0;
>  	adapter->cardindex = adapter->port;
>  	spin_lock_init(&adapter->upr_lock);
>  	spin_lock_init(&adapter->bit64reglock);
> @@ -3140,7 +3126,6 @@ static int slic_entry_probe(struct pci_dev *pcidev,
>  	mmio_start = pci_resource_start(pcidev, 0);
>  	mmio_len = pci_resource_len(pcidev, 0);
>
> -/*	memmapped_ioaddr =  (u32)ioremap_nocache(mmio_start, mmio_len);*/
>  	memmapped_ioaddr = ioremap(mmio_start, mmio_len);
>  	if (!memmapped_ioaddr) {
>  		dev_err(&pcidev->dev, "cannot remap MMIO region %lx @ %lx\n",
> --
> 2.5.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160221203050.GA30530%40janani-Inspiron-3521.
> For more options, visit https://groups.google.com/d/optout.
>

