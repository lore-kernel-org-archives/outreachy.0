X-GM-THRID: 6664972943325396992
X-Received: by 2002:aa7:c6c9:: with SMTP id b9mr3591298eds.7.1551812326939;
        Tue, 05 Mar 2019 10:58:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:ae9d:: with SMTP id e29ls5995136edd.4.gmail; Tue, 05 Mar
 2019 10:58:46 -0800 (PST)
X-Google-Smtp-Source: APXvYqyUeHk0+jriLgth08Pyu0nHMqbbvGgCbxaQqLuixnwIoZW4LAVz/rVJAh7mBOfgq5feBLkw
X-Received: by 2002:a50:aa70:: with SMTP id p45mr3583514edc.6.1551812326260;
        Tue, 05 Mar 2019 10:58:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551812326; cv=none;
        d=google.com; s=arc-20160816;
        b=lF8npLkAIyetMyO4P3cPL5uquULIfHUEjARsok7emRp39Sp7gPPVRzOupmRaacREcb
         vaFisVhmJz0PT5LjMP0uSjhFTcX07psMTqUHNY/Jzib1HOuPnYcG9nIlgrfr55vqTpfh
         N0BPVarQe1FcvF5Ng0h/xFp+EMey23diQsDdN7E7QSk0ppUQASepje5/TszifRL+dif5
         P+cPL9WmqQvVNPBghzjZnEen6bAYgYRwbXVBBlQFWTDkI8qpEldruKRTmQ7duxsv+n3j
         qsOzBEz0WG9HqHbT6tWewiV9eQjCG2b6sNNMifjvXWuPcV4lsr8zf4WzfT88eK2DSmED
         G5Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=DMDuv9dFpDOvThCTXNpKHeH+GshXBYQ/cBQgf7FjIsg=;
        b=R3xJAChVYYHMzRUhcUsnDZKwPokxFJVn40dPP22Lw/vX5QDONUrEfC6IA3n/XjtUJn
         SxxweVBY1TTFWM+xNFUkN1dGD9elvDEKXrfhipSlDMaLe6NUsOY/7lz/gipeASOsmOnd
         S9wcF35ypK2m+DShC2uQCKoUSkbiI0ZTXeQmb4qoMkeM9N1KFzvP3RtvSakz1f0pfrxB
         X5noS8H2TMROTelhLry+MIpe3PQUTLRG76OidVHX/e7p8nERTYQ787Yn6hUNCNTs49PH
         8QWBSK4DG/gU6hRVYMcZHO7qnGoRIhHLqo53nN3ohbTwM3Ww0amSqvu1KMNA8aGFCNcP
         Ngjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i16si564042ede.0.2019.03.05.10.58.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 10:58:46 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,445,1544482800"; 
   d="scan'208";a="298222613"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2019 19:58:45 +0100
Date: Tue, 5 Mar 2019 19:58:39 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Daniela Mormocea <daniela.mormocea@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 2/2] Fix logical continuations
 warnings
In-Reply-To: <1551810072-27010-1-git-send-email-daniela.mormocea@gmail.com>
Message-ID: <alpine.DEB.2.20.1903051956120.3701@hadrien>
References: <1551809936-26809-1-git-send-email-daniela.mormocea@gmail.com> <1551810072-27010-1-git-send-email-daniela.mormocea@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The subject line needs to indicate the affected driver.

I'm not sure to understand "logical continuations".

On Tue, 5 Mar 2019, Daniela Mormocea wrote:

> Fix boolean operators break in the right place

Try to come up with a description that says something other than Fix.
There may be many possible fixes, so saying Fix doesn't really indicate
what you have done.

Consider mentioning that the problem was found with checkpatch, if that is
the case.

julia

> Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
> ---
>  .../staging/vc04_services/bcm2835-camera/bcm2835-camera.c    | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> index e71738a..d22b928 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> @@ -512,8 +512,8 @@ static int start_streaming(struct vb2_queue *vq, unsigned int count)
>  		msleep(300);
>
>  	/* enable the connection from camera to encoder (if applicable) */
> -	if (dev->capture.camera_port != dev->capture.port
> -	    && dev->capture.camera_port) {
> +	if (dev->capture.camera_port != dev->capture.port &&
> +	    dev->capture.camera_port) {
>  		ret = vchiq_mmal_port_enable(dev->instance,
>  					     dev->capture.camera_port, NULL);
>  		if (ret) {
> @@ -1009,8 +1009,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
>  	switch (mfmt->mmal_component) {
>  	case MMAL_COMPONENT_CAMERA:
>  		/* Make a further decision on port based on resolution */
> -		if (f->fmt.pix.width <= max_video_width
> -		    && f->fmt.pix.height <= max_video_height)
> +		if (f->fmt.pix.width <= max_video_width &&
> +		    f->fmt.pix.height <= max_video_height)
>  			camera_port = port =
>  			    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO];
>  		else
> @@ -1067,8 +1067,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
>
>  	ret = vchiq_mmal_port_set_format(dev->instance, camera_port);
>
> -	if (!ret
> -	    && camera_port ==
> +	if (!ret &&
> +	    camera_port ==
>  	    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO]) {
>  		bool overlay_enabled =
>  		    !!dev->component[MMAL_COMPONENT_PREVIEW]->enabled;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1551810072-27010-1-git-send-email-daniela.mormocea%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

