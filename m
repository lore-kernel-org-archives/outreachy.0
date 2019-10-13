X-GM-THRID: 6746727664104505344
X-Received: by 2002:a2e:9f4d:: with SMTP id v13mr14492334ljk.226.1570942726382;
        Sat, 12 Oct 2019 21:58:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:5f55:: with SMTP id a21ls1028403lfj.0.gmail; Sat, 12 Oct
 2019 21:58:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxy6RiUw2CF2X1/pUfAqUOEJpdD6G5iqrk6Ug+UQsu0xtRCNNuErGyN8LSE5q9ifjNS0q8B
X-Received: by 2002:a05:6512:515:: with SMTP id o21mr13533126lfb.189.1570942725163;
        Sat, 12 Oct 2019 21:58:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570942725; cv=none;
        d=google.com; s=arc-20160816;
        b=vGkrlTQS8+3/D0lo0YPbwvU3xJ6JiSyc5bSqeAbI2IoUCJlXkUVLIKsJ9uTHyNdxz0
         aJBLcsDM6MXR3jZ1sGLkYTzVw1O/PouEl+xn9oB6lKL1u0jKybrc+oI8tq3tRzss2EVh
         Dj4b/c6j5hqGGPgQisKFb7WAiVbGqcwuVtQ/DP8xsJdpX1PuXYOcWK8g+ZmgL/ZDB38D
         3Km07Fj5iTx+GzerABgqU/0mVqbt+nH9CqgrjN9BE0RXw4PZMi1rXAZwr6EAVVTFVg1U
         qjfQ5DBD0E4xKvJ3UyMP4jOUMo6MulV3mZ8Sf5kiMFv50LpXIKRNexepB+UCJmuVWkIw
         IGhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=iT9Q9+1/zgAX7OwnwSMeaRTJOthDMaclrwYUi3hRVXc=;
        b=b94jmMJZ+u5kFfCqI20Dli5AqvoswKBAKGBw1hBEeZsEdfw+a0h8sZjmd5JGBhsc5W
         Q54ghQdfNGR1HkpkP2m1Vx4+HxocY0olbENR2fhMjWiPzfUavvSu0G6qZIeUpAgMBXzv
         eyOelLnMt7q8m9wsoR6zSX8Tyh+X9BjO9nU2Yq3vAo7RRz/sEmTIV8TzVp3AwB8LTo9i
         9aqSZoE6ldYph/+dat/tSfm3HLd12PRa7Z5B2APIbBtcakQij4ev2ClCTiqLauWN+vxk
         +MSyye3hq1VqHeU9QB/fcEaxau6xaDkb/23YuwTXzr3BOHJH7NVVT6ZMt3u7NG40MxAS
         JvwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a9si479540lfk.5.2019.10.12.21.58.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Oct 2019 21:58:45 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,290,1566856800"; 
   d="scan'208";a="322513863"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Oct 2019 06:58:43 +0200
Date: Sun, 13 Oct 2019 06:58:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jamal Shareef <jamal.k.shareef@gmail.com>
cc: boqun.feng@microsoft.com, andrea.parri@microsoft.com, 
    laurent.pinchart@ideasonboard.com, mchehab@kernel.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: media: omap4iss: Fix
 lines ending with open parenthesis
In-Reply-To: <20191012233148.2891-1-jamal.k.shareef@gmail.com>
Message-ID: <alpine.DEB.2.21.1910130658150.3260@hadrien>
References: <20191012233148.2891-1-jamal.k.shareef@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 12 Oct 2019, Jamal Shareef wrote:

> Fix lines ending with open parenthesis. Issue
> found by checkpatch.
>
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> ---
> Changes in v2:
>  - Include similar changes in iss.c file.
>  - Create local variables for iss_reg_read
>    function calls for better code formatting.

The second point is a change in the code.  It should have been mentioned
above the --- as well.

julia

> ---
>  drivers/staging/media/omap4iss/iss.c      | 58 +++++++++++++----------
>  drivers/staging/media/omap4iss/iss_csi2.c | 14 +++---
>  2 files changed, 41 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
> index 1a966cb2f3a6..7028738b2552 100644
> --- a/drivers/staging/media/omap4iss/iss.c
> +++ b/drivers/staging/media/omap4iss/iss.c
> @@ -555,13 +555,14 @@ static int iss_pipeline_is_last(struct media_entity *me)
>  static int iss_reset(struct iss_device *iss)
>  {
>  	unsigned int timeout;
> +	u32 reg_config = iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG);
>
>  	iss_reg_set(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG,
>  		    ISS_HL_SYSCONFIG_SOFTRESET);
>
> -	timeout = iss_poll_condition_timeout(
> -		!(iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
> -		ISS_HL_SYSCONFIG_SOFTRESET), 1000, 10, 100);
> +	timeout =
> +	iss_poll_condition_timeout(!(reg_config & ISS_HL_SYSCONFIG_SOFTRESET),
> +				   1000, 10, 100);
>  	if (timeout) {
>  		dev_err(iss->dev, "ISS reset timeout\n");
>  		return -ETIMEDOUT;
> @@ -575,6 +576,9 @@ static int iss_reset(struct iss_device *iss)
>  static int iss_isp_reset(struct iss_device *iss)
>  {
>  	unsigned int timeout;
> +	u32 reg_ctrl = iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL);
> +	u32 reg_config = iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1,
> +				      ISP5_SYSCONFIG);
>
>  	/* Fist, ensure that the ISP is IDLE (no transactions happening) */
>  	iss_reg_update(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG,
> @@ -583,9 +587,9 @@ static int iss_isp_reset(struct iss_device *iss)
>
>  	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL, ISP5_CTRL_MSTANDBY);
>
> -	timeout = iss_poll_condition_timeout(
> -		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL) &
> -		ISP5_CTRL_MSTANDBY_WAIT, 1000000, 1000, 1500);
> +	timeout =
> +	iss_poll_condition_timeout(reg_ctrl & ISP5_CTRL_MSTANDBY_WAIT,
> +				   1000000, 1000, 1500);
>  	if (timeout) {
>  		dev_err(iss->dev, "ISP5 standby timeout\n");
>  		return -ETIMEDOUT;
> @@ -595,9 +599,9 @@ static int iss_isp_reset(struct iss_device *iss)
>  	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG,
>  		    ISP5_SYSCONFIG_SOFTRESET);
>
> -	timeout = iss_poll_condition_timeout(
> -		!(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG) &
> -		ISP5_SYSCONFIG_SOFTRESET), 1000000, 1000, 1500);
> +	timeout =
> +	iss_poll_condition_timeout(!(reg_config & ISP5_SYSCONFIG_SOFTRESET),
> +				   1000000, 1000, 1500);
>  	if (timeout) {
>  		dev_err(iss->dev, "ISP5 reset timeout\n");
>  		return -ETIMEDOUT;
> @@ -964,7 +968,8 @@ iss_register_subdev_group(struct iss_device *iss,
>  		}
>
>  		subdev = v4l2_i2c_new_subdev_board(&iss->v4l2_dev, adapter,
> -				board_info->board_info, NULL);
> +						   board_info->board_info,
> +						   NULL);
>  		if (!subdev) {
>  			dev_err(iss->dev, "Unable to register subdev %s\n",
>  				board_info->board_info->type);
> @@ -1108,33 +1113,36 @@ static int iss_create_links(struct iss_device *iss)
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
> index a6dc2d2b1228..4ba6f8a3c77d 100644
> --- a/drivers/staging/media/omap4iss/iss_csi2.c
> +++ b/drivers/staging/media/omap4iss/iss_csi2.c
> @@ -485,6 +485,8 @@ static void csi2_irq_status_set(struct iss_csi2_device *csi2, int enable)
>  int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
>  {
>  	unsigned int timeout;
> +	u32 reg_status = iss_reg_read(csi2->iss, csi2->regs1, CSI2_SYSSTATUS);
> +	u32 reg_reg1 = iss_reg_read(csi2->iss, csi2->phy->phy_regs, REGISTER1);
>
>  	if (!csi2->available)
>  		return -ENODEV;
> @@ -495,9 +497,9 @@ int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
>  	iss_reg_set(csi2->iss, csi2->regs1, CSI2_SYSCONFIG,
>  		    CSI2_SYSCONFIG_SOFT_RESET);
>
> -	timeout = iss_poll_condition_timeout(
> -		iss_reg_read(csi2->iss, csi2->regs1, CSI2_SYSSTATUS) &
> -		CSI2_SYSSTATUS_RESET_DONE, 500, 100, 200);
> +	timeout =
> +	iss_poll_condition_timeout(reg_status & CSI2_SYSSTATUS_RESET_DONE,
> +				   500, 100, 200);
>  	if (timeout) {
>  		dev_err(csi2->iss->dev, "CSI2: Soft reset timeout!\n");
>  		return -EBUSY;
> @@ -506,9 +508,9 @@ int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
>  	iss_reg_set(csi2->iss, csi2->regs1, CSI2_COMPLEXIO_CFG,
>  		    CSI2_COMPLEXIO_CFG_RESET_CTRL);
>
> -	timeout = iss_poll_condition_timeout(
> -		iss_reg_read(csi2->iss, csi2->phy->phy_regs, REGISTER1) &
> -		REGISTER1_RESET_DONE_CTRLCLK, 10000, 100, 500);
> +	timeout =
> +	iss_poll_condition_timeout(reg_reg1 & REGISTER1_RESET_DONE_CTRLCLK,
> +				   10000, 100, 500);
>  	if (timeout) {
>  		dev_err(csi2->iss->dev, "CSI2: CSI2_96M_FCLK reset timeout!\n");
>  		return -EBUSY;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191012233148.2891-1-jamal.k.shareef%40gmail.com.
>

