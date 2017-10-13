X-GM-THRID: 6476152782824931328
X-Received: by 10.28.131.208 with SMTP id f199mr62409wmd.11.1507873919527;
        Thu, 12 Oct 2017 22:51:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.145.226 with SMTP id 89ls218326wri.10.gmail; Thu, 12 Oct
 2017 22:51:58 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QB9MyFiNJv1ntgWWJFJPzouUwNIZK9Prl9oqW5CrB/JZfibChWEO+Gae3p5zeJAh237IOf+
X-Received: by 10.28.236.83 with SMTP id k80mr62361wmh.29.1507873918614;
        Thu, 12 Oct 2017 22:51:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507873918; cv=none;
        d=google.com; s=arc-20160816;
        b=Km9Dd/iTUphwj1uBbdqRfenO5sdwxj6hUxnldQFnwIfYI98X04g7lzBOLmRJ5GBP3O
         GbWbffsGhcv978d+XzckyWRZ5VxWN7/7wUjL3Xuhcn0ZmaTcxGJLgYWSBGD5WUa/EgtW
         CmTfXYgWqGpWvtJDVKpeAzG/qlSjz2jUAl6ewlz6AofuPxK41RfDr4n3tEDoBb74Ue/K
         G8Fwrc4Kk0zKI0Tk4G63nbLQWwhPto44VY9HiTx2SmfttZ2IF2UG4GFJWau6SxnX4jkG
         U9cxn9C3M8wvYDVxofdlJygdY70Rmq9EfZ7UxwGAt9UjNRtLvjILri8l43JEQ/5qDGYy
         6Idw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=ffOj3rq2odjm1DbrwHve7m/YXzyBJkU1pe1hN1NpstA=;
        b=sQn39M9nL3wDlecowvXvmqASVF4jcXm7XOZkHnFRDrV1h1MzPliSv1AIvu9sFEX88z
         uetUb+5h93siVJCqS2y9MkK87d8+8zt/F3M3GMqypM0+15p6HHPh/v+uzciC/2CVLh9z
         HjvlFHzBc7QuvZDYHc8QslwDG5CA1PhToCf51o9YV4ZxxEsKSc/Dd3MDeiMYtFKPz7aO
         3fC9nLzIaRoIZX0nzu1c9JUW4etqj3Jxe6RK+3tkDZZ8eujNvhwqcs7sYGRLBrwQJjU6
         49UdIZTDNYFt//5zPMToQHuWXdU10xMnK44Iu1Lhbg0FHAhqf3h8y5CRspMtRXlIhhpe
         jFtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 200si108276wmj.0.2017.10.12.22.51.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 22:51:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.43,369,1503352800"; 
   d="scan'208";a="240842275"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Oct 2017 07:51:57 +0200
Date: Fri, 13 Oct 2017 07:51:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: daniel.vetter@ffwll.ch, seanpaul@chromium.org, jani.nikula@linux.intel.com, 
    dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] drm: Replace kzalloc with kcalloc
In-Reply-To: <20171012221758.512-1-harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1710130751031.3147@hadrien>
References: <20171012221758.512-1-harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 13 Oct 2017, Harsha Sharma wrote:

> Prefer kcalloc over kzalloc to allocate an array.
> This patch fixes checkcpatch issue.
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
>  drivers/gpu/drm/drm_crtc_helper.c  | 4 ++--
>  drivers/gpu/drm/drm_fb_helper.c    | 2 +-
>  drivers/gpu/drm/drm_plane_helper.c | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_crtc_helper.c b/drivers/gpu/drm/drm_crtc_helper.c
> index eab36a460638..ceb131637e2f 100644
> --- a/drivers/gpu/drm/drm_crtc_helper.c
> +++ b/drivers/gpu/drm/drm_crtc_helper.c
> @@ -562,12 +562,12 @@ int drm_crtc_helper_set_config(struct drm_mode_set *set,
>  	 * Allocate space for the backup of all (non-pointer) encoder and
>  	 * connector data.
>  	 */
> -	save_encoder_crtcs = kzalloc(dev->mode_config.num_encoder *
> +	save_encoder_crtcs = kcalloc(dev->mode_config.num_encoder *
>  				sizeof(struct drm_crtc *), GFP_KERNEL);

Doesn't kcalloc take 3 arguments?  You need to compile the code and check
that you have obtained a .o file for the file you modified.

julia

>  	if (!save_encoder_crtcs)
>  		return -ENOMEM;
>
> -	save_connector_encoders = kzalloc(dev->mode_config.num_connector *
> +	save_connector_encoders = kcalloc(dev->mode_config.num_connector *
>  				sizeof(struct drm_encoder *), GFP_KERNEL);
>  	if (!save_connector_encoders) {
>  		kfree(save_encoder_crtcs);
> diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_helper.c
> index 1b8f013ffa65..68d197df89fd 100644
> --- a/drivers/gpu/drm/drm_fb_helper.c
> +++ b/drivers/gpu/drm/drm_fb_helper.c
> @@ -2266,7 +2266,7 @@ static int drm_pick_crtcs(struct drm_fb_helper *fb_helper,
>  	if (modes[n] == NULL)
>  		return best_score;
>
> -	crtcs = kzalloc(fb_helper->connector_count *
> +	crtcs = kcalloc(fb_helper->connector_count *
>  			sizeof(struct drm_fb_helper_crtc *), GFP_KERNEL);
>  	if (!crtcs)
>  		return best_score;
> diff --git a/drivers/gpu/drm/drm_plane_helper.c b/drivers/gpu/drm/drm_plane_helper.c
> index 06aee1741e96..74054653530e 100644
> --- a/drivers/gpu/drm/drm_plane_helper.c
> +++ b/drivers/gpu/drm/drm_plane_helper.c
> @@ -354,7 +354,7 @@ int drm_primary_helper_update(struct drm_plane *plane, struct drm_crtc *crtc,
>  	/* Find current connectors for CRTC */
>  	num_connectors = get_connectors_for_crtc(crtc, NULL, 0);
>  	BUG_ON(num_connectors == 0);
> -	connector_list = kzalloc(num_connectors * sizeof(*connector_list),
> +	connector_list = kcalloc(num_connectors * sizeof(*connector_list),
>  				 GFP_KERNEL);
>  	if (!connector_list)
>  		return -ENOMEM;
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171012221758.512-1-harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

