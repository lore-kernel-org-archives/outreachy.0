X-GM-THRID: 9152848986112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,56524335c2ab2304
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.125.67 with SMTP id mo3mr11058151lbb.6.1426842817212;
        Fri, 20 Mar 2015 02:13:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.12.101 with SMTP id ep5ls292211wid.10.canary; Fri, 20 Mar
 2015 02:13:36 -0700 (PDT)
X-Received: by 10.180.80.132 with SMTP id r4mr424442wix.4.1426842816850;
        Fri, 20 Mar 2015 02:13:36 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id cl5si308178wib.3.2015.03.20.02.13.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 02:13:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x236.google.com with SMTP id m6so83894327wgd.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 02:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=4TXPTlyrNaMFUmf9MC14y8FgPfZIp6bGFv/W7FZ2X0Q=;
        b=bHdhGS4kMPvCHj6plpPHVjJ4/NHdjl2vilXTblDARibKzHDUQ5fgcI174leJ34yROw
         FA11u4KITaD6masSLTr2oxJ5xPDoxvLyEfuVD2RAnxSBz2cMkNZqnjd2kRrin6CQUjhK
         D8jzYB3n1+uwTsrF7t+8lkhtBlyIDxw01va/ByG16JmBzPc+RvUILoefIgCEHfvG0RAu
         8ozqjklcbjwddrmKaMYJItu1/gzz6jYV2yR7hMHvdwoFf+JgjsuCmgiPzZLq8Z1K1AoD
         inf3sEiKlWMvFaMN5qmNSZBXce18V+mzRiNst5k+Tcrgku8VXOqnfPRjkbGyHZu1JDGc
         dTqw==
MIME-Version: 1.0
X-Received: by 10.194.85.233 with SMTP id k9mr92236241wjz.31.1426842816792;
 Fri, 20 Mar 2015 02:13:36 -0700 (PDT)
Received: by 10.28.139.211 with HTTP; Fri, 20 Mar 2015 02:13:36 -0700 (PDT)
In-Reply-To: <ff210f9a653e92e158858d4beef1d9dc38106c63.1426790651.git.cristina.opriceana@gmail.com>
References: <cover.1426790651.git.cristina.opriceana@gmail.com>
	<ff210f9a653e92e158858d4beef1d9dc38106c63.1426790651.git.cristina.opriceana@gmail.com>
Date: Fri, 20 Mar 2015 11:13:36 +0200
Message-ID: <CAEnQRZCifnqNiVN3GYg3o28WbLE_DETq20GdMpFfhup-tmYv-A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] Staging: iio: Place driver in
 sleep mode on error
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Cristina Opriceana <cristina.opriceana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 19, 2015 at 9:19 PM, Cristina Opriceana
<cristina.opriceana@gmail.com> wrote:
> Added sleep_mode label, on which the device enters sleep mode if
> encounters an error after initialization. This helps saving energy
> consumption.

Commit message shouldn't tell "how" it does something, this should
be obvious from the code. We should insist more on "why" we need
this change.

So, the fact that you added "sleep_mode" label shouldn't be present
in commit message.

Better say:

Put device in sleep mode if we encounter an error after initialization
to avoid wasting power.

>
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> ---
>  drivers/staging/iio/magnetometer/hmc5843_core.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/iio/magnetometer/hmc5843_core.c b/drivers/staging/iio/magnetometer/hmc5843_core.c
> index 90cc18b..59afede 100644
> --- a/drivers/staging/iio/magnetometer/hmc5843_core.c
> +++ b/drivers/staging/iio/magnetometer/hmc5843_core.c
> @@ -606,16 +606,17 @@ int hmc5843_common_probe(struct device *dev, struct regmap *regmap,
>         ret = iio_triggered_buffer_setup(indio_dev, NULL,
>                 hmc5843_trigger_handler, NULL);
>         if (ret < 0)
> -               return ret;
> +               goto sleep_mode;
>
>         ret = iio_device_register(indio_dev);
> -       if (ret < 0)
> -               goto buffer_cleanup;
> -
> +       if (ret < 0) {
> +               iio_triggered_buffer_cleanup(indio_dev);
> +               goto sleep_mode;
> +       }

Why this change here? The initial goto buffer_cleanup will work just fine.

>         return 0;
>
> -buffer_cleanup:
> -       iio_triggered_buffer_cleanup(indio_dev);
> +sleep_mode:
> +       hmc5843_set_mode(iio_priv(indio_dev), HMC5843_MODE_SLEEP);
>         return ret;
>  }
>  EXPORT_SYMBOL(hmc5843_common_probe);
> --

Nice patch. A good idea would be to also add module authors/reviewers for this.

Thanks,
Daniel.

