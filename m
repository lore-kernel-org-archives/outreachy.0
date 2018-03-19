X-GM-THRID: 6534657346534113280
X-Received: by 2002:a9d:1486:: with SMTP id d6-v6mr5859670ote.31.1521468763534;
        Mon, 19 Mar 2018 07:12:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.93.10 with SMTP id r10ls1618738oib.13.gmail; Mon, 19 Mar
 2018 07:12:42 -0700 (PDT)
X-Google-Smtp-Source: AG47ELsLbuNtRiSoqzACyDY3ugY9/fpsDIj2AaAD274N2xF7gjlx+O2LaXklSkwuaYy/jRuzM3g8
X-Received: by 10.202.208.80 with SMTP id h77mr3694715oig.70.1521468762573;
        Mon, 19 Mar 2018 07:12:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521468762; cv=none;
        d=google.com; s=arc-20160816;
        b=T6zfsKxJyVAztv2Q2jE9BOW3Zo0nYQuBnkA430sdVk7o9Y1JHzc2SVlLuDaeTYaoWb
         KeT1Vtq0RuoTtAitS37mfqt6dUioye9QIIr1RnnUKALNryO+F601ka5+L8Amf3rvwrxW
         Y5MiHglX3tBQPdg/10mlzSi18yRVJ1kyDx1WFNc7DS3KBQO90TB6U3WZFeSCL6Yj49U5
         5R0RNrfXA6wqli6knTtXY8R6QkdXDJ3xxR2yGJrAPrsCJKWhXUcNGu9DDGJn9GkS9gRK
         AlAtZiO4fQkk5M3h0TXy8Obk0UuuRobVOHkdq8FsSFX14bR+usW5JeIekcXtZ4YGNEqW
         2c+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=jnDFYBDcN4Rd4SCz43JEeTRaDYY6ZkDQNwI3MzSG4Sk=;
        b=e50cOfSEuIQpyrKH/kda4muqUmjI7Rric1N73G4jPq/QmQ2fTvnX94vChfNLZOjaNJ
         pizPXMnN1+P8EnQa2IMjjp5E6tFk3lgvDJ7h9trsnFcL/bRMu1n1IRgSCpS4Baci8f2F
         KbJv9ajxbXfTFevqaiLd3kH0rs5SmGd2T6kB5Sfv+dK3d0cb3wYQp4EaPLVvYGIILMyx
         OHkUwnjG/vjoVQg8pweaSSZlZCUKcAVOPQRXiyam33VTpmduffmecISoF8d2/WAElfmQ
         6WjuuAQv7OVVdllXBIZ3HjbJOEm1og0OI5DGooPjCYs+gjfZPTM4kEIKDtwz1cElwkg8
         AXYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id q57-v6si16258otq.0.2018.03.19.07.12.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Mar 2018 07:12:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12247-202.w90-92.abo.wanadoo.fr [90.92.61.202])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4B18A11D6;
	Mon, 19 Mar 2018 14:12:41 +0000 (UTC)
Date: Mon, 19 Mar 2018 15:12:41 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging:vc04_services:bcm2835-camera:controls.c: Fix
 multiple line dereference
Message-ID: <20180319141241.GA17366@kroah.com>
References: <1521468462-28073-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1521468462-28073-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 19, 2018 at 02:07:42PM +0000, Nishka Dasgupta wrote:
> Fix multiple line dereference. Issue found with checkpatch.

What is a "multiple line dereference"?

> 
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/controls.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
> index cff7b1e..bae7f2e 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
> @@ -1194,6 +1194,8 @@ int set_framerate_params(struct bm2835_mmal_dev *dev)
>  {
>  	struct mmal_parameter_fps_range fps_range;
>  	int ret;
> +	int mcc = MMAL_COMPONENT_CAMERA;
> +	int mcpp = MMAL_CAMERA_PORT_PREVIEW;
>  
>  	if ((dev->exposure_mode_active != MMAL_PARAM_EXPOSUREMODE_OFF) &&
>  	    (dev->exp_auto_priority)) {
> @@ -1220,8 +1222,7 @@ int set_framerate_params(struct bm2835_mmal_dev *dev)
>  		 fps_range.fps_high.den);
>  
>  	ret = vchiq_mmal_port_parameter_set(dev->instance,
> -					    &dev->component[MMAL_COMPONENT_CAMERA]->
> -					    output[MMAL_CAMERA_PORT_PREVIEW],
> +					    &dev->component[mcc]->output[mcpp],

I don't see what the benifit of this change is here, a shorter line?
It's really not worth it, don't you think?

thanks,

greg k-h

