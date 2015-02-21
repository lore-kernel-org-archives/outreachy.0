X-GM-THRID: 1804593004544
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2a1e4c44d17d6c35
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.144.130 with SMTP id sm2mr353161lbb.9.1424533284949;
        Sat, 21 Feb 2015 07:41:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.210 with SMTP id ba18ls346459lab.78.gmail; Sat, 21 Feb
 2015 07:41:23 -0800 (PST)
X-Received: by 10.152.26.74 with SMTP id j10mr340022lag.10.1424533283413;
        Sat, 21 Feb 2015 07:41:23 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ew5si332824wid.1.2015.02.21.07.41.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 07:41:23 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,620,1418079600"; 
   d="scan'208";a="122807825"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 16:41:23 +0100
Date: Sat, 21 Feb 2015 16:41:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: omap24xx: Fixed error
 "space prohibited before that close parenthesis ')'"
In-Reply-To: <1424526583-11586-1-git-send-email-yeliztaneroglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1502211638400.2480@hadrien>
References: <1424526583-11586-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII


On Sat, 21 Feb 2015, Yeliz Taneroglu wrote:

> This patch fixes error 'space prohibited before that close parenthesis
> ')'' found by
> checkpatch in driver media.
>
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/media/omap24xx/v4l2-int-device.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/omap24xx/v4l2-int-device.h b/drivers/staging/media/omap24xx/v4l2-int-device.h
> index 0286c95..666b55f 100644
> --- a/drivers/staging/media/omap24xx/v4l2-int-device.h
> +++ b/drivers/staging/media/omap24xx/v4l2-int-device.h
> @@ -292,7 +292,7 @@ V4L2_INT_WRAPPER_1(s_video_routing, struct v4l2_routing, *);
>
>  V4L2_INT_WRAPPER_0(dev_init);
>  V4L2_INT_WRAPPER_0(dev_exit);
> -V4L2_INT_WRAPPER_1(s_power, enum v4l2_power, );
> +V4L2_INT_WRAPPER_1(s_power, enum v4l2_power);

You have removed an argument that is empty.  I don't think that this code
will compile.

Also, in my tree, this file doesn't exist.  I have:

git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git

in the branch staging-next

julia

>  V4L2_INT_WRAPPER_1(g_priv, void, *);
>  V4L2_INT_WRAPPER_1(g_ifparm, struct v4l2_ifparm, *);
>  V4L2_INT_WRAPPER_1(g_needs_reset, void, *);
> --
> 1.8.3.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424526583-11586-1-git-send-email-yeliztaneroglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

