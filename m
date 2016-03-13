X-GM-THRID: 6261369966950350848
X-Received: by 10.112.40.200 with SMTP id z8mr2149839lbk.16.1457839989886;
        Sat, 12 Mar 2016 19:33:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.209.78 with SMTP id i75ls284892lfg.66.gmail; Sat, 12 Mar
 2016 19:33:09 -0800 (PST)
X-Received: by 10.25.165.148 with SMTP id o142mr2124540lfe.8.1457839988997;
        Sat, 12 Mar 2016 19:33:08 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 185si368971wml.0.2016.03.12.19.33.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 19:33:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,328,1454972400"; 
   d="scan'208";a="168375650"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Mar 2016 04:33:08 +0100
Date: Sun, 13 Mar 2016 04:33:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Juliana Rodrigues <juliana.orod@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: dgnc: fixed
 dgnc_major_transparent_print_registered calls in dgnc_tty.c
In-Reply-To: <589a3351f280163de7cbfd12a47335bc976a0d43.1457838430.git.juliana.orod@gmail.com>
Message-ID: <alpine.DEB.2.02.1603130432430.2069@localhost6.localdomain6>
References: <cover.1457838430.git.juliana.orod@gmail.com> <589a3351f280163de7cbfd12a47335bc976a0d43.1457838430.git.juliana.orod@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 13 Mar 2016, Juliana Rodrigues wrote:

> This patch fixes dgnc_major_transparent_print_registered variable name in dgnc_tty.c
> that was previously camelcased.

The text in your commit message should be limited to 80 columns.

julia

> 
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_tty.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
> index c723fab..da2c7ed 100644
> --- a/drivers/staging/dgnc/dgnc_tty.c
> +++ b/drivers/staging/dgnc/dgnc_tty.c
> @@ -273,7 +273,7 @@ int dgnc_tty_register(struct dgnc_board *brd)
>  	 */
>  	tty_set_operations(&brd->PrintDriver, &dgnc_tty_ops);
>  
> -	if (!brd->dgnc_Major_TransparentPrint_Registered) {
> +	if (!brd->dgnc_major_transparent_print_registered) {
>  		/* Register Transparent Print devices */
>  		rc = tty_register_driver(&brd->PrintDriver);
>  		if (rc < 0) {
> @@ -282,7 +282,7 @@ int dgnc_tty_register(struct dgnc_board *brd)
>  				rc);
>  			return rc;
>  		}
> -		brd->dgnc_Major_TransparentPrint_Registered = true;
> +		brd->dgnc_major_transparent_print_registered = true;
>  	}
>  
>  	dgnc_BoardsByMajor[brd->SerialDriver.major] = brd;
> @@ -420,7 +420,7 @@ void dgnc_tty_uninit(struct dgnc_board *brd)
>  		brd->dgnc_major_serial_registered = false;
>  	}
>  
> -	if (brd->dgnc_Major_TransparentPrint_Registered) {
> +	if (brd->dgnc_major_transparent_print_registered) {
>  		dgnc_BoardsByMajor[brd->PrintDriver.major] = NULL;
>  		brd->dgnc_TransparentPrint_Major = 0;
>  		for (i = 0; i < brd->nasync; i++) {
> @@ -430,7 +430,7 @@ void dgnc_tty_uninit(struct dgnc_board *brd)
>  			tty_unregister_device(&brd->PrintDriver, i);
>  		}
>  		tty_unregister_driver(&brd->PrintDriver);
> -		brd->dgnc_Major_TransparentPrint_Registered = false;
> +		brd->dgnc_major_transparent_print_registered = false;
>  	}
>  
>  	kfree(brd->SerialDriver.ttys);
> -- 
> 2.7.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/589a3351f280163de7cbfd12a47335bc976a0d43.1457838430.git.juliana.orod%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

