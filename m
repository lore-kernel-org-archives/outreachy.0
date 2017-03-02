X-GM-THRID: 6391489857245413376
X-Received: by 10.25.150.212 with SMTP id y203mr1625721lfd.30.1488451016022;
        Thu, 02 Mar 2017 02:36:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.227 with SMTP id f96ls678182lji.31.gmail; Thu, 02 Mar
 2017 02:36:55 -0800 (PST)
X-Received: by 10.46.88.9 with SMTP id m9mr1801663ljb.25.1488451015581;
        Thu, 02 Mar 2017 02:36:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m191si26454wma.0.2017.03.02.02.36.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 02:36:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,230,1484002800"; 
   d="scan'208";a="262794998"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2017 11:35:43 +0100
Date: Thu, 2 Mar 2017 11:35:33 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v4] staging: emxx_udc: Add comment
 for spinlock_t definition.
In-Reply-To: <58b77c39.0532630a.33e60.bc40@mx.google.com>
Message-ID: <alpine.DEB.2.20.1703021133550.3414@hadrien>
References: <58b77c39.0532630a.33e60.bc40@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 2 Mar 2017, Varsha Rao wrote:

> The nbu2ss_udc structure is used to perform various usb device
> operations. It is important to protect the members as they can make
> system calls. Lock variable of type spinlock_t, is used to provide
> protection by using various spinlock functions.

I'm not sure to understand the idea of a structure member making a system
call.  Normally, one puts a lock around something because the location may
be shared between multiple processes, who may try to update it
concurrently with other reads or writes.

julia

>
> In this patch, comment is added for spinlock_t definition, to fix the
> following checkpatch issue:
>
> CHECK: spinlock_t definition without comment
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
> Changes in v2:
> -Modified commit message.
>
> Changes in v3:
> -Modified commit message.
>
> Changes in v4:
> -Added proper version number.
>
>  drivers/staging/emxx_udc/emxx_udc.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
> index 789bfb9..78c08e1 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.h
> +++ b/drivers/staging/emxx_udc/emxx_udc.h
> @@ -567,7 +567,7 @@ struct nbu2ss_udc {
>  	struct usb_gadget_driver *driver;
>  	struct platform_device *pdev;
>  	struct device *dev;
> -	spinlock_t lock;
> +	spinlock_t lock; /* Protects nbu2ss_udc structure fields */
>  	struct completion		*pdone;
>
>  	enum ep0_state			ep0state;
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58b77c39.0532630a.33e60.bc40%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

