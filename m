X-GM-THRID: 6392494565268389888
X-Received: by 10.46.15.2 with SMTP id 2mr2323427ljp.31.1488805013563;
        Mon, 06 Mar 2017 04:56:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.225 with SMTP id 94ls326819lfs.32.gmail; Mon, 06 Mar
 2017 04:56:52 -0800 (PST)
X-Received: by 10.46.5.136 with SMTP id 130mr2259774ljf.6.1488805012612;
        Mon, 06 Mar 2017 04:56:52 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id h198si1058455wmg.1.2017.03.06.04.56.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 04:56:52 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id u108so17664429wrb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 04:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tG5jsI6UzoCE0yM/7smyNSE0mEM7DC41QYWLBsQLIPY=;
        b=rkdLYtpJWKJ4RoTQs290fgnfpJVahBneDpWAkOIX3dI3AwClSB4cPlbmkOuXULob7F
         UHYe7wV2Z4OsOGPsaEliE3jHSDYDbr5r4vURI1zHGwQQSuQGUCIo1k8DsdHHO61Bv4+q
         uZ4aDyEIt6w51nKAs0+L9cnog/sAlgfLCLMd6+97EQnwPh3X/8I6N7GFEVTTn8Hz0K1W
         hEI7tO378MgDErQPlHKyu1eTSxUYPdagU/4HLQpYwpaodSQKN7oIe3u8dhyXvHuHfC62
         S3x5JAu+bjD3nTfg2l7dn+PG4IEqQnVRPh4It8JLe3QPvaq3CDwtxKTS7K0sQxc7JQGv
         2RFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tG5jsI6UzoCE0yM/7smyNSE0mEM7DC41QYWLBsQLIPY=;
        b=BB5OMpc0pqsEd2mEAXlKFZwlxWtG3YtQkJP6D3DeXmcUFuPQns+bn40KpW7sVF8IUy
         DV5yxLLicOLGTMRE92x6klTlcv2Ibnhjy1Bhe9gC027sES0nDk4qHNH/mfanQhsZLED9
         ivx1dnnXAoQcNrX/PDAVOBvHlwYbLcx0cGrs9NILTKEfs8Fw7C6TOdUGa/o1uS+bxWKT
         EWefoQT3p9rJv9k5Q1/EOEsq+a7nrmdw8tx9bpgPuS60R73jwEU7SPGnib3JOpxlDcVy
         vqiHlWjNyi4qPfGH/1YQDQ2drGdHVrOgpmTBULxycm9hIDgY7pFiW8ME06acTebQD8lZ
         CENQ==
X-Gm-Message-State: AMke39kY6uR1YT8C7x8fXoBb/lB4/3YGoRk0ewmCcwt8puCG2DQ0SiY4PGq4G+z9wdAaHw==
X-Received: by 10.223.163.7 with SMTP id c7mr14156530wrb.17.1488805012371;
        Mon, 06 Mar 2017 04:56:52 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from nati-X550JK (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id 127sm14785171wmt.20.2017.03.06.04.56.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 06 Mar 2017 04:56:51 -0800 (PST)
Date: Mon, 6 Mar 2017 14:56:50 +0200
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: swarren@wwwdotorg.org, lee@kernel.org, eric@anholt.net,
	f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3 1/2] staging: vc04_services: bcm2835-camera: Move min
 calculation outside the loop
Message-ID: <20170306125649.GA8844@nati-X550JK>
References: <cover.1488381635.git.narcisaanamaria12@gmail.com>
 <e56b661d6e62e48626989f052a5e1603fb1e6913.1488381635.git.narcisaanamaria12@gmail.com>
 <20170306124952.GA25968@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170306124952.GA25968@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Mon, Mar 06, 2017 at 01:49:52PM +0100, Greg KH wrote:
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
> We have a min() macro, why not just use that instead?
> 
> thanks,
> 
> greg k-h

  I remember I wanted to use the macro, but then decided not to,
  in order to avoid the unsigned int vs int warning.

  Narcisa



