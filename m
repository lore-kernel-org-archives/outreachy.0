X-GM-THRID: 9643848892416
X-Received: by 10.66.124.198 with SMTP id mk6mr2555833pab.22.1427054659670;
        Sun, 22 Mar 2015 13:04:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.163.67 with SMTP id yg3ls1208210obb.1.gmail; Sun, 22 Mar
 2015 13:04:19 -0700 (PDT)
X-Received: by 10.182.110.168 with SMTP id ib8mr24946989obb.41.1427054659332;
        Sun, 22 Mar 2015 13:04:19 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 40si811090yho.6.2015.03.22.13.04.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 22 Mar 2015 13:04:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,447,1422918000"; 
   d="scan'208";a="127971347"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Mar 2015 21:04:17 +0100
Date: Sun, 22 Mar 2015 21:04:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Cristina Opriceana <cristina.opriceana@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Use mem_dup()
 instead of copy_from_user()
In-Reply-To: <20150322190400.GA1115@Inspiron>
Message-ID: <alpine.DEB.2.02.1503222101410.2195@localhost6.localdomain6>
References: <20150322190400.GA1115@Inspiron>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 22 Mar 2015, Cristina Opriceana wrote:

> Use mem_dup() instead of its duplicated implementation in order
> to simplify code. Found with coccinelle.
> 
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> index 81f39c3..c39d031 100644
> --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> @@ -1912,13 +1912,9 @@ static int r871x_mp_ioctl_hdl(struct net_device *dev,
>  	bset = (u8)(p->flags & 0xFFFF);
>  	len = p->length;
>  	pparmbuf = NULL;
> -	pparmbuf = kmalloc(len, GFP_ATOMIC);
> -	if (pparmbuf == NULL) {
> -		ret = -ENOMEM;
> -		goto _r871x_mp_ioctl_hdl_exit;
> -	}
> -	if (copy_from_user(pparmbuf, p->pointer, len)) {
> -		ret = -EFAULT;
> +	pparmbuf = memdup_user(p->pointer, len);

There is a potential problem with this.  memdup_user uses GFP_KERNEL 
(blocking allowed), while the original code used GFP_ATOMIC (blocking not 
allowed).  You could check whether any locks can be held on the way to 
this code, which would require GFP_ATOMIC.  On the other hand, it may be 
that copy_from_user can only be used when blocking is allowed.

julia


> +	if (IS_ERR(pparmbuf)) {
> +		ret = PTR_ERR(pparmbuf);
>  		goto _r871x_mp_ioctl_hdl_exit;
>  	}
>  	poidparam = (struct mp_ioctl_param *)pparmbuf;
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150322190400.GA1115%40Inspiron.
> For more options, visit https://groups.google.com/d/optout.
> 

