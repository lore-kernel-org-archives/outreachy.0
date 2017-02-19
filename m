X-GM-THRID: 6388900397139886080
X-Received: by 10.46.88.70 with SMTP id x6mr1571115ljd.22.1487532128128;
        Sun, 19 Feb 2017 11:22:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.56.76 with SMTP id d12ls341979lfj.49.gmail; Sun, 19 Feb
 2017 11:22:07 -0800 (PST)
X-Received: by 10.46.0.147 with SMTP id e19mr1798489lji.6.1487532127310;
        Sun, 19 Feb 2017 11:22:07 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d5si518411wmc.1.2017.02.19.11.22.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 11:22:07 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,182,1484002800"; 
   d="scan'208";a="261183930"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Feb 2017 20:22:06 +0100
Date: Sun, 19 Feb 2017 20:22:06 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: media: Remove ternary
 operator
In-Reply-To: <1487531658-18368-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1702192021560.2363@hadrien>
References: <1487531658-18368-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 20 Feb 2017, Gargi Sharma wrote:

> Relational and logical operators evaluate to either true or false.
> Explicit conversion is not needed so remove the ternary operator.
> Done using coccinelle:
>
> @r@
> expression A,B;
> symbol true,false;
> binary operator b = {==,!=,&&,||,>=,<=,>,<};
> @@
> - (A b B) ? true : false
> + A b B
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/media/platform/bcm2835/controls.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/platform/bcm2835/controls.c b/drivers/staging/media/platform/bcm2835/controls.c
> index a40987b..4d7e2a2 100644
> --- a/drivers/staging/media/platform/bcm2835/controls.c
> +++ b/drivers/staging/media/platform/bcm2835/controls.c
> @@ -218,9 +218,7 @@ static int ctrl_set_iso(struct bm2835_mmal_dev *dev,
>  		dev->iso = iso_values[ctrl->val];
>  	else if (ctrl->id == V4L2_CID_ISO_SENSITIVITY_AUTO)
>  		dev->manual_iso_enabled =
> -				(ctrl->val == V4L2_ISO_SENSITIVITY_MANUAL ?
> -							true :
> -							false);
> +				(ctrl->val == V4L2_ISO_SENSITIVITY_MANUAL);
>
>  	control = &dev->component[MMAL_COMPONENT_CAMERA]->control;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1487531658-18368-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

