X-GM-THRID: 6338470134532800512
X-Received: by 10.25.152.10 with SMTP id a10mr1217995lfe.4.1475817807072;
        Thu, 06 Oct 2016 22:23:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.7 with SMTP id s7ls404754lja.47.gmail; Thu, 06 Oct 2016
 22:23:24 -0700 (PDT)
X-Received: by 10.46.33.161 with SMTP id h33mr1225828lji.19.1475817804660;
        Thu, 06 Oct 2016 22:23:24 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c74si64866wmd.3.2016.10.06.22.23.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 22:23:24 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,454,1473112800"; 
   d="scan'208";a="239759266"
Received: from p57801a74.dip0.t-ipconnect.de (HELO hadrien.local) ([87.128.26.116])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 07 Oct 2016 07:23:23 +0200
Date: Fri, 7 Oct 2016 07:23:12 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elizabeth Ferdman <gnudevliz@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    amsfield22@gmail.com, daniel.baluta@intel.com
Subject: Re: [Outreachy kernel] [PATCH] staging: i4l: move open brace to
 previous line
In-Reply-To: <20161006214116.GA10879@localhost>
Message-ID: <alpine.DEB.2.10.1610070722510.3074@hadrien>
References: <20161006214116.GA10879@localhost>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 6 Oct 2016, Elizabeth Ferdman wrote:

> Fix checkpatch error "open brace should be on previous line" since only
> functions should have their opening brace on a new line.
>
> Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
> ---
>  drivers/staging/i4l/act2000/module.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/i4l/act2000/module.c b/drivers/staging/i4l/act2000/module.c
> index 0573f51..4746a62 100644
> --- a/drivers/staging/i4l/act2000/module.c
> +++ b/drivers/staging/i4l/act2000/module.c
> @@ -19,8 +19,7 @@
>  #include <linux/slab.h>
>  #include <linux/init.h>
>
> -static unsigned short act2000_isa_ports[] =
> -{
> +static unsigned short act2000_isa_ports[] = {
>  	0x0200, 0x0240, 0x0280, 0x02c0, 0x0300, 0x0340, 0x0380,
>  	0xcfe0, 0xcfa0, 0xcf60, 0xcf20, 0xcee0, 0xcea0, 0xce60,
>  };

Not related to this patch, but could this array be const?

julia

> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161006214116.GA10879%40localhost.
> For more options, visit https://groups.google.com/d/optout.
>

