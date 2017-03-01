X-GM-THRID: 6392511932367110144
X-Received: by 10.25.234.202 with SMTP id y71mr1166067lfi.2.1488399025420;
        Wed, 01 Mar 2017 12:10:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.71 with SMTP id 68ls495687ljf.34.gmail; Wed, 01 Mar 2017
 12:10:24 -0800 (PST)
X-Received: by 10.25.199.212 with SMTP id x203mr1241976lff.9.1488399024575;
        Wed, 01 Mar 2017 12:10:24 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v70si649410wmf.0.2017.03.01.12.10.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 12:10:24 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,227,1484002800"; 
   d="scan'208";a="215223844"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2017 21:10:23 +0100
Date: Wed, 1 Mar 2017 21:10:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, swarren@wwwdotorg.org, lee@kernel.org, 
    eric@anholt.net, gregkh@linuxfoundation.org, f.fainelli@gmail.com, 
    rjui@broadcom.com, sbranden@broadcom.com, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: vc04_services:
 bcm2835-camera: Remove unnecessary variable
In-Reply-To: <20170301155906.GA20400@nati-X550JK>
Message-ID: <alpine.DEB.2.20.1703012107380.2401@hadrien>
References: <cover.1488371940.git.narcisaanamaria12@gmail.com> <c49c187ff219c61323b25f01ab3f051950ae507a.1488371940.git.narcisaanamaria12@gmail.com> <alpine.DEB.2.20.1703011401510.3941@hadrien> <20170301155906.GA20400@nati-X550JK>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 1 Mar 2017, Narcisa Ana Maria Vasile wrote:

> On Wed, Mar 01, 2017 at 02:02:39PM +0100, Julia Lawall wrote:
> >
> >
> > On Wed, 1 Mar 2017, Narcisa Ana Maria Vasile wrote:
> >
> > > Instead of using the ret variable, return 0 directly
> > >
> > > Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> > > ---
> > >  drivers/staging/vc04_services/bcm2835-camera/controls.c | 12 +++++-------
> > >  1 file changed, 5 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
> > > index dcd5bec..e25f1c9 100644
> > > --- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
> > > +++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
> > > @@ -609,18 +609,16 @@ static int ctrl_set_bitrate(struct bm2835_mmal_dev *dev,
> > >  			    struct v4l2_ctrl *ctrl,
> > >  			    const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl)
> > >  {
> > > -	int ret;
> > >  	struct vchiq_mmal_port *encoder_out;
> > >
> > >  	dev->capture.encode_bitrate = ctrl->val;
> > >
> > >  	encoder_out = &dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->output[0];
> > >
> > > -	ret = vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
> > > -					    mmal_ctrl->mmal_id,
> > > -					    &ctrl->val, sizeof(ctrl->val));
> > > -	ret = 0;
> > > -	return ret;
> > > +	vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
> > > +				      mmal_ctrl->mmal_id,
> > > +				      &ctrl->val, sizeof(ctrl->val));
> > > +	return 0;
> > >  }
> > >
> > >  static int ctrl_set_bitrate_mode(struct bm2835_mmal_dev *dev,
> > > @@ -862,7 +860,7 @@ static int ctrl_set_scene_mode(struct bm2835_mmal_dev *dev,
> > >
> > >  		if (scene->exposure_mode == MMAL_PARAM_EXPOSUREMODE_OFF)
> > >  			shutter_speed = dev->manual_shutter_speed;
> > > -
> > > +
> >
> > Something went wrong here.  It's fine to fi the whitespace issue, but it
> > should be a separate patch.
> >
> > julia
> >
>   So, should I send a separate patch which solves the problem as in
>   PATCH 2/2 (removes the ret variable and returns directly) or is this
>   an unnecessary change? I'm not sure I understand what the whitespace
>   issue is.

What you did with ret seems fine.  But if you look above there is a - with
what looks like an empty line after it, and then a + with what looks like
an empty line after it.  Actually, the - used to have some tabs after it;
they aren't there now so I guess some mailer removed them, but I think
they were there in the message that I commented on.

Probably you removed the unnecessary whitespace at some point, then forgot
about it and modified the file in another way.

julia

>
>   Narcisa
> > >  		exposure_mode = scene->exposure_mode;
> > >  		metering_mode = scene->metering_mode;
> > >
> > > --
> > > 1.9.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c49c187ff219c61323b25f01ab3f051950ae507a.1488371940.git.narcisaanamaria12%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170301155906.GA20400%40nati-X550JK.
> For more options, visit https://groups.google.com/d/optout.
>

