X-GM-THRID: 6337746804060192768
X-Received: by 10.194.54.101 with SMTP id i5mr487245wjp.16.1475647926514;
        Tue, 04 Oct 2016 23:12:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.94 with SMTP id 91ls505771lja.45.gmail; Tue, 04 Oct 2016
 23:12:06 -0700 (PDT)
X-Received: by 10.46.71.207 with SMTP id u198mr488778lja.2.1475647926038;
        Tue, 04 Oct 2016 23:12:06 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w79si676234wmw.0.2016.10.04.23.12.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 23:12:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,447,1473112800"; 
   d="scan'208";a="195654354"
Received: from p57801a74.dip0.t-ipconnect.de (HELO hadrien.local) ([87.128.26.116])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 05 Oct 2016 08:12:03 +0200
Date: Wed, 5 Oct 2016 08:11:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elise-Lennion <elise.lennion@gmail.com>
cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: sm750fb: Replace printk()
 with pr_info().
In-Reply-To: <20161004225414.GA5712@lennorien.com>
Message-ID: <alpine.DEB.2.10.1610050809120.3061@hadrien>
References: <20161004225414.GA5712@lennorien.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 4 Oct 2016, Elise-Lennion wrote:

> Fix checkpatch warning:
>
> WARNING: printk() should include KERN_ facility level
>
> New checkpatch warning appears after including KERN_ facility level.
>
> Fix checkpatch warning:
>
> WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
>
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
>
> v2: Fixed new checkpatch warning noted by Julia Lawall <julia.lawall@lip6.fr>
> Reworked to use pr_info() instead of printk()

v2 goes under the ---.  The text above the --- is what goes into the git
log.  The text under the ---, up to the first diff, is dropped.  The v2
information is not useful to keep in the code history, because the v1 is
not there either.

You have the name properly in the signed off by line now, but it needs to
match exactly the name in the From line, and that one still has the -.

julia

>
> ---
>  drivers/staging/sm750fb/ddk750_help.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_help.c b/drivers/staging/sm750fb/ddk750_help.c
> index 9637dd3..475a943 100644
> --- a/drivers/staging/sm750fb/ddk750_help.c
> +++ b/drivers/staging/sm750fb/ddk750_help.c
> @@ -11,7 +11,5 @@ void ddk750_set_mmio(void __iomem *addr, unsigned short devId, char revId)
>  	devId750 = devId;
>  	revId750 = revId;
>  	if (revId == 0xfe)
> -		printk("found sm750le\n");
> +		pr_info("found sm750le\n");
>  }
> -
> -
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161004225414.GA5712%40lennorien.com.
> For more options, visit https://groups.google.com/d/optout.
>

