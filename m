X-GM-THRID: 6746727664104505344
X-Received: by 2002:aca:cc51:: with SMTP id c78mr893399oig.1.1571180841291;
        Tue, 15 Oct 2019 16:07:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:1383:: with SMTP id d3ls3639994otq.0.gmail; Tue, 15
 Oct 2019 16:07:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxzmjJIUkWQvfW5vUpwi2xWHvSAxHsAF3i2n5qe3eLeKDLJxpbplXBZolWbrmmAGn5koqdS
X-Received: by 2002:a05:6830:1685:: with SMTP id k5mr15343830otr.203.1571180840216;
        Tue, 15 Oct 2019 16:07:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571180840; cv=none;
        d=google.com; s=arc-20160816;
        b=XPe8VIbeBkHgWTaA/ynrdUaP9TMQPsfvzAV/3GrEak9lFr3vR+xzwuSsIgQDIHJa+u
         /veT4hiJrlGxVGhIr5FogQdC9ou3lxpY5X51rBH+d86Rmgxrhstbmzcpy0opW0M4YnjY
         B9RdtGb9VylWX6UNSX9dam8+mzL4TmnbE86lGtWbxVgKzfR0wsK6JByAlZ/Bj6GrUyIX
         allpu5O0uVLF16FT5iDCJBXygtFMVOwoWYak7NbGiknPnaKgB9n5CfPgkrqBI5HxKjP0
         SMYFUJro988Wvkht2mYWBYqnN1kMRAQdTzR5k2SK1ruPyaWreDjye5hw1Z0JhuE+xIjV
         V5xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=GFOCF4MIsm/WbBfBL4pQ8ja9d5BDq93pOGFSAKdcPpQ=;
        b=fCbgMwuRpuODW+tWVRr9TF9HNveIEQvTGdAQIq/7CJD/INfsmTzEMP3OMQoYrnMKKg
         m+qO5p53aGVCqq2Ka0aEUS7UW9cLWcvuv/KjSzysbO+z8i+Rol1GicBj72BaWEtjPzCG
         ue2UL4MR7ZdW5KviMsnQEf8EP3sA5AnO5D2GsLqpHy1p4MjAx6uPCjkMos23GcLXFaLa
         9/tUwuoWmJKF3TiAIOm2ghQ+UjsokXSprVHYOQpxEO+ttezSc5J2qHsXElKA6qKvWI2B
         Fbl7XlKydaO6+xsaXbPLSu1Wf8VcUq08R+Sl+VkqkS36bxjXYW8fzJprdOpmdvlNAX4b
         n9nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jOHeCWbt;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id k184si628864oih.0.2019.10.15.16.07.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2019 16:07:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jOHeCWbt;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id f14so7938494pgi.9
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Oct 2019 16:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=GFOCF4MIsm/WbBfBL4pQ8ja9d5BDq93pOGFSAKdcPpQ=;
        b=jOHeCWbtrHDyywtgZl8/jfIz0s6H94QYPOka3hOSUxGSR2gBEf5PQVfGxvrwUpLJ3B
         8IPqRL/P6yrbYc3x1vIUZ2rU5q16AuVGU2PsdkGxMBYLFKiJv0+3/maa1Ib4JIHbhMz/
         7y8nZB4awr/XblHsQ/IDAyEsBKdLEC158DYZC7BSO0bU7E2AO9RdGG09sMwllgEIUu+k
         RQ/30NpGnULmfZ0MTqoekTtXA3Fd1XM3rkMsQ+u+RaalT2k/2nvCNikC3d1uFLPd8+6D
         uW9WHjptuI3BN38eAn4M/Rixj8WjbdfzIj7a1DHLIv1y35+fgpDgP7xo2BBVt8X/v2K7
         HcEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=GFOCF4MIsm/WbBfBL4pQ8ja9d5BDq93pOGFSAKdcPpQ=;
        b=Y+f/B8EAgtXHgCMioQxEmxPrgCAuDoG7MtvTNekgEX315qaCZz2n3REZBuIDSiH77b
         V9LMkbV3WQofIMZ8soqrzGwCnXkCkFYQJTeQ3nt9vWg2bezuRIUPCufIAmoRIwgsfYok
         Fc8cA4wP1LzF++fCXYILFlWe665g4OLve0t+4l9ZkusSV9MnyAIDP44rP6UY+XgxQBut
         TUUTDesLfwIWDeRJ4p8aNOxa66NhymmYWu7kQTYUoTthMJ8cyAGcaHKHRBmoW6YlNw/Q
         gqEPUwCMjRhLQQATTBzEJzSeyEtpbk08iDr+vWuq4E98JiimfrIBCjMAbQgeXAipPppv
         rylg==
X-Gm-Message-State: APjAAAU/+DCz/2tQ8ieGRw6rt25Gx+xuymmzpFyYQEbZ3TzBcqtf83tK
	yZW/tqqEja0B5Awy7ZNQ/xc=
X-Received: by 2002:a63:b5b:: with SMTP id a27mr23574130pgl.262.1571180839203;
        Tue, 15 Oct 2019 16:07:19 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id w10sm342478pjq.3.2019.10.15.16.07.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2019 16:07:17 -0700 (PDT)
Date: Tue, 15 Oct 2019 16:07:16 -0700
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, boqun.feng@microsoft.com,
	andrea.parri@microsoft.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Joe Perches <joe@perches.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: media: omap4iss: Fix
 lines ending with open parenthesis
Message-ID: <20191015230716.GA22255@jamal-XPS-13-9343>
References: <20191014055308.GA1069@jamal-XPS-13-9343>
 <alpine.DEB.2.21.1910140806460.2865@hadrien>
 <20191014222137.GL23442@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191014222137.GL23442@pendragon.ideasonboard.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Oct 15, 2019 at 01:21:37AM +0300, Laurent Pinchart wrote:
> Hello Jamal and Julia,
> 
> On Mon, Oct 14, 2019 at 08:10:30AM +0200, Julia Lawall wrote:
> > On Sun, 13 Oct 2019, Jamal Shareef wrote:
> > > Fix lines ending with open parenthesis. Issue
> > > found by checkpatch.
> > >
> > > Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> > > ---
> > > Changes in v3:
> > >  - Remove created local variables and revert
> > >    back to original function calls because intent
> > >    is to dynamically poll the value.
> > >  - Format code for better readability. This
> > >    introduces new warning for "alignment should
> > >    match open parenthesis" but will be disregarded.
> > >
> > > Changes in v2:
> > >  - Include similar changes in iss.c file.
> > >  - Create local variables for iss_reg_read
> > >    function calls for better code formatting.
> > > ---
> > >  drivers/staging/media/omap4iss/iss.c      | 58 +++++++++++++----------
> > >  drivers/staging/media/omap4iss/iss_csi2.c | 12 ++---
> > >  2 files changed, 39 insertions(+), 31 deletions(-)
> > >
> > > diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
> > > index 1a966cb2f3a6..9112eb89b7c0 100644
> > > --- a/drivers/staging/media/omap4iss/iss.c
> > > +++ b/drivers/staging/media/omap4iss/iss.c
> > > @@ -559,9 +559,10 @@ static int iss_reset(struct iss_device *iss)
> > >  	iss_reg_set(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG,
> > >  		    ISS_HL_SYSCONFIG_SOFTRESET);
> > >
> > > -	timeout = iss_poll_condition_timeout(
> > > -		!(iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
> > > -		ISS_HL_SYSCONFIG_SOFTRESET), 1000, 10, 100);
> > > +	timeout = iss_poll_condition_timeout(!(iss_reg_read(iss,
> > > +					OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
> > > +					ISS_HL_SYSCONFIG_SOFTRESET),
> > > +					1000, 10, 100);
> > 
> > There is indeed something unpleasant about something that looks like a
> > function call, but it actually a while loop.  Perhaps the word "poll" is
> > supposed to be sufficiently suggestive of loopness.
> 
> It's similar to the wait_event_* family of macros from
> include/linux/wait.h. Not ideal, I agree, but C has its limitations :-)
> 
> > In the proposed code, it is very hard to see what argument goes with what.
> > Perhaps an improvement for the original code would be to leave the first
> > argument on a new line as it is, but move the ISS_HL_SYSCONFIG_SOFTRESET
> > over 2 spaces so that it is lined up with what it is anded with, and then
> > put the 1000 etc on a line below, lines up with the !, so that it is clear
> > that they are not part of the polling condition.
> 
> We could also define helper functions to perform the checks. Something
> along the line of
> 
> static bool iss_reset_done(struct iss_device *iss)
> {
> 	return !(iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
> 		 ISS_HL_SYSCONFIG_SOFTRESET);
> }
> 
> Then the code in iss_reset() could be written as
> 
> 	timeout = iss_poll_condition_timeout(iss_reset_done(iss),
> 					     1000, 10, 100);
> 

This would simplify things a lot. We would have to pass in arguments
(or have multiple helper functions) for the memory resource and offset
because the function will be called differently in the two cases.

Another function also may be necessary for the idle check which 
does not have the "!" operator.

I am open to either way of tidying this up - helper function
or adjusting the spacing a bit.

Would this modification to the helper function and specific calls
in the proceeding functions work?

****
static bool iss_reset_done(struct iss_device *iss, enum iss_mem_resources res,
                 u32 offset)
{
        return !(iss_reg_read(iss, res, offset) &
                 ISS_HL_SYSCONFIG_SOFTRESET);
}

{
 ...
	enum iss_mem_resources res = OMAP4_ISS_MEM_TOP;
	u32 offset = ISS_HL_SYSCONFIG;
        timeout = iss_poll_condition_timeout(!iss_reset_done(iss, res, offset),
					     1000, 10, 100);
 ...

****
There is some repetitive code here, and I did yet not account for the
different SOFTRESET or STANDBY functions. It might not be worth the
effort.

Jamal
> > >  	if (timeout) {
> > >  		dev_err(iss->dev, "ISS reset timeout\n");
> > >  		return -ETIMEDOUT;
> > > @@ -583,9 +584,9 @@ static int iss_isp_reset(struct iss_device *iss)
> > >
> > >  	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL, ISP5_CTRL_MSTANDBY);
> > >
> > > -	timeout = iss_poll_condition_timeout(
> > > -		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL) &
> > > -		ISP5_CTRL_MSTANDBY_WAIT, 1000000, 1000, 1500);
> > > +	timeout = iss_poll_condition_timeout(iss_reg_read(iss,
> > > +				OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL) &
> > > +				ISP5_CTRL_MSTANDBY_WAIT, 1000000, 1000, 1500);
> > >  	if (timeout) {
> > >  		dev_err(iss->dev, "ISP5 standby timeout\n");
> > >  		return -ETIMEDOUT;
> > > @@ -595,9 +596,10 @@ static int iss_isp_reset(struct iss_device *iss)
> > >  	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG,
> > >  		    ISP5_SYSCONFIG_SOFTRESET);
> > >
> > > -	timeout = iss_poll_condition_timeout(
> > > -		!(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG) &
> > > -		ISP5_SYSCONFIG_SOFTRESET), 1000000, 1000, 1500);
> > > +	timeout = iss_poll_condition_timeout(!(iss_reg_read(iss,
> > > +					OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG)
> > > +					& ISP5_SYSCONFIG_SOFTRESET),
> > > +					1000000, 1000, 1500);
> > >  	if (timeout) {
> > >  		dev_err(iss->dev, "ISP5 reset timeout\n");
> > >  		return -ETIMEDOUT;
> > > @@ -964,7 +966,8 @@ iss_register_subdev_group(struct iss_device *iss,
> > >  		}
> > >
> > >  		subdev = v4l2_i2c_new_subdev_board(&iss->v4l2_dev, adapter,
> > > -				board_info->board_info, NULL);
> > > +						   board_info->board_info,
> > > +						   NULL);
> > >  		if (!subdev) {
> > >  			dev_err(iss->dev, "Unable to register subdev %s\n",
> > >  				board_info->board_info->type);
> > > @@ -1108,33 +1111,38 @@ static int iss_create_links(struct iss_device *iss)
> > >  	}
> > >
> > >  	/* Connect the submodules. */
> > > -	ret = media_create_pad_link(
> > > -			&iss->csi2a.subdev.entity, CSI2_PAD_SOURCE,
> > > -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
> > > +	ret = media_create_pad_link(&iss->csi2a.subdev.entity,
> > > +				    CSI2_PAD_SOURCE,
> > > +				    &iss->ipipeif.subdev.entity,
> > > +				    IPIPEIF_PAD_SINK, 0);
> > >  	if (ret < 0)
> > >  		return ret;
> > >
> > > -	ret = media_create_pad_link(
> > > -			&iss->csi2b.subdev.entity, CSI2_PAD_SOURCE,
> > > -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
> > > +	ret = media_create_pad_link(&iss->csi2b.subdev.entity,
> > > +				    CSI2_PAD_SOURCE,
> > > +				    &iss->ipipeif.subdev.entity,
> > > +				    IPIPEIF_PAD_SINK, 0);
> > >  	if (ret < 0)
> > >  		return ret;
> > >
> > > -	ret = media_create_pad_link(
> > > -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
> > > -			&iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
> > > +	ret = media_create_pad_link(&iss->ipipeif.subdev.entity,
> > > +				    IPIPEIF_PAD_SOURCE_VP,
> > > +				    &iss->resizer.subdev.entity,
> > > +				    RESIZER_PAD_SINK, 0);
> > >  	if (ret < 0)
> > >  		return ret;
> > >
> > > -	ret = media_create_pad_link(
> > > -			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
> > > -			&iss->ipipe.subdev.entity, IPIPE_PAD_SINK, 0);
> > > +	ret = media_create_pad_link(&iss->ipipeif.subdev.entity,
> > > +				    IPIPEIF_PAD_SOURCE_VP,
> > > +				    &iss->ipipe.subdev.entity,
> > > +				    IPIPE_PAD_SINK, 0);
> > >  	if (ret < 0)
> > >  		return ret;
> > >
> > > -	ret = media_create_pad_link(
> > > -			&iss->ipipe.subdev.entity, IPIPE_PAD_SOURCE_VP,
> > > -			&iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
> > > +	ret = media_create_pad_link(&iss->ipipe.subdev.entity,
> > > +				    IPIPE_PAD_SOURCE_VP,
> > > +				    &iss->resizer.subdev.entity,
> > > +				    RESIZER_PAD_SINK, 0);
> > >  	if (ret < 0)
> > >  		return ret;
> > >
> > > diff --git a/drivers/staging/media/omap4iss/iss_csi2.c b/drivers/staging/media/omap4iss/iss_csi2.c
> > > index a6dc2d2b1228..cd705df04f6c 100644
> > > --- a/drivers/staging/media/omap4iss/iss_csi2.c
> > > +++ b/drivers/staging/media/omap4iss/iss_csi2.c
> > > @@ -495,9 +495,9 @@ int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
> > >  	iss_reg_set(csi2->iss, csi2->regs1, CSI2_SYSCONFIG,
> > >  		    CSI2_SYSCONFIG_SOFT_RESET);
> > >
> > > -	timeout = iss_poll_condition_timeout(
> > > -		iss_reg_read(csi2->iss, csi2->regs1, CSI2_SYSSTATUS) &
> > > -		CSI2_SYSSTATUS_RESET_DONE, 500, 100, 200);
> > > +	timeout = iss_poll_condition_timeout(iss_reg_read(csi2->iss,
> > > +				csi2->regs1, CSI2_SYSSTATUS) &
> > > +				CSI2_SYSSTATUS_RESET_DONE, 500, 100, 200);
> > >  	if (timeout) {
> > >  		dev_err(csi2->iss->dev, "CSI2: Soft reset timeout!\n");
> > >  		return -EBUSY;
> > > @@ -506,9 +506,9 @@ int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
> > >  	iss_reg_set(csi2->iss, csi2->regs1, CSI2_COMPLEXIO_CFG,
> > >  		    CSI2_COMPLEXIO_CFG_RESET_CTRL);
> > >
> > > -	timeout = iss_poll_condition_timeout(
> > > -		iss_reg_read(csi2->iss, csi2->phy->phy_regs, REGISTER1) &
> > > -		REGISTER1_RESET_DONE_CTRLCLK, 10000, 100, 500);
> > > +	timeout = iss_poll_condition_timeout(iss_reg_read(csi2->iss,
> > > +				csi2->phy->phy_regs, REGISTER1) &
> > > +				REGISTER1_RESET_DONE_CTRLCLK, 10000, 100, 500);
> > >  	if (timeout) {
> > >  		dev_err(csi2->iss->dev, "CSI2: CSI2_96M_FCLK reset timeout!\n");
> > >  		return -EBUSY;
> 
> -- 
> Regards,
> 
> Laurent Pinchart

