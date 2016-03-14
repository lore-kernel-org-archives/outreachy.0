X-GM-THRID: 6261787574311845888
X-Received: by 10.194.62.69 with SMTP id w5mr2737409wjr.5.1457948839086;
        Mon, 14 Mar 2016 02:47:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.174.145 with SMTP id x139ls508177wme.10.gmail; Mon, 14 Mar
 2016 02:47:18 -0700 (PDT)
X-Received: by 10.194.239.163 with SMTP id vt3mr2727105wjc.3.1457948838723;
        Mon, 14 Mar 2016 02:47:18 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x230.google.com (mail-wm0-x230.google.com. [2a00:1450:400c:c09::230])
        by gmr-mx.google.com with ESMTPS id f75si462398wme.3.2016.03.14.02.47.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 02:47:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) client-ip=2a00:1450:400c:c09::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x230.google.com with SMTP id n186so98059576wmn.1
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Mar 2016 02:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=J5+OqNKxdapdzUG2zejkKLlUf5/2hf50OdOLjTp3mcw=;
        b=FxSP9u4YGzi3DUBxPtJOmRgb9/LGZn4/LifQLEM9Cx5hoU8E9OPRwcC2M7akbtFKAc
         VVvlmXcMy6i4kVOiw7BIm/YJXFZw/5xWzTKDL7izUCgNJWSp7nfd/mFMQA6fpPvw2evb
         fO6ryE9jkFyyp9csodfBqw7TYMaerdjZSNhi5wfWZcJfDV+jZtSJvSdLyjyqhyU/Yoe/
         dGLgrFpyWdd1aPwIN8V5G8QAV1H1Ql7n1pBIeeH0VV2ZUgZkPV765CMx9FVJisQeOeUW
         FshD5Wh/y0lWhoryepNcBAiG/VposWn+SPFr4pQLHcq2IQcIP/oLtISOfRkYI/KD8aX0
         Lk0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=J5+OqNKxdapdzUG2zejkKLlUf5/2hf50OdOLjTp3mcw=;
        b=klPVXnYSNbDL/Dx26ba0xc1VZvQ6T45QU+F6BXWuWLpR1VHmgrh/96kljn8mDEjC3e
         lCaqSTofaN5dOoja4F4qcoCb+ghyPAc+tXE6CR/fWuKfqP7nDseH2qSJxni166vwCHCT
         fGulnoS/ENLQD28Y1+mLqaR4PBVfixQNwgNzadhOzE3+6H1poiNPQ2WWhdoRr/16Q2eI
         CBbUp9/xz3NiJNyXpye1Xu4uxewcRwzCz6NqrypD6k4I8a38H9GNV6s0aGZhOaJIZ4GT
         I41CSNmBacSl9s7DManOLYwP7h6EbMeHWVSIwdbeLVxQMhyDOxOtyWKmXT49TYWTUmfw
         IQfw==
X-Gm-Message-State: AD7BkJLQCRMihqqBSW4DzCnQs29U4JkAK7pQT7BHvQeWCjhqjOei8rrH6CBGhplddHbFJjHAZnILktcoZqsV5A==
MIME-Version: 1.0
X-Received: by 10.28.52.197 with SMTP id b188mr17524353wma.77.1457948838588;
 Mon, 14 Mar 2016 02:47:18 -0700 (PDT)
Received: by 10.194.222.165 with HTTP; Mon, 14 Mar 2016 02:47:18 -0700 (PDT)
In-Reply-To: <20160314061338.GA6632@d830.WORKGROUP>
References: <20160314061338.GA6632@d830.WORKGROUP>
Date: Mon, 14 Mar 2016 11:47:18 +0200
Message-ID: <CAEnQRZB=NwNBYixAKHrRo__TVRcEu8z7kB2JTtyt4SN_5y9YNg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: ad5933: use dev_get_platdata()
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 14, 2016 at 8:13 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> Use dev_get_platdata() for retrieving the platform data instead of
> accessing dev->platform_data directly.
>
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>

Acked-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
>  drivers/staging/iio/impedance-analyzer/ad5933.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
> index d1218d8..4285874 100644
> --- a/drivers/staging/iio/impedance-analyzer/ad5933.c
> +++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
> @@ -699,7 +699,7 @@ static int ad5933_probe(struct i2c_client *client,
>                                    const struct i2c_device_id *id)
>  {
>         int ret, voltage_uv = 0;
> -       struct ad5933_platform_data *pdata = client->dev.platform_data;
> +       struct ad5933_platform_data *pdata = dev_get_platdata(&client->dev);
>         struct ad5933_state *st;
>         struct iio_dev *indio_dev;
>
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160314061338.GA6632%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.

