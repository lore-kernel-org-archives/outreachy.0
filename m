X-GM-THRID: 9541992316928
X-Received: by 10.181.12.74 with SMTP id eo10mr982970wid.2.1427005532099;
        Sat, 21 Mar 2015 23:25:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.13.144 with SMTP id ey16ls606848wid.31.canary; Sat, 21 Mar
 2015 23:25:31 -0700 (PDT)
X-Received: by 10.180.11.34 with SMTP id n2mr988112wib.2.1427005531712;
        Sat, 21 Mar 2015 23:25:31 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i8si221721wif.1.2015.03.21.23.25.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 23:25:31 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,445,1422918000"; 
   d="scan'208";a="104670998"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Mar 2015 07:25:31 +0100
Date: Sun, 22 Mar 2015 07:25:30 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel][PATCH 4/5] Staging: sm750fb: Remove spaces
 in front of lines
In-Reply-To: <20150322042718.GA30193@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.02.1503220724340.2040@localhost6.localdomain6>
References: <20150322042718.GA30193@amitoj-Inspiron-3542>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 22 Mar 2015, Amitoj Kaur Chawla wrote:

> Fixes checkpatch.pl warning by using tabs instead of spaces.

This could be: Replace spaces by tabs.  Problem found using checkpatch:

That is, it is more interesting to now what you have done than that it was 
in response to checkpatch, so it is better to put what you have done 
first.

julia

> WARNING: please, no spaces at the start of a line.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 0b6baae..a1672c8 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -170,8 +170,8 @@ void setMemoryClock(unsigned int frequency)
>  		break;
>  	}
>  
> -        setCurrentGate(ulReg);
> -    }
> +	setCurrentGate(ulReg);
> +	}
>  }
>  
>  
> @@ -185,13 +185,13 @@ void setMemoryClock(unsigned int frequency)
>   */
>  void setMasterClock(unsigned int frequency)
>  {
> -    unsigned int ulReg, divisor;
> +	unsigned int ulReg, divisor;
>    #if 1
>  	/* Cheok_0509: For SM750LE, the memory clock is fixed. Nothing to set. */
>  	if (getChipType() == SM750LE)
>  		return;
>  #endif
> -    if (frequency != 0)
> +	if (frequency != 0)
>      {
>          /* Set the frequency to the maximum frequency that the SM750 engine can
>             run, which is about 190 MHz. */
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150322042718.GA30193%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
> 

