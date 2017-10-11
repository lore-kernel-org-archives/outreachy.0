X-GM-THRID: 6475354407104937984
X-Received: by 10.55.19.209 with SMTP id 78mr14680560qkt.55.1507719649776;
        Wed, 11 Oct 2017 04:00:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.72.84 with SMTP id v81ls430669qka.3.gmail; Wed, 11 Oct 2017
 04:00:49 -0700 (PDT)
X-Received: by 10.55.129.66 with SMTP id c63mr13877745qkd.39.1507719649149;
        Wed, 11 Oct 2017 04:00:49 -0700 (PDT)
Received: by 10.55.160.72 with SMTP id j69msqke;
        Wed, 11 Oct 2017 03:55:40 -0700 (PDT)
X-Received: by 10.46.43.4 with SMTP id q4mr370540lje.13.1507719340205;
        Wed, 11 Oct 2017 03:55:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507719340; cv=none;
        d=google.com; s=arc-20160816;
        b=nXMrr6JSdbYoMDlf5BGxfLfWq2E4l9Vz8fQT0Z/ZtNPEqQwGSZE5c0eBywV3fSBMoR
         fPzKodYEZA8k3mUp8wnT9Ooxa8Tp6PypEg1PmbOcE8G/6nVShxKyEYK8ZOLhd4bb0ymp
         igTQ1NV8VH4cWBI9j+m2iCo4saOgQP3xj4uqQleItTmLLn2777dWynxJuMw4l8wU1z3/
         IJHu+4yUV3B/pCJLeuufSD/3rRDi6WcdX1v7SxU3Izodo4dV3xatHPhbQOVVKhcEhF4A
         FY7b0/TYgZXC0wW1g09YYTVsip3bgs4klMhlhlZIvOaeeAUJyiZjINqCEbihzwqbrjKy
         fDaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=lvOV9Gb3CIurRbOIEZSkJPIMrNjYVTPSzkysXK/n634=;
        b=ISXWyytXTQ4AUOp9DwZqa/DC5vBC3/5VjiuoeYV0VoIsRj/5kstLSL0J7eTPFVSYvK
         hc5ihAqn5ryyszkVq8IF1qlpOHw+V+bNkL0aIXOEug1iNPsvxJKuhLo5jd+V/Lsgn8m/
         VUN6dEbGhklIebU/bcDFdkGskmJUmGplpAalzvU2tyatFZdBhuOuBVAs6Yh49Uqh0yKQ
         1lBu3KT4+sovAgow0fVSPuWNwU5o9ipDuKuOjgJ1ILA+wr0H6OiqOFc2l9GxQ38vCDJH
         7AF41wulIyhk0dD461jXmXEwg33qc5YUH46llE7YE01dZ9zYATndhPCiR9atRb0X+vDT
         Lhwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mjxC6fSW;
       spf=pass (google.com: domain of robdclark@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <robdclark@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id c185si309140lfd.5.2017.10.11.03.55.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 03:55:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of robdclark@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mjxC6fSW;
       spf=pass (google.com: domain of robdclark@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id g70so596700lfl.3
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 03:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=lvOV9Gb3CIurRbOIEZSkJPIMrNjYVTPSzkysXK/n634=;
        b=mjxC6fSWj6A1E+LI4W1LYJe2PmqSivGnYNoDMjoRIOjE3/lSUN5dCrPrzQ4sLeRzrO
         VE0HrP9royummWEdr87Yjskxl+WAhpg/zneXd5Jn+Es0WvVPJgi9GGD2jIsl4DPbM0jD
         gDyZqlvpWKps4MjkzAjRnfDJYTVf2cC758T1tHrkX9B3FoomiGmM/1xVzS8fz4F6xMul
         Bb8qVhDxU2lK1rHxMpSCxLGSYr8hj7SvwgFH4pEL8ilLE2eODV0zJyCmKZ8RUS1Eqi3p
         ggZ+98nAj58fbhj8MdIJCa+Rwe+yCW2u/gPAgO/HUhKODy4EyqJpebzTViN/tpqyvAsu
         1qCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=lvOV9Gb3CIurRbOIEZSkJPIMrNjYVTPSzkysXK/n634=;
        b=XMBoJY7M1f9pKVFVDw09uVxPkO5/ukqo1kTMozkabomPH/oCD+CLTqpWaXzr1qkEsu
         /x3YWCdM49CG80NOOxSwx2YSCK18wCtjEUf9+DbCNBsEeQTHYjbFi9jy3frJ/gtizcSr
         ueVe4hHmYr1VkEjsuShcmiGSwKCmaN9y6bKmgwQqV62jDpUNpkDATbuSDbyedq7RFW3U
         p8KonY5FfdNoyFuNbqO9Vui1WD3zFZ9uAJ30orNMEvbqau6bTKqm/U1jYbNNqIsnNsAu
         DuNEZI/L/j1hdKHZ0M+9I8W43ASZ4ETX70jqM+REaO8UbQRj/myrRrQshXzJvkRmRZjU
         jqLg==
X-Gm-Message-State: AMCzsaXyHuqnClIpwIlzf5Ycwf1YZ84f9KBEYdJX+e21ec6u0DYHSsVH
	D5lL2JCOkgSmdVh6DDuW4A1+WvyELzQNdzmL/zzHig==
X-Google-Smtp-Source: AOwi7QDh9Rt1AaRreSOCjQph9nkDawL3Qhr/P/goTzIUsz8fdEjXzRVczCm03fDxnWcprMoHivPDqBRYMKuJRa5R2g8=
X-Received: by 10.46.71.82 with SMTP id u79mr1148477lja.52.1507719340011; Wed,
 11 Oct 2017 03:55:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.46.127.12 with HTTP; Wed, 11 Oct 2017 03:55:39 -0700 (PDT)
In-Reply-To: <20171010184207.iv3dinrtwvbv7fei@aishwarya>
References: <20171010184207.iv3dinrtwvbv7fei@aishwarya>
From: Rob Clark <robdclark@gmail.com>
Date: Wed, 11 Oct 2017 06:55:39 -0400
Message-ID: <CAF6AEGsJy29ioiy2rRtok9Q=QjTp7CE6EHW6QCJexJD5wo8Mww@mail.gmail.com>
Subject: Re: [PATCH] drm/msm/mdp5: remove less than 0 comparison for unsigned value
To: Aishwarya Pant <aishpant@gmail.com>
Cc: David Airlie <airlied@linux.ie>, linux-arm-msm <linux-arm-msm@vger.kernel.org>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	freedreno <freedreno@lists.freedesktop.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 10, 2017 at 2:42 PM, Aishwarya Pant <aishpant@gmail.com> wrote:
> pipe is an unsigned int and less than zero comparison for unsigned
> values is always false.
>
> Detected using the following cocci script:
>
> @@
> unsigned int i;
> @@
> * i < 0
>

Thanks

Reviewed-by: Rob Clark <robdclark@gmail.com>

> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>  drivers/gpu/drm/msm/mdp/mdp5/mdp5_kms.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/msm/mdp/mdp5/mdp5_kms.c b/drivers/gpu/drm/msm/mdp/mdp5/mdp5_kms.c
> index f7c0698fec40..7e829a8d1cb1 100644
> --- a/drivers/gpu/drm/msm/mdp/mdp5/mdp5_kms.c
> +++ b/drivers/gpu/drm/msm/mdp/mdp5/mdp5_kms.c
> @@ -599,7 +599,7 @@ static u32 mdp5_get_vblank_counter(struct drm_device *dev, unsigned int pipe)
>         struct drm_crtc *crtc;
>         struct drm_encoder *encoder;
>
> -       if (pipe < 0 || pipe >= priv->num_crtcs)
> +       if (pipe >= priv->num_crtcs)
>                 return 0;
>
>         crtc = priv->crtcs[pipe];
> --
> 2.11.0
>

