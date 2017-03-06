X-GM-THRID: 6394469036665602048
X-Received: by 10.46.84.69 with SMTP id y5mr2891986ljd.21.1488836700910;
        Mon, 06 Mar 2017 13:45:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.83 with SMTP id v19ls1592957ljd.25.gmail; Mon, 06 Mar
 2017 13:45:00 -0800 (PST)
X-Received: by 10.25.17.102 with SMTP id g99mr2112598lfi.6.1488836700457;
        Mon, 06 Mar 2017 13:45:00 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i76si126395wmh.1.2017.03.06.13.45.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 13:45:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,255,1484002800"; 
   d="scan'208";a="215790667"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2017 22:44:59 +0100
Date: Mon, 6 Mar 2017 22:44:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel@googlegroups.com, mchehab@kernel.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] media:atomisp:pci Remove unnecessary
 variable
In-Reply-To: <20170306192538.GA5241@fireworks>
Message-ID: <alpine.DEB.2.20.1703062243430.2172@hadrien>
References: <20170306192538.GA5241@fireworks>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The subject one doesn't seem standard.  Normally there are at least spaces
after the :s.  In general, use got long --oneline on each file to see what
others have done, and try to come up with something that covers the
affected files.

julia

On Mon, 6 Mar 2017, Georgiana Rodica Chelu wrote:

> Remove the local variable "ret" because its initial
> value does not change during the function execution.
>
> Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
> ---
>  drivers/staging/media/atomisp/pci/atomisp2/atomisp_ioctl.c           | 5 ++---
>  .../media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_init.c  | 4 +---
>  drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c     | 4 +---
>  drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c       | 3 +--
>  4 files changed, 5 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_ioctl.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_ioctl.c
> index 0a0652a..bc09914 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_ioctl.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_ioctl.c
> @@ -557,8 +557,6 @@ const struct atomisp_format_bridge *atomisp_get_format_bridge_from_mbus(u32
>  static int atomisp_querycap(struct file *file, void *fh,
>  			    struct v4l2_capability *cap)
>  {
> -	int ret = 0;
> -
>  	memset(cap, 0, sizeof(struct v4l2_capability));
>
>  	WARN_ON(sizeof(DRIVER) > sizeof(cap->driver) ||
> @@ -574,7 +572,8 @@ static int atomisp_querycap(struct file *file, void *fh,
>  	cap->device_caps = V4L2_CAP_VIDEO_CAPTURE |
>  	    V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_OUTPUT;
>  	cap->capabilities = cap->device_caps | V4L2_CAP_DEVICE_CAPS;
> -	return ret;
> +
> +	return 0;
>  }
>
>  /*
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_init.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_init.c
> index 239ef31..2ed5162 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_init.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_init.c
> @@ -105,8 +105,6 @@ input_system_error_t ia_css_isys_init(void)
>  #elif defined(USE_INPUT_SYSTEM_VERSION_2401)
>  input_system_error_t ia_css_isys_init(void)
>  {
> -	input_system_error_t error = INPUT_SYSTEM_ERR_NO_ERROR;
> -
>  	ia_css_isys_csi_rx_lut_rmgr_init();
>  	ia_css_isys_ibuf_rmgr_init();
>  	ia_css_isys_dma_channel_rmgr_init();
> @@ -120,7 +118,7 @@ input_system_error_t ia_css_isys_init(void)
>  	isys_irqc_status_enable(ISYS_IRQ1_ID);
>  	isys_irqc_status_enable(ISYS_IRQ2_ID);
>
> -	return error;
> +	return INPUT_SYSTEM_ERR_NO_ERROR;
>  }
>  #endif
>
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
> index 1210c21..bc4b623 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
> @@ -37,12 +37,10 @@ enum ia_css_err
>  ia_css_mipi_frame_specify(const unsigned int size_mem_words,
>  				const bool contiguous)
>  {
> -	enum ia_css_err err = IA_CSS_SUCCESS;
> -
>  	my_css.size_mem_words = size_mem_words;
>  	(void)contiguous;
>
> -	return err;
> +	return IA_CSS_SUCCESS;
>  }
>
>  #ifdef ISP2401
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c
> index 00b2d16..9caf0b6 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c
> @@ -825,7 +825,6 @@ configure_isp_from_args(
>  	bool two_ppc,
>  	bool deinterleaved)
>  {
> -	enum ia_css_err err = IA_CSS_SUCCESS;
>  #ifdef ISP2401
>  	struct ia_css_pipe *pipe = find_pipe_by_num(pipeline->pipe_num);
>  	const struct ia_css_resolution *res;
> @@ -853,7 +852,7 @@ configure_isp_from_args(
>  	/* Remove support for TNR2 once TNR3 fully integrated */
>  	ia_css_tnr3_configure(binary, (const struct ia_css_frame **)args->tnr_frames);
>  #endif
> -	return err;
> +	return IA_CSS_SUCCESS;
>  }
>
>  static void
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170306192538.GA5241%40fireworks.
> For more options, visit https://groups.google.com/d/optout.
>

