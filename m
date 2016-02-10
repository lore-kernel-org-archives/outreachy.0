X-GM-THRID: 6249584377858097152
X-Received: by 10.112.156.33 with SMTP id wb1mr4622072lbb.7.1455095607735;
        Wed, 10 Feb 2016 01:13:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.26.206 with SMTP id a197ls56012lfa.83.gmail; Wed, 10 Feb
 2016 01:13:27 -0800 (PST)
X-Received: by 10.112.16.34 with SMTP id c2mr4589846lbd.19.1455095607229;
        Wed, 10 Feb 2016 01:13:27 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 5si108890wmm.2.2016.02.10.01.13.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 01:13:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,425,1449529200"; 
   d="scan'208";a="164157255"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 10:13:26 +0100
Date: Wed, 10 Feb 2016 10:13:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/6] staging: comedi: drivers:
 comedi_8254: Remove useless statements
In-Reply-To: <20160210085909.GA14587@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602101013090.2710@hadrien>
References: <20160210085909.GA14587@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 10 Feb 2016, Amitoj Kaur Chawla wrote:

> Drop if conditions that have an unrequired return in a void function.

Again, the return is needed, because it is not at the end of the function.

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
>  drivers/staging/comedi/drivers/comedi_8254.c | 5 -----
>  1 file changed, 5 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/comedi_8254.c b/drivers/staging/comedi/drivers/comedi_8254.c
> index 0d5d56b..1feb2af 100644
> --- a/drivers/staging/comedi/drivers/comedi_8254.c
> +++ b/drivers/staging/comedi/drivers/comedi_8254.c
> @@ -241,11 +241,6 @@ void comedi_8254_write(struct comedi_8254 *i8254,
>  {
>  	unsigned int byte;
>
> -	if (counter > 2)
> -		return;
> -	if (val > 0xffff)
> -		return;
> -
>  	/* load LSB then MSB */
>  	byte = val & 0xff;
>  	__i8254_write(i8254, byte, counter);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160210085909.GA14587%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>

