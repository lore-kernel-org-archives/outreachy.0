X-GM-THRID: 6391489857245413376
X-Received: by 10.223.164.195 with SMTP id h3mr165665wrb.2.1488304928377;
        Tue, 28 Feb 2017 10:02:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.81.10 with SMTP id f10ls188904ljb.44.gmail; Tue, 28 Feb
 2017 10:02:05 -0800 (PST)
X-Received: by 10.46.87.80 with SMTP id r16mr481161ljd.16.1488304925781;
        Tue, 28 Feb 2017 10:02:05 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si1176872wmg.3.2017.02.28.10.02.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 10:02:05 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,220,1484002800"; 
   d="scan'208";a="262491118"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2017 19:02:05 +0100
Date: Tue, 28 Feb 2017 19:02:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: emxx_udc: Add comment
 for spinlock_t definition.
In-Reply-To: <58b5b1d0.024a620a.27ba9.a047@mx.google.com>
Message-ID: <alpine.DEB.2.20.1702281901240.2171@hadrien>
References: <58b5b1d0.024a620a.27ba9.a047@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 28 Feb 2017, Varsha Rao wrote:

> A spinlock can have only two type of values, locked and unlocked. Here
> lock is a variable of type spinlock_t. Its values are manipulated using
> spinlock functions. Spinlock protect and guarantee exclusive access, to
> critical region.

I don't understand the purpose of the above.  It is common knowledge.

> In this patch, comment is added for spinlock_t definition, to fix the
> following checkpatch issue:

What you could explain more about is how you chose the comment.

julia

> CHECK: spinlock_t definition without comment
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
> Changes in v2:
> - Modified commit message.
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58b5b1d0.024a620a.27ba9.a047%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

