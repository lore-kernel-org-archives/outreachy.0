X-GM-THRID: 6255098629488377856
X-Received: by 10.28.129.210 with SMTP id c201mr152995wmd.1.1456384219750;
        Wed, 24 Feb 2016 23:10:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.88.82 with SMTP id m79ls60097lfb.78.gmail; Wed, 24 Feb 2016
 23:10:18 -0800 (PST)
X-Received: by 10.112.205.164 with SMTP id lh4mr5197836lbc.6.1456384216429;
        Wed, 24 Feb 2016 23:10:16 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h73si55748wme.0.2016.02.24.23.10.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 23:10:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,497,1449529200"; 
   d="scan'208";a="165906578"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2016 08:09:59 +0100
Date: Thu, 25 Feb 2016 08:09:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/6] staging: Remove unnecessary
 *_set_drvdata()
In-Reply-To: <cover.1456377485.git.amitoj1606@gmail.com>
Message-ID: <alpine.DEB.2.02.1602250808410.2048@localhost6.localdomain6>
References: <cover.1456377485.git.amitoj1606@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 25 Feb 2016, Amitoj Kaur Chawla wrote:

> Unnecessary [platform|pci|spi|dev]_set_drvdata() have been removed 
> since the driver core clears the driver data to NULL after device 
> release or on probe failure. There is no need to manually clear the 
> device driver data to NULL.

In principle, your semantic patch should check whether the call is in the 
position of a device release or a probe failure.  In practice though, it 
seems hard to imagine why this code would be in any place other than these 
cases.

julia

> 
> The Coccinelle semantic patch used to make this change is as follows:
> // <smpl>
> @@
> struct platform_device *pdev;
> @@
> - platform_set_drvdata(pdev, NULL);
> @@
> struct pci_dev *pci;
> @@
> - pci_set_drvdata(pci, NULL);
> @@
> struct spi_device *spi;
> @@
> - spi_set_drvdata(spi, NULL);
> @@
> struct device *dev;
> @@
> - dev_set_drvdata(dev, NULL);
> @@
> struct amba_device *dev;
> @@
> - amba_set_drvdata(dev, NULL);
> // </smpl>
> 
> Amitoj Kaur Chawla (6):
>   staging: fbtft: Remove unnecessary spi_set_drvdata()
>   staging: sm750fb: Remove unnecessary pci_set_drvdata()
>   staging: media: omap4iss: Remove unnecessary platform_set_drvdata()
>   staging: unisys: visorbus: Remove unnecessary dev_set_drvdata()
>   staging: rdma: hfi1: Remove unnecessary pci_set_drvdata()
>   staging: rts5208: Remove unnecessary pci_set_drvdata()
> 
>  drivers/staging/fbtft/fbtft-core.c              | 5 -----
>  drivers/staging/media/omap4iss/iss.c            | 2 --
>  drivers/staging/rdma/hfi1/pcie.c                | 2 --
>  drivers/staging/rts5208/rtsx.c                  | 2 --
>  drivers/staging/sm750fb/sm750.c                 | 1 -
>  drivers/staging/unisys/visorbus/visorbus_main.c | 1 -
>  6 files changed, 13 deletions(-)
> 
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1456377485.git.amitoj1606%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

