X-GM-THRID: 6668919663112486912
X-Received: by 2002:a1c:f214:: with SMTP id s20mr483103wmc.20.1552738416757;
        Sat, 16 Mar 2019 05:13:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:e142:: with SMTP id y63ls1436476wmg.7.canary-gmail; Sat,
 16 Mar 2019 05:13:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzFGUjbOm2l7C6fA33883F23prFLzVKBQydTUim5DyJ4cIvLVI5QmBKNWgq/bNx25i2pnLV
X-Received: by 2002:a7b:c18d:: with SMTP id y13mr523917wmi.2.1552738415879;
        Sat, 16 Mar 2019 05:13:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552738415; cv=none;
        d=google.com; s=arc-20160816;
        b=D1k+XoHtGtLqC2FxxylzF+YlD1oz5GjXtLT5osjrROR/mfdcaFrdOnuO3M40z4bW/h
         /9smlJY5DfOk6Fe5EklAThEs/Gnir+4f/H3VkRatqX49P5domc+hedYiUZbaHyp8YlR7
         Vi9TbskUva42k8h8FVBVr6Rzb5L88KH8m0B2yK9SzqijtwGzzCZAv9q5gXONuIM4V9R3
         +1agwh63eHnhbWl9wFGarHadL665qTdZcMIqNypWEZd8WGEtMKVIHZojqI/K2rbilwyT
         KrraAH0Pxf5bGHGrUC6Pb9QXuH0IP3+s/bvZ8TaORwyr2brQMRbS8yR414So54YeqzdB
         vtww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ArqPWIz+aRknzZ3A3k+9oS0IfelqyXI/2cqeCvbdVm4=;
        b=CYMSNpDt4Oock0Rn5uhnL9ozWYvZawHYLj136UqNc6r5NMEZb4ICxDsRmiGxcrc2sj
         djABQffxY93bbpI6yQ4ayB+LZ3tGgjDehr1r1kfthDSLyZ7oweM5mkhya3t/SAxq0YJU
         1N0JzxCiLa76G8IJazQbjQUDozJEhIHiG5aciq2xkNFx7dl3xdsdh1bNYWPHK011ONuu
         iFT7ecbCQx1IUDISeaZD+H4UJg+yFFdHJBjHprvJd8UToIxvIXuGufO6Q3swLtcqGUty
         VXnfpz1YtpC9Cwia+VLi8oiIL3Dpus4BgHfBNgVwxtgIdFX71SvVa/wDncZitzYXi0yS
         91qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 2si243352wma.3.2019.03.16.05.13.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 05:13:35 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,485,1544482800"; 
   d="scan'208";a="373991383"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 13:13:35 +0100
Date: Sat, 16 Mar 2019 13:13:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: bcm2835-camera:
 avoid multiple assignments
In-Reply-To: <1552728839-7072-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903161310540.2487@hadrien>
References: <1552728839-7072-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Payal Kshirsagar wrote:

> To avoid style issues, avoid multiple assignments.
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  .../staging/vc04_services/bcm2835-camera/bcm2835-camera.c    | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> index d22b928..5e5b610 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> @@ -1011,11 +1011,15 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
>  		/* Make a further decision on port based on resolution */
>  		if (f->fmt.pix.width <= max_video_width &&
>  		    f->fmt.pix.height <= max_video_height)
> -			camera_port = port =
> -			    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO];
> +			camera_port =
> +			&dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO];
> +			port =
> +			&dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO];
>  		else
> -			camera_port = port =
> -			    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
> +			camera_port =
> +			&dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
> +			port =
> +			&dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];

I don't think this code compiles. Also, duplicating the huge expression
doesn't seem like an advantage.

julia

>  		break;
>  	case MMAL_COMPONENT_IMAGE_ENCODE:
>  		encode_component = dev->component[MMAL_COMPONENT_IMAGE_ENCODE];
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1552728839-7072-1-git-send-email-payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

