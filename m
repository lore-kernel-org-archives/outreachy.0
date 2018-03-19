X-GM-THRID: 6532038435056648192
X-Received: by 2002:a9d:14ef:: with SMTP id r44-v6mr5583111otr.120.1521466827618;
        Mon, 19 Mar 2018 06:40:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3e0b:: with SMTP id a11-v6ls8038838otd.3.gmail; Mon, 19
 Mar 2018 06:40:26 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvsiLHt+utaKJADk6GOQlAJtrjj5fr8nOZKLqdUUWhyNZiQB2Xug1YBEta3EiUWTMvnKTJG
X-Received: by 2002:a9d:4915:: with SMTP id e21-v6mr6019465otf.69.1521466826651;
        Mon, 19 Mar 2018 06:40:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521466826; cv=none;
        d=google.com; s=arc-20160816;
        b=VyhXo+w6Zg6iYxjsBL+vO1fi8HFMGllsnLEUQYvlr/ZwCzDOyPY74QjxvYwzRu18JY
         9TkRhO8Lsg2wURccEVStrS19E8PA50uv9sbquGfiPfLg9m+dKSqkLkXpFsMZwwCWEGWB
         57Iy8OjK2caO+Et3IEoZYmqWTkhad/gSrZxXcI4kqHlYJavBvcV9+k2oSCXcDPvM+vht
         DlzO6YABPM9v+6kLb//nVx+d7209g8MO0vHBEP5Ne+4EJi7rE0oRvzc6DR6VvKAIfGsl
         eZggwqtJu+4D3ULWA7hjPfHb5F7WoKnVHPxHiw7yPDTX5qXzUNAlwPMhtQ5h7um5rmqQ
         fpng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=q0DP7jjB2tH2fgLEZECQ7yM2VdwhYcJ0eelto0moE6s=;
        b=tmC94MKoDA4YfhRnMQ83Gm+00l1X8ngaWelD9TAugke+OWLXIT4Vm1XMrV/Eya3JWj
         PYRh0/AwVNrQVCQbLYsIhWRYhLWjgZYPptzjklGEZiwn8+BKQ6fHL/nxiboAdGlUuQ4b
         Aou2Zaxw6YXJ8wGFgYx5hOl8Vd0Ky1a7bSO+p+d9VqF5Yio9TScksyTzkgPv8ogazAJ6
         NNqz37+oG+AR0lAzLIyOMxor0A9+1KAveB16b4ggos2yhw4x9y6TvmViQYh22lISndVL
         D/a5PmMVzJu0m4JKFk+6NdxGZWrqVia6RceQ7S1Vh4NKaea9EY1f7IIX2nwPps6HxrYP
         +rIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=VP7Ibu4k;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id i15-v6si2594otj.4.2018.03.19.06.40.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Mar 2018 06:40:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=VP7Ibu4k;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-it0-x244.google.com with SMTP id u5-v6so10372855itc.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Mar 2018 06:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=q0DP7jjB2tH2fgLEZECQ7yM2VdwhYcJ0eelto0moE6s=;
        b=VP7Ibu4kBHPRt9PaL2I+D2sjTkz7MekBKxqqdxeYOjcwxVMuhT5Fcf85mDsq5aOr7x
         3ht8YGizuAFvsL7PUvI/uvyASrm6wEiMwK1qooWODeOGJAcLLnTy6zr7POQMKJ38l3gn
         o9ifRSzaSw9DbrjEtRK8SbOnEIACcBZF05MJ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=q0DP7jjB2tH2fgLEZECQ7yM2VdwhYcJ0eelto0moE6s=;
        b=T7Tj2UxmSECXQJgC9C0s0fjAkXuI2ckd/ZDcBcFhfHGPsg3zlJM0pYu72+9xNzETPK
         2k79tfDB2dmPSebBkKo2PVo9YchCr4d0U8zfPwK3+TOBTU1lxmFxSFwxpTp0VZa1lcKf
         r75LITu728qdec5B9DSilP7kAzTcjXtFaok4R2RTy3RxglzF503NVSY0uCycK9Ck+wT6
         +/IKFsnNtoU+obu/dtzcBnPMTWeDdteI7U6ztWlxi5W+NRCCJf87pflP4AfK++W1YoV3
         An1WNrtZhSuLJ79rSRhrMis2NdujPIbyEqjodg1YzqNmVmxsqOEFzRUxJaRZV/LDoHVp
         6uSQ==
X-Gm-Message-State: AElRT7FfGgT9wShk7EWwXQ0XDOSC9ji/A8Givmk1jV/C8DZK6Fz6+Fhx
	dAYb86Y87b6Z6bw3EjTuR8IPdjZd8sTnel8LJqZ0tA==
X-Received: by 2002:a24:7a15:: with SMTP id a21-v6mr4509221itc.65.1521466826075;
 Mon, 19 Mar 2018 06:40:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.128.23 with HTTP; Mon, 19 Mar 2018 06:40:25 -0700 (PDT)
In-Reply-To: <1520858697-31275-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1520858697-31275-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Mon, 19 Mar 2018 19:10:25 +0530
Message-ID: <CAC4++KCx8_PewSvZx9v=GsFZ8f+qb29SO8qYRGXS_YFmAmveHw@mail.gmail.com>
Subject: Re: [PATCH] staging: media: davinci_vpfe: Change to "%s...", __func__
To: mchehab@kernel.org, gregkh@linuxfoundation.org, 
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Content-Type: text/plain; charset="UTF-8"

Resending a patch. (I cannot locate it in my commit history, so I
can't resend it the proper way; I apologise for the inconvenience.)

Thanking you,
Nishka Dasgupta


On Mon, Mar 12, 2018 at 6:14 PM, Nishka Dasgupta
<nishka.dasgupta_ug18@ashoka.edu.in> wrote:
> Change string explicitly mentioning function name to "%s...", __func__.
> Issue found with checkpatch.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> index 6a3434c..7d3349b 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> @@ -696,7 +696,7 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
>
>         if (!gamma->bypass_r && !gamma_param->table_r) {
>                 dev_err(dev,
> -                       "ipipe_get_gamma_params: table ptr empty for R\n");
> +                       "%s: table ptr empty for R\n", __func__);
>                 return -EINVAL;
>         }
>         memcpy(gamma_param->table_r, gamma->table_r,
> --
> 2.7.4
>

