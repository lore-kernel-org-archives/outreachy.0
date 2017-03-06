X-GM-THRID: 6392494565268389888
X-Received: by 10.129.146.139 with SMTP id j133mr6643012ywg.173.1488804983488;
        Mon, 06 Mar 2017 04:56:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.60.6 with SMTP id q6ls2154456otc.10.gmail; Mon, 06 Mar
 2017 04:56:23 -0800 (PST)
X-Received: by 10.13.211.5 with SMTP id v5mr6329120ywd.128.1488804983142;
        Mon, 06 Mar 2017 04:56:23 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y90si10614pfa.6.2017.03.06.04.56.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 04:56:23 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [37.168.44.83])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C89A3949;
	Mon,  6 Mar 2017 12:56:21 +0000 (UTC)
Date: Mon, 6 Mar 2017 13:56:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Cc: swarren@wwwdotorg.org, lee@kernel.org, eric@anholt.net,
	f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3 1/2] staging: vc04_services: bcm2835-camera: Move min
 calculation outside the loop
Message-ID: <20170306125615.GA26619@kroah.com>
References: <cover.1488381635.git.narcisaanamaria12@gmail.com>
 <e56b661d6e62e48626989f052a5e1603fb1e6913.1488381635.git.narcisaanamaria12@gmail.com>
 <20170306125537.GA26535@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170306125537.GA26535@kroah.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Mon, Mar 06, 2017 at 01:55:37PM +0100, Greg KH wrote:
> On Wed, Mar 01, 2017 at 05:37:13PM +0200, Narcisa Ana Maria Vasile wrote:
> > Instead of computing the minimum value in the for loop, store it in a variable.
> > 
> > Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> > ---
> >  drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > index 53e275e..7b9d33c 100644
> > --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > @@ -1526,6 +1526,7 @@ static int get_num_cameras(struct vchiq_mmal_instance *instance,
> >  	struct mmal_parameter_camera_info_t cam_info = {0};
> >  	int param_size = sizeof(cam_info);
> >  	int i;
> > +	int min_size;
> >  
> >  	/* create a camera_info component */
> >  	ret = vchiq_mmal_component_init(instance, "camera_info",
> > @@ -1541,11 +1542,10 @@ static int get_num_cameras(struct vchiq_mmal_instance *instance,
> >  					  &param_size)) {
> >  		pr_info("Failed to get camera info\n");
> >  	}
> > -	for (i = 0;
> > -	     i < (cam_info.num_cameras > num_resolutions ?
> > -			num_resolutions :
> > -			cam_info.num_cameras);
> > -	     i++) {
> > +
> > +	min_size = cam_info.num_cameras > num_resolutions ?
> > +		   num_resolutions : cam_info.num_cameras;
> 
> Again, just use min().

Argh, duplicate emails on my side, sorry for the noise.

greg k-h

