X-GM-THRID: 6743162884292870144
X-Received: by 2002:a17:906:1f89:: with SMTP id t9mr2636338ejr.241.1570018492188;
        Wed, 02 Oct 2019 05:14:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:dd81:: with SMTP id g1ls503325edv.15.gmail; Wed, 02 Oct
 2019 05:14:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwQMF73uMjbjW3N0WTjQFbVnv0yPZ/agfBF51JRJ0Y22mJg6Rl3D7Za/XGI95we5rOxLg1J
X-Received: by 2002:a50:ee10:: with SMTP id g16mr3348243eds.267.1570018491260;
        Wed, 02 Oct 2019 05:14:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570018491; cv=none;
        d=google.com; s=arc-20160816;
        b=kkpFCGcl3BFOtfy5kuvtOABWmvbKaybxNtNSqk2cScyuG4sicXiAwZ/P4UqNaaT/b/
         flSr2ONSq3YYoE69mOlTHvfGmeJ0HGzRoEJgXXWtnSTnGD8aS/ZlfzavbBWBygs9aoaZ
         JJaBfbpTcuWxVojXn3BJ9GHENiCbgY5XjUcLAWvT79gKmuSfAKUhf3IXRdLfkXlLCupi
         OOfiqHkYiZM6BWdg5tOvrqhxltCh1SShm7bdFBT9elbSFomBcDufBdCkMUA40apR13pz
         Bx4nVJnT9MocEjMei0z/jTN9g813BcEcZe5rzuUJnYLbThNfLOO+DW/8yquNLnRntI68
         CIZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=/8XMWv13Sr9QFKGeWXfWRuprckdp4nzjysOZpUI7pnM=;
        b=V+uyEFK1J64dIAy7pM2ZdFOzdbiTUGajUik7eKck9o5KLqc/F9vyLrtbUb5ElY1S59
         FAyR5rcmb1yk49feJuvvmkAKRn2msHj/rPmyAgBmKraaqLKsZBFFPkSsL8v0tvKYifYq
         54UEsCuKpGFoA7N9zvtwWuoMSxBTah5nG3zcHwXKFjDAv1+SD3ucP8yWJWueqhjqL9ZT
         RkfBsvW5H6ovgQtsSjfvILDMOgeKGmOG1iMtY7S8kjmZRAvbqFFt9v10wBgP0peoJ0rM
         CaO3/rMBJZwHs7BP5eVWgjMU96ODA70uThPmfdZD3lBwyfZvNQRpbLY+rjt7vB1x0jmz
         /jVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r3si1454917eds.2.2019.10.02.05.14.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Oct 2019 05:14:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.64,574,1559512800"; 
   d="scan'208";a="404375518"
Received: from portablejulia.rsr.lip6.fr ([132.227.76.63])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Oct 2019 14:14:50 +0200
Date: Wed, 2 Oct 2019 14:14:50 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Nachammai Karuppiah <nachukannan@gmail.com>
cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: omap4iss: Replace
 NULL comparison.
In-Reply-To: <1570014155-41266-1-git-send-email-nachukannan@gmail.com>
Message-ID: <alpine.DEB.2.21.1910021413390.2878@hadrien>
References: <1570014155-41266-1-git-send-email-nachukannan@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 2 Oct 2019, Nachammai Karuppiah wrote:

> This patch modifies NULL comparison to fix checkpatch.pl warning.
>
> Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

Congratulations on getting the first patch in, which looks fine :)

Please join the outreachy-kernel Google groups mailing list.

julia

> ---
>  drivers/staging/media/omap4iss/iss_video.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/media/omap4iss/iss_video.c b/drivers/staging/media/omap4iss/iss_video.c
> index 54144dc..673aa3a 100644
> --- a/drivers/staging/media/omap4iss/iss_video.c
> +++ b/drivers/staging/media/omap4iss/iss_video.c
> @@ -671,7 +671,7 @@ iss_video_get_selection(struct file *file, void *fh, struct v4l2_selection *sel)
>  		return -EINVAL;
>  	}
>  	subdev = iss_video_remote_subdev(video, &pad);
> -	if (subdev == NULL)
> +	if (!subdev)
>  		return -EINVAL;
>
>  	/*
> @@ -726,7 +726,7 @@ iss_video_set_selection(struct file *file, void *fh, struct v4l2_selection *sel)
>  		return -EINVAL;
>  	}
>  	subdev = iss_video_remote_subdev(video, &pad);
> -	if (subdev == NULL)
> +	if (!subdev)
>  		return -EINVAL;
>
>  	sdsel.pad = pad;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1570014155-41266-1-git-send-email-nachukannan%40gmail.com.
>

