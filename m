X-GM-THRID: 6665043213885112320
X-Received: by 2002:adf:dc0c:: with SMTP id t12mr110162wri.15.1551854136274;
        Tue, 05 Mar 2019 22:35:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2d06:: with SMTP id t6ls69451wmt.10.gmail; Tue, 05 Mar
 2019 22:35:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqxLn9ar92csk88l+uPCa5dTp8Xpy9kwkHU9Bt6BybD3QaytRtrN3CB7MNt5+bYctto3nREn
X-Received: by 2002:a1c:9d91:: with SMTP id g139mr566279wme.24.1551854135542;
        Tue, 05 Mar 2019 22:35:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551854135; cv=none;
        d=google.com; s=arc-20160816;
        b=iIA2Drt4jYT/E2cSeKjqtK89Qbmy7kJWIvC2PckYOZ7v6IQlo0BGdGXaPFjf6chxqT
         CZPq2viPSCDtDRpvWyMC9e4cs+fcWAudlN52M8rOQCrvAcFmMWVvPu0Wi4Msuu05Wubb
         3va28yxHRMrKpritaOv+uyE+/DT3A2BCxBaZbN9HkeGvw6wiWoh21pRjdpxoFjSnTGp5
         hvcw2eF4ozep+hSypeJ/noUs8y82Ogu+R1O4yRPxkX8hf4YRCMCoX9e+VXPhQOH09EUr
         VZOu2Ljl0/xL3dYBC7eWOW2sVhs2eXVwRgc2AAxcUAh8/uvNxWxiEd29S9X0v9L0KTcD
         EKpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=tgmAql5CQ6nSLb/nx+0rDgAelL/wtnGsxsaW+u6YCL8=;
        b=USz4doSAjlaqgHfG7al7aa5llp+tEIATiUrvGBrsL3I7r5g4mUgo0AnRVWIqKecNZN
         rnDf4mdHdF50f7R6QvjA0v5DhOCeRt5poX8yZAM2Sf50KynJ5QcanIj6vtKVwUpaH8pF
         PjTC1/wNMfSESjCt8DYxrvaqWRT5mm/zc56ZD9oiuFrqriyq2GKHoSdK4UOGoJnOC0rB
         5BhBzd5nAn0qsc0ECmafvk4XNIZxW6ThMQJa+d4Dsuz9VfAO5GOJ2ddY12n1sP7ftdiV
         wLGY0YiqRtAyFfVgQWMSr4JC2uN7RaLr27l+QFg+5ZdD8RY84B9V7G5wG+NZl//9fuHx
         1uRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v189si22726wma.2.2019.03.05.22.35.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 22:35:35 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,446,1544482800"; 
   d="scan'208";a="372111659"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2019 07:35:35 +0100
Date: Wed, 6 Mar 2019 07:35:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Daniela Mormocea <daniela.mormocea@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v5 2/2] Fix logical continuations
 warnings
In-Reply-To: <1551826351-28120-1-git-send-email-daniela.mormocea@gmail.com>
Message-ID: <alpine.DEB.2.21.1903060735210.2706@hadrien>
References: <1551826297-28015-1-git-send-email-daniela.mormocea@gmail.com> <1551826351-28120-1-git-send-email-daniela.mormocea@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The subject line still doesn't indicate the affected driver.

julia

On Wed, 6 Mar 2019, Daniela Mormocea wrote:

> Fix boolean operators break in the right place
>
> Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
> ---
>
> Changes in v5:
> -add driver name in all the patches from the series
>
> Changes in v4:
> -add driver name in subject
>
> Changes in v3:
> -add cover-letter to patch series
>
> Changes in v2:
> -make these a patch series
>
>
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1551826351-28120-1-git-send-email-daniela.mormocea%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

