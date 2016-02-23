X-GM-THRID: 6254188564975714304
X-Received: by 10.28.156.83 with SMTP id f80mr2140811wme.1.1456256327955;
        Tue, 23 Feb 2016 11:38:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.21.33 with SMTP id l33ls515266lfi.100.gmail; Tue, 23 Feb
 2016 11:38:45 -0800 (PST)
X-Received: by 10.112.130.42 with SMTP id ob10mr4400202lbb.2.1456256325478;
        Tue, 23 Feb 2016 11:38:45 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e130si1195223wme.2.2016.02.23.11.38.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:38:45 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,490,1449529200"; 
   d="scan'208";a="204349598"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 20:38:44 +0100
Date: Tue, 23 Feb 2016 20:38:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: Replace pci_enable_device
 with pcim_enable_device
In-Reply-To: <20160222184544.GA29097@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.02.1602232037580.2040@localhost6.localdomain6>
References: <20160222184544.GA29097@amitoj-Inspiron-3542>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 23 Feb 2016, Amitoj Kaur Chawla wrote:

> Replace pci_enable_device with pcim_enable-device. Remove unnecessary
> pci_disable_device and pci_release_regions from probe and remove
> functions in rts5208 driver.
> 
> Additionally, an unnecessary platform_set_drvdata() has been removed
> since the driver core clears the driver data to NULL after device 
> release or on probe failure. There is no need to manually clear the 
> device driver data to NULL.

Aren't these completely separate issues?  The latter could be good to 
automate.

julia

> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rts5208/rtsx.c | 15 ++-------------
>  1 file changed, 2 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
> index 5dfcdfb..b829c42 100644
> --- a/drivers/staging/rts5208/rtsx.c
> +++ b/drivers/staging/rts5208/rtsx.c
> @@ -329,7 +329,6 @@ static int rtsx_suspend(struct pci_dev *pci, pm_message_t state)
>  
>  	pci_save_state(pci);
>  	pci_enable_wake(pci, pci_choose_state(pci, state), 1);
> -	pci_disable_device(pci);
>  	pci_set_power_state(pci, pci_choose_state(pci, state));
>  
>  	/* unlock the device pointers */
> @@ -353,7 +352,7 @@ static int rtsx_resume(struct pci_dev *pci)
>  
>  	pci_set_power_state(pci, PCI_D0);
>  	pci_restore_state(pci);
> -	if (pci_enable_device(pci) < 0) {
> +	if (pcim_enable_device(pci) < 0) {
>  		dev_err(&dev->pci->dev,
>  			"%s: pci_enable_device failed, disabling device\n",
>  			CR_DRIVER_NAME);
> @@ -403,8 +402,6 @@ static void rtsx_shutdown(struct pci_dev *pci)
>  
>  	if (chip->msi_en)
>  		pci_disable_msi(pci);
> -
> -	pci_disable_device(pci);
>  }
>  
>  static int rtsx_control_thread(void *__dev)
> @@ -656,9 +653,6 @@ static void rtsx_release_resources(struct rtsx_dev *dev)
>  	if (dev->remap_addr)
>  		iounmap(dev->remap_addr);
>  
> -	pci_disable_device(dev->pci);
> -	pci_release_regions(dev->pci);
> -
>  	rtsx_release_chip(dev->chip);
>  	kfree(dev->chip);
>  }
> @@ -850,7 +844,7 @@ static int rtsx_probe(struct pci_dev *pci,
>  
>  	dev_dbg(&pci->dev, "Realtek PCI-E card reader detected\n");
>  
> -	err = pci_enable_device(pci);
> +	err = pcim_enable_device(pci);
>  	if (err < 0) {
>  		dev_err(&pci->dev, "PCI enable device failed!\n");
>  		return err;
> @@ -860,7 +854,6 @@ static int rtsx_probe(struct pci_dev *pci,
>  	if (err < 0) {
>  		dev_err(&pci->dev, "PCI request regions for %s failed!\n",
>  			CR_DRIVER_NAME);
> -		pci_disable_device(pci);
>  		return err;
>  	}
>  
> @@ -871,8 +864,6 @@ static int rtsx_probe(struct pci_dev *pci,
>  	host = scsi_host_alloc(&rtsx_host_template, sizeof(*dev));
>  	if (!host) {
>  		dev_err(&pci->dev, "Unable to allocate the scsi host\n");
> -		pci_release_regions(pci);
> -		pci_disable_device(pci);
>  		return -ENOMEM;
>  	}
>  
> @@ -1009,8 +1000,6 @@ static void rtsx_remove(struct pci_dev *pci)
>  
>  	quiesce_and_remove_host(dev);
>  	release_everything(dev);
> -
> -	pci_set_drvdata(pci, NULL);
>  }
>  
>  /* PCI IDs */
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160222184544.GA29097%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
> 

