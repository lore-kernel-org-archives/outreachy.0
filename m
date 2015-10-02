X-GM-THRID: 6200896862154653696
X-Received: by 10.112.144.99 with SMTP id sl3mr2255821lbb.12.1443772840685;
        Fri, 02 Oct 2015 01:00:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.167.140 with SMTP id q134ls192949lfe.23.gmail; Fri, 02 Oct
 2015 01:00:40 -0700 (PDT)
X-Received: by 10.112.136.99 with SMTP id pz3mr690061lbb.11.1443772840063;
        Fri, 02 Oct 2015 01:00:40 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id bn1si200571wib.0.2015.10.02.01.00.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 01:00:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,622,1437429600"; 
   d="scan'208";a="180610673"
Received: from unknown (HELO hadrien.local) ([89.202.203.52])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Oct 2015 10:00:22 +0200
Date: Fri, 2 Oct 2015 10:00:21 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: board: Fixed the error for
 implicit declaration of function
In-Reply-To: <20151002040637.GA41415@ubuntu>
Message-ID: <alpine.DEB.2.10.1510020959500.2633@hadrien>
References: <20151002040637.GA41415@ubuntu>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 2 Oct 2015, Shivani Bhardwaj wrote:

> Fixed the error for implicit declaration of the function
> 'of_find_all_nodes' by adding the appropriate header file and declaring
> the function before it has been called.

I haven't looked at the code, but I wonder why you need both the header
file and the local declaration?

julia

> Signed-off-by: Shivani Bhardwaj: <shivanib134@gmail.com>
> ---
>  drivers/staging/board/board.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/staging/board/board.c b/drivers/staging/board/board.c
> index 29d456e..8d0ac82 100644
> --- a/drivers/staging/board/board.c
> +++ b/drivers/staging/board/board.c
> @@ -19,11 +19,13 @@
>  #include <linux/of_irq.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_domain.h>
> +#include <asm/prom.h>
>
>  #include "board.h"
>
>  static struct device_node *irqc_node __initdata;
>  static unsigned int irqc_base __initdata;
> +struct device_node *of_find_all_nodes(struct device_node *prev);
>
>  static bool find_by_address(u64 base_address)
>  {
> --
> 2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151002040637.GA41415%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
>

