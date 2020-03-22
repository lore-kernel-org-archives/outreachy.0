X-GM-THRID: 6807107593039773696
X-Received: by 2002:a1c:790f:: with SMTP id l15mr16514624wme.92.1584904674717;
        Sun, 22 Mar 2020 12:17:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f5cc:: with SMTP id k12ls983825wrp.6.gmail; Sun, 22 Mar
 2020 12:17:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtchGXyHepPvdM6IZ6XPfB46fHNM1wLLCsmgnKQDmYTS1ltjImXsqUk998OfCNGppkI6OOZ
X-Received: by 2002:adf:f7ce:: with SMTP id a14mr26072077wrq.180.1584904673130;
        Sun, 22 Mar 2020 12:17:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584904673; cv=none;
        d=google.com; s=arc-20160816;
        b=ORPMjx7QFzOK5BHk+BaBIgRnvmu1x5zg5RhCfsdqY2Xgiqmm9r2ybpN8+j7iPK5IbZ
         7t2CQcfqQG2fslgbdeA+t8GWObNmdvXQ7aOK+tL9kLQkWbQNHzeD60ICOofglEK46WLn
         WfA4ND5N8zrbZGLXqH/EdJ/pYzSCmdD2WBuem8a5E//gzgGEPwD0hs+Jt0bWxi4oAwdt
         GQgkItV/o7YKQ7C2horU9O+gaNwtUeaSlHIF5D4KtHZJZSTBsSl92mXOetTDouqJqmcO
         sqLizcNb3VryEIYO2s8U4QASVQP9VNrkkLG4Q3JgocKHkPOXLF6knbXnqnc+DN+EELz0
         BZtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=l2c+eoVMKvdTUCruBGfhOWs6y3efRAeoJhljABVqilY=;
        b=xYW4DRB6DzobxLXwhlpPK4ChQFbpYoYfWpggl6g4kUcN4Ci34mMqLroMoDy/MI3ect
         S7HmhUcq60zrTJHuJEdt5vLg3kk4KTXPfhu3w9s7vYaI7WOaDOzZme79mhATawNLuncH
         gPRpmrt583SKlIKSajtvsn4jSQcUD4vY4PbYWkVHONZLiRdNlA5ViK0IJoYutlK9Yjz/
         FXJMy+nDKb+d1K0Y+bY9Mq5CPu3fq7XYM+f9Gd85lN4+N6Zpdk4Dvlov7W93DBWrmh73
         o4y90CQnrsWsyF5vKBJP7lnmIS+Jwyogg5+WTNPgd2l0xdxCZlh9YB293wQlvLHX9b0l
         MCWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i19si679701wml.0.2020.03.22.12.17.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 12:17:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,293,1580770800"; 
   d="scan'208";a="441562746"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2020 20:17:52 +0100
Date: Sun, 22 Mar 2020 20:17:52 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com, lars@metafoo.de, 
    Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de, 
    pmeerw@pmeerw.net, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2] media: staging/intel-ipu3: Reformat
 pointer initialization
In-Reply-To: <20200322185350.GA12377@deeUbuntu>
Message-ID: <alpine.DEB.2.21.2003222017290.2325@hadrien>
References: <20200322185350.GA12377@deeUbuntu>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 23 Mar 2020, Deepak R Varma wrote:

> Reformat pointer initialization to make it more readable as per the
> coding standards. Problem detected by checkpatch.
>
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>
> Changes since v1:
>     - Correct commit message and description as advised vy Stefano. Its
>       pointer initialization and not declaration as mentioned earlier.
>
>  drivers/staging/media/ipu3/ipu3-v4l2.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/ipu3/ipu3-v4l2.c b/drivers/staging/media/ipu3/ipu3-v4l2.c
> index 569e27b824c8..52826fad6f42 100644
> --- a/drivers/staging/media/ipu3/ipu3-v4l2.c
> +++ b/drivers/staging/media/ipu3/ipu3-v4l2.c
> @@ -485,7 +485,6 @@ static int imgu_vb2_start_streaming(struct vb2_queue *vq, unsigned int count)
>  	if (r < 0)
>  		goto fail_return_bufs;
>
> -

This change shouldn't be part of this patch.

julia

>  	if (!imgu_all_nodes_streaming(imgu, node))
>  		return 0;
>
> @@ -1013,8 +1012,9 @@ static const struct v4l2_ioctl_ops imgu_v4l2_meta_ioctl_ops = {
>
>  static int imgu_sd_s_ctrl(struct v4l2_ctrl *ctrl)
>  {
> -	struct imgu_v4l2_subdev *imgu_sd =
> -		container_of(ctrl->handler, struct imgu_v4l2_subdev, ctrl_handler);
> +	struct imgu_v4l2_subdev *imgu_sd = container_of(ctrl->handler,
> +							struct imgu_v4l2_subdev,
> +							ctrl_handler);
>  	struct imgu_device *imgu = v4l2_get_subdevdata(&imgu_sd->subdev);
>  	struct device *dev = &imgu->pci_dev->dev;
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200322185350.GA12377%40deeUbuntu.
>

