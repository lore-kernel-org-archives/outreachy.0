X-GM-THRID: 6202672545102036992
X-Received: by 10.112.209.73 with SMTP id mk9mr5826152lbc.14.1444667884334;
        Mon, 12 Oct 2015 09:38:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.208.78 with SMTP id h75ls572388lfg.83.gmail; Mon, 12 Oct
 2015 09:38:03 -0700 (PDT)
X-Received: by 10.112.202.165 with SMTP id kj5mr5824886lbc.5.1444667883851;
        Mon, 12 Oct 2015 09:38:03 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id hs5si543231wib.1.2015.10.12.09.38.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 09:38:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id gb1so156137818wic.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 09:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=dDfgPclA1+Wk3fFIKv1ZJxBTuEURMussewWjjtcjI0A=;
        b=TjWEO6cdwLe0uYr/sS8rUpQ4YtkSO49jU6kGvEkkl7VYIkmB5G1VXEkmLCHyxwvWMk
         WOKmKeOmZd6SX/Eh1DAX0UORWIusN4vg9jUD97BTKdMTT1b/u7a2yJu4z4SdExZ2CgXe
         u/F5fmHzXJ5pVKBQQMdzPP0qTToHoCPuAnHejqQHG2fM7GO4FqDrvSkEA7LTY2/XyPTH
         5S1SlU1/5QKAillpF/278PC/XA0ygx5Uo7ucVIOR/iQVbMlx/WTWpVaMbuRxO/DNO7/G
         6NdOglI2r1E/SheDvoqGcLG3C1PjQeK/hZZBMYRG3Kl4yTVvMd71kfT7/Swnl1HTKHOF
         eX6Q==
MIME-Version: 1.0
X-Received: by 10.180.221.193 with SMTP id qg1mr14924873wic.87.1444667883647;
 Mon, 12 Oct 2015 09:38:03 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Mon, 12 Oct 2015 09:38:03 -0700 (PDT)
In-Reply-To: <d94402f948a0d2561ee046fd5fcb56ea562ab1bf.1444419393.git.ciorneiioana@gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>
	<d94402f948a0d2561ee046fd5fcb56ea562ab1bf.1444419393.git.ciorneiioana@gmail.com>
Date: Mon, 12 Oct 2015 19:38:03 +0300
Message-ID: <CAEnQRZAZ0f5p3myoNWSdzF=WhxoPWMxNLYn+wcHThYz_YrqKzg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 5/9] staging: iio: adc: add spaces
 around binary operators
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 9, 2015 at 10:51 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> Add spaces around binary operators like -, +, * etc
> in order to improve readability
>
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>
> Changes in v2:
>     - nothing
> Changes in v3:
>     - nothing
>
>  drivers/staging/iio/adc/ad7192.c  | 2 +-
>  drivers/staging/iio/adc/ad7280a.c | 4 ++--
>  drivers/staging/iio/adc/ad7816.c  | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index e7212c8..1bae258 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -377,7 +377,7 @@ ad7192_show_scale_available(struct device *dev,
>  }
>
>  static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
> -                            in_voltage-voltage_scale_available,
> +                            in_voltage - voltage_scale_available,

This is not ok :). in_voltage-voltage_scale_available is the name of
an IIO sysfs
attribute exposed to user space. '-' is a part of the name, there is
no binary operator
here.

If checkpatch complains about this then it's a false positive.


>                              S_IRUGO, ad7192_show_scale_available, NULL, 0);
>
>  static IIO_DEVICE_ATTR(in_voltage_scale_available, S_IRUGO,
> diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> index 2c07198..e8e1eb1 100644
> --- a/drivers/staging/iio/adc/ad7280a.c
> +++ b/drivers/staging/iio/adc/ad7280a.c
> @@ -748,14 +748,14 @@ out:
>  }
>
>  static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
> -               in_voltage-voltage_thresh_low_value,
> +               in_voltage - voltage_thresh_low_value,
>                 S_IRUGO | S_IWUSR,
>                 ad7280_read_channel_config,
>                 ad7280_write_channel_config,
>                 AD7280A_CELL_UNDERVOLTAGE);

Ditto.

>
>  static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
> -               in_voltage-voltage_thresh_high_value,
> +               in_voltage - voltage_thresh_high_value,

Ditto.

>                 S_IRUGO | S_IWUSR,
>                 ad7280_read_channel_config,
>                 ad7280_write_channel_config,
> diff --git a/drivers/staging/iio/adc/ad7816.c b/drivers/staging/iio/adc/ad7816.c
> index 4e954d2..6636087 100644
> --- a/drivers/staging/iio/adc/ad7816.c
> +++ b/drivers/staging/iio/adc/ad7816.c
> @@ -48,7 +48,7 @@ struct ad7816_chip_info {
>         u16 rdwr_pin;
>         u16 convert_pin;
>         u16 busy_pin;
> -       u8  oti_data[AD7816_CS_MAX+1];
> +       u8  oti_data[AD7816_CS_MAX + 1];

This is ok.

>         u8  channel_id; /* 0 always be temperature */
>         u8  mode;
>  };
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d94402f948a0d2561ee046fd5fcb56ea562ab1bf.1444419393.git.ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

