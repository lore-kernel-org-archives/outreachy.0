X-GM-THRID: 9536368803840
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6ece57de8a59d603
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.80.132 with SMTP id r4mr985147wix.4.1427005296705;
        Sat, 21 Mar 2015 23:21:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.129 with SMTP id r1ls603918wia.43.canary; Sat, 21 Mar
 2015 23:21:36 -0700 (PDT)
X-Received: by 10.180.9.228 with SMTP id d4mr2879556wib.1.1427005296307;
        Sat, 21 Mar 2015 23:21:36 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id el6si244800wib.0.2015.03.21.23.21.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 23:21:36 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,445,1422918000"; 
   d="scan'208";a="104666707"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Mar 2015 07:21:35 +0100
Date: Sun, 22 Mar 2015 07:21:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH 3/5] Staging: sm750fb:
 fix switch-case
In-Reply-To: <20150322041008.GA30118@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.02.1503220719480.2040@localhost6.localdomain6>
References: <20150322041008.GA30118@amitoj-Inspiron-3542>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 22 Mar 2015, Amitoj Kaur Chawla wrote:

> Fixes checkpatch.pl error by properly indenting code using tabs.
> ERROR: switch and case should be at the same indent

There is an extra "Outreachy kernel" in the subject line.

The commit message could also be better as

"Remove indentation in switch code.  Problem found using checkpatch:"

And then put the checkpatch message as you have done above.  That gives 
more information about the change that was made.

julia

> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 30 +++++++++++++++---------------
>  1 file changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 5020280..0b6baae 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -154,21 +154,21 @@ void setMemoryClock(unsigned int frequency)
>  
>  	/* Set the corresponding divisor in the register. */
>  	ulReg = PEEK32(CURRENT_GATE);
> -	switch(divisor) {
> -            default:
> -            case 1:
> -                ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_1);
> -                break;
> -            case 2:
> -                ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_2);
> -                break;
> -            case 3:
> -                ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_3);
> -                break;
> -            case 4:
> -                ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_4);
> -                break;
> -        }
> +	switch (divisor) {
> +	default:
> +	case 1:
> +		ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_1);
> +		break;
> +	case 2:
> +		ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_2);
> +		break;
> +	case 3:
> +		ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_3);
> +		break;
> +	case 4:
> +		ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_4);
> +		break;
> +	}
>  
>          setCurrentGate(ulReg);
>      }
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150322041008.GA30118%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
> 

