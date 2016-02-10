X-GM-THRID: 6249584411917942784
X-Received: by 10.67.7.1 with SMTP id cy1mr8843065pad.31.1455095584407;
        Wed, 10 Feb 2016 01:13:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.252.103 with SMTP id zr7ls116474obc.19.gmail; Wed, 10 Feb
 2016 01:13:03 -0800 (PST)
X-Received: by 10.182.120.106 with SMTP id lb10mr37768928obb.24.1455095583982;
        Wed, 10 Feb 2016 01:13:03 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ui7si303874pab.0.2016.02.10.01.13.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 01:13:03 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,425,1449529200"; 
   d="scan'208";a="202428115"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 10:13:02 +0100
Date: Wed, 10 Feb 2016 10:13:00 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/6] staging: comedi: comedi_fops:
 Merge if conditions
In-Reply-To: <20160210085916.GA14597@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602101012420.2710@hadrien>
References: <20160210085916.GA14597@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 10 Feb 2016, Amitoj Kaur Chawla wrote:

> Merge if conditions with the same statements.
>
> Found using Coccinelle. The semantic patch used to find this is as
> follows:
>
> //<smpl>
> @@
> statement S;
> expression e,x;
> @@
>
> * if(e)
> (
> { ... return ...; }
> &
> S
> )
>
> * if(x)
> (
> { ... return ...; }
> &
> S
> )
> //</smpl>
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/comedi/comedi_fops.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> index d57fade..d6bcf73 100644
> --- a/drivers/staging/comedi/comedi_fops.c
> +++ b/drivers/staging/comedi/comedi_fops.c
> @@ -795,9 +795,7 @@ static int is_device_busy(struct comedi_device *dev)
>
>  	for (i = 0; i < dev->n_subdevices; i++) {
>  		s = &dev->subdevices[i];
> -		if (s->busy)
> -			return 1;
> -		if (s->async && comedi_buf_is_mmapped(s))
> +		if (s->busy || (s->async && comedi_buf_is_mmapped(s)))

This one is probably fine as is, with the parentheses.

julia

>  			return 1;
>  	}
>
> @@ -2216,11 +2214,7 @@ static int comedi_mmap(struct file *file, struct vm_area_struct *vma)
>  	}
>
>  	size = vma->vm_end - vma->vm_start;
> -	if (size > async->prealloc_bufsz) {
> -		retval = -EFAULT;
> -		goto done;
> -	}
> -	if (size & (~PAGE_MASK)) {
> +	if ((size > async->prealloc_bufsz) || (size & (~PAGE_MASK))) {
>  		retval = -EFAULT;
>  		goto done;
>  	}
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160210085916.GA14597%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>

