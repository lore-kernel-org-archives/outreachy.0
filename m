X-GM-THRID: 6261786973061513216
X-Received: by 10.28.170.65 with SMTP id t62mr1806826wme.6.1457948774047;
        Mon, 14 Mar 2016 02:46:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.7.85 with SMTP id 82ls520567wmh.28.gmail; Mon, 14 Mar 2016
 02:46:13 -0700 (PDT)
X-Received: by 10.28.24.14 with SMTP id 14mr1804086wmy.1.1457948773573;
        Mon, 14 Mar 2016 02:46:13 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x22c.google.com (mail-wm0-x22c.google.com. [2a00:1450:400c:c09::22c])
        by gmr-mx.google.com with ESMTPS id h187si473036wme.0.2016.03.14.02.46.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 02:46:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) client-ip=2a00:1450:400c:c09::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22c.google.com with SMTP id l68so93543039wml.0
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Mar 2016 02:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=rHrr0vYX9E1K8Ox9nZ+jmSB71C2HTYQ/ezfKTheWjeg=;
        b=A0QnEdSAafLVsrxjlwJCVw7HcxK81dyN8wUxWv/rImoRMc/d9CLT2fdsEyLm/aLik9
         rzAlWsU9A/D7Rsgm/JC5lurOWBNOQoD1AVJnpG3mVTsO5GNqfFq4yFKaAeVTkcWhS0aV
         VIuLPv7PQAZXOOEry1gDTpDp9GprVKdqV20Ux1z8bol65gFOLt2eYJKNp00Oz357DLOy
         G+CV3VhPN4Al3GiuXHzLM1yiV/ueDvc0ArKtGldeFEAHNUSufWpZlx4q/DNzNL8MeOyz
         cSAKgEPNNexb3+JGUPxOlMSs8XBpbmOtMvPLi+p1GevJet9msVxV8NACOtLGN30QLG0n
         d5wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=rHrr0vYX9E1K8Ox9nZ+jmSB71C2HTYQ/ezfKTheWjeg=;
        b=PcPHl01FDTniXkU6IZB4xnRw+EmZb5FLfyBHbqYg10EDlTV2zJnx1Bp2ELAJBYWjt7
         h96z10grnhD9mNZjT7g1haT+UljSaZ8UU4q1JJZIghMyrGNTTE/UNsnjoy3Y35jfv4se
         I2gYoT7uwM6tAp8WsxpZznvme4IpEBaXG//7PkPjaLEjDmihu0CYeUp0MmqEFhaceoW7
         S9T4AQtICf8nzZKq6/gvVn5JSAbsZTXww+oTiG0RwY6u9pKWBTHfXYqBharvpYDxs1Jg
         H1fRlTtGK3CELOLi4BEBJ1aO9q19Dbg2cUKoE9fn/BrYkJq62xDRdx65pgfGQ8cTNXJY
         2M4w==
X-Gm-Message-State: AD7BkJJjcEs/Q4aHxUAyD8tDrYXcpinlDUUX2bnciuzIYHCmgGcXItkuPe6ULQh0WG7bIQTYA7OcU8LucURSUA==
MIME-Version: 1.0
X-Received: by 10.194.2.202 with SMTP id 10mr25694223wjw.94.1457948773408;
 Mon, 14 Mar 2016 02:46:13 -0700 (PDT)
Received: by 10.194.222.165 with HTTP; Mon, 14 Mar 2016 02:46:13 -0700 (PDT)
In-Reply-To: <20160314061120.GA6620@d830.WORKGROUP>
References: <20160314061120.GA6620@d830.WORKGROUP>
Date: Mon, 14 Mar 2016 11:46:13 +0200
Message-ID: <CAEnQRZA0D0EW374fMYe=V3A-hEYaC5L0NLbYUAndP96XpHuq7Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: meter: remove fixme
 comment on device remove
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 14, 2016 at 8:11 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> This comment was in place in the original drafts of these drivers
> when the remove function did a whole lot of work: flushed queues,
> unregistered interrupts, uninitialized rings, unconfigured rings,
> and a few kfree's.
>
> The remove functions have since been reduced to unregistering and
> stopping the device.  This is the inverse of what was done during
> probe and is correct. Time to remove the comment.
>
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>

Acked-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
>  drivers/staging/iio/meter/ade7753.c | 1 -
>  drivers/staging/iio/meter/ade7754.c | 1 -
>  drivers/staging/iio/meter/ade7759.c | 1 -
>  3 files changed, 3 deletions(-)
>
> diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
> index 6928710..b0bc99a 100644
> --- a/drivers/staging/iio/meter/ade7753.c
> +++ b/drivers/staging/iio/meter/ade7753.c
> @@ -528,7 +528,6 @@ static int ade7753_probe(struct spi_device *spi)
>         return iio_device_register(indio_dev);
>  }
>
> -/* fixme, confirm ordering in this function */
>  static int ade7753_remove(struct spi_device *spi)
>  {
>         struct iio_dev *indio_dev = spi_get_drvdata(spi);
> diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
> index f4188e1..fed1180 100644
> --- a/drivers/staging/iio/meter/ade7754.c
> +++ b/drivers/staging/iio/meter/ade7754.c
> @@ -558,7 +558,6 @@ powerdown_on_error:
>         return ret;
>  }
>
> -/* fixme, confirm ordering in this function */
>  static int ade7754_remove(struct spi_device *spi)
>  {
>         struct iio_dev *indio_dev = spi_get_drvdata(spi);
> diff --git a/drivers/staging/iio/meter/ade7759.c b/drivers/staging/iio/meter/ade7759.c
> index 684e612..c14892d 100644
> --- a/drivers/staging/iio/meter/ade7759.c
> +++ b/drivers/staging/iio/meter/ade7759.c
> @@ -476,7 +476,6 @@ static int ade7759_probe(struct spi_device *spi)
>         return iio_device_register(indio_dev);
>  }
>
> -/* fixme, confirm ordering in this function */
>  static int ade7759_remove(struct spi_device *spi)
>  {
>         struct iio_dev *indio_dev = spi_get_drvdata(spi);
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160314061120.GA6620%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.

