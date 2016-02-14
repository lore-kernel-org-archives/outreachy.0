X-GM-THRID: 6250911351266344960
X-Received: by 10.112.17.37 with SMTP id l5mr1089725lbd.21.1455435093989;
        Sat, 13 Feb 2016 23:31:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.12.7 with SMTP id 7ls363193wmm.53.canary; Sat, 13 Feb 2016
 23:31:33 -0800 (PST)
X-Received: by 10.194.19.195 with SMTP id h3mr1115545wje.1.1455435093032;
        Sat, 13 Feb 2016 23:31:33 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 141si439162wmy.2.2016.02.13.23.31.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 23:31:33 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,444,1449529200"; 
   d="scan'208";a="164634973"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Feb 2016 08:31:32 +0100
Date: Sun, 14 Feb 2016 08:31:31 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Thaissa Falbo <thaissa.falbo@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: davinci_vpfe: Fixed
 block comments according to kernel coding style
In-Reply-To: <1455403675-3630-1-git-send-email-thaissa.falbo@gmail.com>
Message-ID: <alpine.DEB.2.02.1602140829580.2039@localhost6.localdomain6>
References: <1455403675-3630-1-git-send-email-thaissa.falbo@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 13 Feb 2016, Thaissa Falbo wrote:

> Fixed block comments by following the checkpatch warnings.
> 
> WARNING: Block comments use * on subsequent lines
> WARNING: Block comments use a trailing */ on a separate line
> 
> 
> 
> Signed-off-by: Thaissa Falbo <thaissa.falbo@gmail.com>
> ---
>  drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h |  2 +-
>  drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c    | 12 ++++++++----
>  drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h    |  5 +++--
>  drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c   |  6 ++++--
>  drivers/staging/media/davinci_vpfe/vpfe_video.c        | 18 +++++++++++-------
>  5 files changed, 27 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
> index 7b7e7b2..3cc9be7 100644
> --- a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
> +++ b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
> @@ -538,7 +538,7 @@ struct vpfe_isif_raw_config {
>  };
>  
>  /**********************************************************************
> -      IPIPE API Structures
> +*      IPIPE API Structures
>  **********************************************************************/
>  
>  /* IPIPE module configurations */
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
> index b1d5e23..de9a1bf 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
> @@ -682,8 +682,10 @@ ipipe_set_rgb2rgb_regs(void __iomem *base_addr, unsigned int id,
>  	ipipe_clock_enable(base_addr);
>  
>  	if (id == IPIPE_RGB2RGB_2) {
> -		/* For second RGB module, gain integer is 3 bits instead
> -		of 4, offset has 11 bits insread of 13 */
> +		/*
> +		* For second RGB module, gain integer is 3 bits instead
> +		* of 4, offset has 11 bits insread of 13
> +		*/

All of the *s should be lined up, as you did in the next case.

>  		offset = RGB2_MUL_BASE;
>  		integ_mask = 0x7;
>  		offset_mask = RGB2RGB_2_OFST_MASK;
> @@ -792,8 +794,10 @@ ipipe_set_3d_lut_regs(void __iomem *base_addr, void __iomem *isp5_base_addr,
>  	/* valied table */
>  	tbl = lut_3d->table;
>  	for (i = 0; i < VPFE_IPIPE_MAX_SIZE_3D_LUT; i++) {
> -		/* Each entry has 0-9 (B), 10-19 (G) and
> -		20-29 R values */
> +		/*
> +		 * Each entry has 0-9 (B), 10-19 (G) and
> +		 * 20-29 R values
> +		 */
>  		val = tbl[i].b & D3_LUT_ENTRY_MASK;
>  		val |= (tbl[i].g & D3_LUT_ENTRY_MASK) <<
>  			 D3_LUT_ENTRY_G_SHIFT;
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
> index 2bf2f7a..957fe01 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
> @@ -278,8 +278,9 @@
>  /* Resizer Rescale Parameters */
>  #define RSZ_EN_A		0x58
>  #define RSZ_EN_B		0xe8
> -/* offset of the registers to be added with base register of
> -   either RSZ0 or RSZ1
> +/*
> + * offset of the registers to be added with base register of
> + * either RSZ0 or RSZ1
>  */
>  #define RSZ_MODE		0x4
>  #define RSZ_420			0x8
> diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
> index ec46f36..bf077f8 100644
> --- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
> +++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
> @@ -442,8 +442,10 @@ static int vpfe_register_entities(struct vpfe_device *vpfe_dev)
>  
>  	/* create links now, starting with external(i2c) entities */
>  	for (i = 0; i < vpfe_dev->num_ext_subdevs; i++)
> -		/* if entity has no pads (ex: amplifier),
> -		   cant establish link */
> +		/*
> +		 * if entity has no pads (ex: amplifier),
> +		 * cant establish link
> +		 */
>  		if (vpfe_dev->sd[i]->entity.num_pads) {
>  			ret = media_create_pad_link(&vpfe_dev->sd[i]->entity,
>  				0, &vpfe_dev->vpfe_isif.subdev.entity,
> diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.c b/drivers/staging/media/davinci_vpfe/vpfe_video.c
> index 3ec7e65..3de5461 100644
> --- a/drivers/staging/media/davinci_vpfe/vpfe_video.c
> +++ b/drivers/staging/media/davinci_vpfe/vpfe_video.c
> @@ -178,8 +178,9 @@ static int vpfe_update_pipe_state(struct vpfe_video_device *video)
>  	if (ret)
>  		return ret;
>  
> -	/* Find out if there is any input video
> -	  if yes, it is single shot.
> +	/*
> +	 * Find out if there is any input video
> +	 * if yes, it is single shot.
>  	*/

The last * doesn't seem to be lines up with the others.  Check the 
remaining cases.

julia

>  	if (pipe->input_num == 0) {
>  		pipe->state = VPFE_PIPELINE_STREAM_CONTINUOUS;
> @@ -529,9 +530,10 @@ static int vpfe_release(struct file *file)
>  	if (fh->io_allowed) {
>  		if (video->started) {
>  			vpfe_stop_capture(video);
> -			/* mark pipe state as stopped in vpfe_release(),
> -			   as app might call streamon() after streamoff()
> -			   in which case driver has to start streaming.
> +			/*
> +			 * mark pipe state as stopped in vpfe_release(),
> +			 * as app might call streamon() after streamoff()
> +			 * in which case driver has to start streaming.
>  			*/
>  			video->pipe.state = VPFE_PIPELINE_STREAM_STOPPED;
>  			vb2_streamoff(&video->buffer_queue,
> @@ -672,8 +674,10 @@ static int vpfe_enum_fmt(struct file *file, void  *priv,
>  
>  	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_enum_fmt\n");
>  
> -	/* since already subdev pad format is set,
> -	only one pixel format is available */
> +	/*
> +	 * since already subdev pad format is set,
> +	 * only one pixel format is available
> +	 */
>  	if (fmt->index > 0) {
>  		v4l2_err(&vpfe_dev->v4l2_dev, "Invalid index\n");
>  		return -EINVAL;
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455403675-3630-1-git-send-email-thaissa.falbo%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

