X-GM-THRID: 7174525812736
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,81deab53fa1b567f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.159.227 with SMTP id xf3mr6139184lbb.11.1426142425505;
        Wed, 11 Mar 2015 23:40:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.132 with SMTP id b4ls252445lah.33.gmail; Wed, 11 Mar
 2015 23:40:25 -0700 (PDT)
X-Received: by 10.112.199.69 with SMTP id ji5mr5962224lbc.0.1426142425058;
        Wed, 11 Mar 2015 23:40:25 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id gj20si1455051wic.1.2015.03.11.23.40.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 11 Mar 2015 23:40:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,387,1422918000"; 
   d="scan'208";a="102999418"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Mar 2015 07:40:24 +0100
Date: Thu, 12 Mar 2015 07:40:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rts5208: Use
 module_pci_driver
In-Reply-To: <20150312031505.GA4500@vaishali-Ideapad-Z570>
Message-ID: <alpine.DEB.2.02.1503120738220.2072@localhost6.localdomain6>
References: <20150312031505.GA4500@vaishali-Ideapad-Z570>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 12 Mar 2015, Vaishali Thakkar wrote:

> Macro module_pci_driver is used for drivers whose init
> and exit paths does only register and unregister to pci
> API. So, here remove some boilerplate code by using
> module_pci_driver. Also, change driver->rtsx_driver to

driver->rtsx_driver is confusing.  It looks like a field reference.  You 
could say "change driver to rtsx_driver, to fix...".  The comma would help 
avoid "to ... to".

> fix the build warnings.

This part could be more clear.  "to avoid implicitly redefining 
driver_init."

julia

> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> ---
> Changes since v1:
> 	- Change commit log
> 	- Fix build warnings
> 
>  drivers/staging/rts5208/rtsx.c | 21 ++-------------------
>  1 file changed, 2 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
> index 7f2c0c3..3fbc4ab 100644
> --- a/drivers/staging/rts5208/rtsx.c
> +++ b/drivers/staging/rts5208/rtsx.c
> @@ -1036,7 +1036,7 @@ static const struct pci_device_id rtsx_ids[] = {
>  MODULE_DEVICE_TABLE(pci, rtsx_ids);
>  
>  /* pci_driver definition */
> -static struct pci_driver driver = {
> +static struct pci_driver rtsx_driver = {
>  	.name = CR_DRIVER_NAME,
>  	.id_table = rtsx_ids,
>  	.probe = rtsx_probe,
> @@ -1048,21 +1048,4 @@ static struct pci_driver driver = {
>  	.shutdown = rtsx_shutdown,
>  };
>  
> -static int __init rtsx_init(void)
> -{
> -	pr_info("Initializing Realtek PCIE storage driver...\n");
> -
> -	return pci_register_driver(&driver);
> -}
> -
> -static void __exit rtsx_exit(void)
> -{
> -	pr_info("rtsx_exit() called\n");
> -
> -	pci_unregister_driver(&driver);
> -
> -	pr_info("%s module exit\n", CR_DRIVER_NAME);
> -}
> -
> -module_init(rtsx_init)
> -module_exit(rtsx_exit)
> +module_pci_driver(rtsx_driver)
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150312031505.GA4500%40vaishali-Ideapad-Z570.
> For more options, visit https://groups.google.com/d/optout.
> 

