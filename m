X-GM-THRID: 6249584432757342208
X-Received: by 10.112.135.234 with SMTP id pv10mr4481724lbb.24.1455095539381;
        Wed, 10 Feb 2016 01:12:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.148.9 with SMTP id w9ls119452wmd.26.gmail; Wed, 10 Feb 2016
 01:12:18 -0800 (PST)
X-Received: by 10.194.110.233 with SMTP id id9mr4608137wjb.5.1455095538928;
        Wed, 10 Feb 2016 01:12:18 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e130si518754wme.2.2016.02.10.01.12.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 01:12:18 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,425,1449529200"; 
   d="scan'208";a="164157012"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 10:12:18 +0100
Date: Wed, 10 Feb 2016 10:12:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/6] staging: comedi: comedi_fops:
 Remove useless statements
In-Reply-To: <20160210085922.GA14616@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602101011470.2710@hadrien>
References: <20160210085922.GA14616@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-82631029-1455095536=:2710"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-82631029-1455095536=:2710
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Wed, 10 Feb 2016, Amitoj Kaur Chawla wrote:

> Drop if conditions that have an unrequired return in a void function.

The return is needed if it doesn´t come at the end of the function.  You
want to skip over the rest of the code.

julia

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
>  drivers/staging/comedi/comedi_fops.c | 6 ------
>  1 file changed, 6 deletions(-)
>
> diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> index d6bcf73..35e79d7 100644
> --- a/drivers/staging/comedi/comedi_fops.c
> +++ b/drivers/staging/comedi/comedi_fops.c
> @@ -2811,12 +2811,6 @@ void comedi_free_subdevice_minor(struct comedi_subdevice *s)
>  {
>  	unsigned int i;
>
> -	if (!s)
> -		return;
> -	if (s->minor < COMEDI_NUM_BOARD_MINORS ||
> -	    s->minor >= COMEDI_NUM_MINORS)
> -		return;
> -
>  	i = s->minor - COMEDI_NUM_BOARD_MINORS;
>  	mutex_lock(&comedi_subdevice_minor_table_lock);
>  	if (s == comedi_subdevice_minor_table[i])
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160210085922.GA14616%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-82631029-1455095536=:2710--

