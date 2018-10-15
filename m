X-GM-THRID: 6612482196656619520
X-Received: by 2002:ac2:50ca:: with SMTP id h10-v6mr419163lfm.9.1539590651138;
        Mon, 15 Oct 2018 01:04:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:4411:: with SMTP id r17-v6ls970351lja.17.gmail; Mon, 15
 Oct 2018 01:04:10 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61ay0gJNVBaXL9k3mOwES4hpW2Jc1Xv0NaFVUHf0ZaoCDmFKo1bTT6yjgJaZfB9JjnU56/i
X-Received: by 2002:a2e:6395:: with SMTP id s21-v6mr426947lje.35.1539590650305;
        Mon, 15 Oct 2018 01:04:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539590650; cv=none;
        d=google.com; s=arc-20160816;
        b=cL1BGCCPEA+XZmIKhTdD1b//+gYHEMBRHMwkjIf4zf4GXxZz/L2lqgyWA3OZMnJPpQ
         nSP68FcX/NsIn1mD/B5AXWRGSxK78a7g3xApVBeBnilD2NfFz+aNR7GUaOOICtgi6uxa
         xKyk017gCN2dPQPM3GFpFfsq5gB421a0Vum7E0kLuE/PcCGBAjdPZe9M5UQqA7Ssqi9O
         K+IVTDYuM6W+pXhst1Ga8f+EuAqL6DI+TegVTYWCFISZELWdjJcWe4AWtmNepX8TVYlr
         wvjeH4S0ILBBezJRcB2Am28oeLtXod+nC1ExThCrb5q8WYiYdAg8XCc4bccx0yoNMfYN
         oWXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=1Vi5ZPo5rjDjaKn4h/Z2DKPfADur3uw430k2Kwqy4lA=;
        b=M19h66sgRqhYOgYlDDGy6rkiJC3rDstYbE+RWdFsC/do46m9P0gYoTJFyoegzEkeLW
         pqQcp0Ih809a8GeG3TFxFRboyKExXlnTjDqWyRp+Htfx2I6yS0HU/gWC4cRSEkDW87x1
         44rXYzbzoAn5Ttj6Rxjnwq3Z33e9vAxPuzYQDP0HmoGEaIUwzYuxNQqGL9Ul4BaGD/80
         mCl4O5htulk0knmpX0Ma+h8svu1a0xl/kMJ1HormbD/jQhvrJBvKjzLASWYV4L/fvXPj
         2wcgzpSRYU2aNEbKwJ5oNiNMBWbpo1Ac2RJcS61Ojq9KePcVu6pXn8n4MvUEx79C1cj2
         7rDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h20-v6si402912ljj.5.2018.10.15.01.04.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Oct 2018 01:04:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,383,1534802400"; 
   d="scan'208";a="282076098"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Oct 2018 10:04:08 +0200
Date: Mon, 15 Oct 2018 10:04:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, Eric Anholt <eric@anholt.net>, 
    Stefan Wahren <stefan.wahren@i2se.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, 
    Scott Branden <sbranden@broadcom.com>, 
    bcm-kernel-feedback-list@broadcom.com
Subject: Re: [Outreachy kernel][PATCH] staging: bcm2835-camera: Remove 'ret'
 variable
In-Reply-To: <20181015072653.GA14133@aakashd-VirtualBox>
Message-ID: <alpine.DEB.2.21.1810150959380.2956@hadrien>
References: <20181015072653.GA14133@aakashd-VirtualBox>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 15 Oct 2018, Bhanusree Pola wrote:

> return value to be returned without using extra variable 'ret'.

Please start sentences with a capital letter.

> use coccinelli semantic patch ret.cocci

Thanks for trying Coccinelle :)  coccinelli -> Coccinelle.

If you use a semantic patch that is not part of the kernel, it would be
good to put it in the commit message, if it is not too complicated.

If you use a semantic patch that is part of the kernel, then you can use
the tag Generated-by, as in:

Generated-by: scripts/coccinelle/api/alloc/kzalloc-simple.cocci

>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> index c04bdf0..a124f51 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> @@ -1510,7 +1510,6 @@ static int set_camera_parameters(struct vchiq_mmal_instance *instance,
>  				 struct vchiq_mmal_component *camera,
>  				 struct bm2835_mmal_dev *dev)
>  {
> -	int ret;
>  	struct mmal_parameter_camera_config cam_config = {
>  		.max_stills_w = dev->max_width,
>  		.max_stills_h = dev->max_height,
> @@ -1526,10 +1525,9 @@ static int set_camera_parameters(struct vchiq_mmal_instance *instance,
>  		.use_stc_timestamp = MMAL_PARAM_TIMESTAMP_MODE_RAW_STC
>  	};
>
> -	ret = vchiq_mmal_port_parameter_set(instance, &camera->control,
> +	return vchiq_mmal_port_parameter_set(instance, &camera->control,
>  					    MMAL_PARAMETER_CAMERA_CONFIG,
>  					    &cam_config, sizeof(cam_config));

You should move the arguments over by one space so that they are on the
right side of the (.  Coccinelle doesn't always get the spacing quite
right...

julia

> -	return ret;



>  }
>
>  #define MAX_SUPPORTED_ENCODINGS 20
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181015072653.GA14133%40aakashd-VirtualBox.
> For more options, visit https://groups.google.com/d/optout.
>

