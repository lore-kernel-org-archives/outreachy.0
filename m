X-GM-THRID: 6399180589235175424
X-Received: by 10.46.88.70 with SMTP id x6mr3098419ljd.22.1489927762751;
        Sun, 19 Mar 2017 05:49:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.206.11 with SMTP id e11ls375827lfg.39.gmail; Sun, 19 Mar
 2017 05:49:21 -0700 (PDT)
X-Received: by 10.46.71.19 with SMTP id u19mr3109314lja.7.1489927761949;
        Sun, 19 Mar 2017 05:49:21 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id x188si223551wmx.0.2017.03.19.05.49.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 05:49:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,188,1486422000"; 
   d="scan'208";a="217253795"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2017 13:49:21 +0100
Date: Sun, 19 Mar 2017 13:49:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: media: atomisp: Remove
 unnecessary braces.
In-Reply-To: <58ce7be8.cc07620a.c3b79.704e@mx.google.com>
Message-ID: <alpine.DEB.2.20.1703191348330.2108@hadrien>
References: <cover.1489925957.git.rvarsha016@gmail.com> <58ce7be8.cc07620a.c3b79.704e@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 19 Mar 2017, Varsha Rao wrote:

> Remove braces which are not required to fix the check patch issue. The
> following coccinelle script is used to fix this issue.
>
> @@
> expression e,e1;
> @@
> if(e)
> -{
>  e1;
> -}
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  .../pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c       | 3 +--
>  .../pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c    | 3 +--
>  drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c       | 3 +--
>  3 files changed, 3 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
> index 5d58dc1..07bd24e 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
> @@ -52,9 +52,8 @@ static int ctc2_slope(int y1, int y0, int x1, int x0)
>  	assert(x1 > 0 && x1 <= max_slope);
>  	assert(dx > 0);
>
> -	if (dy < 0) {
> +	if (dy < 0)
>  		rounding = -rounding;
> -	}
>  	slope = (int) (dy_shift + rounding) / dx;
>
>  	/*the slope must lie within the range
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
> index f61bfab..955b6c8 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
> @@ -97,9 +97,8 @@ compute_alpha(int sigma)
>  		alpha = ((IA_CSS_XNR3_SIGMA_SCALE * XNR_ALPHA_SCALE_FACTOR) + offset)/ sigma;
>  #endif
>
> -		if (alpha > XNR_MAX_ALPHA) {
> +		if (alpha > XNR_MAX_ALPHA)
>  			alpha = XNR_MAX_ALPHA;
> -		}
>  	}
>
>  	return alpha;
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
> index 8bc1ca0..7e3893c 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
> @@ -79,9 +79,8 @@ static bool ia_css_mipi_is_source_port_valid(struct ia_css_pipe *pipe,
>  	if (ret) {
>  		assert(port < max_ports);
>
> -		if (port >= max_ports) {
> +		if (port >= max_ports)
>  			ret = false;
> -		}
>  	}
>
>  	*pport = port;
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58ce7be8.cc07620a.c3b79.704e%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

