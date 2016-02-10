X-GM-THRID: 6249732512235388928
X-Received: by 10.28.128.204 with SMTP id b195mr1561149wmd.7.1455133144681;
        Wed, 10 Feb 2016 11:39:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.65.208 with SMTP id o199ls135434lfa.24.gmail; Wed, 10 Feb
 2016 11:39:03 -0800 (PST)
X-Received: by 10.25.136.198 with SMTP id k189mr5049726lfd.5.1455133143640;
        Wed, 10 Feb 2016 11:39:03 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h73si162818wme.0.2016.02.10.11.39.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 11:39:03 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,426,1449529200"; 
   d="scan'208";a="164244343"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 20:39:02 +0100
Date: Wed, 10 Feb 2016 20:39:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: gdm72xx: compress return
 logic into one line
In-Reply-To: <20160210183350.GA12708@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.02.1602102038300.2075@localhost6.localdomain6>
References: <20160210183350.GA12708@d830.WORKGROUP>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 10 Feb 2016, Alison Schofield wrote:

> Simplify function returns by merging assignment and return into
> one command line.
> Found with Coccinelle
> @@
> expression e, ret;
> @@
> 
> -ret =
> +return
> 	e;
> -return ret;

Looks good.

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
>  drivers/staging/gdm72xx/netlink_k.c | 3 +--
>  drivers/staging/gdm72xx/usb_boot.c  | 4 +---
>  2 files changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/gdm72xx/netlink_k.c b/drivers/staging/gdm72xx/netlink_k.c
> index b7e5e70..cf0b47c 100644
> --- a/drivers/staging/gdm72xx/netlink_k.c
> +++ b/drivers/staging/gdm72xx/netlink_k.c
> @@ -151,6 +151,5 @@ int netlink_send(struct sock *sock, int group, u16 type, void *msg, int len)
>  		pr_err("netlink_broadcast g=%d, t=%d, l=%d, r=%d\n",
>  		       group, type, len, ret);
>  	}
> -	ret = 0;
> -	return ret;
> +	return 0;
>  }
> diff --git a/drivers/staging/gdm72xx/usb_boot.c b/drivers/staging/gdm72xx/usb_boot.c
> index 39ca34031..3082987 100644
> --- a/drivers/staging/gdm72xx/usb_boot.c
> +++ b/drivers/staging/gdm72xx/usb_boot.c
> @@ -357,7 +357,5 @@ int usb_emergency(struct usb_device *usbdev)
>  		return ret;
>  	dev_info(&usbdev->dev, "GCT Emergency: Filesystem download success.\n");
>  
> -	ret = em_fw_reset(usbdev);
> -
> -	return ret;
> +	return em_fw_reset(usbdev);
>  }
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160210183350.GA12708%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.
> 

