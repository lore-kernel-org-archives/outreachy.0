X-GM-THRID: 6746727664104505344
X-Received: by 2002:a7b:c444:: with SMTP id l4mr13665577wmi.49.1571033433835;
        Sun, 13 Oct 2019 23:10:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c5c4:: with SMTP id n4ls5673449wmk.3.canary-gmail; Sun,
 13 Oct 2019 23:10:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxs9uUyYbK3165aHs0Jla+yrcDYG1v+AxxCCkK6Gqw/c4tRm16WQ5k+n9cJ7lROHsbFgnF8
X-Received: by 2002:a1c:41c1:: with SMTP id o184mr14294819wma.81.1571033432697;
        Sun, 13 Oct 2019 23:10:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571033432; cv=none;
        d=google.com; s=arc-20160816;
        b=noJkIHEwiSxg7TPo9Ntt1SqGtO57qp8ie6VxIPP5rcyIThyjvNHDtbhfRXVdQUonOi
         0pNpcj12uIRp383e8W2ZC/k+6pXtIx/AXmAHvZAaABXe+N4QFd0k6IlsoZs6xrkkHeWW
         rWcIJsR9JMPmZrPMFfhY0tPaUScXcVURuTGbYVl+GboYBDgdGFMnvoBkF6AQiaLfsP6N
         IPi4KkwmpmrusCGbqChpOi1WKmaLUcW42QvhwVa338UlLnSlPl/MErG99s1kwY16GgSr
         8aYzXB7B2Z6EqfMLFXT291NtO7dMilRyCjE/yTGZ5u4ZZWSlh3RQlFVVGbmbZNTl3UZn
         gHvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=l63DQAe2DUJSVHza4boWYm6qJPgMJEpm55fV/As46kI=;
        b=wUJTQQ4ePw6w1kLmvyGC5A5sfRWIQsKA72ac0NOTUu7l+EKEMghFrTllth2KhJQsgp
         lKJfohMPj+EoU45OXAxlu2xH6IsgzdA800V/tl9CTAfuU8xDnTaDwIPVld5+Remeki6r
         oFAOlZwxp6+hQkGROg32DbTDZkU5ZL+N3eHDokOLZkIUWWCbY2ApCz83RIEtsx34w2i6
         TYno5bEZPv2sDXtxbeygVh+uoJvbLuyJ0tmLa/T+WGqTPI2tS4YYBwG482272g90iqYX
         XncvUVmQ7V6AkPzCxiRShJDDVpIo8Fmt0o8XbrhTlKnFUhGA135ICjhsKSHdWXP4kIdq
         yBqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id x8si1371950wmk.2.2019.10.13.23.10.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Oct 2019 23:10:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,294,1566856800"; 
   d="scan'208";a="405983668"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Oct 2019 08:10:30 +0200
Date: Mon, 14 Oct 2019 08:10:30 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jamal Shareef <jamal.k.shareef@gmail.com>
cc: boqun.feng@microsoft.com, andrea.parri@microsoft.com, 
    laurent.pinchart@ideasonboard.com, mchehab@kernel.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    Joe Perches <joe@perches.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: media: omap4iss: Fix
 lines ending with open parenthesis
In-Reply-To: <20191014055308.GA1069@jamal-XPS-13-9343>
Message-ID: <alpine.DEB.2.21.1910140806460.2865@hadrien>
References: <20191014055308.GA1069@jamal-XPS-13-9343>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 13 Oct 2019, Jamal Shareef wrote:

> Fix lines ending with open parenthesis. Issue
> found by checkpatch.
>
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> ---
> Changes in v3:
>  - Remove created local variables and revert
>    back to original function calls because intent
>    is to dynamically poll the value.
>  - Format code for better readability. This
>    introduces new warning for "alignment should
>    match open parenthesis" but will be disregarded.
>
> Changes in v2:
>  - Include similar changes in iss.c file.
>  - Create local variables for iss_reg_read
>    function calls for better code formatting.
> ---
>  drivers/staging/media/omap4iss/iss.c      | 58 +++++++++++++----------
>  drivers/staging/media/omap4iss/iss_csi2.c | 12 ++---
>  2 files changed, 39 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
> index 1a966cb2f3a6..9112eb89b7c0 100644
> --- a/drivers/staging/media/omap4iss/iss.c
> +++ b/drivers/staging/media/omap4iss/iss.c
> @@ -559,9 +559,10 @@ static int iss_reset(struct iss_device *iss)
>  	iss_reg_set(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG,
>  		    ISS_HL_SYSCONFIG_SOFTRESET);
>
> -	timeout = iss_poll_condition_timeout(
> -		!(iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
> -		ISS_HL_SYSCONFIG_SOFTRESET), 1000, 10, 100);
> +	timeout = iss_poll_condition_timeout(!(iss_reg_read(iss,
> +					OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
> +					ISS_HL_SYSCONFIG_SOFTRESET),
> +					1000, 10, 100);

There is indeed something unpleasant about something that looks like a
function call, but it actually a while loop.  Perhaps the word "poll" is
supposed to be sufficiently suggestive of loopness.

In the proposed code, it is very hard to see what argument goes with what.
Perhaps an improvement for the original code would be to leave the first
argument on a new line as it is, but move the ISS_HL_SYSCONFIG_SOFTRESET
over 2 spaces so that it is lined up with what it is anded with, and then
put the 1000 etc on a line below, lines up with the !, so that it is clear
that they are not part of the polling condition.

julia

>  	if (timeout) {
>  		dev_err(iss->dev, "ISS reset timeout\n");
>  		return -ETIMEDOUT;
> @@ -583,9 +584,9 @@ static int iss_isp_reset(struct iss_device *iss)
>
>  	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL, ISP5_CTRL_MSTANDBY);
>
> -	timeout = iss_poll_condition_timeout(
> -		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL) &
> -		ISP5_CTRL_MSTANDBY_WAIT, 1000000, 1000, 1500);
> +	timeout = iss_poll_condition_timeout(iss_reg_read(iss,
> +				OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL) &
> +				ISP5_CTRL_MSTANDBY_WAIT, 1000000, 1000, 1500);
>  	if (timeout) {
>  		dev_err(iss->dev, "ISP5 standby timeout\n");
>  		return -ETIMEDOUT;
> @@ -595,9 +596,10 @@ static int iss_isp_reset(struct iss_device *iss)
>  	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG,
>  		    ISP5_SYSCONFIG_SOFTRESET);
>
> -	timeout = iss_poll_condition_timeout(
> -		!(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG) &
> -		ISP5_SYSCONFIG_SOFTRESET), 1000000, 1000, 1500);
> +	timeout = iss_poll_condition_timeout(!(iss_reg_read(iss,
> +					OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG)
> +					& ISP5_SYSCONFIG_SOFTRESET),
> +					1000000, 1000, 1500);
>  	if (timeout) {
>  		dev_err(iss->dev, "ISP5 reset timeout\n");
>  		return -ETIMEDOUT;
> @@ -964,7 +966,8 @@ iss_register_subdev_group(struct iss_device *iss,
>  		}
>
>  		subdev = v4l2_i2c_new_subdev_board(&iss->v4l2_dev, adapter,
> -				board_info->board_info, NULL);
> +						   board_info->board_info,
> +						   NULL);
>  		if (!subdev) {
>  			dev_err(iss->dev, "Unable to register subdev %s\n",
>  				board_info->board_info->type);
> @@ -1108,33 +1111,38 @@ static int iss_create_links(struct iss_device *iss)
>  	}
>
>  	/* Connect the submodules. */
> -	ret = media_create_pad_link(
> -			&iss->csi2a.subdev.entity, CSI2_PAD_SOURCE,
> -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
> +	ret = media_create_pad_link(&iss->csi2a.subdev.entity,
> +				    CSI2_PAD_SOURCE,
> +				    &iss->ipipeif.subdev.entity,
> +				    IPIPEIF_PAD_SINK, 0);
>  	if (ret < 0)
>  		return ret;
>
> -	ret = media_create_pad_link(
> -			&iss->csi2b.subdev.entity, CSI2_PAD_SOURCE,
> -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
> +	ret = media_create_pad_link(&iss->csi2b.subdev.entity,
> +				    CSI2_PAD_SOURCE,
> +				    &iss->ipipeif.subdev.entity,
> +				    IPIPEIF_PAD_SINK, 0);
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
>  	if (ret < 0)
>  		return ret;
>
> diff --git a/drivers/staging/media/omap4iss/iss_csi2.c b/drivers/staging/media/omap4iss/iss_csi2.c
> index a6dc2d2b1228..cd705df04f6c 100644
> --- a/drivers/staging/media/omap4iss/iss_csi2.c
> +++ b/drivers/staging/media/omap4iss/iss_csi2.c
> @@ -495,9 +495,9 @@ int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
>  	iss_reg_set(csi2->iss, csi2->regs1, CSI2_SYSCONFIG,
>  		    CSI2_SYSCONFIG_SOFT_RESET);
>
> -	timeout = iss_poll_condition_timeout(
> -		iss_reg_read(csi2->iss, csi2->regs1, CSI2_SYSSTATUS) &
> -		CSI2_SYSSTATUS_RESET_DONE, 500, 100, 200);
> +	timeout = iss_poll_condition_timeout(iss_reg_read(csi2->iss,
> +				csi2->regs1, CSI2_SYSSTATUS) &
> +				CSI2_SYSSTATUS_RESET_DONE, 500, 100, 200);
>  	if (timeout) {
>  		dev_err(csi2->iss->dev, "CSI2: Soft reset timeout!\n");
>  		return -EBUSY;
> @@ -506,9 +506,9 @@ int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
>  	iss_reg_set(csi2->iss, csi2->regs1, CSI2_COMPLEXIO_CFG,
>  		    CSI2_COMPLEXIO_CFG_RESET_CTRL);
>
> -	timeout = iss_poll_condition_timeout(
> -		iss_reg_read(csi2->iss, csi2->phy->phy_regs, REGISTER1) &
> -		REGISTER1_RESET_DONE_CTRLCLK, 10000, 100, 500);
> +	timeout = iss_poll_condition_timeout(iss_reg_read(csi2->iss,
> +				csi2->phy->phy_regs, REGISTER1) &
> +				REGISTER1_RESET_DONE_CTRLCLK, 10000, 100, 500);
>  	if (timeout) {
>  		dev_err(csi2->iss->dev, "CSI2: CSI2_96M_FCLK reset timeout!\n");
>  		return -EBUSY;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191014055308.GA1069%40jamal-XPS-13-9343.
>

