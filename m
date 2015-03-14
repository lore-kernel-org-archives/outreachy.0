X-GM-THRID: 8221215424512
X-Received: by 10.112.98.38 with SMTP id ef6mr6997459lbb.3.1426315007291;
        Fri, 13 Mar 2015 23:36:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.19.196 with SMTP id h4ls289962wie.39.gmail; Fri, 13 Mar
 2015 23:36:46 -0700 (PDT)
X-Received: by 10.194.221.65 with SMTP id qc1mr7826738wjc.7.1426315006963;
        Fri, 13 Mar 2015 23:36:46 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id sf8si262850wic.2.2015.03.13.23.36.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 23:36:46 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,399,1422918000"; 
   d="scan'208";a="103299387"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Mar 2015 07:36:46 +0100
Date: Sat, 14 Mar 2015 07:36:45 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Cristina Opriceana <cristina.opriceana@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/6] Staging: iio: Prefer using the
 BIT macro
In-Reply-To: <c77aa9f0cb01943bd9b2b8afd1a87807da692eb5.1426296329.git.cristina.opriceana@gmail.com>
Message-ID: <alpine.DEB.2.02.1503140735350.2075@localhost6.localdomain6>
References: <cover.1426296329.git.cristina.opriceana@gmail.com> <c77aa9f0cb01943bd9b2b8afd1a87807da692eb5.1426296329.git.cristina.opriceana@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> diff --git a/drivers/staging/iio/frequency/ad9834.h b/drivers/staging/iio/frequency/ad9834.h
> index 8ca6e52..b54fb33 100644
> --- a/drivers/staging/iio/frequency/ad9834.h
> +++ b/drivers/staging/iio/frequency/ad9834.h
> @@ -11,25 +11,25 @@
>  /* Registers */
>  
>  #define AD9834_REG_CMD		(0 << 14)
> -#define AD9834_REG_FREQ0	(1 << 14)
> +#define AD9834_REG_FREQ0	BIT(14)

This makes it different from its neighbors.  It doesn't seem like a good
idea here.

>  #define AD9834_REG_FREQ1	(2 << 14)
>  #define AD9834_REG_PHASE0	(6 << 13)
>  #define AD9834_REG_PHASE1	(7 << 13)
>  
>  /* Command Control Bits */
>  
> -#define AD9834_B28		(1 << 13)
> -#define AD9834_HLB		(1 << 12)
> -#define AD9834_FSEL		(1 << 11)
> -#define AD9834_PSEL		(1 << 10)
> -#define AD9834_PIN_SW		(1 << 9)
> -#define AD9834_RESET		(1 << 8)
> -#define AD9834_SLEEP1		(1 << 7)
> -#define AD9834_SLEEP12		(1 << 6)
> -#define AD9834_OPBITEN		(1 << 5)
> -#define AD9834_SIGN_PIB		(1 << 4)
> -#define AD9834_DIV2		(1 << 3)
> -#define AD9834_MODE		(1 << 1)
> +#define AD9834_B28		BIT(13)
> +#define AD9834_HLB		BIT(12)
> +#define AD9834_FSEL		BIT(11)
> +#define AD9834_PSEL		BIT(10)
> +#define AD9834_PIN_SW		BIT(9)

You could clean up the indentation at the same time.

julia

> +#define AD9834_RESET		BIT(8)
> +#define AD9834_SLEEP1		BIT(7)
> +#define AD9834_SLEEP12		BIT(6)
> +#define AD9834_OPBITEN		BIT(5)
> +#define AD9834_SIGN_PIB		BIT(4)
> +#define AD9834_DIV2		BIT(3)
> +#define AD9834_MODE		BIT(1)
>  
>  #define AD9834_FREQ_BITS	28
>  #define AD9834_PHASE_BITS	12
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c77aa9f0cb01943bd9b2b8afd1a87807da692eb5.1426296329.git.cristina.opriceana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

