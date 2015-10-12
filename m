X-GM-THRID: 6202672545102036992
X-Received: by 10.112.169.34 with SMTP id ab2mr5717344lbc.23.1444662855494;
        Mon, 12 Oct 2015 08:14:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.22.88 with SMTP id m85ls35881lfi.21.gmail; Mon, 12 Oct 2015
 08:14:13 -0700 (PDT)
X-Received: by 10.112.159.4 with SMTP id wy4mr3828015lbb.15.1444662853279;
        Mon, 12 Oct 2015 08:14:13 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x244.google.com (mail-wi0-x244.google.com. [2a00:1450:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id h2si525115wiy.0.2015.10.12.08.14.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 08:14:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) client-ip=2a00:1450:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x244.google.com with SMTP id id10so24699210wic.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 08:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=0qZmnWeJDNYK3cJrNSy/uw/3KzKCbNjDRzgq+PuFfZo=;
        b=OzHz/QN4PXtGDSVFUrIxvG5S3LR4hPSo1uqInIggLS0o3a5oVKktUj28Rfq8PuEWuq
         k9Lxv4iHdC+TxN+GHWggLfllSbF6Az+SP93ZXSsanW1xOlNHZxekfI61j5NnoubEe0TG
         drA4ADxAvP8Dvn46wssezVj7FmyjNTpW9tyiOI9njKjTg+gTkyuJFigALTwNDgSlTXIO
         DOPDkz3RcMm2c37HpLTgNo8+5+zft0BNwxHe3Fj2kMk9E1AGoKxss0gFfFjwSrZ4/xY5
         DmlRoao0FwFNNAbIMNHiIwIrLRxW3HVY5qF2wve8SpNHpecftVWh9VKUaC63cwmz6uoY
         H5/g==
MIME-Version: 1.0
X-Received: by 10.194.236.200 with SMTP id uw8mr29759577wjc.126.1444662853079;
 Mon, 12 Oct 2015 08:14:13 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Mon, 12 Oct 2015 08:14:13 -0700 (PDT)
In-Reply-To: <9e336af188b6ce1cf21d0a4959672db4f84afc0a.1444419393.git.ciorneiioana@gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>
	<9e336af188b6ce1cf21d0a4959672db4f84afc0a.1444419393.git.ciorneiioana@gmail.com>
Date: Mon, 12 Oct 2015 18:14:13 +0300
Message-ID: <CAEnQRZCHUZvcVU-oRzbddfp=oDrb+kJvwkTnZPBFj4J1OBWFDQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 2/9] staging: iio: adc: properly
 indent to match open paranthesis
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 9, 2015 at 10:51 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> Indent parameters and arguments passed to function calls to match
> open paranthesis
>
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
> Changes in v2:
>     - nothing
> Changes in v3:
>     - rework changes in order to avoid introducing new checkpatch warnings
>

<snip>

> @@ -565,10 +565,11 @@ static int ad7280_attr_init(struct ad7280_state *st)
>                         st->iio_attr[cnt].dev_attr.store =
>                                 ad7280_store_balance_sw;
>                         st->iio_attr[cnt].dev_attr.attr.name =
> -                               kasprintf(GFP_KERNEL,

This line looks good to me as it is. Is there any particular reason
for which you we want GFP_KERNEL to be moved on the next line?

> +                               kasprintf(
> +                                       GFP_KERNEL,
>                                         "in%d-in%d_balance_switch_en",
> -                                       (dev * AD7280A_CELLS_PER_DEV) + ch,
> -                                       (dev * AD7280A_CELLS_PER_DEV) + ch + 1);
> +                                       dev * AD7280A_CELLS_PER_DEV + ch,
> +                                       dev * AD7280A_CELLS_PER_DEV + ch + 1);

This lines should be properly aligned.

>                         ad7280_attributes[cnt] =
>                                 &st->iio_attr[cnt].dev_attr.attr;
>                         cnt++;
> @@ -582,9 +583,11 @@ static int ad7280_attr_init(struct ad7280_state *st)
>                         st->iio_attr[cnt].dev_attr.store =
>                                 ad7280_store_balance_timer;
>                         st->iio_attr[cnt].dev_attr.attr.name =
> -                               kasprintf(GFP_KERNEL, "in%d-in%d_balance_timer",
> -                                       (dev * AD7280A_CELLS_PER_DEV) + ch,
> -                                       (dev * AD7280A_CELLS_PER_DEV) + ch + 1);
> +                               kasprintf(
> +                                       GFP_KERNEL,

The same here.

> +                                       "in%d-in%d_balance_timer",
> +                                       dev * AD7280A_CELLS_PER_DEV + ch,
> +                                       dev * AD7280A_CELLS_PER_DEV + ch + 1);
>                         ad7280_attributes[cnt] =
>                                 &st->iio_attr[cnt].dev_attr.attr;
>                 }
> @@ -595,8 +598,8 @@ static int ad7280_attr_init(struct ad7280_state *st)
>  }
>
>  static ssize_t ad7280_read_channel_config(struct device *dev,
> -                                       struct device_attribute *attr,
> -                                       char *buf)
> +                                         struct device_attribute *attr,
> +                                         char *buf)
>  {
>         struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>         struct ad7280_state *st = iio_priv(indio_dev);
> @@ -624,9 +627,9 @@ static ssize_t ad7280_read_channel_config(struct device *dev,
>  }
>
>  static ssize_t ad7280_write_channel_config(struct device *dev,
> -                                        struct device_attribute *attr,
> -                                        const char *buf,
> -                                        size_t len)
> +                                          struct device_attribute *attr,
> +                                          const char *buf,
> +                                          size_t len)
>  {
>         struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>         struct ad7280_state *st = iio_priv(indio_dev);
> @@ -698,39 +701,43 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
>                         if (((channels[i] >> 11) & 0xFFF) >=
>                                 st->cell_threshhigh)
>                                 iio_push_event(indio_dev,
> -                                       IIO_EVENT_CODE(IIO_VOLTAGE,
> -                                                      1,
> -                                                      0,
> -                                                      IIO_EV_DIR_RISING,
> -                                                      IIO_EV_TYPE_THRESH,
> -                                                      0, 0, 0),
> -                                       iio_get_time_ns());
> +                                              IIO_EVENT_CODE(
> +                                                       IIO_VOLTAGE,
The same here, I think IIO_VOLTAGE should not be moved.

> +                                                       1,
> +                                                       0,

The rest of the patch looks good.

