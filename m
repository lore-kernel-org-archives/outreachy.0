X-GM-THRID: 9445831606272
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,153891478aacf657
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.8.73 with SMTP id p9mr9833642laa.6.1426966885408;
        Sat, 21 Mar 2015 12:41:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.197.34 with SMTP id ir2ls509839lac.84.gmail; Sat, 21 Mar
 2015 12:41:24 -0700 (PDT)
X-Received: by 10.112.142.1 with SMTP id rs1mr12140276lbb.19.1426966884527;
        Sat, 21 Mar 2015 12:41:24 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c8si152853wiw.1.2015.03.21.12.41.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 12:41:24 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,443,1422918000"; 
   d="scan'208";a="104243656"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Mar 2015 20:41:23 +0100
Date: Sat, 21 Mar 2015 20:41:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: sm750fb: Remove spaces
 in front of lines
In-Reply-To: <20150321193347.GA28575@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.02.1503212039510.2041@localhost6.localdomain6>
References: <20150321193347.GA28575@amitoj-Inspiron-3542>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 22 Mar 2015, Amitoj Kaur Chawla wrote:

> This patch fixes warning of spaces in front of lines by using tabs
> instead, in file ddk750_chip.c

You don't need to mention the file name.  It is right below.  Also, you 
can probably avoid "This patch".  On the other hand, it would be nice to 
acknowledge that the warning comes from checkpatch.

You may want to check the following page, if you have not done so already:

http://kernelnewbies.org/PatchPhilosophy

julia

> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes in v2:
>   - Make the commit message clearer.
> 
>  drivers/staging/sm750fb/ddk750_chip.c | 38 +++++++++++++++++++----------------
>  1 file changed, 21 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 3ccf4a5..9105c0e 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -110,23 +110,27 @@ void setChipClock(unsigned int frequency)
>  			return;
>  #endif
>  
> -    if (frequency != 0) {
> -        /*
> -         * Set up PLL, a structure to hold the value to be set in clocks.
> -         */
> -        pll.inputFreq = DEFAULT_INPUT_CLOCK; /* Defined in CLOCK.H */
> -        pll.clockType = MXCLK_PLL;
> -
> -        /*
> -         * Call calcPllValue() to fill up the other fields for PLL structure.
> -         * Sometime, the chip cannot set up the exact clock required by User.
> -         * Return value from calcPllValue() gives the actual possible clock.
> -         */
> -        ulActualMxClk = calcPllValue(frequency, &pll);
> -
> -        /* Master Clock Control: MXCLK_PLL */
> -        POKE32(MXCLK_PLL_CTRL, formatPllReg(&pll));
> -    }
> +	if (frequency != 0) {
> +		/*
> +		* Set up PLL, a structure to hold the value to be set in clocks.
> +		*/
> +		pll.inputFreq = DEFAULT_INPUT_CLOCK; /* Defined in CLOCK.H */
> +		pll.clockType = MXCLK_PLL;
> +
> +		/*
> +		* Call calcPllValue() to fill up the other fields for PLL
> +		* structure.
> +		* Sometime, the chip cannot set up the exact clock required by
> +		* User.
> +		* Return value from calcPllValue() gives the actual possible
> +		* clock.
> +		*/
> +
> +		ulActualMxClk = calcPllValue(frequency, &pll);
> +
> +		/* Master Clock Control: MXCLK_PLL */
> +		POKE32(MXCLK_PLL_CTRL, formatPllReg(&pll));
> +	}
>  }
>  
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150321193347.GA28575%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
> 

