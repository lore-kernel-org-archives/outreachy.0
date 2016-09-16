X-GM-THRID: 6330964939301191680
X-Received: by 10.28.169.81 with SMTP id s78mr98355wme.13.1474051201628;
        Fri, 16 Sep 2016 11:40:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.29.133 with SMTP id d127ls913997wmd.27.canary; Fri, 16 Sep
 2016 11:39:59 -0700 (PDT)
X-Received: by 10.28.56.199 with SMTP id f190mr97204wma.8.1474051199674;
        Fri, 16 Sep 2016 11:39:59 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si965330wmd.1.2016.09.16.11.39.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 11:39:59 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,346,1470693600"; 
   d="scan'208";a="237154062"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Sep 2016 20:39:45 +0200
Date: Fri, 16 Sep 2016 20:39:45 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: media: davinci_vpfe:
 Replace explicit NULL comparison with ! operator
In-Reply-To: <20160916175930.GA25922@sayli-HP-15-Notebook-PC>
Message-ID: <alpine.DEB.2.10.1609162039210.3397@hadrien>
References: <20160916175930.GA25922@sayli-HP-15-Notebook-PC>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 16 Sep 2016, sayli karnik wrote:

> This patch replaces the explicit NULL comparisons with ! operator.
> It was found using Coccinelle:
>
> @disable is_null@
> expression e;
> @@
> - e == NULL
> + !e
>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes in v2:
> Disabled is_null in the coccinelle script
>
>  drivers/staging/media/davinci_vpfe/vpfe_video.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.c b/drivers/staging/media/davinci_vpfe/vpfe_video.c
> index 3319fb8..8be9f85 100644
> --- a/drivers/staging/media/davinci_vpfe/vpfe_video.c
> +++ b/drivers/staging/media/davinci_vpfe/vpfe_video.c
> @@ -37,7 +37,7 @@ static struct media_entity *vpfe_get_input_entity
>  	struct media_pad *remote;
>
>  	remote = media_entity_remote_pad(&vpfe_dev->vpfe_isif.pads[0]);
> -	if (remote == NULL) {
> +	if (!remote) {
>  		pr_err("Invalid media connection to isif/ccdc\n");
>  		return NULL;
>  	}
> @@ -54,7 +54,7 @@ static int vpfe_update_current_ext_subdev(struct vpfe_video_device *video)
>  	int i;
>
>  	remote = media_entity_remote_pad(&vpfe_dev->vpfe_isif.pads[0]);
> -	if (remote == NULL) {
> +	if (!remote) {
>  		pr_err("Invalid media connection to isif/ccdc\n");
>  		return -EINVAL;
>  	}
> @@ -107,7 +107,7 @@ __vpfe_video_get_format(struct vpfe_video_device *video,
>  	int ret;
>
>  	subdev = vpfe_video_remote_subdev(video, &pad);
> -	if (subdev == NULL)
> +	if (!subdev)
>  		return -EINVAL;
>
>  	fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
> @@ -236,7 +236,7 @@ static int vpfe_video_validate_pipeline(struct vpfe_pipeline *pipe)
>  	 * format of the connected pad.
>  	 */
>  	subdev = vpfe_video_remote_subdev(pipe->outputs[0], NULL);
> -	if (subdev == NULL)
> +	if (!subdev)
>  		return -EPIPE;
>
>  	while (1) {
> @@ -413,7 +413,7 @@ static int vpfe_open(struct file *file)
>  	/* Allocate memory for the file handle object */
>  	handle = kzalloc(sizeof(struct vpfe_fh), GFP_KERNEL);
>
> -	if (handle == NULL)
> +	if (!handle)
>  		return -ENOMEM;
>
>  	v4l2_fh_init(&handle->vfh, &video->video_dev);
> @@ -683,14 +683,14 @@ static int vpfe_enum_fmt(struct file *file, void  *priv,
>  	}
>  	/* get the remote pad */
>  	remote = media_entity_remote_pad(&video->pad);
> -	if (remote == NULL) {
> +	if (!remote) {
>  		v4l2_err(&vpfe_dev->v4l2_dev,
>  			 "invalid remote pad for video node\n");
>  		return -EINVAL;
>  	}
>  	/* get the remote subdev */
>  	subdev = vpfe_video_remote_subdev(video, NULL);
> -	if (subdev == NULL) {
> +	if (!subdev) {
>  		v4l2_err(&vpfe_dev->v4l2_dev,
>  			 "invalid remote subdev for video node\n");
>  		return -EINVAL;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160916175930.GA25922%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

