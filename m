X-GM-THRID: 6253728944685580288
X-Received: by 10.112.29.69 with SMTP id i5mr2740266lbh.15.1456060941373;
        Sun, 21 Feb 2016 05:22:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.155.68 with SMTP id d65ls224929lfe.34.gmail; Sun, 21 Feb
 2016 05:22:20 -0800 (PST)
X-Received: by 10.25.15.161 with SMTP id 33mr2807055lfp.0.1456060940751;
        Sun, 21 Feb 2016 05:22:20 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e130si759469wme.2.2016.02.21.05.22.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 05:22:20 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,480,1449529200"; 
   d="scan'208";a="165443756"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2016 14:22:19 +0100
Date: Sun, 21 Feb 2016 08:22:16 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: most: Do not print message
 if kzalloc() failed.
In-Reply-To: <20160221050205.GA3014@sandhya>
Message-ID: <alpine.DEB.2.10.1602210821370.2782@hadrien>
References: <20160221050205.GA3014@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 21 Feb 2016, Sandhya Bankar wrote:

> Do not print message if kzalloc() failed.
> kzalloc() has its own messages. So no need to add extra one.

You could try to generalize this using Coccinelle.

Something that could be useful:

constant char[] c;

matches an explicit string.

julia

>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/most/mostcore/core.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/most/mostcore/core.c b/drivers/staging/most/mostcore/core.c
> index 322ee01..7c619fe 100644
> --- a/drivers/staging/most/mostcore/core.c
> +++ b/drivers/staging/most/mostcore/core.c
> @@ -1259,7 +1259,6 @@ static int arm_mbo_chain(struct most_c_obj *c, int dir,
>  	for (i = 0; i < c->cfg.num_buffers; i++) {
>  		mbo = kzalloc(sizeof(*mbo), GFP_KERNEL);
>  		if (!mbo) {
> -			pr_info("WARN: Allocation of MBO failed.\n");
>  			retval = i;
>  			goto _exit;
>  		}
> --
> 1.8.3.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160221050205.GA3014%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>

