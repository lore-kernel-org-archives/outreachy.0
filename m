X-GM-THRID: 6200774307110453248
X-Received: by 10.180.35.132 with SMTP id h4mr270396wij.5.1443741172878;
        Thu, 01 Oct 2015 16:12:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.100 with SMTP id gt4ls224746wib.34.gmail; Thu, 01 Oct
 2015 16:12:52 -0700 (PDT)
X-Received: by 10.194.118.65 with SMTP id kk1mr1929419wjb.5.1443741172486;
        Thu, 01 Oct 2015 16:12:52 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id hs5si148242wib.1.2015.10.01.16.12.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 16:12:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id ge5so10178420wic.0
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 16:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=izzrlSdd9cT/Dbo7kxFWM4E3DdkuvPM9kS8zWUkpudI=;
        b=ZkJ697loD8xnDQocTD7UbnzhJ6Kr3gbNR9QlHTL4fldO45Y87rry0RjrLi8uz43PkA
         gjc7g9Wll9tNapUERrY+ZnrxfonDPgOGzUzpuO1ntEpu7UHn7V+PohHvvpCd5AWrzdAX
         hrvbqQM04DG6a0vVzwaCjOiChJ+VgMGLc54Z0OXyyeHsJuKfQ8pborXnrwkYu7GpboGL
         Qs/B4SCyBBPm8zwA29k4EC6ekVTdBlP+Wf1QzR2Xl99u9y0bqd91X1kC4ttUgiaayvEh
         9T/r3kFq5iWVRI2rrv1vKFXnOFlz4wEQzjCsy8fyyD2n9o1whUI98+3VCtr9kXFiVLgk
         bK7A==
MIME-Version: 1.0
X-Received: by 10.180.88.168 with SMTP id bh8mr1071414wib.48.1443741172329;
 Thu, 01 Oct 2015 16:12:52 -0700 (PDT)
Received: by 10.194.67.99 with HTTP; Thu, 1 Oct 2015 16:12:52 -0700 (PDT)
In-Reply-To: <803a5566a6126da8fb21617fcc852665bc4dd625.1443729484.git.ciorneiioana@gmail.com>
References: <cover.1443729484.git.ciorneiioana@gmail.com>
	<803a5566a6126da8fb21617fcc852665bc4dd625.1443729484.git.ciorneiioana@gmail.com>
Date: Fri, 2 Oct 2015 04:42:52 +0530
Message-ID: <CAK-LDbKSm6uH4smvCEY4mQqp7NOvzuYk-+EE9u_hEL5o4KBkYg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: iio: light: use
 devm_iio_device_register instead iio_device_register
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 2, 2015 at 1:40 AM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> Replace iio_device_register with resource managed devm_iio_device_register in order
> to ease the error path. Also delete de remove function since there is no need after
> this change.

de->the

> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/iio/light/isl29028.c | 11 +----------
>  drivers/staging/iio/light/tsl2583.c  | 12 ++----------
>  2 files changed, 3 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/staging/iio/light/isl29028.c b/drivers/staging/iio/light/isl29028.c
> index cd6f272..32ae112 100644
> --- a/drivers/staging/iio/light/isl29028.c
> +++ b/drivers/staging/iio/light/isl29028.c
> @@ -513,7 +513,7 @@ static int isl29028_probe(struct i2c_client *client,
>         indio_dev->name = id->name;
>         indio_dev->dev.parent = &client->dev;
>         indio_dev->modes = INDIO_DIRECT_MODE;
> -       ret = iio_device_register(indio_dev);
> +       ret = devm_iio_device_register(indio_dev->dev.parent, indio_dev);
>         if (ret < 0) {
>                 dev_err(chip->dev, "iio registration fails with error %d\n",
>                         ret);
> @@ -522,14 +522,6 @@ static int isl29028_probe(struct i2c_client *client,
>         return 0;
>  }
>
> -static int isl29028_remove(struct i2c_client *client)
> -{
> -       struct iio_dev *indio_dev = i2c_get_clientdata(client);
> -
> -       iio_device_unregister(indio_dev);
> -       return 0;
> -}
> -
>  static const struct i2c_device_id isl29028_id[] = {
>         {"isl29028", 0},
>         {}
> @@ -550,7 +542,6 @@ static struct i2c_driver isl29028_driver = {
>                 .of_match_table = isl29028_of_match,
>         },
>         .probe   = isl29028_probe,
> -       .remove  = isl29028_remove,
>         .id_table = isl29028_id,
>  };
>
> diff --git a/drivers/staging/iio/light/tsl2583.c b/drivers/staging/iio/light/tsl2583.c
> index b5e1b8b..b2b66c4 100644
> --- a/drivers/staging/iio/light/tsl2583.c
> +++ b/drivers/staging/iio/light/tsl2583.c
> @@ -862,7 +862,7 @@ static int taos_probe(struct i2c_client *clientp,
>         indio_dev->dev.parent = &clientp->dev;
>         indio_dev->modes = INDIO_DIRECT_MODE;
>         indio_dev->name = chip->client->name;
> -       ret = iio_device_register(indio_dev);
> +       ret = devm_iio_device_register(indio_dev->dev.parent, indio_dev);
>         if (ret) {
>                 dev_err(&clientp->dev, "iio registration failed\n");
>                 return ret;
> @@ -917,13 +917,6 @@ static SIMPLE_DEV_PM_OPS(taos_pm_ops, taos_suspend, taos_resume);
>  #define TAOS_PM_OPS NULL
>  #endif
>
> -static int taos_remove(struct i2c_client *client)
> -{
> -       iio_device_unregister(i2c_get_clientdata(client));
> -
> -       return 0;
> -}
> -
>  static struct i2c_device_id taos_idtable[] = {
>         { "tsl2580", 0 },
>         { "tsl2581", 1 },
> @@ -939,8 +932,7 @@ static struct i2c_driver taos_driver = {
>                 .pm = TAOS_PM_OPS,
>         },
>         .id_table = taos_idtable,
> -       .probe = taos_probe,
> -       .remove = taos_remove,
> +       .probe = taos_probe
>  };

You removed (may be accidentally) comma after taos_probe. Please fix this.

>  module_i2c_driver(taos_driver);
>
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/803a5566a6126da8fb21617fcc852665bc4dd625.1443729484.git.ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali

