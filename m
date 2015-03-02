X-GM-THRID: 5931983175680
X-Received: by 10.112.181.198 with SMTP id dy6mr3987022lbc.22.1425311116703;
        Mon, 02 Mar 2015 07:45:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.42 with SMTP id y10ls468884lag.71.gmail; Mon, 02 Mar
 2015 07:45:16 -0800 (PST)
X-Received: by 10.112.9.65 with SMTP id x1mr3936773lba.16.1425311116292;
        Mon, 02 Mar 2015 07:45:16 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r6si697238wix.0.2015.03.02.07.45.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 07:45:16 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,676,1418079600"; 
   d="scan'208";a="101818786"
Received: from wifi-edu-218.cc.umanitoba.ca ([140.193.160.238])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Mar 2015 16:45:15 +0100
Date: Mon, 2 Mar 2015 09:45:13 -0600 (CST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Somya Anand <somyaanand214@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: media: Add a blank line
 after declaration
In-Reply-To: <1425310712-16755-1-git-send-email-somyaanand214@gmail.com>
Message-ID: <alpine.DEB.2.10.1503020944410.4236@hadrien>
References: <1425310712-16755-1-git-send-email-somyaanand214@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 2 Mar 2015, Somya Anand wrote:

> This patch fixes checkpatch.pl warning by adding a blank line after
> declaration for better readability.
>
> Signed-off-by: Somya Anand <somyaanand214@gmail.com>
> ---
>  drivers/staging/media/davinci_vpfe/dm365_isif.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
> index 0d535b0..b3b4405 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
> @@ -1602,6 +1602,7 @@ isif_pad_get_crop(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh,
>
>  	if (crop->which == V4L2_SUBDEV_FORMAT_TRY) {
>  		struct v4l2_rect *rect;
> +
>  		rect = v4l2_subdev_get_try_crop(fh, ISIF_PAD_SINK);
>  		memcpy(&crop->rect, rect, sizeof(*rect));
>  	} else {
> @@ -1991,7 +1992,9 @@ int vpfe_isif_init(struct vpfe_isif_device *isif, struct platform_device *pdev)
>  	struct media_entity *me = &sd->entity;
>  	static resource_size_t res_len;
>  	struct resource *res;
> +
>  	void *__iomem addr;
> +
>  	int status;

This looks like a false positive.  These are all declarations.

julia

>  	int i = 0;
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425310712-16755-1-git-send-email-somyaanand214%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

