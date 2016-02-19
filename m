X-GM-THRID: 6252667491219144704
X-Received: by 10.194.19.195 with SMTP id h3mr1711131wje.1.1455879802137;
        Fri, 19 Feb 2016 03:03:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.91.84 with SMTP id p81ls60658wmb.24.canary; Fri, 19 Feb
 2016 03:03:21 -0800 (PST)
X-Received: by 10.28.45.82 with SMTP id t79mr1068632wmt.2.1455879801402;
        Fri, 19 Feb 2016 03:03:21 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x22e.google.com (mail-wm0-x22e.google.com. [2a00:1450:400c:c09::22e])
        by gmr-mx.google.com with ESMTPS id w128si330896wmd.0.2016.02.19.03.03.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 03:03:21 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) client-ip=2a00:1450:400c:c09::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22e.google.com with SMTP id c200so67358730wme.0
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 03:03:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=npV5k/kPswxiW8QU2pvNF1fFg6Ce1USZTwr/bDQ5+xA=;
        b=RtD1/yKAfou9VuBY5g5/SB0M5UE0yI3HV3yNvUu9vOkS+Si9jE5oE5tkA0uuz8WYDg
         oX+z3gEMXCN8pc4/rkdXmGVZXMDAarZbMNZxMtha3uvu6tNo/227PhqI8W/Mq9Hu4lpe
         GhV3dHenwdI3do+55ori9YtmJawW6icOYwLxhX+3+J2w3QvUmiRXr3rcUBRtTj7Ve47v
         6vhBfXPt03TFsTwtg0+VQJ6YKrqu4NZcuLPBulM3kRhjPqmzRlgJ1rVqs43JjVxgbhCJ
         wv1nxgCD4YuAU8NzFwU72mdcu1KTCqGndM/2R6hlI2VDLOgajYKCCsfbgGSGSZLRLgR3
         YMCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=npV5k/kPswxiW8QU2pvNF1fFg6Ce1USZTwr/bDQ5+xA=;
        b=PPnYuBSpUpvxaVuf3/eZC3BhPb+0HPZr2Apr8o/wnVO7fug6YGZ7rRwHmlsVMUULhX
         2K9mMsYOAPn+7kXnNDAGsH4cg2QqRlrKyn6ulhfz2CHsTe3Bn+XmO+0Q4aZUMWMSewAQ
         VzGBFIfDcWzmDhWeqqMea1TSXWmsPhj3TmsUJTknXdoY/6sY+GW6x0Whey7abPIAfPWB
         0CEZej06J5skHCibniTn+oBzDVp7t8OuWKHTw+3EFrpLhrezDJw8GYFy0c3Jvw9ADtqG
         qs2ZZizUPE+3xt+xtoCGqhzRv0ZsDX1URZ/YZhBATj2hcGuQlIEcaiWNzywEAA9gXmPu
         vBmg==
X-Gm-Message-State: AG10YOTrFsrPtOWMkbCb7W0Z9COn984IfkiXZXqdYJtKMOE0gdwjOSyp62UHHJCTyozwfbmY2HMRSgwk5HK/Wg==
MIME-Version: 1.0
X-Received: by 10.194.2.202 with SMTP id 10mr14157424wjw.94.1455879801284;
 Fri, 19 Feb 2016 03:03:21 -0800 (PST)
Received: by 10.194.222.165 with HTTP; Fri, 19 Feb 2016 03:03:21 -0800 (PST)
In-Reply-To: <20160218212229.GA6562@janani-Inspiron-3521>
References: <20160218212229.GA6562@janani-Inspiron-3521>
Date: Fri, 19 Feb 2016 13:03:21 +0200
Message-ID: <CAEnQRZCUnE3kfCQS3iMHRJn_Y9juECuDLT=QtZNqnESd6A3e4A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: accel: Remove
 unnecessary else after goto in if block
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 18, 2016 at 11:22 PM, Janani Ravichandran
<janani.rvchndrn@gmail.com> wrote:
> This patch removes the unnecessary else following an if block with a
> goto statement.
>
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>

Acked-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
>  drivers/staging/iio/accel/sca3000_core.c | 3 +--
>  drivers/staging/iio/accel/sca3000_ring.c | 3 +--
>  2 files changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/iio/accel/sca3000_core.c b/drivers/staging/iio/accel/sca3000_core.c
> index 02e930c..a8f533a 100644
> --- a/drivers/staging/iio/accel/sca3000_core.c
> +++ b/drivers/staging/iio/accel/sca3000_core.c
> @@ -216,8 +216,7 @@ static int sca3000_read_ctrl_reg(struct sca3000_state *st,
>         ret = sca3000_read_data_short(st, SCA3000_REG_ADDR_CTRL_DATA, 1);
>         if (ret)
>                 goto error_ret;
> -       else
> -               return st->rx[0];
> +       return st->rx[0];
>  error_ret:
>         return ret;
>  }
> diff --git a/drivers/staging/iio/accel/sca3000_ring.c b/drivers/staging/iio/accel/sca3000_ring.c
> index 1920dc60..d1cb9b9 100644
> --- a/drivers/staging/iio/accel/sca3000_ring.c
> +++ b/drivers/staging/iio/accel/sca3000_ring.c
> @@ -99,8 +99,7 @@ static int sca3000_read_first_n_hw_rb(struct iio_buffer *r,
>         ret = sca3000_read_data_short(st, SCA3000_REG_ADDR_BUF_COUNT, 1);
>         if (ret)
>                 goto error_ret;
> -       else
> -               num_available = st->rx[0];
> +       num_available = st->rx[0];
>         /*
>          * num_available is the total number of samples available
>          * i.e. number of time points * number of channels.
> --

