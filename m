X-GM-THRID: 6249603310238564352
X-Received: by 10.112.125.99 with SMTP id mp3mr4635795lbb.3.1455105618054;
        Wed, 10 Feb 2016 04:00:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.92.78 with SMTP id q75ls624125wmb.35.canary; Wed, 10 Feb
 2016 04:00:17 -0800 (PST)
X-Received: by 10.194.172.40 with SMTP id az8mr4705803wjc.3.1455105617417;
        Wed, 10 Feb 2016 04:00:17 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w129si989830wme.1.2016.02.10.04.00.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 04:00:17 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,425,1449529200"; 
   d="scan'208";a="164183716"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 13:00:12 +0100
Date: Wed, 10 Feb 2016 13:00:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/5] staging: comedi: drivers:
 comedi_8254: Merge if conditions
In-Reply-To: <20160210101237.GA29034@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602101259340.3493@hadrien>
References: <20160210101237.GA29034@amitoj-Inspiron-3542>
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
>         -Merged if conditions instead of dropping them.
>
>  drivers/staging/comedi/drivers/comedi_8254.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/comedi_8254.c b/drivers/staging/comedi/drivers/comedi_8254.c
> index 0d5d56b..e00d467 100644
> --- a/drivers/staging/comedi/drivers/comedi_8254.c
> +++ b/drivers/staging/comedi/drivers/comedi_8254.c
> @@ -241,9 +241,7 @@ void comedi_8254_write(struct comedi_8254 *i8254,
>  {
>  	unsigned int byte;
>
> -	if (counter > 2)
> -		return;
> -	if (val > 0xffff)
> +	if ((counter > 2) || (val > 0xffff))

The parentheses are not needed. || and && have lower precedence than the
other operators.

julia

>  		return;
>
>  	/* load LSB then MSB */
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160210101237.GA29034%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>

