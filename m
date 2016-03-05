X-GM-THRID: 6258476989674422272
X-Received: by 10.28.189.130 with SMTP id n124mr320684wmf.4.1457166380035;
        Sat, 05 Mar 2016 00:26:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.210.147 with SMTP id j141ls323839wmg.40.canary; Sat, 05 Mar
 2016 00:26:19 -0800 (PST)
X-Received: by 10.28.146.70 with SMTP id u67mr313064wmd.4.1457166379552;
        Sat, 05 Mar 2016 00:26:19 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c140si103644wmh.1.2016.03.05.00.26.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 00:26:19 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,540,1449529200"; 
   d="scan'208";a="206009402"
Received: from 155.212.120.153.west.global.crust-r.net (HELO hadrien.local) ([153.120.212.155])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 05 Mar 2016 09:26:17 +0100
Date: Sat, 5 Mar 2016 09:26:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: Use predefined macro
 offset_in_page() instead of (addr & ~PAGE_MASK).
In-Reply-To: <20160305000721.GA3072@sandhya>
Message-ID: <alpine.DEB.2.10.1603050926020.2822@hadrien>
References: <20160305000721.GA3072@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 5 Mar 2016, Sandhya Bankar wrote:

> Use predefined macro offset_in_page() instead of (addr & ~PAGE_MASK).
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/comedi/comedi_fops.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> index d1cf6a1..7c7b477 100644
> --- a/drivers/staging/comedi/comedi_fops.c
> +++ b/drivers/staging/comedi/comedi_fops.c
> @@ -2224,7 +2224,7 @@ static int comedi_mmap(struct file *file, struct vm_area_struct *vma)
>  		retval = -EFAULT;
>  		goto done;
>  	}
> -	if (size & (~PAGE_MASK)) {
> +	if (offset_in_page(size)) {

Much nicer :)

julia

>  		retval = -EFAULT;
>  		goto done;
>  	}
> --
> 1.8.3.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160305000721.GA3072%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>

