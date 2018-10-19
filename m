X-GM-THRID: 6613877034371252224
X-Received: by 2002:a1c:2085:: with SMTP id g127-v6mr200693wmg.7.1539932656746;
        Fri, 19 Oct 2018 00:04:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:b403:: with SMTP id d3-v6ls277549wmf.4.gmail; Fri, 19
 Oct 2018 00:04:15 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62ZEvwg6qnTTNekIYlz1K2kfskC+47fzO1piLZZwVP/fpKM3/JoSx9HKbjeoJOv/2/k98OY
X-Received: by 2002:a1c:b182:: with SMTP id a124-v6mr213877wmf.24.1539932655979;
        Fri, 19 Oct 2018 00:04:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539932655; cv=none;
        d=google.com; s=arc-20160816;
        b=U13SZcA5sRKfnJ/yEF5TJaQepomzOQ5LzJjgErR8Ok71y+NxvexHpyYSU+amb20eDe
         ip+yYXr3Z3cvaO9VH9xjxkRJRnCTRfiOol57RLL1LO01cNZRKCq3Oe7GpUVDoxjXLEr/
         OOdsU/nwuEr+KrEkITUTPM7tpcWaGWnlFNhODzHiGeiejhIXyEVMrqAArBaLreiqphgL
         BI9/irNsBpLgl4LJUBZv2LF9ij4V0zg19/9rZ9uzR7YJK3rvCY8lhPZVLZET82U25RBS
         DeCHolDugU7lWwsJ6E3oFHIxir1pV1lpFYZuGqPcJvQsgl3res55RXX5hYKRssBsed2i
         3kyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=OuTCX+r99tEW2EBFKFK2fLdliGSD+PNwZsoZ5ZZg6BE=;
        b=rDjny/7O22GOQ3Z+lM16O9MNKq3d99n0cJNL1dk9JmLFdGDKJYJLvXyweartbg8Ryk
         ImiLe0MHeUUKy+ZHHKpGo3GynpRD4qW9ktrWpbwwyG1gKeRKm2P3qcL8+7YNUzn2iNlk
         0HElCnLp9Ixu2O2uaVY6CRc6odX+XpRJOozpxULx+rgE7g7e8TkySEKzwqUHv2l+YxyU
         MXEFmg1YdJEtsmFb8LgCp9Y5WXcVpAo+6JALezUDYgCqzd/FVT8k0NLNyazEZ4gcJN81
         WifNA5IiBoynL9w50ykwLCx1msu+En5LBEYD/yZBwha+eQLQ94a/C7wx1UCrPbARwUO2
         RfxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id z139-v6si62251wmc.0.2018.10.19.00.04.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Oct 2018 00:04:15 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,399,1534802400"; 
   d="scan'208";a="282633576"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Oct 2018 09:04:15 +0200
Date: Fri, 19 Oct 2018 09:04:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Kimberly Brown <kimbrownkd@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Steve Longerbeam <slongerbeam@gmail.com>, 
    Philipp Zabel <p.zabel@pengutronix.de>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] media: imx: capture: Remove unneeded
 variable
In-Reply-To: <20181019014041.GA9250@v>
Message-ID: <alpine.DEB.2.21.1810190904010.2960@hadrien>
References: <20181019014041.GA9250@v>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 18 Oct 2018, Kimberly Brown wrote:

> Remove local variable 'ret', which is used to store the return value.
> It is not changed during function execution. Return the variable's
> initial value, 0. Issue found by coccicheck.
>
> Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/media/imx/imx-media-capture.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
> index 256039ce561e..f50f34b59694 100644
> --- a/drivers/staging/media/imx/imx-media-capture.c
> +++ b/drivers/staging/media/imx/imx-media-capture.c
> @@ -536,7 +536,6 @@ static int capture_release(struct file *file)
>  	struct capture_priv *priv = video_drvdata(file);
>  	struct video_device *vfd = priv->vdev.vfd;
>  	struct vb2_queue *vq = &priv->q;
> -	int ret = 0;
>
>  	mutex_lock(&priv->mutex);
>
> @@ -549,7 +548,7 @@ static int capture_release(struct file *file)
>
>  	v4l2_fh_release(file);
>  	mutex_unlock(&priv->mutex);
> -	return ret;
> +	return 0;
>  }
>
>  static const struct v4l2_file_operations capture_fops = {
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181019014041.GA9250%40v.
> For more options, visit https://groups.google.com/d/optout.
>

