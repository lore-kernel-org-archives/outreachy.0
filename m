X-GM-THRID: 6746702482716491776
X-Received: by 2002:aa7:d0d5:: with SMTP id u21mr17228181edo.36.1570858406984;
        Fri, 11 Oct 2019 22:33:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:42cf:: with SMTP id nz23ls2431314ejb.12.gmail; Fri,
 11 Oct 2019 22:33:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxiRk7wBKh/8iLKWgO0EX3pzLC8NWcXXqcl4WO+dhQhBQwbbNwnwXBa+0Ia0CPgHHBzjZED
X-Received: by 2002:a17:906:8554:: with SMTP id h20mr10184209ejy.215.1570858406027;
        Fri, 11 Oct 2019 22:33:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570858406; cv=none;
        d=google.com; s=arc-20160816;
        b=L0XpmbDT4eWWXOlPseTRZDO8sxaWBthMGiZbJxdX7bH/csonHYhHOohH5dS8sRtFwY
         XRwZFNkZX4JecoUo3trbxjwiWgTBh/Bt6v6hNApNT3BzP+Qdt9rWIpAMHVeQCOLb2uIL
         I35bke48ZVg1tISvc8LMYEupRkLELeaPgtKieQ61xHBo78NA2yQr9xTqO+vZCD6PbI+x
         ldmPo8obqLaPORxgg2XQf8vSNBbifx4Rebyvc/uDoYc1v1FAGhy2EjhUjCCh2mnfVR1T
         qlNdfIUipjGBeULvL4moIoFPeY/bo1a7bz4k4Saz0Rlm468ZV/OkNS0z1PpcUpD94K6N
         2pQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=UV4PmhEPhdN5fViX3/t/Yappfu0bbhxGuivYEPvEKh8=;
        b=08kV8ptSAA56KA2LChlsDfFY7PBvZZzla3K8Y1rffKwj3NpWOZ2TmQpKlmj+OvHaFm
         hYogyAaZ0UmuZwBEqfs/txLLWRN15AzFdF89CAHq9wBukUdfau2jUyyhgLp+Lsf+Af8K
         G2/3s4v43/vnlZYyPXAxFHA/C1+/T28IVztxE1So6iiTSI8rmp0tO0lBg6HAWGdXhgQ3
         T3X2XKK8iMjWuQlR9VX84DdG1yiSftsH6sttMTztz1daurwG7inmKvvfkfQg/d7vAm2Y
         FwZinti5obOkS4CFL05sW2oBLUDoYMbCC+711txYgcPwX97psr+wiOIPoAL9PvzuIKaK
         ZXDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d14si414583edb.4.2019.10.11.22.33.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 22:33:26 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,286,1566856800"; 
   d="scan'208";a="405848531"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Oct 2019 07:33:25 +0200
Date: Sat, 12 Oct 2019 07:33:25 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jamal Shareef <jamal.k.shareef@gmail.com>
cc: boqun.feng@microsoft.com, andrea.parri@microsoft.com, 
    laurent.pinchart@ideasonboard.com, mchehab@kernel.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel]
In-Reply-To: <20191012001017.3665-1-jamal.k.shareef@gmail.com>
Message-ID: <alpine.DEB.2.21.1910120732190.2637@hadrien>
References: <20191012001017.3665-1-jamal.k.shareef@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 11 Oct 2019, Jamal Shareef wrote:

> Subject: [PATCH] staging: media: omap4iss: Fix lines ending with "("
>
> Fix lines ending with open left parenthesis "(".
> Issue found by checkpatch.
>
> Also fix checkpatch "alignment should match open
> parenthesis" issue.

The format didn't come out properly.  You need to get the subject line
into the subject line of the message, while I see it in the body of the
message.  Please recheck the tutorial to see where you may have gone
wrong.

julia


>
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> ---
>  drivers/staging/media/omap4iss/iss.c | 65 +++++++++++++++++-----------
>  1 file changed, 40 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
> index 1a966cb2f3a6..9d6676b4618a 100644
> --- a/drivers/staging/media/omap4iss/iss.c
> +++ b/drivers/staging/media/omap4iss/iss.c
> @@ -559,9 +559,11 @@ static int iss_reset(struct iss_device *iss)
>  	iss_reg_set(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG,
>  		    ISS_HL_SYSCONFIG_SOFTRESET);
>
> -	timeout = iss_poll_condition_timeout(
> -		!(iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
> -		ISS_HL_SYSCONFIG_SOFTRESET), 1000, 10, 100);
> +	timeout = iss_poll_condition_timeout(!(iss_reg_read(iss,
> +							    OMAP4_ISS_MEM_TOP,
> +							    ISS_HL_SYSCONFIG) &
> +						ISS_HL_SYSCONFIG_SOFTRESET),
> +						1000, 10, 100);
>  	if (timeout) {
>  		dev_err(iss->dev, "ISS reset timeout\n");
>  		return -ETIMEDOUT;
> @@ -583,9 +585,11 @@ static int iss_isp_reset(struct iss_device *iss)
>
>  	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL, ISP5_CTRL_MSTANDBY);
>
> -	timeout = iss_poll_condition_timeout(
> -		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL) &
> -		ISP5_CTRL_MSTANDBY_WAIT, 1000000, 1000, 1500);
> +	timeout =
> +	iss_poll_condition_timeout(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1,
> +						ISP5_CTRL) &
> +				   ISP5_CTRL_MSTANDBY_WAIT,
> +				   1000000, 1000, 1500);
>  	if (timeout) {
>  		dev_err(iss->dev, "ISP5 standby timeout\n");
>  		return -ETIMEDOUT;
> @@ -595,9 +599,11 @@ static int iss_isp_reset(struct iss_device *iss)
>  	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG,
>  		    ISP5_SYSCONFIG_SOFTRESET);
>
> -	timeout = iss_poll_condition_timeout(
> -		!(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG) &
> -		ISP5_SYSCONFIG_SOFTRESET), 1000000, 1000, 1500);
> +	timeout =
> +	iss_poll_condition_timeout(!(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1,
> +						  ISP5_SYSCONFIG) &
> +				     ISP5_SYSCONFIG_SOFTRESET),
> +				     1000000, 1000, 1500);
>  	if (timeout) {
>  		dev_err(iss->dev, "ISP5 reset timeout\n");
>  		return -ETIMEDOUT;
> @@ -964,7 +970,9 @@ iss_register_subdev_group(struct iss_device *iss,
>  		}
>
>  		subdev = v4l2_i2c_new_subdev_board(&iss->v4l2_dev, adapter,
> -				board_info->board_info, NULL);
> +						   board_info->board_info,
> +						   NULL);
> +
>  		if (!subdev) {
>  			dev_err(iss->dev, "Unable to register subdev %s\n",
>  				board_info->board_info->type);
> @@ -1108,33 +1116,40 @@ static int iss_create_links(struct iss_device *iss)
>  	}
>
>  	/* Connect the submodules. */
> -	ret = media_create_pad_link(
> -			&iss->csi2a.subdev.entity, CSI2_PAD_SOURCE,
> -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
> +	ret = media_create_pad_link(&iss->csi2a.subdev.entity, CSI2_PAD_SOURCE,
> +				    &iss->ipipeif.subdev.entity,
> +				    IPIPEIF_PAD_SINK, 0);
>  	if (ret < 0)
>  		return ret;
>
> -	ret = media_create_pad_link(
> -			&iss->csi2b.subdev.entity, CSI2_PAD_SOURCE,
> -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
> +	ret = media_create_pad_link(&iss->csi2b.subdev.entity, CSI2_PAD_SOURCE,
> +				    &iss->ipipeif.subdev.entity,
> +				    IPIPEIF_PAD_SINK, 0);
> +
>  	if (ret < 0)
>  		return ret;
>
> -	ret = media_create_pad_link(
> -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
> -			&iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
> +	ret = media_create_pad_link(&iss->ipipeif.subdev.entity,
> +				    IPIPEIF_PAD_SOURCE_VP,
> +				    &iss->resizer.subdev.entity,
> +				    RESIZER_PAD_SINK, 0);
> +
>  	if (ret < 0)
>  		return ret;
>
> -	ret = media_create_pad_link(
> -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
> -			&iss->ipipe.subdev.entity, IPIPE_PAD_SINK, 0);
> +	ret = media_create_pad_link(&iss->ipipeif.subdev.entity,
> +				    IPIPEIF_PAD_SOURCE_VP,
> +				    &iss->ipipe.subdev.entity,
> +				    IPIPE_PAD_SINK, 0);
> +
>  	if (ret < 0)
>  		return ret;
>
> -	ret = media_create_pad_link(
> -			&iss->ipipe.subdev.entity, IPIPE_PAD_SOURCE_VP,
> -			&iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
> +	ret = media_create_pad_link(&iss->ipipe.subdev.entity,
> +				    IPIPE_PAD_SOURCE_VP,
> +				    &iss->resizer.subdev.entity,
> +				    RESIZER_PAD_SINK, 0);
> +
>  	if (ret < 0)
>  		return ret;
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191012001017.3665-1-jamal.k.shareef%40gmail.com.
>

