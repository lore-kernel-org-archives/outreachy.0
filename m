X-GM-THRID: 6618627943350403072
X-Received: by 2002:adf:db0d:: with SMTP id s13-v6mr485800wri.25.1541019539963;
        Wed, 31 Oct 2018 13:58:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:d743:: with SMTP id o64-v6ls870519wmg.27.gmail; Wed, 31
 Oct 2018 13:58:58 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dCzgzxiW9x9Xvdj9B4aF+ckYHKmYjSLDsJBbZzB14UQGxZeXh69mE8+s58+f4D5tCToeP5
X-Received: by 2002:a1c:b5cc:: with SMTP id e195-v6mr489958wmf.17.1541019538937;
        Wed, 31 Oct 2018 13:58:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541019538; cv=none;
        d=google.com; s=arc-20160816;
        b=ko83cSuLRpP7LpxPC4jIppt1ffLnMLupBrRkwI/8Mh278BJndXOErV23pa1MQ7vJYS
         ngCE9/pZxd+tRxoK1/RStpX0imALj0dV/bsYqGcg+l9ja84tWqY344sD+/kmVP5ab1cZ
         xknbzaqtQNfHRhhlW26WQ1nUKxcXBo84YUtIVPfae4RzhHZDAk/vBYfKPtNbskSpMl8W
         4PmCmzWcOZ3GslqvTs7dr36aAYl4C1ey3CKWWTMl/4fPtUDi+MT0dowo2kf617Vv/99Q
         YGKFvyy9avvqHo/itgwN73JleVRArIjU+rQqcNlMM4cbDoSzYNZJljnOgCi2Im3WepIV
         2c2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=IJ+TzE6BzLgW/5Lj9+vulnCXj2kNyzkIBWYGw0LFPZo=;
        b=b6iZef7VfV3A2grC89pmg70UhuiagOt3/ALIP8FTpfo+9eLOiE4K/lz/TwCC92IhHk
         cCW02e9Bb2NT9Bw4yfhOY4p2x5bSJdxshZAXBARV22nJPt/hBIXLSLxzeQ1o8jeQmFLX
         xb6ZR5g9VXBe5l6gfDe2PRxAXQZ7DtNibt0/LEjM0tfSEof5sKX4vs8KcSoBhWYFgXAA
         C+82RpG+UbrV2iPaPnudOEWJfOG/NpxRd8Zt+8jbY6CCFDOrCnT1mXTf2uyUGqqtRrfA
         F36hLE6YZuwrLzz/RjG1QF9ZUmt02oS+dTvkVE8CWPi+cZoRBKYuy0lQSuO2CyT3nTdb
         a6+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h74-v6si90766wmd.4.2018.10.31.13.58.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 13:58:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,449,1534802400"; 
   d="scan'208";a="353685166"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Oct 2018 21:58:58 +0100
Date: Wed, 31 Oct 2018 21:58:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    sasha.levin@microsoft.com
Subject: Re: [Outreachy kernel] [PATH v3] staging: gasket: Create a memory
 allocation error handling path
In-Reply-To: <20181031205636.GA13583@kvasir.local>
Message-ID: <alpine.DEB.2.21.1810312158190.2391@hadrien>
References: <20181031205636.GA13583@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 31 Oct 2018, Ioannis Valasakis wrote:

> Create an error handling path for memory allocation. It avoids repeating
> the same assignments and returns the respective ENOMEM.

I think you are again making a patch based on your previous patch.  You
need to undo everything to get back to the state of Greg's tree.

julia

>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
> Changes in v3:
> 	- Modified the label names so they free the right memory
>
>  drivers/staging/gasket/gasket_interrupt.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
> index 23232ea8f4d9..b1ee9a70bdd8 100644
> --- a/drivers/staging/gasket/gasket_interrupt.c
> +++ b/drivers/staging/gasket/gasket_interrupt.c
> @@ -362,7 +362,7 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
>  						   sizeof(ulong),
>  						   GFP_KERNEL);
>  	if (!interrupt_data->interrupt_counts) {
> -		goto err_free_data;
> +		goto err_free_all;
>  	}
>
>  	switch (interrupt_data->type) {
> @@ -397,11 +397,11 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
>
>  	return 0;
>
> -err_free_msix:
> +err_free_all:
>  	kfree(interrupt_data->eventfd_ctxs);
>  err_free_eventfd:
>  	kfree(interrupt_data->msix_entries);
> -err_free_data:
> +err_free_msix:
>  	kfree(interrupt_data);
>  	return -ENOMEM;
>  }
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181031205636.GA13583%40kvasir.local.
> For more options, visit https://groups.google.com/d/optout.
>

