X-GM-THRID: 6618634579794198528
X-Received: by 2002:a17:906:2cd4:: with SMTP id r20-v6mr599239ejr.5.1541022335467;
        Wed, 31 Oct 2018 14:45:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:35d1:: with SMTP id p17-v6ls2341090ejb.16.gmail;
 Wed, 31 Oct 2018 14:45:34 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fPVUOQaAmwXTSd01RGL+6F2ilL7z5Pj6ShQL2xYVoydi2ThhjNz78+YTIY+6d7VX2CLKvz
X-Received: by 2002:a17:906:e990:: with SMTP id ka16-v6mr608364ejb.4.1541022334690;
        Wed, 31 Oct 2018 14:45:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541022334; cv=none;
        d=google.com; s=arc-20160816;
        b=scubCoNhjeysplJ8xyqSi0KJUbKx40d0bSIvRzObe1NHoA+ElWEhsPK7yBu93ISfvc
         ERJrgwJgkeaBpqcsg7yhBAGmYSlSsaGN+I3Z9RxxJ2LJ3h46W/bwFkPHJ0bAqm1E/4xu
         4spuf7whVI7zrEHZ4f5d0XHcgog1SebAfdFncS/mgQFPfXuvJ+VuTk6S1XcUUYsbaHi2
         eYep+4Y0ATSKpzGvKk4si3csqxsSJZcvBwUXV8w7J9Rk27f0NN7JBLEBq0bDrh84uvDU
         HysldWZCRej12h8IWZvxrvhpy12zpy04xKAtvBN30U9F01zGMcb/OzQqGReNfPJAldBx
         61DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=5J9eN2fjWgvRoK/9XgN6aZ6Nk8dJjkSJF9JhQBUFj4c=;
        b=QFxvCssuMy02WxX5TYkTiBhY4DLaCed3WCqHC0d8J53vVDYvHWDP258iKzJfJsuRPu
         W7roJVcyGlbO38EVuHYvB/b7/pEzXJZdXIoH6CD4/pI/Xn1/qLBUhkRkdseUYBKODOO7
         7ytlcqBjgwg95HK5Y6v+/HLthQXO1b2dgBKckCbScx7qvWXOkju1buwwqVJHAphoZ5Cq
         WXf310IIY9nPJ1i3JxbPlWBa5ebt2djOP2iWgIYzaqcQ3kbdh/3fXU9X1oNOLERqrLDs
         NNnwRqcQgBCHWlxH7WShnuRVtdKcRBwobupX5us5Yg/s401u83QIOe/pb6x+Ie/E+PsM
         WL2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b37-v6si1159778edd.5.2018.10.31.14.45.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 14:45:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,449,1534802400"; 
   d="scan'208";a="283991704"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Oct 2018 22:45:33 +0100
Date: Wed, 31 Oct 2018 22:45:33 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    alexander.levin@microsoft.com
Subject: Re: [Outreachy kernel] [PATCH v5] staging: gasket: Create a free
 memory error path
In-Reply-To: <20181031213742.GA18868@kvasir.local>
Message-ID: <alpine.DEB.2.21.1810312244040.5416@hadrien>
References: <20181031213742.GA18868@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 31 Oct 2018, Ioannis Valasakis wrote:

> Create an error handling path for memory allocation. It avoids repeating
> the same assignments and returns the respective ENOMEM.
>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
> Changes in v5:
> 	- Typo on the error handling label

Compilation should have found this error.

> drivers/staging/gasket/gasket_interrupt.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
> index 49d47afad64f..1a3e8b17e714 100644
> --- a/drivers/staging/gasket/gasket_interrupt.c
> +++ b/drivers/staging/gasket/gasket_interrupt.c
> @@ -340,17 +340,14 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev)
>  					       sizeof(struct eventfd_ctx *),
>  					       GFP_KERNEL);
>  	if (!interrupt_data->eventfd_ctxs) {
> -		kfree(interrupt_data);
> -		return -ENOMEM;
> +		goto err_free_ctxs;

Your labels describe where you are coming from.  Dan suggests to make the
labels descibe what will happen when you get there.  Here you aren't going
to be freeing ctxs.  That is the allocation that failed.

julia

>  	}
>
>  	interrupt_data->interrupt_counts = kcalloc(driver_desc->num_interrupts,
>  						   sizeof(ulong),
>  						   GFP_KERNEL);
>  	if (!interrupt_data->interrupt_counts) {
> -		kfree(interrupt_data->eventfd_ctxs);
> -		kfree(interrupt_data);
> -		return -ENOMEM;
> +		goto err_free_counts;
>  	}
>
>  	switch (interrupt_data->type) {
> @@ -379,6 +376,12 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev)
>  				    interrupt_sysfs_attrs);
>
>  	return 0;
> +
> +err_free_counts:
> +	kfree(interrupt_data->eventfd_ctxs);
> +err_free_ctxs:
> +	kfree(interrupt_data);
> +	return -ENOMEM;
>  }
>
>  static void
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181031213742.GA18868%40kvasir.local.
> For more options, visit https://groups.google.com/d/optout.
>

