X-GM-THRID: 6210894171417346048
X-Received: by 10.182.251.230 with SMTP id zn6mr2556567obc.8.1446663998861;
        Wed, 04 Nov 2015 11:06:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.111.137 with SMTP id ii9ls514857obb.7.gmail; Wed, 04 Nov
 2015 11:06:38 -0800 (PST)
X-Received: by 10.182.236.4 with SMTP id uq4mr2819775obc.3.1446663998584;
        Wed, 04 Nov 2015 11:06:38 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sm2si286079pab.0.2015.11.04.11.06.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 11:06:38 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.135.10.71])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2E2AB409;
	Wed,  4 Nov 2015 19:06:38 +0000 (UTC)
Date: Wed, 4 Nov 2015 11:06:37 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: gdm72xx: Fix sparse warning
Message-ID: <20151104190637.GA6140@kroah.com>
References: <1446086478-14386-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1446086478-14386-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 28, 2015 at 07:41:18PM -0700, Ksenija Stanojevic wrote:
> Calls copy_{to,from}_user() do not use '__user' annotation
> while refrencing user space pointers.
> 
> Fix following sparse warnings by passing missing __user annotation:
> 
> drivers/staging/gdm72xx/gdm_wimax.c:381:37: warning: incorrect type in
> argument 1 (different address spaces)
> drivers/staging/gdm72xx/gdm_wimax.c:381:37:    expected void [noderef]
> <asn:1>*to
> drivers/staging/gdm72xx/gdm_wimax.c:381:37:    got void *buf
> drivers/staging/gdm72xx/gdm_wimax.c:404:41: warning: incorrect type in
> argument 2 (different address spaces)
> drivers/staging/gdm72xx/gdm_wimax.c:404:41:    expected void const
> [noderef] <asn:1>*from
> drivers/staging/gdm72xx/gdm_wimax.c:404:41:    got void *buf
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/gdm72xx/gdm_wimax.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/gdm72xx/gdm_wimax.c b/drivers/staging/gdm72xx/gdm_wimax.c
> index d9ddced..a5b4b72 100644
> --- a/drivers/staging/gdm72xx/gdm_wimax.c
> +++ b/drivers/staging/gdm72xx/gdm_wimax.c
> @@ -378,7 +378,7 @@ static int gdm_wimax_ioctl_get_data(struct data_s *dst, struct data_s *src)
>  	if (src->size) {
>  		if (!dst->buf)
>  			return -EINVAL;
> -		if (copy_to_user(dst->buf, src->buf, size))
> +		if (copy_to_user((void __user *)dst->buf, src->buf, size))

Shouldn't the variable be described as a __user pointer instead?  Don't
cast away warnings, fix the root problem.

thanks,

greg k-h

