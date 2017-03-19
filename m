X-GM-THRID: 6399180141017169920
X-Received: by 10.46.84.13 with SMTP id i13mr3278735ljb.2.1489927920772;
        Sun, 19 Mar 2017 05:52:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.12 with SMTP id e12ls910165ljb.12.gmail; Sun, 19 Mar
 2017 05:52:00 -0700 (PDT)
X-Received: by 10.46.87.80 with SMTP id r16mr3283435ljd.12.1489927920230;
        Sun, 19 Mar 2017 05:52:00 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q207si526754wme.3.2017.03.19.05.52.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 05:52:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,188,1486422000"; 
   d="scan'208";a="265181438"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2017 13:51:59 +0100
Date: Sun, 19 Mar 2017 13:51:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/4] staging: media: atomisp: Remove
 unnecessary blank lines.
In-Reply-To: <58ce7b2d.890d620a.f76a.0012@mx.google.com>
Message-ID: <alpine.DEB.2.20.1703191351450.2108@hadrien>
References: <cover.1489925957.git.rvarsha016@gmail.com> <58ce7b2d.890d620a.f76a.0012@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 19 Mar 2017, Varsha Rao wrote:

> Remove multiple blank lines, which are not required. This patch fixes
> the following check patch issue:
>
> CHECK: Please don't use multiple blank lines
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  .../pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c     | 2 --
>  .../pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c  | 5 -----
>  drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c     | 2 --
>  .../staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c | 2 --
>  4 files changed, 11 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
> index c96340d..5d58dc1 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
> @@ -29,8 +29,6 @@ const struct ia_css_ctc2_config default_ctc2_config = {
>  	BASIC_VAL * 8, INEFFECTIVE_VAL, INEFFECTIVE_VAL,
>  	BASIC_VAL >> 1, BASIC_VAL};
>
> -
> -
>  /* (dydx) = ctc2_slope(y1, y0, x1, x0)
>   * -----------------------------------------------
>   * Calculation of the Slope of a Line = ((y1 - y0) >> 8)/(x1 - x0)
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
> index 9355b44..f61bfab 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
> @@ -51,7 +51,6 @@ static const int16_t b[XNR3_LOOK_UP_TABLE_POINTS] = {
>  static const int16_t c[XNR3_LOOK_UP_TABLE_POINTS] = {
>  1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
>
> -
>  /*
>  #endif
>   * Default kernel parameters. In general, default is bypass mode or as close
> @@ -224,7 +223,6 @@ ia_css_xnr3_vmem_encode(
>  		to->c[0][i] = 0;
>  	}
>
> -
>  	/* Constraints on "x":
>  	 * - values should be greater or equal to 0.
>  	 * - values should be ascending.
> @@ -237,7 +235,6 @@ ia_css_xnr3_vmem_encode(
>
>  	}
>
> -
>  	/* The implementation of the calulating 1/x is based on the availability
>  	 * of the OP_vec_shuffle16 operation.
>  	 * A 64 element vector is split up in 4 blocks of 16 element. Each array is copied to
> @@ -257,8 +254,6 @@ ia_css_xnr3_vmem_encode(
>  	}
>  }
>
> -
> -
>  #endif
>  /* Dummy Function added as the tool expects it*/
>  void
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
> index fdbb96a..8bc1ca0 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
> @@ -209,7 +209,6 @@ ia_css_mipi_frame_calculate_size(const unsigned int width,
>  	*  payload lines.
>  	*/
>
> -
>  	words_per_odd_line = (odd_line_bytes + 3) >> 2;
>  		/* ceil(odd_line_bytes/4); word = 4 bytes */
>  	words_per_even_line  = (even_line_bytes  + 3) >> 2;
> @@ -251,7 +250,6 @@ ia_css_mipi_frame_enable_check_on_size(const enum ia_css_csi2_port port,
>  	OP___assert(port < N_CSI_PORTS);
>  	OP___assert(size_mem_words != 0);
>
> -
>  	for (idx = 0; idx < IA_CSS_MIPI_SIZE_CHECK_MAX_NOF_ENTRIES_PER_PORT &&
>  		my_css.mipi_sizes_for_check[port][idx] != 0;
>  		idx++) { /* do nothing */
> diff --git a/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c b/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c
> index 8165154..5b4506a 100644
> --- a/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c
> +++ b/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c
> @@ -29,7 +29,6 @@
>  #define ELDO2_1P8V	0x16
>  #define ELDO2_CTRL_SHIFT 0x01
>
> -
>  struct gmin_subdev {
>  	struct v4l2_subdev *subdev;
>  	int clock_num;
> @@ -489,7 +488,6 @@ int gmin_v1p8_ctrl(struct v4l2_subdev *subdev, int on)
>  			return regulator_disable(gs->v1p8_reg);
>  	}
>
> -
>  	return -EINVAL;
>  }
>
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58ce7b2d.890d620a.f76a.0012%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

