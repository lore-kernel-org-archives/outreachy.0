X-GM-THRID: 6392494565268389888
X-Received: by 10.28.59.66 with SMTP id i63mr110397wma.21.1488375194879;
        Wed, 01 Mar 2017 05:33:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.67.14 with SMTP id q14ls80866lfa.15.gmail; Wed, 01 Mar 2017
 05:33:14 -0800 (PST)
X-Received: by 10.46.20.72 with SMTP id 8mr1119047lju.19.1488375194263;
        Wed, 01 Mar 2017 05:33:14 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id h62si961719wme.2.2017.03.01.05.33.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 05:33:14 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id v190so1354492wme.3
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 05:33:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xTmVBhdvWkX5mk/Cg4fW/VtRwLMt90gjKr99/Rjz1Os=;
        b=E5nOKyZeGsfqu43OMcmtD2cz2ZK+YTSLfOfVs7iv7xR6xuQ1Hy9Ll90K04ivuIdHBe
         IEWpd41SYKaVVcQwdzB1Jgn1zYZhlwwhX3gv+Xj0apVTE70NKQJWreqj6ssfT6/wIxlZ
         IZj64YiBtZO7XntZmMPLVbwzqN/foYmEX67r9B+eb+MIvfulB0jRG4SBZgrJVazSFwxm
         wT1Qndmom5niipdoA6AX0LClJBrEIMi9jEHJAVqNSpVnq2HarterqzKT+r4/msr92Kci
         sVCPzlSv3T/LKMPgDj3JxvVs1H2M4u+WKazsp55sMCbtCvoGSBvu3xl/Z9V/VXuGh1gd
         CvEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=xTmVBhdvWkX5mk/Cg4fW/VtRwLMt90gjKr99/Rjz1Os=;
        b=Mp7vhsKt7DDlQLBHp81jV7c/l6JFoC0yV+rMpixNwM5FcBPWwwqqvIhwI7UYmxmbv+
         Ng64FGDylj9rN5PabyBamvXn3T+XR3W3kgzDot6lX9c31HLM1LUgXifcCZjZ7BjA9I+P
         R7txhSrCyx33RrPim5eZF1katvdh45OavFgNmCOLY0WceXHWJZEtoWddW+F2cwHTc6tV
         IIyFLJxfBZMr0zMKoe18l48h2qjh4RnxqIuTzqtXbvfQdJyMyTOqWebsdceYQnGkZGd/
         CTD73oohVApKI0jWfQnK1/OTrPPGjMzx0JYn7yQLwukP9wu6nzSAO/nEKSSXHonXA5gw
         i+hg==
X-Gm-Message-State: AMke39kfxRi2UyZ2ubdj/hC2LwqSemg2jZD46oBkEDQ9K0Q7OgSKf/4UF9i8pik0n0HdDw==
X-Received: by 10.28.105.68 with SMTP id e65mr3388772wmc.44.1488375193909;
        Wed, 01 Mar 2017 05:33:13 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from nati-X550JK (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id w207sm22841725wmw.29.2017.03.01.05.33.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 05:33:13 -0800 (PST)
Date: Wed, 1 Mar 2017 15:33:12 +0200
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: swarren@wwwdotorg.org, lee@kernel.org, eric@anholt.net,
	gregkh@linuxfoundation.org, f.fainelli@gmail.com, rjui@broadcom.com,
	sbranden@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: vc04_services:
 bcm2835-camera: Removed unnecessary variable
Message-ID: <20170301133311.GA14951@nati-X550JK>
References: <cover.1488367580.git.narcisaanamaria12@gmail.com>
 <daabcf56391dbfadac95ab36f36afd3bdaeaf423.1488367580.git.narcisaanamaria12@gmail.com>
 <alpine.DEB.2.20.1703011404280.3941@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703011404280.3941@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Mar 01, 2017 at 02:05:09PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 1 Mar 2017, Narcisa Ana Maria Vasile wrote:
> 
> > Instead of storing the result, now the function returns directly
> >
> > Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> > ---
> >  drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 5 +----
> >  1 file changed, 1 insertion(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > index 347d8fff..d00e00b 100644
> > --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > @@ -671,7 +671,6 @@ static void bm2835_mmal_unlock(struct vb2_queue *vq)
> >  static int set_overlay_params(struct bm2835_mmal_dev *dev,
> >  			      struct vchiq_mmal_port *port)
> >  {
> > -	int ret;
> >  	struct mmal_parameter_displayregion prev_config = {
> >  	.set = MMAL_DISPLAY_SET_LAYER | MMAL_DISPLAY_SET_ALPHA |
> >  	    MMAL_DISPLAY_SET_DEST_RECT | MMAL_DISPLAY_SET_FULLSCREEN,
> > @@ -685,11 +684,9 @@ static int set_overlay_params(struct bm2835_mmal_dev *dev,
> >  		      .height = dev->overlay.w.height,
> >  		      },
> >  	};
> > -	ret = vchiq_mmal_port_parameter_set(dev->instance, port,
> > +	return vchiq_mmal_port_parameter_set(dev->instance, port,
> >  					    MMAL_PARAMETER_DISPLAYREGION,
> >  					    &prev_config, sizeof(prev_config));
> 
> The arguments needed to be moved one space over.
> 
> julia
>
  Oh, ok.
  I'll resend another version.
  
  Narcisa
> > -
> > -	return ret;
> >  }
> >
> >  /* overlay ioctl */
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/daabcf56391dbfadac95ab36f36afd3bdaeaf423.1488367580.git.narcisaanamaria12%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

