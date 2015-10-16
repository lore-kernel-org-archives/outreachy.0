X-GM-THRID: 6206327457482539008
X-Received: by 10.112.55.69 with SMTP id q5mr4050587lbp.24.1445023791540;
        Fri, 16 Oct 2015 12:29:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.42 with SMTP id o10ls222438wia.6.canary; Fri, 16 Oct
 2015 12:29:51 -0700 (PDT)
X-Received: by 10.180.107.167 with SMTP id hd7mr1559364wib.6.1445023791016;
        Fri, 16 Oct 2015 12:29:51 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q6si138580wif.2.2015.10.16.12.29.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 12:29:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,690,1437429600"; 
   d="scan'208";a="150817054"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Oct 2015 21:29:50 +0200
Date: Fri, 16 Oct 2015 21:29:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Aybuke Ozdemir <aybuke.147@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: sm750fb: Include
 appropriate KERN_ facility level
In-Reply-To: <1445023205-8484-1-git-send-email-aybuke.147@gmail.com>
Message-ID: <alpine.DEB.2.02.1510162127580.2056@localhost6.localdomain6>
References: <1445023205-8484-1-git-send-email-aybuke.147@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 16 Oct 2015, Aybuke Ozdemir wrote:

> Problem found using checkpatch.pl:
> "WARNING: printk() should include KERN_ facility level"
> 
> Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_help.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_help.c b/drivers/staging/sm750fb/ddk750_help.c
> index 9637dd3..e72a29c 100644
> --- a/drivers/staging/sm750fb/ddk750_help.c
> +++ b/drivers/staging/sm750fb/ddk750_help.c
> @@ -11,7 +11,7 @@ void ddk750_set_mmio(void __iomem *addr, unsigned short devId, char revId)
>  	devId750 = devId;
>  	revId750 = revId;
>  	if (revId == 0xfe)
> -		printk("found sm750le\n");
> +		pr_info("found sm750le\n");

I believe that this change has been discussed already, but it seems that a 
satisfactory patch was never provided.  The conclusion was that the 
function should be changed so that it receives a device-typed argument, so 
dev_info could be used.  Maybe look at the places where ddk750_set_mmio is 
called, and see if such information is available.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1445023205-8484-1-git-send-email-aybuke.147%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

