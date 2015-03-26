X-GM-THRID: 9903208923136
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,df25c069974e8944
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.142.1 with SMTP id rs1mr2891779lbb.19.1427351482415;
        Wed, 25 Mar 2015 23:31:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.129 with SMTP id r1ls1425150wia.43.canary; Wed, 25 Mar
 2015 23:31:22 -0700 (PDT)
X-Received: by 10.194.11.70 with SMTP id o6mr2953876wjb.6.1427351482018;
        Wed, 25 Mar 2015 23:31:22 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l7si71735wix.0.2015.03.25.23.31.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 25 Mar 2015 23:31:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,469,1422918000"; 
   d="scan'208";a="130164934"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Mar 2015 07:31:05 +0100
Date: Thu, 26 Mar 2015 07:31:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Helen Fornazier <helen.fornazier@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: dgnc: Replace printk with
 pr_err
In-Reply-To: <1427328593-6576-1-git-send-email-helen.fornazier@gmail.com>
Message-ID: <alpine.DEB.2.02.1503260730190.2066@localhost6.localdomain6>
References: <1427328593-6576-1-git-send-email-helen.fornazier@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 25 Mar 2015, Helen Fornazier wrote:

> This patch fixes the following checkpatch.pl warning:
> 
> WARNING: Prefer [subsystem eg: netdev]_err([subsystem]dev, ... then dev_err(dev, ... then pr_err(...  to printk(KERN_ERR ...
> +               printk(KERN_ERR "DGNC: sysfs driver_create_file failed!\n");
> 
> Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_sysfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_sysfs.c b/drivers/staging/dgnc/dgnc_sysfs.c
> index 2df889e..65551d1 100644
> --- a/drivers/staging/dgnc/dgnc_sysfs.c
> +++ b/drivers/staging/dgnc/dgnc_sysfs.c
> @@ -75,7 +75,7 @@ void dgnc_create_driver_sysfiles(struct pci_driver *dgnc_driver)
>  	rc |= driver_create_file(driverfs, &driver_attr_maxboards);
>  	rc |= driver_create_file(driverfs, &driver_attr_pollrate);
>  	if (rc)
> -		printk(KERN_ERR "DGNC: sysfs driver_create_file failed!\n");
> +		pr_err("DGNC: sysfs driver_create_file failed!\n");

The dgnc_driver should give you access to a device-typed field so you can 
use dev_err.

julia

>  }
>  
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1427328593-6576-1-git-send-email-helen.fornazier%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

