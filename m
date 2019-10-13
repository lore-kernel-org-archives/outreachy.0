X-GM-THRID: 6746727664104505344
X-Received: by 2002:a5d:66c7:: with SMTP id k7mr20641704wrw.210.1570961270910;
        Sun, 13 Oct 2019 03:07:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:c6:: with SMTP id q6ls4338455wrx.9.gmail; Sun, 13
 Oct 2019 03:07:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx7ZS1ve40Me/a3EGT3sWBpnbfzp/Ju8jEPxhg44VnIwOMS+TSpLS5qostExXLUXveuPNRB
X-Received: by 2002:adf:ea0a:: with SMTP id q10mr21722682wrm.317.1570961269756;
        Sun, 13 Oct 2019 03:07:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570961269; cv=none;
        d=google.com; s=arc-20160816;
        b=qtJ0+9tlbNIk15e8zUJievBDnX/d4oVg4nPwHJIqSD7P9jFlN2YXjVplHB2QKk6XDd
         0VlGWtupfps0SdPA1y3BkNGhGdQrvWcjlT+uNWIBTiyFrxpqdz3mTlDq5RxJCXdC1Sao
         VgqoZIaznqoVAtrBOHBxzoj6FD4PZlpYQR8glt1a3JU8Pt3t0BfAahBnm4B9XoaYpwX9
         CuZ0QIQkntK2ZF7Vq4HtAQJ34VbBE9DDSvhZkcSC5HDlDGXX0d59GpTnP4NfCy0N+YgT
         0kRJi8Wr7hQe/eDuDAPJpiLzmzfI3aw1I0PKTux0sKGsQyZk3avj/sGcrCKWW0VQLILV
         3ONw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CefY/39l6Z6t/gSGMqqoV1nbxY7SHG2Gc+ZAvFUz2h0=;
        b=E6/k4F94aMUzUEaN4AY5NP/iN8ATRBoVCMRq/N4m3Bmyb9Jyk2YijtQyLYhWwgEYde
         eocoR07KwT6bS/9BR5yG+RE1BhPYHmUO+EnmIO5sGKscPmd8OH0yc77jAq4jlozuUXAi
         E/9bVIUnYT4cX+X2FAJcg86CF3jqyXOHtBJJkv2O0H3CN5eeH47N5rD20ZURLPMbsw+T
         +ZqSLShD7XDtivD3CJAXA+1tkCv815drhtxvNrr/XNxFXtceJxiwDRkHeu4P5fju1/vZ
         DKSXcPXH+A++Rvevj10kRlnfIaY3beY2dM1PtdPugaI8KXUY7408SOPF3rkx6YDWsb24
         FWGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=fctI1aP8;
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com. [213.167.242.64])
        by gmr-mx.google.com with ESMTPS id a133si1222714wma.4.2019.10.13.03.07.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 13 Oct 2019 03:07:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) client-ip=213.167.242.64;
Authentication-Results: gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=fctI1aP8;
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Received: from pendragon.ideasonboard.com (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 762E571D;
	Sun, 13 Oct 2019 12:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1570961268;
	bh=3mmeBBkJNBSCsSIDPbISITDMV3k23kCZn3g08rIK5sg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fctI1aP8/hoCDygoMkirW1PonEbf25QCJxX7f7Dsaq06Kt6KqSMO1CWb1WkYyDXGg
	 wUdeEm5Hdbobr2AbIyH000Ab/KYgRKCEXC5g8Ci1JaB4jeuaaX0NXij4KczNxDJUAU
	 nUf6vZa7fXIHed7YjiM9z3P9ylScr/PIgiAVBQdQ=
Date: Sun, 13 Oct 2019 13:07:45 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, boqun.feng@microsoft.com,
	andrea.parri@microsoft.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: media: omap4iss: Fix
 lines ending with open parenthesis
Message-ID: <20191013100745.GA4886@pendragon.ideasonboard.com>
References: <20191012233148.2891-1-jamal.k.shareef@gmail.com>
 <alpine.DEB.2.21.1910130658150.3260@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910130658150.3260@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hello Jamal,

Thank you for the patch.

On Sun, Oct 13, 2019 at 06:58:43AM +0200, Julia Lawall wrote:
> On Sat, 12 Oct 2019, Jamal Shareef wrote:
> > Fix lines ending with open parenthesis. Issue
> > found by checkpatch.
> >
> > Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> > ---
> > Changes in v2:
> >  - Include similar changes in iss.c file.
> >  - Create local variables for iss_reg_read
> >    function calls for better code formatting.
> 
> The second point is a change in the code.  It should have been mentioned
> above the --- as well.

Not only is it a change in the code, but it also breaks it :-) The local
variables have a fixed value, while the conditions were being evaluated
for every iteration of the iss_poll_condition_timeout() macro. I like
thc changes in iss_register_subdev_group() and iss_create_links()
though.

> > ---
> >  drivers/staging/media/omap4iss/iss.c      | 58 +++++++++++++----------
> >  drivers/staging/media/omap4iss/iss_csi2.c | 14 +++---
> >  2 files changed, 41 insertions(+), 31 deletions(-)
> >
> > diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
> > index 1a966cb2f3a6..7028738b2552 100644
> > --- a/drivers/staging/media/omap4iss/iss.c
> > +++ b/drivers/staging/media/omap4iss/iss.c
> > @@ -555,13 +555,14 @@ static int iss_pipeline_is_last(struct media_entity *me)
> >  static int iss_reset(struct iss_device *iss)
> >  {
> >  	unsigned int timeout;
> > +	u32 reg_config = iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG);
> >
> >  	iss_reg_set(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG,
> >  		    ISS_HL_SYSCONFIG_SOFTRESET);
> >
> > -	timeout = iss_poll_condition_timeout(
> > -		!(iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
> > -		ISS_HL_SYSCONFIG_SOFTRESET), 1000, 10, 100);
> > +	timeout =
> > +	iss_poll_condition_timeout(!(reg_config & ISS_HL_SYSCONFIG_SOFTRESET),
> > +				   1000, 10, 100);
> >  	if (timeout) {
> >  		dev_err(iss->dev, "ISS reset timeout\n");
> >  		return -ETIMEDOUT;
> > @@ -575,6 +576,9 @@ static int iss_reset(struct iss_device *iss)
> >  static int iss_isp_reset(struct iss_device *iss)
> >  {
> >  	unsigned int timeout;
> > +	u32 reg_ctrl = iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL);
> > +	u32 reg_config = iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1,
> > +				      ISP5_SYSCONFIG);
> >
> >  	/* Fist, ensure that the ISP is IDLE (no transactions happening) */
> >  	iss_reg_update(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG,
> > @@ -583,9 +587,9 @@ static int iss_isp_reset(struct iss_device *iss)
> >
> >  	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL, ISP5_CTRL_MSTANDBY);
> >
> > -	timeout = iss_poll_condition_timeout(
> > -		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL) &
> > -		ISP5_CTRL_MSTANDBY_WAIT, 1000000, 1000, 1500);
> > +	timeout =
> > +	iss_poll_condition_timeout(reg_ctrl & ISP5_CTRL_MSTANDBY_WAIT,
> > +				   1000000, 1000, 1500);
> >  	if (timeout) {
> >  		dev_err(iss->dev, "ISP5 standby timeout\n");
> >  		return -ETIMEDOUT;
> > @@ -595,9 +599,9 @@ static int iss_isp_reset(struct iss_device *iss)
> >  	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG,
> >  		    ISP5_SYSCONFIG_SOFTRESET);
> >
> > -	timeout = iss_poll_condition_timeout(
> > -		!(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG) &
> > -		ISP5_SYSCONFIG_SOFTRESET), 1000000, 1000, 1500);
> > +	timeout =
> > +	iss_poll_condition_timeout(!(reg_config & ISP5_SYSCONFIG_SOFTRESET),
> > +				   1000000, 1000, 1500);
> >  	if (timeout) {
> >  		dev_err(iss->dev, "ISP5 reset timeout\n");
> >  		return -ETIMEDOUT;
> > @@ -964,7 +968,8 @@ iss_register_subdev_group(struct iss_device *iss,
> >  		}
> >
> >  		subdev = v4l2_i2c_new_subdev_board(&iss->v4l2_dev, adapter,
> > -				board_info->board_info, NULL);
> > +						   board_info->board_info,
> > +						   NULL);
> >  		if (!subdev) {
> >  			dev_err(iss->dev, "Unable to register subdev %s\n",
> >  				board_info->board_info->type);
> > @@ -1108,33 +1113,36 @@ static int iss_create_links(struct iss_device *iss)
> >  	}
> >
> >  	/* Connect the submodules. */
> > -	ret = media_create_pad_link(
> > -			&iss->csi2a.subdev.entity, CSI2_PAD_SOURCE,
> > -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
> > +	ret = media_create_pad_link(&iss->csi2a.subdev.entity, CSI2_PAD_SOURCE,
> > +				    &iss->ipipeif.subdev.entity,
> > +				    IPIPEIF_PAD_SINK, 0);
> >  	if (ret < 0)
> >  		return ret;
> >
> > -	ret = media_create_pad_link(
> > -			&iss->csi2b.subdev.entity, CSI2_PAD_SOURCE,
> > -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
> > +	ret = media_create_pad_link(&iss->csi2b.subdev.entity, CSI2_PAD_SOURCE,
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
> > index a6dc2d2b1228..4ba6f8a3c77d 100644
> > --- a/drivers/staging/media/omap4iss/iss_csi2.c
> > +++ b/drivers/staging/media/omap4iss/iss_csi2.c
> > @@ -485,6 +485,8 @@ static void csi2_irq_status_set(struct iss_csi2_device *csi2, int enable)
> >  int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
> >  {
> >  	unsigned int timeout;
> > +	u32 reg_status = iss_reg_read(csi2->iss, csi2->regs1, CSI2_SYSSTATUS);
> > +	u32 reg_reg1 = iss_reg_read(csi2->iss, csi2->phy->phy_regs, REGISTER1);
> >
> >  	if (!csi2->available)
> >  		return -ENODEV;
> > @@ -495,9 +497,9 @@ int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
> >  	iss_reg_set(csi2->iss, csi2->regs1, CSI2_SYSCONFIG,
> >  		    CSI2_SYSCONFIG_SOFT_RESET);
> >
> > -	timeout = iss_poll_condition_timeout(
> > -		iss_reg_read(csi2->iss, csi2->regs1, CSI2_SYSSTATUS) &
> > -		CSI2_SYSSTATUS_RESET_DONE, 500, 100, 200);
> > +	timeout =
> > +	iss_poll_condition_timeout(reg_status & CSI2_SYSSTATUS_RESET_DONE,
> > +				   500, 100, 200);
> >  	if (timeout) {
> >  		dev_err(csi2->iss->dev, "CSI2: Soft reset timeout!\n");
> >  		return -EBUSY;
> > @@ -506,9 +508,9 @@ int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
> >  	iss_reg_set(csi2->iss, csi2->regs1, CSI2_COMPLEXIO_CFG,
> >  		    CSI2_COMPLEXIO_CFG_RESET_CTRL);
> >
> > -	timeout = iss_poll_condition_timeout(
> > -		iss_reg_read(csi2->iss, csi2->phy->phy_regs, REGISTER1) &
> > -		REGISTER1_RESET_DONE_CTRLCLK, 10000, 100, 500);
> > +	timeout =
> > +	iss_poll_condition_timeout(reg_reg1 & REGISTER1_RESET_DONE_CTRLCLK,
> > +				   10000, 100, 500);
> >  	if (timeout) {
> >  		dev_err(csi2->iss->dev, "CSI2: CSI2_96M_FCLK reset timeout!\n");
> >  		return -EBUSY;

-- 
Regards,

Laurent Pinchart

