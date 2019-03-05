X-GM-THRID: 6664946976077905920
X-Received: by 2002:a5d:4a87:: with SMTP id o7mr1314270wrq.18.1551804087569;
        Tue, 05 Mar 2019 08:41:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:f106:: with SMTP id p6ls433154wmh.6.gmail; Tue, 05 Mar
 2019 08:41:26 -0800 (PST)
X-Google-Smtp-Source: APXvYqx8m7QRXFtXE72hyjpgWs/0I/qHJgl+HW/pFhLLE6LS+tmXfO5TeZQzrJbuDDximu8y9ky4
X-Received: by 2002:a1c:761a:: with SMTP id r26mr405381wmc.1.1551804086711;
        Tue, 05 Mar 2019 08:41:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551804086; cv=none;
        d=google.com; s=arc-20160816;
        b=jdYgS1MpoGIF53ou0uh8oiPyMFWtV0py1yboIiK3TBYva1YRE12i/eCUNV756y5+7o
         8Oyl0zN3nGjq5xTq6GiBSdTO7r7RNuE+wX0EOTaXQt+A5Kz+MZTn9TC9+2qLsEjBTrfx
         cqs495VhNHHsT48JHRr/66ahrxriKSJSOu+w5T4f4MwLotvgWjfKsnczYTNGgGxXRAUK
         s3qHlCRCc2/+K8DV6vURZreHt/Mi9RKALIh+k36lrl6G+QA2FKdCuxJwD8iTljDvxevL
         wF7oJI9CwKJrpmN01kRT+/FRNoHB6E7Rkh70Ej/HqDEA5vRNZjxXm74MyjdbVyjU2NgH
         gvIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=YExMscWt4eFa5HacgzWBVZjIH67IGjZG7uoxCuVkYdQ=;
        b=cfnQxV7QVPvD+CvfdbSLHJUv1mggdv2e5OohB3QEoHqqnMzmAd2sG8kQaoA9rgpszU
         VXJZmdjHytWNfFOLeLsNMTKFjEa0gkv7HQ2jcHIS8Boe+TrAinK/S5GvWoH2wiFe3SL/
         bWn1FAhYfxfsPQBTOJ2OapsOfpoS1lSnr8eJyuEyJUZp9yMcLmizEtKf1IouNBeWCLyt
         MspzNBFx/vx1+TqTbM0VAYXp1+0mTfkdeU8ntuPSovmyKD23rojpEbVZhSuvi9+xd+bt
         V7Eci5OHvGl2JuYTK998fcJ6Pb0e9961ke+eqtLKZSnZZP6moQUBOjcr5mIjTA+Rp0wH
         hX3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y192si918wmd.1.2019.03.05.08.41.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 08:41:26 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,444,1544482800"; 
   d="scan'208";a="372049147"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2019 17:41:26 +0100
Date: Tue, 5 Mar 2019 17:41:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Daniela Mormocea <daniela.mormocea@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 0/2] Fix multiple line
 dereference
In-Reply-To: <1551803887-24894-1-git-send-email-daniela.mormocea@gmail.com>
Message-ID: <alpine.DEB.2.20.1903051740260.3701@hadrien>
References: <1551803887-24894-1-git-send-email-daniela.mormocea@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Actually, the 0 patch should be a cover letter.  It should describe the
contents of the series.  It should not contain changes.  Please reread the
section on sending patch series in the tutorial.

julia

On Tue, 5 Mar 2019, Daniela Mormocea wrote:

> Fix multiple line dereference to avoid checkpatch warnings
>
> Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
> ---
> Changes in v2:
> -turn this patch into a series
>  .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 39 ++++++++--------------
>  1 file changed, 13 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> index 611a6ee..e71738a 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> @@ -312,8 +312,7 @@ static void buffer_cleanup(struct vb2_buffer *vb)
>  static inline bool is_capturing(struct bm2835_mmal_dev *dev)
>  {
>  	return dev->capture.camera_port ==
> -	    &dev->
> -	    component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
> +	    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
>  }
>
>  static void buffer_cb(struct vchiq_mmal_instance *instance,
> @@ -751,8 +750,7 @@ static int vidioc_overlay(struct file *file, void *f, unsigned int on)
>  		return 0;	/* already in requested state */
>
>  	src =
> -	    &dev->component[MMAL_COMPONENT_CAMERA]->
> -	    output[MMAL_CAMERA_PORT_PREVIEW];
> +	    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_PREVIEW];
>
>  	if (!on) {
>  		/* disconnect preview ports and disable component */
> @@ -807,8 +805,7 @@ static int vidioc_g_fbuf(struct file *file, void *fh,
>  	 */
>  	struct bm2835_mmal_dev *dev = video_drvdata(file);
>  	struct vchiq_mmal_port *preview_port =
> -		    &dev->component[MMAL_COMPONENT_CAMERA]->
> -		    output[MMAL_CAMERA_PORT_PREVIEW];
> +		    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_PREVIEW];
>
>  	a->capability = V4L2_FBUF_CAP_EXTERNOVERLAY |
>  			V4L2_FBUF_CAP_GLOBAL_ALPHA;
> @@ -1000,8 +997,7 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
>  					       dev->capture.camera_port, NULL);
>  		dev->capture.camera_port = NULL;
>  		ret = vchiq_mmal_component_disable(dev->instance,
> -						   dev->capture.
> -						   encode_component);
> +						   dev->capture.encode_component);
>  		if (ret)
>  			v4l2_err(&dev->v4l2_dev,
>  				 "Failed to disable encode component %d\n",
> @@ -1016,26 +1012,22 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
>  		if (f->fmt.pix.width <= max_video_width
>  		    && f->fmt.pix.height <= max_video_height)
>  			camera_port = port =
> -			    &dev->component[MMAL_COMPONENT_CAMERA]->
> -			    output[MMAL_CAMERA_PORT_VIDEO];
> +			    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO];
>  		else
>  			camera_port = port =
> -			    &dev->component[MMAL_COMPONENT_CAMERA]->
> -			    output[MMAL_CAMERA_PORT_CAPTURE];
> +			    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
>  		break;
>  	case MMAL_COMPONENT_IMAGE_ENCODE:
>  		encode_component = dev->component[MMAL_COMPONENT_IMAGE_ENCODE];
>  		port = &dev->component[MMAL_COMPONENT_IMAGE_ENCODE]->output[0];
>  		camera_port =
> -		    &dev->component[MMAL_COMPONENT_CAMERA]->
> -		    output[MMAL_CAMERA_PORT_CAPTURE];
> +		    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
>  		break;
>  	case MMAL_COMPONENT_VIDEO_ENCODE:
>  		encode_component = dev->component[MMAL_COMPONENT_VIDEO_ENCODE];
>  		port = &dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->output[0];
>  		camera_port =
> -		    &dev->component[MMAL_COMPONENT_CAMERA]->
> -		    output[MMAL_CAMERA_PORT_VIDEO];
> +		    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO];
>  		break;
>  	default:
>  		break;
> @@ -1077,13 +1069,11 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
>
>  	if (!ret
>  	    && camera_port ==
> -	    &dev->component[MMAL_COMPONENT_CAMERA]->
> -	    output[MMAL_CAMERA_PORT_VIDEO]) {
> +	    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO]) {
>  		bool overlay_enabled =
>  		    !!dev->component[MMAL_COMPONENT_PREVIEW]->enabled;
>  		struct vchiq_mmal_port *preview_port =
> -		    &dev->component[MMAL_COMPONENT_CAMERA]->
> -		    output[MMAL_CAMERA_PORT_PREVIEW];
> +		    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_PREVIEW];
>  		/* Preview and encode ports need to match on resolution */
>  		if (overlay_enabled) {
>  			/* Need to disable the overlay before we can update
> @@ -1677,8 +1667,7 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
>
>  	/* get the video encoder component ready */
>  	ret = vchiq_mmal_component_init(dev->instance, "ril.video_encode",
> -					&dev->
> -					component[MMAL_COMPONENT_VIDEO_ENCODE]);
> +					&dev->component[MMAL_COMPONENT_VIDEO_ENCODE]);
>  	if (ret < 0)
>  		goto unreg_image_encoder;
>
> @@ -1801,12 +1790,10 @@ static void bcm2835_cleanup_instance(struct bm2835_mmal_dev *dev)
>  				     dev->component[MMAL_COMPONENT_CAMERA]);
>
>  	vchiq_mmal_component_finalise(dev->instance,
> -				      dev->
> -				      component[MMAL_COMPONENT_VIDEO_ENCODE]);
> +				      dev->component[MMAL_COMPONENT_VIDEO_ENCODE]);
>
>  	vchiq_mmal_component_finalise(dev->instance,
> -				      dev->
> -				      component[MMAL_COMPONENT_IMAGE_ENCODE]);
> +				      dev->component[MMAL_COMPONENT_IMAGE_ENCODE]);
>
>  	vchiq_mmal_component_finalise(dev->instance,
>  				      dev->component[MMAL_COMPONENT_PREVIEW]);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1551803887-24894-1-git-send-email-daniela.mormocea%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

