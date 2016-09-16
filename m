X-GM-THRID: 6330964939301191680
X-Received: by 10.194.127.234 with SMTP id nj10mr75935wjb.20.1474043587910;
        Fri, 16 Sep 2016 09:33:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.67 with SMTP id 64ls507266ljj.3.gmail; Fri, 16 Sep 2016
 09:33:05 -0700 (PDT)
X-Received: by 10.46.71.143 with SMTP id u137mr76637lja.15.1474043585477;
        Fri, 16 Sep 2016 09:33:05 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p199si915895wmd.1.2016.09.16.09.33.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 09:33:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,345,1470693600"; 
   d="scan'208";a="193704500"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Sep 2016 18:32:59 +0200
Date: Fri, 16 Sep 2016 18:32:58 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: media: davinci_vpfe: Replace
 explicit NULL comparison with ! operator
In-Reply-To: <20160916161701.GA25197@sayli-HP-15-Notebook-PC>
Message-ID: <alpine.DEB.2.10.1609161827310.25146@hadrien>
References: <20160916161701.GA25197@sayli-HP-15-Notebook-PC>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 16 Sep 2016, sayli karnik wrote:

> This patch replaces the explicit NULL comparisons with ! operator.
> It was found using Coccinelle:
>
> @@
> expression e;
> @@
> - e == NULL
> + !e
>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/media/davinci_vpfe/vpfe_video.c | 17 ++++++++---------
>  1 file changed, 8 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.c b/drivers/staging/media/davinci_vpfe/vpfe_video.c
> index 3319fb8..7483de0 100644
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
> @@ -75,8 +75,7 @@ static int vpfe_update_current_ext_subdev(struct vpfe_video_device *video)
>  	}
>  	/* find the v4l2 subdev pointer */
>  	for (i = 0; i < vpfe_dev->num_ext_subdevs; i++) {
> -		if (!strcmp(video->current_ext_subdev->module_name,
> -			vpfe_dev->sd[i]->name))
> +		if (!strcmp(video->current_ext_subdev->module_name, vpfe_dev->sd[i]->name))

Here you reformatted exiting code in an unpleasant way.  Checkpatch should
have complained about this.

You might wonder why Coccielle did this, when there is not == NULL here.
The reason is that Coccinelle has a feature called an "isomorphism" that
makes it consider some forms of code to be pretty much the same as some
other forms of code.  In particular, if you make a pattern with x == NULL,
it will also match !x and NULL == x, because for most purposes they are
all the same.

That is not what you want here, though.  Just put disable is_null in
between the initial @@ of your rule (ie @disable is_null@), and the
problem will go away.  You can find the definition of is_null in the file
standard.iso in your Coccinelle distributions.  You can read more about
isomorphisms in the tutorial:

http://coccinelle.lip6.fr/papers/tutorial.pdf

slide 38 and onwards.

julia

>  			video->current_ext_subdev->subdev = vpfe_dev->sd[i];
>  	}
>  	return 0;
> @@ -107,7 +106,7 @@ __vpfe_video_get_format(struct vpfe_video_device *video,
>  	int ret;
>
>  	subdev = vpfe_video_remote_subdev(video, &pad);
> -	if (subdev == NULL)
> +	if (!subdev)
>  		return -EINVAL;
>
>  	fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
> @@ -236,7 +235,7 @@ static int vpfe_video_validate_pipeline(struct vpfe_pipeline *pipe)
>  	 * format of the connected pad.
>  	 */
>  	subdev = vpfe_video_remote_subdev(pipe->outputs[0], NULL);
> -	if (subdev == NULL)
> +	if (!subdev)
>  		return -EPIPE;
>
>  	while (1) {
> @@ -413,7 +412,7 @@ static int vpfe_open(struct file *file)
>  	/* Allocate memory for the file handle object */
>  	handle = kzalloc(sizeof(struct vpfe_fh), GFP_KERNEL);
>
> -	if (handle == NULL)
> +	if (!handle)
>  		return -ENOMEM;
>
>  	v4l2_fh_init(&handle->vfh, &video->video_dev);
> @@ -683,14 +682,14 @@ static int vpfe_enum_fmt(struct file *file, void  *priv,
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160916161701.GA25197%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

