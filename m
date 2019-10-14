X-GM-THRID: 6746727664104505344
X-Received: by 2002:adf:facc:: with SMTP id a12mr28854704wrs.109.1571091702304;
        Mon, 14 Oct 2019 15:21:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9dc8:: with SMTP id g191ls6849740wme.2.gmail; Mon, 14
 Oct 2019 15:21:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzUqcMKNk7u2UsqDaEpU+gFxdsHWQN7Tv7p0tyWVq9HyQ+TpRfM6njr2kDizn8fvV6T4R4c
X-Received: by 2002:a05:600c:24b:: with SMTP id 11mr16607013wmj.169.1571091701219;
        Mon, 14 Oct 2019 15:21:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571091701; cv=none;
        d=google.com; s=arc-20160816;
        b=kLlB2Da4fJNmRnB7NDwUSo7Ww0ymdASOWmgA6QpIfbeAP12mpKFhlFLHKTYuhenaOp
         LXSvs6l9bgsv1GAIvAq+5BAg2r6kWuh6mslFqe5T4YmssdlT249BEJs9nAai/Ipwg7bK
         P7ShxngWv19G8QqHRnd8gT58y111CAIhBsWArmUPsenKyCGpGdVdkEkPiHbZG8wSDyGF
         hUncQSPnWmoh9pCKsYwNIS03z0SSWT18Y6aItDYrawFhVEh2ujCVsdvBtH2SuUVyUeqD
         /IJz+HX5Hjgny5Deu+JGz6kouyZDmbQVkOKpT/F7LRKIPTZPx7rXyMO7atrer0yczrUU
         ybOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=KdKbqEO0I38jAosCsc/B81VwKLp57KZf6J3chohcPeU=;
        b=o1zchOZDzWx2SkU7qvAKZ2cau4Hgv1bcVVZ+dCSurlT2jV0yfWCXCnVs1KOKSoAOu2
         nsQPYruXWl3+yIy+wZhoPG+YuaD8VJujRRPr3P5sRbaHqYVL/oi3kOwisXeoUETk9BTZ
         t0KM7FP+5CCVi/j5LIxokN8T+e8HAvlDtHH5/mwJ+koq15A/20zIlXp4O1fCQUdAZWbT
         7Mi/yU6pvsf2atL1owLj0Gj6JSjYuuUdHRQxo1DvjiLjwpBRpxdAxY57i3CjRuU77sRj
         Cux/1Muf3fKFFHLDO1s2BdsyULydZi6xZ9C0mam2bMe+JYxZaoJfEbFsLmtGPq3Hjadv
         D9pA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=g0RcLMDJ;
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 2001:4b98:dc2:55:216:3eff:fef7:d647 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com. [2001:4b98:dc2:55:216:3eff:fef7:d647])
        by gmr-mx.google.com with ESMTPS id o10si1588752wrm.5.2019.10.14.15.21.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 14 Oct 2019 15:21:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 2001:4b98:dc2:55:216:3eff:fef7:d647 as permitted sender) client-ip=2001:4b98:dc2:55:216:3eff:fef7:d647;
Authentication-Results: gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=g0RcLMDJ;
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 2001:4b98:dc2:55:216:3eff:fef7:d647 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Received: from pendragon.ideasonboard.com (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7A089324;
	Tue, 15 Oct 2019 00:21:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1571091700;
	bh=0wNAZrLlGGU7rd9wXixrKbqZ5oNkPQkQBU0lGnBkfw8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g0RcLMDJ2NGzX4rhdgWNT325CgpqFo4SUf4Hbee4Uh21/nUayraobgKgNjQe57PMk
	 LiRg3u7RHJCxtAf9zSzhkkfiGI/r1NBbivTuq2aj8A9ylzy2mn1O+Kj1L0XLLpGk58
	 xThNv0vxcO1031QEM4SZ4a1gHXQOc8X2eFdodArs=
Date: Tue, 15 Oct 2019 01:21:37 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Jamal Shareef <jamal.k.shareef@gmail.com>, boqun.feng@microsoft.com,
	andrea.parri@microsoft.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Joe Perches <joe@perches.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: media: omap4iss: Fix
 lines ending with open parenthesis
Message-ID: <20191014222137.GL23442@pendragon.ideasonboard.com>
References: <20191014055308.GA1069@jamal-XPS-13-9343>
 <alpine.DEB.2.21.1910140806460.2865@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910140806460.2865@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hello Jamal and Julia,

On Mon, Oct 14, 2019 at 08:10:30AM +0200, Julia Lawall wrote:
> On Sun, 13 Oct 2019, Jamal Shareef wrote:
> > Fix lines ending with open parenthesis. Issue
> > found by checkpatch.
> >
> > Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> > ---
> > Changes in v3:
> >  - Remove created local variables and revert
> >    back to original function calls because intent
> >    is to dynamically poll the value.
> >  - Format code for better readability. This
> >    introduces new warning for "alignment should
> >    match open parenthesis" but will be disregarded.
> >
> > Changes in v2:
> >  - Include similar changes in iss.c file.
> >  - Create local variables for iss_reg_read
> >    function calls for better code formatting.
> > ---
> >  drivers/staging/media/omap4iss/iss.c      | 58 +++++++++++++----------
> >  drivers/staging/media/omap4iss/iss_csi2.c | 12 ++---
> >  2 files changed, 39 insertions(+), 31 deletions(-)
> >
> > diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
> > index 1a966cb2f3a6..9112eb89b7c0 100644
> > --- a/drivers/staging/media/omap4iss/iss.c
> > +++ b/drivers/staging/media/omap4iss/iss.c
> > @@ -559,9 +559,10 @@ static int iss_reset(struct iss_device *iss)
> >  	iss_reg_set(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG,
> >  		    ISS_HL_SYSCONFIG_SOFTRESET);
> >
> > -	timeout = iss_poll_condition_timeout(
> > -		!(iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
> > -		ISS_HL_SYSCONFIG_SOFTRESET), 1000, 10, 100);
> > +	timeout = iss_poll_condition_timeout(!(iss_reg_read(iss,
> > +					OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
> > +					ISS_HL_SYSCONFIG_SOFTRESET),
> > +					1000, 10, 100);
> 
> There is indeed something unpleasant about something that looks like a
> function call, but it actually a while loop.  Perhaps the word "poll" is
> supposed to be sufficiently suggestive of loopness.

It's similar to the wait_event_* family of macros from
include/linux/wait.h. Not ideal, I agree, but C has its limitations :-)

> In the proposed code, it is very hard to see what argument goes with what.
> Perhaps an improvement for the original code would be to leave the first
> argument on a new line as it is, but move the ISS_HL_SYSCONFIG_SOFTRESET
> over 2 spaces so that it is lined up with what it is anded with, and then
> put the 1000 etc on a line below, lines up with the !, so that it is clear
> that they are not part of the polling condition.

We could also define helper functions to perform the checks. Something
along the line of

static bool iss_reset_done(struct iss_device *iss)
{
	return !(iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
		 ISS_HL_SYSCONFIG_SOFTRESET);
}

Then the code in iss_reset() could be written as

	timeout = iss_poll_condition_timeout(iss_reset_done(iss),
					     1000, 10, 100);

> >  	if (timeout) {
> >  		dev_err(iss->dev, "ISS reset timeout\n");
> >  		return -ETIMEDOUT;
> > @@ -583,9 +584,9 @@ static int iss_isp_reset(struct iss_device *iss)
> >
> >  	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL, ISP5_CTRL_MSTANDBY);
> >
> > -	timeout = iss_poll_condition_timeout(
> > -		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL) &
> > -		ISP5_CTRL_MSTANDBY_WAIT, 1000000, 1000, 1500);
> > +	timeout = iss_poll_condition_timeout(iss_reg_read(iss,
> > +				OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL) &
> > +				ISP5_CTRL_MSTANDBY_WAIT, 1000000, 1000, 1500);
> >  	if (timeout) {
> >  		dev_err(iss->dev, "ISP5 standby timeout\n");
> >  		return -ETIMEDOUT;
> > @@ -595,9 +596,10 @@ static int iss_isp_reset(struct iss_device *iss)
> >  	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG,
> >  		    ISP5_SYSCONFIG_SOFTRESET);
> >
> > -	timeout = iss_poll_condition_timeout(
> > -		!(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG) &
> > -		ISP5_SYSCONFIG_SOFTRESET), 1000000, 1000, 1500);
> > +	timeout = iss_poll_condition_timeout(!(iss_reg_read(iss,
> > +					OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG)
> > +					& ISP5_SYSCONFIG_SOFTRESET),
> > +					1000000, 1000, 1500);
> >  	if (timeout) {
> >  		dev_err(iss->dev, "ISP5 reset timeout\n");
> >  		return -ETIMEDOUT;
> > @@ -964,7 +966,8 @@ iss_register_subdev_group(struct iss_device *iss,
> >  		}
> >
> >  		subdev = v4l2_i2c_new_subdev_board(&iss->v4l2_dev, adapter,
> > -				board_info->board_info, NULL);
> > +						   board_info->board_info,
> > +						   NULL);
> >  		if (!subdev) {
> >  			dev_err(iss->dev, "Unable to register subdev %s\n",
> >  				board_info->board_info->type);
> > @@ -1108,33 +1111,38 @@ static int iss_create_links(struct iss_device *iss)
> >  	}
> >
> >  	/* Connect the submodules. */
> > -	ret = media_create_pad_link(
> > -			&iss->csi2a.subdev.entity, CSI2_PAD_SOURCE,
> > -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
> > +	ret = media_create_pad_link(&iss->csi2a.subdev.entity,
> > +				    CSI2_PAD_SOURCE,
> > +				    &iss->ipipeif.subdev.entity,
> > +				    IPIPEIF_PAD_SINK, 0);
> >  	if (ret < 0)
> >  		return ret;
> >
> > -	ret = media_create_pad_link(
> > -			&iss->csi2b.subdev.entity, CSI2_PAD_SOURCE,
> > -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
> > +	ret = media_create_pad_link(&iss->csi2b.subdev.entity,
> > +				    CSI2_PAD_SOURCE,
> > +				    &iss->ipipeif.subdev.entity,
> > +				    IPIPEIF_PAD_SINK, 0);
> >  	if (ret < 0)
> >  		return ret;
> >
> > -	ret = media_create_pad_link(
> > -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
> > -			&iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
> > +	ret = media_create_pad_link(&iss->ipipeif.subdev.entity,
> > +				    IPIPEIF_PAD_SOURCE_VP,
> > +				    &iss->resizer.subdev.entity,
> > +				    RESIZER_PAD_SINK, 0);
> >  	if (ret < 0)
> >  		return ret;
> >
> > -	ret = media_create_pad_link(
> > -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
> > -			&iss->ipipe.subdev.entity, IPIPE_PAD_SINK, 0);
> > +	ret = media_create_pad_link(&iss->ipipeif.subdev.entity,
> > +				    IPIPEIF_PAD_SOURCE_VP,
> > +				    &iss->ipipe.subdev.entity,
> > +				    IPIPE_PAD_SINK, 0);
> >  	if (ret < 0)
> >  		return ret;
> >
> > -	ret = media_create_pad_link(
> > -			&iss->ipipe.subdev.entity, IPIPE_PAD_SOURCE_VP,
> > -			&iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
> > +	ret = media_create_pad_link(&iss->ipipe.subdev.entity,
> > +				    IPIPE_PAD_SOURCE_VP,
> > +				    &iss->resizer.subdev.entity,
> > +				    RESIZER_PAD_SINK, 0);
> >  	if (ret < 0)
> >  		return ret;
> >
> > diff --git a/drivers/staging/media/omap4iss/iss_csi2.c b/drivers/staging/media/omap4iss/iss_csi2.c
> > index a6dc2d2b1228..cd705df04f6c 100644
> > --- a/drivers/staging/media/omap4iss/iss_csi2.c
> > +++ b/drivers/staging/media/omap4iss/iss_csi2.c
> > @@ -495,9 +495,9 @@ int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
> >  	iss_reg_set(csi2->iss, csi2->regs1, CSI2_SYSCONFIG,
> >  		    CSI2_SYSCONFIG_SOFT_RESET);
> >
> > -	timeout = iss_poll_condition_timeout(
> > -		iss_reg_read(csi2->iss, csi2->regs1, CSI2_SYSSTATUS) &
> > -		CSI2_SYSSTATUS_RESET_DONE, 500, 100, 200);
> > +	timeout = iss_poll_condition_timeout(iss_reg_read(csi2->iss,
> > +				csi2->regs1, CSI2_SYSSTATUS) &
> > +				CSI2_SYSSTATUS_RESET_DONE, 500, 100, 200);
> >  	if (timeout) {
> >  		dev_err(csi2->iss->dev, "CSI2: Soft reset timeout!\n");
> >  		return -EBUSY;
> > @@ -506,9 +506,9 @@ int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
> >  	iss_reg_set(csi2->iss, csi2->regs1, CSI2_COMPLEXIO_CFG,
> >  		    CSI2_COMPLEXIO_CFG_RESET_CTRL);
> >
> > -	timeout = iss_poll_condition_timeout(
> > -		iss_reg_read(csi2->iss, csi2->phy->phy_regs, REGISTER1) &
> > -		REGISTER1_RESET_DONE_CTRLCLK, 10000, 100, 500);
> > +	timeout = iss_poll_condition_timeout(iss_reg_read(csi2->iss,
> > +				csi2->phy->phy_regs, REGISTER1) &
> > +				REGISTER1_RESET_DONE_CTRLCLK, 10000, 100, 500);
> >  	if (timeout) {
> >  		dev_err(csi2->iss->dev, "CSI2: CSI2_96M_FCLK reset timeout!\n");
> >  		return -EBUSY;

-- 
Regards,

Laurent Pinchart

