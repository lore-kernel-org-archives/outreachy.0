X-GM-THRID: 6399179032135467008
X-Received: by 10.25.195.206 with SMTP id t197mr2841974lff.11.1489928092283;
        Sun, 19 Mar 2017 05:54:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.92.195 with SMTP id q186ls125060ljb.23.gmail; Sun, 19 Mar
 2017 05:54:51 -0700 (PDT)
X-Received: by 10.25.196.68 with SMTP id u65mr2869050lff.0.1489928091667;
        Sun, 19 Mar 2017 05:54:51 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t131si467410wmf.1.2017.03.19.05.54.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 05:54:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,188,1486422000"; 
   d="scan'208";a="217253992"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2017 13:54:50 +0100
Date: Sun, 19 Mar 2017 13:54:50 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: media: atomisp: Added
 spaces around arithmetic operators.
In-Reply-To: <58ce79c1.0dd6620a.57cda.6b16@mx.google.com>
Message-ID: <alpine.DEB.2.20.1703191354360.2108@hadrien>
References: <cover.1489925957.git.rvarsha016@gmail.com> <58ce79c1.0dd6620a.57cda.6b16@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 19 Mar 2017, Varsha Rao wrote:

> Add spaces around arithmetic operators (/, +, -), to fix the checkpatch
> issue.
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  .../css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c        | 14 +++++++-------
>  .../css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c     |  6 +++---
>  .../atomisp/platform/intel-mid/atomisp_gmin_platform.c     |  6 +++---
>  3 files changed, 13 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
> index 1890d59..992b31e 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/ctc/ctc2/ia_css_ctc2.host.c
> @@ -44,7 +44,7 @@ static int ctc2_slope(int y1, int y0, int x1, int x0)
>  	const int max_slope = (1 << IA_CSS_CTC_COEF_SHIFT) - 1;
>  	int dy = y1 - y0;
>  	int dx = x1 - x0;
> -	int rounding = (dx+1) >> 1;
> +	int rounding = (dx + 1) >> 1;
>  	int dy_shift = dy << shift_val;
>  	int slope, dydx;
>
> @@ -126,14 +126,14 @@ void ia_css_ctc2_vmem_encode(struct ia_css_isp_ctc2_vmem_params *to,
>  		to->y_y[0][(i << shffl_blck) + 4] = from->y_y4;
>
>  		to->e_y_slope[0][(i << shffl_blck)]    = dydx0;
> -		to->e_y_slope[0][(i << shffl_blck) +1] = dydx1;
> -		to->e_y_slope[0][(i << shffl_blck) +2] = dydx2;
> -		to->e_y_slope[0][(i << shffl_blck) +3] = dydx3;
> -		to->e_y_slope[0][(i << shffl_blck) +4] = dydx4;
> +		to->e_y_slope[0][(i << shffl_blck) + 1] = dydx1;
> +		to->e_y_slope[0][(i << shffl_blck) + 2] = dydx2;
> +		to->e_y_slope[0][(i << shffl_blck) + 3] = dydx3;
> +		to->e_y_slope[0][(i << shffl_blck) + 4] = dydx4;
>
>  		for (j = 0; j < lenght_zeros; j++) {
> -			to->y_x[0][(i << shffl_blck)+ 5 + j] = 0;
> -			to->y_y[0][(i << shffl_blck)+ 5 + j] = 0;
> +			to->y_x[0][(i << shffl_blck) + 5 + j] = 0;
> +			to->y_y[0][(i << shffl_blck) + 5 + j] = 0;
>  			to->e_y_slope[0][(i << shffl_blck)+ 5 + j] = 0;
>  		}
>  	}
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
> index 1a8b852..fa97224 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
> @@ -22,7 +22,7 @@
>  #include "ia_css_xnr3.host.h"
>
>  /* Maximum value for alpha on ISP interface */
> -#define XNR_MAX_ALPHA  ((1 << (ISP_VEC_ELEMBITS-1)) - 1)
> +#define XNR_MAX_ALPHA  ((1 << (ISP_VEC_ELEMBITS - 1)) - 1)
>
>  /* Minimum value for sigma on host interface. Lower values translate to
>   * max_alpha. */
> @@ -78,7 +78,7 @@ compute_alpha(int sigma)
>  #if defined(XNR_ATE_ROUNDING_BUG)
>  	int32_t alpha_unscaled;
>  #else
> -	int offset = sigma/2;
> +	int offset = sigma / 2;
>  #endif
>  	if (sigma < XNR_MIN_SIGMA) {
>  		alpha = XNR_MAX_ALPHA;
> @@ -230,7 +230,7 @@ ia_css_xnr3_vmem_encode(
>
>  	for (j = 1; j < XNR3_LOOK_UP_TABLE_POINTS; j++) {
>  		assert(x[j] >= 0);
> -		assert(x[j] > x[j-1]);
> +		assert(x[j] > x[j - 1]);
>
>  	}
>
> diff --git a/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c b/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c
> index add0093..8165154 100644
> --- a/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c
> +++ b/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c
> @@ -56,7 +56,7 @@ static enum { PMIC_UNSET = 0, PMIC_REGULATOR, PMIC_AXP, PMIC_TI ,
>  	PMIC_CRYSTALCOVE } pmic_id;
>
>  /* The atomisp uses type==0 for the end-of-list marker, so leave space. */
> -static struct intel_v4l2_subdev_table pdata_subdevs[MAX_SUBDEVS+1];
> +static struct intel_v4l2_subdev_table pdata_subdevs[MAX_SUBDEVS + 1];
>
>  static const struct atomisp_platform_data pdata = {
>  	.subdevs = pdata_subdevs,
> @@ -637,7 +637,7 @@ int gmin_get_config_var(struct device *dev, const char *var, char *out, size_t *
>          else
>                  ret = snprintf(var8, sizeof(var8), "gmin_%s", var);
>
> -	if (ret < 0 || ret >= sizeof(var8)-1)
> +	if (ret < 0 || ret >= sizeof(var8) - 1)
>  		return -EINVAL;
>
>  	/* First check a hard-coded list of board-specific variables.
> @@ -654,7 +654,7 @@ int gmin_get_config_var(struct device *dev, const char *var, char *out, size_t *
>
>  				if (strcmp(var8, gv->name))
>  					continue;
> -				if (vl > *out_len-1)
> +				if (vl > *out_len - 1)
>  					return -ENOSPC;
>
>  				memcpy(out, gv->val, min(*out_len, vl+1));
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58ce79c1.0dd6620a.57cda.6b16%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

