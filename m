X-GM-THRID: 6254179536245620736
X-Received: by 10.182.247.68 with SMTP id yc4mr33372040obc.34.1456252456353;
        Tue, 23 Feb 2016 10:34:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.53.162 with SMTP id c2ls1146399obp.92.gmail; Tue, 23 Feb
 2016 10:34:15 -0800 (PST)
X-Received: by 10.182.246.130 with SMTP id xw2mr34140860obc.29.1456252455922;
        Tue, 23 Feb 2016 10:34:15 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c15si2363011igm.1.2016.02.23.10.34.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 10:34:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,490,1449529200"; 
   d="scan'208";a="165742421"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 19:34:13 +0100
Date: Tue, 23 Feb 2016 19:34:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: sm750fb: Remove trailing
 whitespace.
In-Reply-To: <20160223095645.GA3190@sandhya>
Message-ID: <alpine.DEB.2.02.1602231933460.2040@localhost6.localdomain6>
References: <20160223095645.GA3190@sandhya>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 23 Feb 2016, Sandhya Bankar wrote:

> Remove trailing whitespace.This error is detected by checkpatch.pl script.

The commit message should reflect everything that is done.

julia

> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
> *Changes in v2 is :
>  Fix unneeded space in front of the else
> 
>  drivers/staging/sm750fb/ddk750_power.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_power.c b/drivers/staging/sm750fb/ddk750_power.c
> index 33e092e..b3c3791 100644
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
> +	else
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160223095645.GA3190%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
> 

