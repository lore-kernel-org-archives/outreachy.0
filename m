X-GM-THRID: 244740784128
X-Received: by 10.180.39.164 with SMTP id q4mr97207wik.5.1424241862375;
        Tue, 17 Feb 2015 22:44:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.84.98 with SMTP id x2ls1121619wiy.51.canary; Tue, 17 Feb
 2015 22:44:22 -0800 (PST)
X-Received: by 10.194.178.234 with SMTP id db10mr4038562wjc.2.1424241862172;
        Tue, 17 Feb 2015 22:44:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l8si6092694wia.0.2015.02.17.22.44.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 22:44:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,595,1418079600"; 
   d="scan'208";a="100431531"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Feb 2015 07:44:21 +0100
Date: Wed, 18 Feb 2015 07:44:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: parport: remove unused
 variable
In-Reply-To: <20150218003417.GA16982@localhost.localdomain>
Message-ID: <alpine.DEB.2.02.1502180744100.2066@localhost6.localdomain6>
References: <20150218003417.GA16982@localhost.localdomain>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

On Wed, 18 Feb 2015, Aya Mahfouz wrote:

> This patch uses the following coccinelle script to remove
> a variable that was simply used to store the return
> value of a function call before returning it:
> 
> @@
> identifier len,f;
> @@
> 
> -int len;
>  ... when != len
>      when strict
> -len = 
> +return 
> 	f(...);
> -return len;
> 
> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> ---
>  drivers/staging/media/parport/pms.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/media/parport/pms.c b/drivers/staging/media/parport/pms.c
> index e6b4975..56e1d1f 100644
> --- a/drivers/staging/media/parport/pms.c
> +++ b/drivers/staging/media/parport/pms.c
> @@ -875,10 +875,7 @@ static ssize_t pms_read(struct file *file, char __user *buf,
>  		    size_t count, loff_t *ppos)
>  {
>  	struct pms *dev = video_drvdata(file);
> -	int len;
> -
> -	len = pms_capture(dev, buf, (dev->depth == 15), count);
> -	return len;
> +	return pms_capture(dev, buf, (dev->depth == 15), count);
>  }
>  
>  static unsigned int pms_poll(struct file *file, struct poll_table_struct *wait)
> -- 
> 1.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150218003417.GA16982%40localhost.localdomain.
> For more options, visit https://groups.google.com/d/optout.
> 

