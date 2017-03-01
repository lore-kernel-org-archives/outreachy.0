X-GM-THRID: 6392511932367110144
X-Received: by 10.46.88.70 with SMTP id x6mr1089329ljd.22.1488383950029;
        Wed, 01 Mar 2017 07:59:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.221 with SMTP id e90ls103789lji.30.gmail; Wed, 01 Mar
 2017 07:59:09 -0800 (PST)
X-Received: by 10.25.234.202 with SMTP id y71mr1017631lfi.2.1488383949384;
        Wed, 01 Mar 2017 07:59:09 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id v201si376279wmv.3.2017.03.01.07.59.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 07:59:09 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id l37so6085608wrc.3
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 07:59:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NOVfW88fVmeJCz80egT86EfcV2m6xsDDNfvrDu+mOcs=;
        b=g6OGokZEm8OW5NiouGrW/5HIsMze7ECi1gLuHeU3yd8+32qekdtzRTwkqkG1TmJwEh
         /pz742sOnHsby4XdQb1Up8C0OjR1tsZo8xzJ/X/KX9QmKAcucx/vRfPTuj+XCh0Ei5ch
         PvmIkTEDmRlxJqyBg8zl1fdmDDyQAHo4cgMVEjUdW7DPEJWsQIjQyQ/eKdQ70VSYgtVt
         +T5IusLsT0X2XFKc/B50CuOK40KeJpi/4oWLGyWi7XgndeX7vQ//YX+oN/ePtACOFCmO
         oXvNgKEZRoHpmN34zFuVEsnI9uZ10aUnYKwwLRSISNETMJQyVaFD0qtgEbx+c+GOw3L9
         icRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=NOVfW88fVmeJCz80egT86EfcV2m6xsDDNfvrDu+mOcs=;
        b=B3Oqc/ftoYG6VCydVjUFND9f6gp8rf6yu1+8s+bnJCgEJwlcuXpe0J+IO51P4YCweC
         2VSaMqV8w8DIeINnJkpp+69YHNKu4oI2x8+DohJM/C4lBBaKT459UP5lvxCEfO62IwiL
         Snv1jt1w8TI4PQ1RXrdTDpqZ7RDAOEknfg+O4no78H5+u8OmtmpUyS4qo9pRa3ZUso/u
         B/x4hKA1QWaZTykdiPOf+l1wpLDzsILGY+Vy0D/KOLJrAhZZMjgSPnC7tUPLh38JegbC
         Eo99cR6mxJfq0rlZLHofSWv03+A0E8AvwcDm1DXkirVwpchf5R21YcWzTE2x5kruqo3Q
         MPmg==
X-Gm-Message-State: AMke39nCOeJ1md3Hqge7KtPrH8xFCKbU95ELg9sVDZxs/qSicJmQZy0o2h5/dRXyuxWfUA==
X-Received: by 10.223.164.83 with SMTP id e19mr7770209wra.201.1488383949178;
        Wed, 01 Mar 2017 07:59:09 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from nati-X550JK (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id k10sm7514479wmg.10.2017.03.01.07.59.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 07:59:08 -0800 (PST)
Date: Wed, 1 Mar 2017 17:59:07 +0200
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: swarren@wwwdotorg.org, lee@kernel.org, eric@anholt.net,
	gregkh@linuxfoundation.org, f.fainelli@gmail.com, rjui@broadcom.com,
	sbranden@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: vc04_services:
 bcm2835-camera: Remove unnecessary variable
Message-ID: <20170301155906.GA20400@nati-X550JK>
References: <cover.1488371940.git.narcisaanamaria12@gmail.com>
 <c49c187ff219c61323b25f01ab3f051950ae507a.1488371940.git.narcisaanamaria12@gmail.com>
 <alpine.DEB.2.20.1703011401510.3941@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703011401510.3941@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Mar 01, 2017 at 02:02:39PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 1 Mar 2017, Narcisa Ana Maria Vasile wrote:
> 
> > Instead of using the ret variable, return 0 directly
> >
> > Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> > ---
> >  drivers/staging/vc04_services/bcm2835-camera/controls.c | 12 +++++-------
> >  1 file changed, 5 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
> > index dcd5bec..e25f1c9 100644
> > --- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
> > +++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
> > @@ -609,18 +609,16 @@ static int ctrl_set_bitrate(struct bm2835_mmal_dev *dev,
> >  			    struct v4l2_ctrl *ctrl,
> >  			    const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl)
> >  {
> > -	int ret;
> >  	struct vchiq_mmal_port *encoder_out;
> >
> >  	dev->capture.encode_bitrate = ctrl->val;
> >
> >  	encoder_out = &dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->output[0];
> >
> > -	ret = vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
> > -					    mmal_ctrl->mmal_id,
> > -					    &ctrl->val, sizeof(ctrl->val));
> > -	ret = 0;
> > -	return ret;
> > +	vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
> > +				      mmal_ctrl->mmal_id,
> > +				      &ctrl->val, sizeof(ctrl->val));
> > +	return 0;
> >  }
> >
> >  static int ctrl_set_bitrate_mode(struct bm2835_mmal_dev *dev,
> > @@ -862,7 +860,7 @@ static int ctrl_set_scene_mode(struct bm2835_mmal_dev *dev,
> >
> >  		if (scene->exposure_mode == MMAL_PARAM_EXPOSUREMODE_OFF)
> >  			shutter_speed = dev->manual_shutter_speed;
> > -
> > +
> 
> Something went wrong here.  It's fine to fi the whitespace issue, but it
> should be a separate patch.
> 
> julia
>
  So, should I send a separate patch which solves the problem as in
  PATCH 2/2 (removes the ret variable and returns directly) or is this
  an unnecessary change? I'm not sure I understand what the whitespace
  issue is. 

  Narcisa
> >  		exposure_mode = scene->exposure_mode;
> >  		metering_mode = scene->metering_mode;
> >
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c49c187ff219c61323b25f01ab3f051950ae507a.1488371940.git.narcisaanamaria12%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

