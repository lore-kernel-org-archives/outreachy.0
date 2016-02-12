X-GM-THRID: 6249584411917942784
X-Received: by 10.31.168.130 with SMTP id r124mr46602771vke.10.1455248649000;
        Thu, 11 Feb 2016 19:44:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.134 with SMTP id j6ls1472160qgj.88.gmail; Thu, 11 Feb
 2016 19:44:08 -0800 (PST)
X-Received: by 10.31.168.130 with SMTP id r124mr46602753vke.10.1455248648521;
        Thu, 11 Feb 2016 19:44:08 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 79si1516417pft.0.2016.02.11.19.44.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 19:44:08 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3241F100F;
	Fri, 12 Feb 2016 03:44:08 +0000 (UTC)
Date: Thu, 11 Feb 2016 19:44:07 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/6] staging: comedi: comedi_fops:
 Merge if conditions
Message-ID: <20160212034407.GB12182@kroah.com>
References: <20160210085916.GA14597@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160210085916.GA14597@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Feb 10, 2016 at 02:29:16PM +0530, Amitoj Kaur Chawla wrote:
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

Personally, I like the original code, it's simpler and easier to read,
why make this more complex?

sorry,

greg k-h

