X-GM-THRID: 6392494565268389888
X-Received: by 10.129.138.129 with SMTP id a123mr7234969ywg.62.1488809677252;
        Mon, 06 Mar 2017 06:14:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.41 with SMTP id n41ls4574616ioe.33.gmail; Mon, 06 Mar
 2017 06:14:36 -0800 (PST)
X-Received: by 10.107.165.193 with SMTP id o184mr3578416ioe.99.1488809676125;
        Mon, 06 Mar 2017 06:14:36 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y90si41723pfa.6.2017.03.06.06.14.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 06:14:36 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [37.168.212.159])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4EE1D259;
	Mon,  6 Mar 2017 14:14:35 +0000 (UTC)
Date: Mon, 6 Mar 2017 15:14:29 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Cc: swarren@wwwdotorg.org, lee@kernel.org, eric@anholt.net,
	f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3 1/2] staging: vc04_services: bcm2835-camera: Move min
 calculation outside the loop
Message-ID: <20170306141429.GA5394@kroah.com>
References: <cover.1488381635.git.narcisaanamaria12@gmail.com>
 <e56b661d6e62e48626989f052a5e1603fb1e6913.1488381635.git.narcisaanamaria12@gmail.com>
 <20170306124952.GA25968@kroah.com>
 <20170306125649.GA8844@nati-X550JK>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170306125649.GA8844@nati-X550JK>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Mon, Mar 06, 2017 at 02:56:50PM +0200, Narcisa Ana Maria Vasile wrote:
> On Mon, Mar 06, 2017 at 01:49:52PM +0100, Greg KH wrote:
> > On Wed, Mar 01, 2017 at 05:37:13PM +0200, Narcisa Ana Maria Vasile wrote:
> > > Instead of computing the minimum value in the for loop, store it in a variable.
> > > 
> > > Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> > > ---
> > >  drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 10 +++++-----
> > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > > 
> > > diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > > index 53e275e..7b9d33c 100644
> > > --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > > +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > > @@ -1526,6 +1526,7 @@ static int get_num_cameras(struct vchiq_mmal_instance *instance,
> > >  	struct mmal_parameter_camera_info_t cam_info = {0};
> > >  	int param_size = sizeof(cam_info);
> > >  	int i;
> > > +	int min_size;
> > >  
> > >  	/* create a camera_info component */
> > >  	ret = vchiq_mmal_component_init(instance, "camera_info",
> > > @@ -1541,11 +1542,10 @@ static int get_num_cameras(struct vchiq_mmal_instance *instance,
> > >  					  &param_size)) {
> > >  		pr_info("Failed to get camera info\n");
> > >  	}
> > > -	for (i = 0;
> > > -	     i < (cam_info.num_cameras > num_resolutions ?
> > > -			num_resolutions :
> > > -			cam_info.num_cameras);
> > > -	     i++) {
> > > +
> > > +	min_size = cam_info.num_cameras > num_resolutions ?
> > > +		   num_resolutions : cam_info.num_cameras;
> > 
> > We have a min() macro, why not just use that instead?
> > 
> > thanks,
> > 
> > greg k-h
> 
>   I remember I wanted to use the macro, but then decided not to,
>   in order to avoid the unsigned int vs int warning.

Then that's a bug you need to fix!  :)

Use min_t() for that.

thanks,

greg k-h

