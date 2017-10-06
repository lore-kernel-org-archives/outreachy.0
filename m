X-GM-THRID: 6470342242879930368
X-Received: by 10.176.73.47 with SMTP id z44mr469524uac.89.1507310924411;
        Fri, 06 Oct 2017 10:28:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.138.69 with SMTP id m66ls6635354vkd.15.gmail; Fri, 06 Oct
 2017 10:28:43 -0700 (PDT)
X-Received: by 10.176.89.5 with SMTP id n5mr485313uad.10.1507310923542;
        Fri, 06 Oct 2017 10:28:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507310923; cv=none;
        d=google.com; s=arc-20160816;
        b=JiOyrP+HY61yBcT/0WGV+K8plLGV3dyxkT+uTN/9FJkjNwgl4V6xhbwgXVLN3ZRy2d
         KLyB9vsZ6Mas3xQt+qow3gAsXLR14YubbFKg501t9eC2eJerKcx9Br36ahA5uGRBpICQ
         8Hp/0Mtky0YZGflzHXP3ACCubnPSCI40zSeKcdLt+B2MKAQYgaUQ/xfKGrve8CCtouDt
         JEl8+8IDW5/IfonxCtHMw8FMCruneT5UvmElOzk8FmC7N4dSRHYiJ4ggzCOv0Fw3BVAO
         9JCvCav9E5i7QQzy2wj4dNSyFprmT4dVVVSy8+255iZ2OOHDj9ds4XC4Lonhh7R+hOvx
         19IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=bMbF/5KxZkoukzdNhZYiErU1serC9z+gKYQqXSPWZ6w=;
        b=RADI1SG1/Hg02vipTWY+7O+38/CbPvuaYQnisIw087URt+zYypLWuqoitWCfhpoXo5
         /9jZBeFH54jNDfxpwvTTX91BSql4i/iRy/VH7sMXzNTontL8XrXR4w8eOTCeCxD9rfbG
         VJa9zgttOPqEllbiU98GhK1D5VNtm4AYpSkg4YDMxew2rN3wdd3ay1NdzOXfaMe8Ch9e
         Wu3EkZkRmaRgQOkbXWwTyae0+nAb0ducUkr1BF46kcqOqeKOjDyowEAriiu3Hev9Dog5
         M4epc+RhF0EYAeGSgkGGwwIwrI9glKYoZfQUsw1n1njl0wQ1/o4ScmnX8pHjzmWHgG67
         nWpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VMr/S5n5;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id n190si96702vkc.0.2017.10.06.10.28.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Oct 2017 10:28:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VMr/S5n5;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id d12so5214032vkf.5
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Oct 2017 10:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=bMbF/5KxZkoukzdNhZYiErU1serC9z+gKYQqXSPWZ6w=;
        b=VMr/S5n5QxUy1plCC/DeqJhWi+8dHpb/dTcQeslC66poz80t8BS0eZPn34RYDsLeNn
         8Guni/PsljtR/KAnmBWEgh5gC2IURceCu79BwVhB7aYUErfXuDCeGdTSC7B+sJhPxI9q
         WS+ZqxwlRmAmKOiylhkNiXP36C/JPB0WitRnbhJvNGfQ4JZR04vVqsKX+3M4CdsJA+XZ
         AwOWQvpObGGGrQ4URX55xUMUgdKLrkoVEgOS3dL4U5OjgNZxPPRos2uFyb9eqSjV3FZJ
         QftHpl+Cz5WPhLpiGbd3LiY/8TTghhJXVtE7Co0vvunqw5xfE+lgc8W6nFbzBk0B4WzV
         6DOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=bMbF/5KxZkoukzdNhZYiErU1serC9z+gKYQqXSPWZ6w=;
        b=nifz+DHGLLGrMiYjpNBfZJXKDLTLwmuijcy1lAc2rqAWQ6m/6qkedPG8f+mzrSpkIg
         ZOyi2Jooz1dNUFcX9y3vJKd2XuWDNXeuiYDAzm1O3hkjnt5+sPOLlvopTpfKDxPJrXR9
         J1Y07Dpd3qGaBUyaqAuR0mpbAxiTSDITXjwlCNAnUwzI2oJYSGCc7vfEc0lTuaPG/ISU
         ex/7ZfnZdI9k+hN46v592jnefYIiwhqPp3TF9mSNC80whMdM3eKA5lKYPf+GIvSwbaDL
         MFEmlXlnyYAUUJCxXJbj0jNwmZFNl9gdmPihf17gqw4R6QwPKdVaehR05Vf6/01Hx1V1
         GWKg==
X-Gm-Message-State: AMCzsaX7+2/JlYdT4Aty7y+Vfa9MfxfFHmLOHm7EQPrdM2GqmPA4UCUd
	cxpIaS3EMbVpOUfQBFZp8hIw1VFddZOuxpa3rqSFug==
X-Google-Smtp-Source: AOwi7QD3Y99iDR5mdkFoYZpZPiclur6Kj0ojrIVUmnPw0Zv1FPguM/je7QaSe86UED6ccIF3LM4UUn8WcHuhxoH74Ds=
X-Received: by 10.31.89.71 with SMTP id n68mr1172855vkb.87.1507310922971; Fri,
 06 Oct 2017 10:28:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.63.140 with HTTP; Fri, 6 Oct 2017 10:28:42 -0700 (PDT)
In-Reply-To: <1506493919-3189-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1506493919-3189-1-git-send-email-aastha.gupta4104@gmail.com>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Fri, 6 Oct 2017 22:58:42 +0530
Message-ID: <CAHXiS59kFwR4rdmAUvz=HeSXZqqH5CC0+NgfCCcin9aHUJ=0hg@mail.gmail.com>
Subject: Re: [PATCH v4] staging: iio: adc: ad7192: use driver private lock to
 protect hardware state changes
To: outreachy-kernel@googlegroups.com, hennerich@blackfin.uclinux.org, 
	jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 27, 2017 at 12:01 PM, Aastha Gupta
<aastha.gupta4104@gmail.com> wrote:
> The IIO subsystem is redefining iio_dev->mlock to be used by
> the IIO core only for protecting device operating mode changes.
> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
>
> In this driver, mlock was being used to protect hardware state
> changes.  Replace it with a driver private lock.
>
> Also, as there are state changes in the ad7192_ write_raw function, a lock
> is added to prevent the concurrent state changes.
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
> changes in v4:
>         - added comment for mutex
>         - improved commit message
>  drivers/staging/iio/adc/ad7192.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index d11c6de..c1343ec 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -162,6 +162,7 @@ struct ad7192_state {
>         u32                             scale_avail[8][2];
>         u8                              gpocon;
>         u8                              devid;
> +       struct mutex                    lock;   /* protect sensor state */
>
>         struct ad_sigma_delta           sd;
>  };
> @@ -463,10 +464,10 @@ static int ad7192_read_raw(struct iio_dev *indio_dev,
>         case IIO_CHAN_INFO_SCALE:
>                 switch (chan->type) {
>                 case IIO_VOLTAGE:
> -                       mutex_lock(&indio_dev->mlock);
> +                       mutex_lock(&st->lock);
>                         *val = st->scale_avail[AD7192_CONF_GAIN(st->conf)][0];
>                         *val2 = st->scale_avail[AD7192_CONF_GAIN(st->conf)][1];
> -                       mutex_unlock(&indio_dev->mlock);
> +                       mutex_unlock(&st->lock);
>                         return IIO_VAL_INT_PLUS_NANO;
>                 case IIO_TEMP:
>                         *val = 0;
> @@ -510,6 +511,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
>         switch (mask) {
>         case IIO_CHAN_INFO_SCALE:
>                 ret = -EINVAL;
> +               mutex_lock(&st->lock);
>                 for (i = 0; i < ARRAY_SIZE(st->scale_avail); i++)
>                         if (val2 == st->scale_avail[i][1]) {
>                                 ret = 0;
> @@ -523,6 +525,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
>                                 ad7192_calibrate_all(st);
>                                 break;
>                         }
> +               mutex_unlock(&st->lock);
>                 break;
>         case IIO_CHAN_INFO_SAMP_FREQ:
>                 if (!val) {
> @@ -634,6 +637,8 @@ static int ad7192_probe(struct spi_device *spi)
>
>         st = iio_priv(indio_dev);
>
> +       mutex_init(&st->lock);
> +
>         st->avdd = devm_regulator_get(&spi->dev, "avdd");
>         if (IS_ERR(st->avdd))
>                 return PTR_ERR(st->avdd);
> --
> 2.7.4
>

Any update regarding this?

