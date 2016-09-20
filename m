X-GM-THRID: 6332388261228445696
X-Received: by 10.25.74.71 with SMTP id x68mr3366867lfa.6.1474377399704;
        Tue, 20 Sep 2016 06:16:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.74.78 with SMTP id x75ls2337225wma.4.gmail; Tue, 20 Sep
 2016 06:16:38 -0700 (PDT)
X-Received: by 10.28.29.13 with SMTP id d13mr214675wmd.19.1474377398894;
        Tue, 20 Sep 2016 06:16:38 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w79si1529779wmw.0.2016.09.20.06.16.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 06:16:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,368,1470693600"; 
   d="scan'208";a="194049793"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Sep 2016 15:16:38 +0200
Date: Tue, 20 Sep 2016 15:16:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Rehas Sachdeva <aquannie@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
    Teddy Wang <teddy.wang@siliconmotion.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: sm750fb: Remove unnecessary
 parentheses
In-Reply-To: <20160920131118.GA13758@toblerone>
Message-ID: <alpine.DEB.2.10.1609201516190.2914@hadrien>
References: <20160920131118.GA13758@toblerone>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 20 Sep 2016, Rehas Sachdeva wrote:

> Remove unnecessary parentheses from right side of an assignment. Issue
> detected by the following Coccinelle semantic patch:
>
> @r@
> identifier x;
> expression e1, e2;
> @@
>
> - x = (e1 << e2);
> + x = e1 << e2;
>
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes in v2:
> - Change 'following' to 'the following'.
> - Align PANEL_WINDOW_HEIGHT_HEIGHT_SHIFT to right side of the assignment.
>
>  drivers/staging/sm750fb/sm750_hw.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
> index a376d17..bff7db5 100644
> --- a/drivers/staging/sm750fb/sm750_hw.c
> +++ b/drivers/staging/sm750fb/sm750_hw.c
> @@ -322,8 +322,8 @@ int hw_sm750_crtc_setMode(struct lynxfb_crtc *crtc,
>  		reg |= (var->xoffset & PANEL_WINDOW_WIDTH_X_MASK);
>  		POKE32(PANEL_WINDOW_WIDTH, reg);
>
> -		reg = ((var->yres_virtual - 1) <<
> -		       PANEL_WINDOW_HEIGHT_HEIGHT_SHIFT);
> +		reg = (var->yres_virtual - 1) <<
> +		      PANEL_WINDOW_HEIGHT_HEIGHT_SHIFT;
>  		reg &= PANEL_WINDOW_HEIGHT_HEIGHT_MASK;
>  		reg |= (var->yoffset & PANEL_WINDOW_HEIGHT_Y_MASK);
>  		POKE32(PANEL_WINDOW_HEIGHT, reg);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160920131118.GA13758%40toblerone.
> For more options, visit https://groups.google.com/d/optout.
>

