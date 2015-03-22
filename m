X-GM-THRID: 9545669672960
X-Received: by 10.140.235.83 with SMTP id g80mr95874033qhc.5.1427005434021;
        Sat, 21 Mar 2015 23:23:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.28.21 with SMTP id c21ls1480616ioc.37.gmail; Sat, 21 Mar
 2015 23:23:53 -0700 (PDT)
X-Received: by 10.66.100.198 with SMTP id fa6mr96374456pab.31.1427005433668;
        Sat, 21 Mar 2015 23:23:53 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u27si688023yhu.4.2015.03.21.23.23.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 23:23:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,445,1422918000"; 
   d="scan'208";a="127507910"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Mar 2015 07:23:51 +0100
Date: Sun, 22 Mar 2015 07:23:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel][PATCH 5/5] Staging: sm750fb: Correct brace
 '{' position
In-Reply-To: <20150322043407.GA30227@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.02.1503220722410.2040@localhost6.localdomain6>
References: <20150322043407.GA30227@amitoj-Inspiron-3542>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 22 Mar 2015, Amitoj Kaur Chawla wrote:

> Fixes checkpatch.pl error by placing the brace '{' in the correct
> position after if statement.

"correct position" is not very informative.  This could be: Move if brance 
brace to the if header line.  Problem found using checkpatch.

julia

> ERROR: that open brace { should be on the previous line
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index a1672c8..03d96c0 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -191,8 +191,7 @@ void setMasterClock(unsigned int frequency)
>  	if (getChipType() == SM750LE)
>  		return;
>  #endif
> -	if (frequency != 0)
> -    {
> +	if (frequency != 0) {
>          /* Set the frequency to the maximum frequency that the SM750 engine can
>             run, which is about 190 MHz. */
>          if (frequency > MHz(190))
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150322043407.GA30227%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
> 

