X-GM-THRID: 6392511932367110144
X-Received: by 10.25.150.212 with SMTP id y203mr261136lfd.30.1488537864526;
        Fri, 03 Mar 2017 02:44:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.22 with SMTP id 22ls563847lja.32.gmail; Fri, 03 Mar 2017
 02:44:23 -0800 (PST)
X-Received: by 10.25.199.212 with SMTP id x203mr263617lff.9.1488537863616;
        Fri, 03 Mar 2017 02:44:23 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id f7si150969wmg.3.2017.03.03.02.44.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 02:44:23 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id l37so12786615wrc.3
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 02:44:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qD/6cfB2IrbuoLFAKccWHHM/Q1CVcMnx20Gn24jWxZw=;
        b=Uhk+VmpD71kW7N/DZcdrr1MXZF7Oc7nRv1KgPcRdZBRf9G7nmTWIeTAaul+eKxJHlD
         xWdFWNP4an7zj78b3Pf8/fQexSJYA3Wwc4Xz6BsHojJJicaMXpaYH9om9glz2b3B63ya
         s6pkVfTQoq0k4YO6Xhi60m0MfUcPhj7G1Dz6SMwM3e6ppW5ooYAty5c+ws1FurxrCl6T
         QX6eT2EXRHot9aACpVqpIHVO1WnJkI4UxThYh/66BVvlfq0XSLYQPOtINpHOFYt62Bcy
         av3l6Izr7CtxTnYOk6oacsBDb7cIXTWa3xRRy3qK3sTgC/uSaVpDKbiEq1n4pIckVPbQ
         q50A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qD/6cfB2IrbuoLFAKccWHHM/Q1CVcMnx20Gn24jWxZw=;
        b=FA83KYBto+mliIS9gzi7oBg2wGWl/aBwkM6ZYXMQKT0NsutZnbv8RPloNeWsxz+NQp
         gs4jnTgCMbjObsEmi4PiATATqcGaKGsdoFZH2XMzsVpWzxLzUDpz1G9CVc0A+Z6Xg4IU
         4ZcWg2hLYUqryr8St0cUppFixsg4MdAwYvsaBfCHBIo0Bs2lmgA9AWPwm3tHKqJxR22x
         X99YHDp9/KQU2ai0HDUCy0zJSUT5LIXFfNqq9DcUgsCRDCa3LlloGSNmr/KklHPRjenL
         4Ol2wyP00c0vsho91t+VHoHnFpyxbY2XaYeMtpQaBBk+1I9cxxPLBd/5p+BnRVZCdMkk
         KJJw==
X-Gm-Message-State: AMke39kNhuMlkNCH73leYr6X+K1cSUHPk/S4seZ2fIHRqyq7zlgiu94JLLEn3TFCSHMxjw==
X-Received: by 10.223.173.53 with SMTP id p50mr2091793wrc.112.1488537863360;
        Fri, 03 Mar 2017 02:44:23 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from nati-X550JK (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id v18sm14698457wrc.41.2017.03.03.02.44.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 02:44:22 -0800 (PST)
Date: Fri, 3 Mar 2017 12:44:21 +0200
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: swarren@wwwdotorg.org, lee@kernel.org, eric@anholt.net,
	gregkh@linuxfoundation.org, f.fainelli@gmail.com, rjui@broadcom.com,
	sbranden@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services:
 bcm2835-camera: Remove unnecessary variable
Message-ID: <20170303104420.GA9983@nati-X550JK>
References: <1488467703-15980-1-git-send-email-narcisaanamaria12@gmail.com>
 <alpine.DEB.2.20.1703021617050.3414@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703021617050.3414@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Mar 02, 2017 at 04:17:59PM +0100, Julia Lawall wrote:
> On Thu, 2 Mar 2017, Narcisa Ana Maria Vasile wrote:
> 
> > Instead of using the ret variable, return 0 directly
> 
> I think you should say a little more, because you are also removing an
> assignment where the assigned variable is not used.  You could also take a
> look at vchiq_mmal_port_parameter_set to see why the return value is not
> important.
> 
> julia
>
  I looked at the code, but I can't say for sure why the return value is
  0. It seems to me that it should return the value 
  returned by vchiq_mmal_port_parameter_set. As I'm not sure that this
  is correct, I didn't want to modify it this way. Perhaps someone who
  worked on the code can tell for sure? 

  Narcisa
> >
> > Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> > ---
> >  drivers/staging/vc04_services/bcm2835-camera/controls.c | 10 ++++------
> >  1 file changed, 4 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
> > index 9c0667e..7bdde87 100644
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
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488467703-15980-1-git-send-email-narcisaanamaria12%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

