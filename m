X-GM-THRID: 6202672545102036992
X-Received: by 10.194.94.66 with SMTP id da2mr1133740wjb.7.1444849165189;
        Wed, 14 Oct 2015 11:59:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.162.81 with SMTP id l78ls66372lfe.46.gmail; Wed, 14 Oct
 2015 11:59:24 -0700 (PDT)
X-Received: by 10.112.202.165 with SMTP id kj5mr1136914lbc.5.1444849164669;
        Wed, 14 Oct 2015 11:59:24 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x241.google.com (mail-wi0-x241.google.com. [2a00:1450:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id q6si956906wif.2.2015.10.14.11.59.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:59:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) client-ip=2a00:1450:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wicuk10 with SMTP id uk10so9864181wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=faLeuqZqf5/Or2/GCWGCkad8K/PCkyuVX7jZmBxHm3Q=;
        b=eTpAqb9jheQBGp6NdO93rf+8DSkMvYrnOgA8cbvpUItezbUvj5M2P77oWe1Xwt9ztA
         NLS8QzP9rTvjy48rj72s0GnHMrwtAwJlM1XjqGJIrdxrg+3uqWOAMPJ2OUZPLKOXjs+S
         hfr8/nVX6ZT5MxhXx5OYrZdcJdNVDnX5obrlzBqJ4JjaHMDON+ipYZnChi5fTj6BKRwF
         xyJzrqQev0RhdJpeNR3A9hZzSgeQmnJcaajcNxIJGrhv5ZsqZuBvkIngbIXKSPKftQJ9
         dy1OwPulegVwydozMzwfdyM0FbswxOj9jntC2dWiF23Mj6RBLABI4LwyIOEbJnYyW50D
         F2Ng==
MIME-Version: 1.0
X-Received: by 10.180.211.47 with SMTP id mz15mr5971840wic.93.1444849164504;
 Wed, 14 Oct 2015 11:59:24 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Wed, 14 Oct 2015 11:59:24 -0700 (PDT)
In-Reply-To: <8abc2bead1760b18d8e7bec4b6d91089fbeb95c2.1444845354.git.ciorneiioana@gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>
	<8abc2bead1760b18d8e7bec4b6d91089fbeb95c2.1444845354.git.ciorneiioana@gmail.com>
Date: Wed, 14 Oct 2015 21:59:24 +0300
Message-ID: <CAEnQRZCB2Md=TswpZCJ1cUv9bZkLZdo+HNTx3gtSm1dLz=MfMQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4 3/9] staging: iio: adc: remove
 explicit comparison to NULL
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 9:14 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> Use !condition instead off condition == NULL when comparing with NULL
>
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
> Changes in v2:
>     - nothing
> Changes in v3:
>     - nothing
> Changes in v4:
>     - nothing
>
>  drivers/staging/iio/adc/ad7192.c    | 2 +-
>  drivers/staging/iio/adc/ad7280a.c   | 8 ++++----
>  drivers/staging/iio/adc/mxs-lradc.c | 2 +-
>  3 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index 5ae7a50..6adac61 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -626,7 +626,7 @@ static int ad7192_probe(struct spi_device *spi)
>         }
>
>         indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
> -       if (indio_dev == NULL)
> +       if (!indio_dev)
>                 return -ENOMEM;
>
>         st = iio_priv(indio_dev);
> diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> index 6db764e6..01156c7 100644
> --- a/drivers/staging/iio/adc/ad7280a.c
> +++ b/drivers/staging/iio/adc/ad7280a.c
> @@ -488,7 +488,7 @@ static int ad7280_channel_init(struct ad7280_state *st)
>
>         st->channels = kcalloc((st->slave_num + 1) * 12 + 2,
>                                sizeof(*st->channels), GFP_KERNEL);
> -       if (st->channels == NULL)
> +       if (!st->channels)
>                 return -ENOMEM;
>
>         for (dev = 0, cnt = 0; dev <= st->slave_num; dev++)
> @@ -550,7 +550,7 @@ static int ad7280_attr_init(struct ad7280_state *st)
>         st->iio_attr = kcalloc(2, sizeof(*st->iio_attr) *
>                                (st->slave_num + 1) * AD7280A_CELLS_PER_DEV,
>                                GFP_KERNEL);
> -       if (st->iio_attr == NULL)
> +       if (!st->iio_attr)
>                 return -ENOMEM;
>
>         for (dev = 0, cnt = 0; dev <= st->slave_num; dev++)
> @@ -687,7 +687,7 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
>         int i, ret;
>
>         channels = kcalloc(st->scan_cnt, sizeof(*channels), GFP_KERNEL);
> -       if (channels == NULL)
> +       if (!channels)
>                 return IRQ_HANDLED;
>
>         ret = ad7280_read_all_channels(st, st->scan_cnt, channels);
> @@ -842,7 +842,7 @@ static int ad7280_probe(struct spi_device *spi)
>         struct iio_dev *indio_dev;
>
>         indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
> -       if (indio_dev == NULL)
> +       if (!indio_dev)
>                 return -ENOMEM;
>
>         st = iio_priv(indio_dev);
> diff --git a/drivers/staging/iio/adc/mxs-lradc.c b/drivers/staging/iio/adc/mxs-lradc.c
> index f250aaf..407d4a2 100644
> --- a/drivers/staging/iio/adc/mxs-lradc.c
> +++ b/drivers/staging/iio/adc/mxs-lradc.c
> @@ -1232,7 +1232,7 @@ static int mxs_lradc_trigger_init(struct iio_dev *iio)
>         struct mxs_lradc *lradc = iio_priv(iio);
>
>         trig = iio_trigger_alloc("%s-dev%i", iio->name, iio->id);
> -       if (trig == NULL)
> +       if (!trig)
>                 return -ENOMEM;
>
>         trig->dev.parent = lradc->dev;
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/8abc2bead1760b18d8e7bec4b6d91089fbeb95c2.1444845354.git.ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

