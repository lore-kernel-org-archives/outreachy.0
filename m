X-GM-THRID: 6329466938491666432
X-Received: by 10.28.27.132 with SMTP id b126mr1878849wmb.0.1473694213222;
        Mon, 12 Sep 2016 08:30:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.162.85 with SMTP id l82ls534074lfe.6.gmail; Mon, 12 Sep
 2016 08:30:12 -0700 (PDT)
X-Received: by 10.46.0.14 with SMTP id 14mr2766918lja.8.1473694212575;
        Mon, 12 Sep 2016 08:30:12 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si1051599wmd.1.2016.09.12.08.30.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 08:30:12 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,323,1470693600"; 
   d="scan'208";a="236150432"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Sep 2016 17:30:12 +0200
Date: Mon, 12 Sep 2016 17:30:11 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [Outreachy Kernel] [PATCH] staging: gs_fpga_boot:
 Remove multiple blank lines
In-Reply-To: <20160912152407.GA8046@sayli-HP-15-Notebook-PC>
Message-ID: <alpine.DEB.2.10.1609121729370.29099@hadrien>
References: <20160912152407.GA8046@sayli-HP-15-Notebook-PC>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 12 Sep 2016, sayli karnik wrote:

> This patch fixes the following checkpatch warning for the gs_fpgaboot
> driver:
> CHECK: Please don't use multiple blank lines.

Looks good.

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

You can move on to some more complex checkpatch changes now.

julia

>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/gs_fpgaboot/io.h | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/gs_fpgaboot/io.h b/drivers/staging/gs_fpgaboot/io.h
> index 7b46ac2..5e839b1 100644
> --- a/drivers/staging/gs_fpgaboot/io.h
> +++ b/drivers/staging/gs_fpgaboot/io.h
> @@ -66,10 +66,8 @@ enum wbus {
>  	bus_2byte	= 2,
>  };
>
> -
>  #define MAX_WAIT_DONE	10000
>
> -
>  struct gpiobus {
>  	int	ngpio;
>  	void __iomem *r[4];
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160912152407.GA8046%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

