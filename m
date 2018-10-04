X-GM-THRID: 6608376647638843392
X-Received: by 2002:adf:ad4a:: with SMTP id p68-v6mr547233wrc.8.1538637240984;
        Thu, 04 Oct 2018 00:14:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c205:: with SMTP id x5-v6ls633702wmi.8.canary-gmail;
 Thu, 04 Oct 2018 00:14:00 -0700 (PDT)
X-Google-Smtp-Source: ACcGV618X27tDZjCJpIwb2lKX9p8066rIkuN2doOnNq067/Bw77FDOZKJWAutVLRlBSgswrFuXwx
X-Received: by 2002:a1c:13ce:: with SMTP id 197-v6mr579421wmt.5.1538637240141;
        Thu, 04 Oct 2018 00:14:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538637240; cv=none;
        d=google.com; s=arc-20160816;
        b=JkC9fyumWvs4tGjHV2a38f92+MKWlmhvams0/Y8N86NLqmNC04pEg96ypWCBpyxfPI
         lnpVQIcfVP1a+2sU1D2uODPVkhwj68xvc017ZamVmrBYO+r5lxAhiuSj4bndWtbKBblP
         6Z8e4kAtdAE0Y/HFUJpEK3LRDHP3d05Zz/ZHfUAjIHynM4ti2aCSKVuntt+ukxNnPHFK
         GWtyfkskBxiqU3q7Iuv1pf2JQXLp+ll2kQbwGpYFG5IUMCkoU4OJmIDCQdVTE7WiUvqV
         CVo2DCajJ8xjBxQGyp6BpOlra9tlUtSIbvuq3atO0UIEdGJi5MXHfGVUVYy8AuYjEpmM
         23WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=btAmrfejNjK26kxV5Ogel8bU7vVU5JahOavxWAHT5Ng=;
        b=XqGcLNemDDMEdCyfvXe6V98A1xuka9YU2vRxDeV8wh10LTFbuuPtiV7Dkj1rERAC5R
         hcW7Lbh3jkHhIydaVWSllxUOpPStJwU4tkIwngTmEF5Eh0wHC9V1FglVO++jRJhSXjSm
         q8h116ajYg/x5tc/HL3FN45aOCSxqly3BIZKRdwGhbegKu81l4JY3rRdGME9xxR5E5aI
         aKfrPePw/Mk1WUy/DZIvdGubxsLle2lE8cirulL/D1KKoIoDJq6Of8m5vxpoPanE16Kk
         rB14j65W11ximrgE7H+/LI2GQz0WcmIVBZbCow6GSuj8aUOOcIadpCWRXGO4ZQ+WaZAi
         5Pzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 204-v6si62994wmw.3.2018.10.04.00.14.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 00:14:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,338,1534802400"; 
   d="scan'208";a="349429035"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Oct 2018 09:13:59 +0200
Date: Thu, 4 Oct 2018 09:13:59 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    manasi.d.navare@intel.com, mikelley@microsoft.com, 
    alexander.levin@microsoft.com
Subject: Re: [Outreachy kernel] [PATCH] staging: axis-fifo: Remove parentheses
 after EOL
In-Reply-To: <20181003232436.GA29874@kvasir.local>
Message-ID: <alpine.DEB.2.21.1810040911560.3415@hadrien>
References: <20181003232436.GA29874@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 4 Oct 2018, Ioannis Valasakis wrote:

> staging: axis-fifo: Remove parentheses after EOL
>
> According to the script checkpatch.pl and following the Linux
> Kernel Coding Standards, I remove the parentheses from the EOL
> and move them to a new line.

Thanks for the patch.

Could you move all the arguments after the first one one space to the
right, so that they line up with the rigt side of the (.

Also, the commit log message should be written in the imperative, and it
is better to write out words in full rather than using abbreviations.
Look at some old commits with git log to get an idea of how to write the
commit message.

julia

>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/axis-fifo/axis-fifo.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/axis-fifo/axis-fifo.c b/drivers/staging/axis-fifo/axis-fifo.c
> index 63c8efd1b8db..f869adf0d0a2 100644
> --- a/drivers/staging/axis-fifo/axis-fifo.c
> +++ b/drivers/staging/axis-fifo/axis-fifo.c
> @@ -364,8 +364,8 @@ static ssize_t axis_fifo_read(struct file *f, char __user *buf,
>  		 * if nothing is currently available
>  		 */
>  		spin_lock_irq(&fifo->read_queue_lock);
> -		ret = wait_event_interruptible_lock_irq_timeout(
> -			fifo->read_queue,
> +		ret = wait_event_interruptible_lock_irq_timeout
> +			(fifo->read_queue,
>  			ioread32(fifo->base_addr + XLLF_RDFO_OFFSET),
>  			fifo->read_queue_lock,
>  			(read_timeout >= 0) ? msecs_to_jiffies(read_timeout) :
> @@ -482,8 +482,8 @@ static ssize_t axis_fifo_write(struct file *f, const char __user *buf,
>  		 * currently enough room in the fifo
>  		 */
>  		spin_lock_irq(&fifo->write_queue_lock);
> -		ret = wait_event_interruptible_lock_irq_timeout(
> -			fifo->write_queue,
> +		ret = wait_event_interruptible_lock_irq_timeout
> +			(fifo->write_queue,
>  			ioread32(fifo->base_addr + XLLF_TDFV_OFFSET)
>  				>= words_to_write,
>  			fifo->write_queue_lock,
> --
> 2.19.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181003232436.GA29874%40kvasir.local.
> For more options, visit https://groups.google.com/d/optout.
>

