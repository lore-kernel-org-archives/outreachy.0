X-GM-THRID: 6337545646226014208
X-Received: by 10.28.168.12 with SMTP id r12mr206498wme.12.1475576147254;
        Tue, 04 Oct 2016 03:15:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.9.203 with SMTP id 194ls1961541wmj.27.gmail; Tue, 04 Oct
 2016 03:15:46 -0700 (PDT)
X-Received: by 10.28.198.132 with SMTP id w126mr211477wmf.3.1475576146669;
        Tue, 04 Oct 2016 03:15:46 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s6si1466613wmb.1.2016.10.04.03.15.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 03:15:46 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,442,1473112800"; 
   d="scan'208";a="239327106"
Received: from unknown (HELO hadrien.local) ([62.214.2.210])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Oct 2016 12:15:45 +0200
Date: Tue, 4 Oct 2016 12:15:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elise-Lennion <elise.lennion@gmail.com>
cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Add log level to
 printk().
In-Reply-To: <20161004095344.GA3903@lennorien.com>
Message-ID: <alpine.DEB.2.10.1610041214500.2940@hadrien>
References: <20161004095344.GA3903@lennorien.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 4 Oct 2016, Elise-Lennion wrote:

> Fix checkpatch warning:
>
> WARNING: printk() should include KERN_ facility level
>
> KERN_ facility levels ensure that unecessary messages, in different steps of driver implemention and testing, don't saturate the log file.
>
> When log level is not explicited it defaults to DEFAULT_MESSAGE_LOGLEVEL (usually "4"=KERN_WARNING). A module startup message usually isn't a WARNING.

When you made this change, I think checkpatch would then suggest you do
something else?

> Signed-off-by: Elise-Lennion <elise.lennion@gmail.com>

Is this your complete name?  I wonder because of the hyphen.

julia

> ---
>  drivers/staging/sm750fb/ddk750_help.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_help.c b/drivers/staging/sm750fb/ddk750_help.c
> index 9637dd3..fc7e936 100644
> --- a/drivers/staging/sm750fb/ddk750_help.c
> +++ b/drivers/staging/sm750fb/ddk750_help.c
> @@ -11,7 +11,7 @@ void ddk750_set_mmio(void __iomem *addr, unsigned short devId, char revId)
>  	devId750 = devId;
>  	revId750 = revId;
>  	if (revId == 0xfe)
> -		printk("found sm750le\n");
> +		printk(KERN_INFO "found sm750le\n");
>  }
>
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161004095344.GA3903%40lennorien.com.
> For more options, visit https://groups.google.com/d/optout.
>

