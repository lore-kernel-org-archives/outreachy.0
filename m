X-GM-THRID: 6201460938447519744
X-Received: by 10.180.72.68 with SMTP id b4mr637275wiv.2.1443890848815;
        Sat, 03 Oct 2015 09:47:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.162.81 with SMTP id l78ls289182lfe.46.gmail; Sat, 03 Oct
 2015 09:47:27 -0700 (PDT)
X-Received: by 10.112.202.165 with SMTP id kj5mr3701165lbc.5.1443890847125;
        Sat, 03 Oct 2015 09:47:27 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id ch7si127055wib.2.2015.10.03.09.47.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 09:47:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id ge5so69454786wic.0
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Oct 2015 09:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=G+mRFP8ptNVHGEkOyM91h/p4svanllKOH8AgcfaM0h8=;
        b=VvBZIPsk2As0poYlvYxbA5XHscyfE9twBSqVan7xcXYAQx9z+6RB1SpSq4e6mMLW/P
         XcEv8t3BcLIJYL5X2MiBdzf4lEWp5sAekuuRpJygaMcXhJX12nkEgKyzeGhzAsEr8ZqQ
         aAeLZuShJSMDq3RnBALMlnGzo9e9u3ImeRzVCZ12zTQKPgeHENFo8KiQ42ctgUMyG5Mc
         xqkjE/q5A8UReOgfhFnLJBAp/jb6GTN1bwXDVvgMJDsRByoJkxAh7l2Jvlbb5H+k8vjq
         2MPck3O8W82wMfZbomdszJwyhJgUGlhC/XcweR/rNyADUyyyZGBL0gZUZqE9+HqWbrg3
         vH8Q==
MIME-Version: 1.0
X-Received: by 10.194.76.237 with SMTP id n13mr23949446wjw.128.1443890846939;
 Sat, 03 Oct 2015 09:47:26 -0700 (PDT)
Received: by 10.194.67.99 with HTTP; Sat, 3 Oct 2015 09:47:26 -0700 (PDT)
In-Reply-To: <1443890125-2419-1-git-send-email-shraddha.6596@gmail.com>
References: <1443890125-2419-1-git-send-email-shraddha.6596@gmail.com>
Date: Sat, 3 Oct 2015 22:17:26 +0530
Message-ID: <CAK-LDbK2_tQvK62Yo9UY2X4woXckA8tAC3Cf5A8bTxcGLsnCUw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: meter: Use devm_iio_trigger_alloc
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 3, 2015 at 10:05 PM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
> Introduce use of managed resource function devm_iio_trigger_alloc
> instead of iio_trigger_alloc and remove corresponding calls
> to iio_trigger_free in the probe and remove functions.
> Also unnecessary label error_free_trig is dropped.
>
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/iio/meter/ade7758_trigger.c | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/iio/meter/ade7758_trigger.c b/drivers/staging/iio/meter/ade7758_trigger.c
> index 5b35a7f..a5d52bb 100644
> --- a/drivers/staging/iio/meter/ade7758_trigger.c
> +++ b/drivers/staging/iio/meter/ade7758_trigger.c
> @@ -63,9 +63,9 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
>         struct ade7758_state *st = iio_priv(indio_dev);
>         int ret;
>
> -       st->trig = iio_trigger_alloc("%s-dev%d",
> -                                       spi_get_device_id(st->us)->name,
> -                                       indio_dev->id);
> +       st->trig = devm_iio_trigger_alloc("%s-dev%d",
> +                                            spi_get_device_id(st->us)->name,
> +                                            indio_dev->id);

Function devm_iio_trigger_alloc requires something more. Please
read both of the definitions carefully. And actually compiler should
have warned you about the same.

>         if (!st->trig) {
>                 ret = -ENOMEM;
>                 goto error_ret;
> @@ -77,7 +77,7 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
>                           spi_get_device_id(st->us)->name,
>                           st->trig);
>         if (ret)
> -               goto error_free_trig;
> +               goto error_ret;

Also, you can use direct return here.

>         st->trig->dev.parent = &st->us->dev;
>         st->trig->ops = &ade7758_trigger_ops;
> @@ -93,8 +93,6 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
>
>  error_free_irq:
>         free_irq(st->us->irq, st->trig);
> -error_free_trig:
> -       iio_trigger_free(st->trig);
>  error_ret:
>         return ret;
>  }
> @@ -105,5 +103,4 @@ void ade7758_remove_trigger(struct iio_dev *indio_dev)
>
>         iio_trigger_unregister(st->trig);
>         free_irq(st->us->irq, st->trig);
> -       iio_trigger_free(st->trig);
>  }
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443890125-2419-1-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali

