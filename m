X-GM-THRID: 2154080239616
X-Received: by 10.194.221.65 with SMTP id qc1mr445831wjc.7.1424553497960;
        Sat, 21 Feb 2015 13:18:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.179.139 with SMTP id dg11ls351323lac.62.gmail; Sat, 21 Feb
 2015 13:18:17 -0800 (PST)
X-Received: by 10.152.88.40 with SMTP id bd8mr452717lab.0.1424553497673;
        Sat, 21 Feb 2015 13:18:17 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i7si379014wif.0.2015.02.21.13.18.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 13:18:17 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,621,1418079600"; 
   d="scan'208";a="122825136"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 22:18:17 +0100
Date: Sat, 21 Feb 2015 22:18:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: removed trailing whitespace
 in dgnc
In-Reply-To: <1424551997-5909-1-git-send-email-yeliztaneroglu@gmail.com>
Message-ID: <alpine.DEB.2.02.1502212217160.2296@localhost6.localdomain6>
References: <1424551997-5909-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, Yeliz Taneroglu wrote:

> Removed all trailing whitespace in
> "drivers/staging/dgnc/dgnc_sysfs.c"

You removed braces.  If that is all you did, you should change the 
subject and the commit message.  It you removed the braces and removed 
trailing whitespace, then add about the braces in the commit message.

julia

> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_sysfs.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_sysfs.c b/drivers/staging/dgnc/dgnc_sysfs.c
> index 0d425ad..6c3b387 100644
> --- a/drivers/staging/dgnc/dgnc_sysfs.c
> +++ b/drivers/staging/dgnc/dgnc_sysfs.c
> @@ -125,9 +125,8 @@ void dgnc_create_driver_sysfiles(struct pci_driver *dgnc_driver)
>  	rc |= driver_create_file(driverfs, &driver_attr_debug);
>  	rc |= driver_create_file(driverfs, &driver_attr_rawreadok);
>  	rc |= driver_create_file(driverfs, &driver_attr_pollrate);
> -	if (rc) {
> +	if (rc)
>  		printk(KERN_ERR "DGNC: sysfs driver_create_file failed!\n");
> -	}
>  }
>  
>  
> @@ -397,9 +396,8 @@ void dgnc_create_ports_sysfiles(struct dgnc_board *bd)
>  	rc |= device_create_file(&(bd->pdev->dev), &dev_attr_ports_txcount);
>  	rc |= device_create_file(&(bd->pdev->dev), &dev_attr_vpd);
>  	rc |= device_create_file(&(bd->pdev->dev), &dev_attr_serial_number);
> -	if (rc) {
> +	if (rc)
>  		printk(KERN_ERR "DGNC: sysfs device_create_file failed!\n");
> -	}
>  }
>  
>  
> -- 
> 1.8.3.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424551997-5909-1-git-send-email-yeliztaneroglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

