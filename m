X-GM-THRID: 6391320776651309056
X-Received: by 10.25.141.85 with SMTP id p82mr1149087lfd.8.1488109795032;
        Sun, 26 Feb 2017 03:49:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.67.14 with SMTP id q14ls729942lfa.15.gmail; Sun, 26 Feb
 2017 03:49:53 -0800 (PST)
X-Received: by 10.46.9.81 with SMTP id 78mr1398444ljj.30.1488109793379;
        Sun, 26 Feb 2017 03:49:53 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si553200wmg.3.2017.02.26.03.49.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 03:49:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,208,1484002800"; 
   d="scan'208";a="262119559"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Feb 2017 12:49:52 +0100
Date: Sun, 26 Feb 2017 12:49:52 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
    Teddy Wang <teddy.wang@siliconmotion.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Remove unnecessary
 braces.
In-Reply-To: <58b28860.5c37630a.52b6.2c1f@mx.google.com>
Message-ID: <alpine.DEB.2.20.1702261249180.2166@hadrien>
References: <58b28860.5c37630a.52b6.2c1f@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 26 Feb 2017, Varsha Rao wrote:

> Removed braces which are not required and the trailing spaces caused by
> removal of braces.

This should be a v2 as you sent another on the same code with partly the
same changes.

julia

>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750_accel.c | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
> index 57ae743..9548863 100644
> --- a/drivers/staging/sm750fb/sm750_accel.c
> +++ b/drivers/staging/sm750fb/sm750_accel.c
> @@ -259,8 +259,6 @@ unsigned int rop2)   /* ROP value */
>  	if (accel->de_wait() != 0)
>  		return -1;
>
> -	{
> -
>  	write_dpr(accel, DE_SOURCE,
>  		  ((sx << DE_SOURCE_X_K1_SHIFT) & DE_SOURCE_X_K1_MASK) |
>  		  (sy & DE_SOURCE_Y_K2_MASK)); /* dpr0 */
> @@ -276,8 +274,6 @@ unsigned int rop2)   /* ROP value */
>  		DE_CONTROL_COMMAND_BITBLT | DE_CONTROL_STATUS;
>  	write_dpr(accel, DE_CONTROL, de_ctrl); /* dpr0c */
>
> -	}
> -
>  	return 0;
>  }
>
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58b28860.5c37630a.52b6.2c1f%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

