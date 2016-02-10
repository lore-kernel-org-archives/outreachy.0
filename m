X-GM-THRID: 6249584411917942784
X-Received: by 10.25.15.161 with SMTP id 33mr4697294lfp.0.1455105714836;
        Wed, 10 Feb 2016 04:01:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.142.77 with SMTP id q74ls67609lfd.15.gmail; Wed, 10 Feb
 2016 04:01:54 -0800 (PST)
X-Received: by 10.25.22.154 with SMTP id 26mr4692772lfw.3.1455105714333;
        Wed, 10 Feb 2016 04:01:54 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 5si142267wmm.2.2016.02.10.04.01.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 04:01:54 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,425,1449529200"; 
   d="scan'208";a="202460337"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 13:01:54 +0100
Date: Wed, 10 Feb 2016 13:01:52 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/5] staging: comedi: comedi_fops:
 Merge if conditions
In-Reply-To: <20160210101249.GA29055@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602101300510.3493@hadrien>
References: <20160210101249.GA29055@amitoj-Inspiron-3542>
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
> Changes in v2:
>         -Merged Patch 2/6 and 3/6 of first version by not dropping if
>          conditions and only merging them for the same file.
>
>  drivers/staging/comedi/comedi_fops.c | 14 +++-----------
>  1 file changed, 3 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> index d57fade..7c09150 100644
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

These parentheses are ok to keep.

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

These aren't needed.

julia

>  		retval = -EFAULT;
>  		goto done;
>  	}
> @@ -2817,9 +2811,7 @@ void comedi_free_subdevice_minor(struct comedi_subdevice *s)
>  {
>  	unsigned int i;
>
> -	if (!s)
> -		return;
> -	if (s->minor < COMEDI_NUM_BOARD_MINORS ||
> +	if (!s || s->minor < COMEDI_NUM_BOARD_MINORS ||
>  	    s->minor >= COMEDI_NUM_MINORS)
>  		return;
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160210101249.GA29055%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>

