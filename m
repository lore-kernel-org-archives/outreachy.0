X-GM-THRID: 6339411924355121152
X-Received: by 10.129.120.196 with SMTP id t187mr6581552ywc.65.1476009850328;
        Sun, 09 Oct 2016 03:44:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.116.130 with SMTP id o124ls2553203itc.5.gmail; Sun, 09 Oct
 2016 03:44:08 -0700 (PDT)
X-Received: by 10.66.17.137 with SMTP id o9mr6315195pad.124.1476009847984;
        Sun, 09 Oct 2016 03:44:07 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id x14si1828331vkd.3.2016.10.09.03.44.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 03:44:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,465,1473112800"; 
   d="scan'208";a="239995416"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Oct 2016 12:44:05 +0200
Date: Sun, 9 Oct 2016 12:44:04 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    mchehab@kernel.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: radio-bcm2048: constify
 v4l2_ioctl_ops structure
In-Reply-To: <1476009323-19232-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1610091243300.3462@hadrien>
References: <1476009323-19232-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 9 Oct 2016, Bhumika Goyal wrote:

> Declare the structure v4l2_ioctl_ops as const as it is only stored in
> the ioctl_ops field of video_device structure. As this field is of type
> const struct v4l2_ioctl_ops *, so v4l2_ioctl_ops structures having this
> property can also be made const.
> Done using coccinelle:
>
> @r1 disable optional_qualifier @
> identifier i;
> position p;
> @@
> static struct v4l2_ioctl_ops i@p = {...};
>
> @ok1@
> identifier r1.i;
> position p;
> struct video_device s;
> @@
> s.ioctl_ops=&i@p;
>
> @bad@
> position p!={r1.p,ok1.p};
> identifier r1.i;
> @@
> i@p
>
> @depends on !bad disable optional_qualifier@
> identifier r1.i;
> @@
> static
> +const
> struct v4l2_ioctl_ops i={...};
>
> @depends on !bad disable optional_qualifier@
> identifier r1.i;
> @@
> +const
> struct v4l2_ioctl_ops i;
>
> File size before:
>    text	   data	    bss	    dec	    hex	filename
>   20465	   3220	     32	  23717	   5ca5
> drivers/staging/media/bcm2048/radio-bcm2048.o
>
> File size after:
>    text	   data	    bss	    dec	    hex	filename
>   21425	   2260	     32	  23717	   5ca5
> drivers/staging/media/bcm2048/radio-bcm2048.o
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/media/bcm2048/radio-bcm2048.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
> index ea15cc6..fe637ce 100644
> --- a/drivers/staging/media/bcm2048/radio-bcm2048.c
> +++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
> @@ -2540,7 +2540,7 @@ static int bcm2048_vidioc_s_hw_freq_seek(struct file *file, void *priv,
>  	return err;
>  }
>
> -static struct v4l2_ioctl_ops bcm2048_ioctl_ops = {
> +static const struct v4l2_ioctl_ops bcm2048_ioctl_ops = {
>  	.vidioc_querycap	= bcm2048_vidioc_querycap,
>  	.vidioc_g_input		= bcm2048_vidioc_g_input,
>  	.vidioc_s_input		= bcm2048_vidioc_s_input,
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1476009323-19232-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

