X-GM-THRID: 9366486908928
X-Received: by 10.43.104.69 with SMTP id dl5mr7966364icc.20.1426928167035;
        Sat, 21 Mar 2015 01:56:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.39.74 with SMTP id n71ls1504216ion.54.gmail; Sat, 21 Mar
 2015 01:56:06 -0700 (PDT)
X-Received: by 10.50.72.98 with SMTP id c2mr2166263igv.0.1426928166757;
        Sat, 21 Mar 2015 01:56:06 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c38si74615yho.5.2015.03.21.01.56.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 01:56:06 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,441,1422918000"; 
   d="scan'208";a="127035914"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Mar 2015 09:56:05 +0100
Date: Sat, 21 Mar 2015 09:56:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: Fix incorrect type
 in assignment
In-Reply-To: <20150321082830.GA20169@akanksha>
Message-ID: <alpine.DEB.2.02.1503210955550.2010@localhost6.localdomain6>
References: <20150321082830.GA20169@akanksha>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Mar 2015, Vatika Harlalka wrote:

> Fix incorrect type in assignment.

Explain more.

julia

> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rts5208/rtsx_transport.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
> index 03caa9b..2cd03d7 100644
> --- a/drivers/staging/rts5208/rtsx_transport.c
> +++ b/drivers/staging/rts5208/rtsx_transport.c
> @@ -218,7 +218,7 @@ void rtsx_add_cmd(struct rtsx_chip *chip,
>  
>  	spin_lock_irq(&chip->rtsx->reg_lock);
>  	if (chip->ci < (HOST_CMDS_BUF_LEN / 4))
> -		cb[(chip->ci)++] = cpu_to_le32(val);
> +		cb[(chip->ci)++] = val;
>  
>  	spin_unlock_irq(&chip->rtsx->reg_lock);
>  }
> @@ -316,7 +316,7 @@ static inline void rtsx_add_sg_tbl(
>  		val = ((u64)addr << 32) | ((u64)temp_len << 12) | temp_opt;
>  
>  		if (chip->sgi < (HOST_SG_TBL_BUF_LEN / 8))
> -			sgb[(chip->sgi)++] = cpu_to_le64(val);
> +			sgb[(chip->sgi)++] = val;
>  
>  		len -= temp_len;
>  		addr += temp_len;
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150321082830.GA20169%40akanksha.
> For more options, visit https://groups.google.com/d/optout.
> 

