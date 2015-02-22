X-GM-THRID: 2510415724544
X-Received: by 10.152.37.200 with SMTP id a8mr786158lak.5.1424623613615;
        Sun, 22 Feb 2015 08:46:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.13.74 with SMTP id ew10ls395925wid.20.gmail; Sun, 22 Feb
 2015 08:46:53 -0800 (PST)
X-Received: by 10.194.142.174 with SMTP id rx14mr787893wjb.4.1424623613315;
        Sun, 22 Feb 2015 08:46:53 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ta1si512598wic.1.2015.02.22.08.46.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 08:46:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,625,1418079600"; 
   d="scan'208";a="100919606"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2015 17:46:52 +0100
Date: Sun, 22 Feb 2015 17:46:46 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: Remove unnecessary
 else after return
In-Reply-To: <1424622517-7849-1-git-send-email-dilekuzulmez@gmail.com>
Message-ID: <alpine.DEB.2.10.1502221745530.2612@hadrien>
References: <1424622517-7849-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 22 Feb 2015, Dilek Uzulmez wrote:

> This patch fixes checkpatch.pl warning in files of media
> WARNING: else is not generally useful after a break or return
>
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/media/vino/saa7191.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/media/vino/saa7191.c b/drivers/staging/media/vino/saa7191.c
> index 8e96992..f411e1f 100644
> --- a/drivers/staging/media/vino/saa7191.c
> +++ b/drivers/staging/media/vino/saa7191.c
> @@ -393,11 +393,10 @@ static int saa7191_autodetect_norm(struct v4l2_subdev *sd)
>  		/* 60hz signal -> NTSC */
>  		dprintk("NTSC\n");
>  		return saa7191_s_std(sd, V4L2_STD_NTSC);
> -	} else {
> -		/* 50hz signal -> PAL */
> -		dprintk("PAL\n");
> -		return saa7191_s_std(sd, V4L2_STD_PAL);
>  	}
> +	/* 50hz signal -> PAL */
> +	dprintk("PAL\n");
> +	return saa7191_s_std(sd, V4L2_STD_PAL);

It looks like the existing code is more parallel and easier to
understand.

The checkpatch comment applies more to the case where one branch
represents a failure.  But that is not the case here.

julia

>  }
>
>  static int saa7191_g_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424622517-7849-1-git-send-email-dilekuzulmez%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

