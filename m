X-GM-THRID: 6254179536245620736
X-Received: by 10.50.65.69 with SMTP id v5mr16840642igs.13.1456242957872;
        Tue, 23 Feb 2016 07:55:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.181 with SMTP id d50ls843558qgd.51.gmail; Tue, 23 Feb
 2016 07:55:56 -0800 (PST)
X-Received: by 10.129.79.21 with SMTP id d21mr33130139ywb.46.1456242956200;
        Tue, 23 Feb 2016 07:55:56 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id xh11si1891279igb.0.2016.02.23.07.55.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 07:55:56 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,489,1449529200"; 
   d="scan'208";a="165723749"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 16:55:54 +0100
Date: Tue, 23 Feb 2016 16:55:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: Remove trailing
 whitespace.
In-Reply-To: <20160222100856.GA5026@sandhya>
Message-ID: <alpine.DEB.2.02.1602231655120.2040@localhost6.localdomain6>
References: <20160222100856.GA5026@sandhya>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 22 Feb 2016, Sandhya Bankar wrote:

> Remove trailing whitespace.This error is detected by checkpatch.pl script.
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_power.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_power.c b/drivers/staging/sm750fb/ddk750_power.c
> index 33e092e..f34b15d 100644
> --- a/drivers/staging/sm750fb/ddk750_power.c
> +++ b/drivers/staging/sm750fb/ddk750_power.c
> @@ -106,9 +106,9 @@ void enable2DEngine(unsigned int enable)
>  	u32 gate;
>  
>  	gate = PEEK32(CURRENT_GATE);
> -	if (enable) 
> +	if (enable)
>  		gate |= (CURRENT_GATE_DE | CURRENT_GATE_CSC);
> -	 else 
> +	 else

There is also an unneeded space in front of the else.  Maybe you could fix 
up all of the whitespace problems in this if at once.

julia

>  		gate &= ~(CURRENT_GATE_DE | CURRENT_GATE_CSC);
>  
>  	setCurrentGate(gate);
> -- 
> 1.8.3.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160222100856.GA5026%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
> 

