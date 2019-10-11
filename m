X-GM-THRID: 6746657594163593216
X-Received: by 2002:a19:f11e:: with SMTP id p30mr9210065lfh.152.1570829011150;
        Fri, 11 Oct 2019 14:23:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:c709:: with SMTP id x9ls833495lff.12.gmail; Fri, 11 Oct
 2019 14:23:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxiriwNHE9NChL0HOq6KPIFks5Xx1rvnzw6hRQ1wumKC0z/E6RgfB6lHngtAwc2OQZYoiZd
X-Received: by 2002:ac2:53b9:: with SMTP id j25mr9750354lfh.151.1570829010300;
        Fri, 11 Oct 2019 14:23:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570829010; cv=none;
        d=google.com; s=arc-20160816;
        b=kkoIpw3BPUMqROeNwxkOfdrPSGPMzLbesq+Aab8qzOtX8MAXzNJLqIIynjpZYZ6Q6v
         +zpZS8iwOnH3i0Yn9BgUOiUI90P2ECSgWHTRriAZ3BIh7s25v2U2wVw98CXtt9LfH31n
         hCHT2+Noam1D/GH53JLDWro5UKmWremN/4I36TAbvlo2DnG9uX/o263Z8932ptqb8+7v
         KA/CEpL7RuL2wRR+dV78Pvj1IA+xh5wPLuNStcawgSzgbwMkNJh5eqxuJ4j8/xaa2wr9
         z3u89PBv3Mc5v3aiWI/yhy/xXhi9PIrO20fRPGU9EM0f4env/dyIcvKpXB0l9eRDv9Ch
         AShg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=kLR9RBHEHXpumu3Nx7ytSQ948xvUcG6NQHx20hUP3rI=;
        b=BQZErvZgcfkvbz8sFizGC11uuUv6NhYGBdsPyg/GKVXjb0tdRewVlLmQ2aCo3q1NhQ
         bXqCnrGy/torks9lthEzwV9OBqke4hSq0FGA5ZgKvBvQh4ugX95PymEzPJliQcKPSXA9
         D1PRHChw7b7BkFNiFBpKJi/gZpL9/Qgd35O9EOskYmKHOD7Ivp+5VjA/B1BPosb8GRwH
         6BDVJn0tlL8YKfmyX0kohZug2hH0fKB5xFZccTl42+4JCINBtMtQwxY7Wg99S0vNWVNR
         nuGAQEJ4Kyk69HT2GmHd524f08iWlNv9oO+jhy/HREFHz0EGOvFdFBAAU9UyqAE1fffI
         us1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o30si118859lfi.0.2019.10.11.14.23.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 14:23:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,285,1566856800"; 
   d="scan'208";a="322454988"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Oct 2019 23:23:28 +0200
Date: Fri, 11 Oct 2019 23:23:27 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    eric@anholt.net, wahrenst@gmx.net, linux-kernel@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org, 
    linux-rpi-kernel@lists.infradead.org, daniela.mormocea@gmail.com, 
    dave.stevenson@raspberrypi.org, hverkuil-cisco@xs4all.nl, 
    mchehab+samsung@kernel.org, bcm-kernel-feedback-list@broadcom.com, 
    sbranden@broadcom.com, rjui@broadcom.com, f.fainelli@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: fix warnings
 of lines should not end with open parenthesis
In-Reply-To: <20191011211637.19311-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1910112320550.3284@hadrien>
References: <20191011211637.19311-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 11 Oct 2019, Jules Irenge wrote:

> Fix warning of lines should not end with open parenthesis.
> Issue detected by checkpatch tool.
>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  .../bcm2835-camera/bcm2835-camera.c           | 38 ++++++++-----------
>  1 file changed, 16 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> index d4d1e44b16b2..c7bb6e3f529c 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> @@ -337,9 +337,8 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
>  			if (is_capturing(dev)) {
>  				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
>  					 "Grab another frame");
> -				vchiq_mmal_port_parameter_set(
> -					instance,
> -					dev->capture.camera_port,
> +			vchiq_mmal_port_parameter_set(instance,
> +						      dev->capture.camera_port,
>  					MMAL_PARAMETER_CAPTURE,
>  					&dev->capture.frame_count,
>  					sizeof(dev->capture.frame_count));

You can't reduce the indentation on the function call.  It has to stay
clearly in the if branch.

If you adjust the indentation of some of the arguments, you have to do so
to all of the arguments.

Similar issues arise below.  There may be no way to make some of the calls
look nice without a more severe reorganization of the code.

julia

> @@ -392,9 +391,8 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
>  	    is_capturing(dev)) {
>  		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
>  			 "Grab another frame as buffer has EOS");
> -		vchiq_mmal_port_parameter_set(
> -			instance,
> -			dev->capture.camera_port,
> +		vchiq_mmal_port_parameter_set(instance,
> +					      dev->capture.camera_port,
>  			MMAL_PARAMETER_CAPTURE,
>  			&dev->capture.frame_count,
>  			sizeof(dev->capture.frame_count));
> @@ -1124,9 +1122,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
>  					  dev->capture.timeperframe.numerator;
>  		ret = vchiq_mmal_port_set_format(dev->instance, preview_port);
>  		if (overlay_enabled) {
> -			ret = vchiq_mmal_port_connect_tunnel(
> -				dev->instance,
> -				preview_port,
> +			ret = vchiq_mmal_port_connect_tunnel(dev->instance,
> +							     preview_port,
>  				&dev->component[COMP_PREVIEW]->input[0]);
>  			if (!ret)
>  				ret = vchiq_mmal_port_enable(dev->instance,
> @@ -1154,9 +1151,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
>  			    camera_port->recommended_buffer.num;
>
>  			ret =
> -			    vchiq_mmal_port_connect_tunnel(
> -					dev->instance,
> -					camera_port,
> +			    vchiq_mmal_port_connect_tunnel(dev->instance,
> +							   camera_port,
>  					&encode_component->input[0]);
>  			if (ret) {
>  				v4l2_dbg(1, bcm2835_v4l2_debug,
> @@ -1655,8 +1651,8 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
>  	dev->capture.enc_level = V4L2_MPEG_VIDEO_H264_LEVEL_4_0;
>
>  	/* get the preview component ready */
> -	ret = vchiq_mmal_component_init(
> -			dev->instance, "ril.video_render",
> +	ret = vchiq_mmal_component_init(dev->instance,
> +					"ril.video_render",
>  			&dev->component[COMP_PREVIEW]);
>  	if (ret < 0)
>  		goto unreg_camera;
> @@ -1669,8 +1665,8 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
>  	}
>
>  	/* get the image encoder component ready */
> -	ret = vchiq_mmal_component_init(
> -		dev->instance, "ril.image_encode",
> +	ret = vchiq_mmal_component_init(dev->instance,
> +					"ril.image_encode",
>  		&dev->component[COMP_IMAGE_ENCODE]);
>  	if (ret < 0)
>  		goto unreg_preview;
> @@ -1731,15 +1727,13 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
>
>  unreg_vid_encoder:
>  	pr_err("Cleanup: Destroy video encoder\n");
> -	vchiq_mmal_component_finalise(
> -		dev->instance,
> -		dev->component[COMP_VIDEO_ENCODE]);
> +	vchiq_mmal_component_finalise(dev->instance,
> +				      dev->component[COMP_VIDEO_ENCODE]);
>
>  unreg_image_encoder:
>  	pr_err("Cleanup: Destroy image encoder\n");
> -	vchiq_mmal_component_finalise(
> -		dev->instance,
> -		dev->component[COMP_IMAGE_ENCODE]);
> +	vchiq_mmal_component_finalise(dev->instance,
> +				      dev->component[COMP_IMAGE_ENCODE]);
>
>  unreg_preview:
>  	pr_err("Cleanup: Destroy video render\n");
> --
> 2.21.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191011211637.19311-1-jbi.octave%40gmail.com.
>

