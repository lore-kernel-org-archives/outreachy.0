X-GM-THRID: 6206645020679733248
X-Received: by 10.194.240.230 with SMTP id wd6mr5105989wjc.0.1445100740288;
        Sat, 17 Oct 2015 09:52:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.126.5 with SMTP id mu5ls363707wib.17.gmail; Sat, 17 Oct
 2015 09:52:19 -0700 (PDT)
X-Received: by 10.194.71.107 with SMTP id t11mr1817481wju.6.1445100739788;
        Sat, 17 Oct 2015 09:52:19 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cm6si355963wib.1.2015.10.17.09.52.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 09:52:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,693,1437429600"; 
   d="scan'208";a="150875783"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Oct 2015 18:52:19 +0200
Date: Sat, 17 Oct 2015 18:52:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Eva Rachel Retuya <eraretuya@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: mt29f_spinand: Remove space
 after a cast
In-Reply-To: <20151017155226.GA6368@Socrates-Mint>
Message-ID: <alpine.DEB.2.02.1510171850000.2093@localhost6.localdomain6>
References: <20151017155226.GA6368@Socrates-Mint>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 17 Oct 2015, Eva Rachel Retuya wrote:

> Modify retval to reflect removal of space during cast operation.

Thanks for your patch.  However, the commit message is a bit confusing.  
Retval is not modified.  Actually, there is not much to say beyond what 
you have in the subject line.  Maybe you could say "Remove the unneeded 
space before retval".

Please send v2.

julia

> Checkpatch found this issue.
> 
> CHECK: No space is necessary after a cast
> 
> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> ---
>  drivers/staging/mt29f_spinand/mt29f_spinand.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.c b/drivers/staging/mt29f_spinand/mt29f_spinand.c
> index 1aa449e..cf98228 100644
> --- a/drivers/staging/mt29f_spinand/mt29f_spinand.c
> +++ b/drivers/staging/mt29f_spinand/mt29f_spinand.c
> @@ -594,7 +594,7 @@ static int spinand_erase_block(struct spi_device *spi_nand, u16 block_id)
>  		if (retval < 0) {
>  			dev_err(&spi_nand->dev,
>  					"error %d reading status register\n",
> -					(int) retval);
> +					(int)retval);
>  			return retval;
>  		}
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151017155226.GA6368%40Socrates-Mint.
> For more options, visit https://groups.google.com/d/optout.
> 

