X-GM-THRID: 6202672545102036992
X-Received: by 10.180.85.133 with SMTP id h5mr1252296wiz.1.1444849212803;
        Wed, 14 Oct 2015 12:00:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.206.211 with SMTP id e202ls78025lfg.109.gmail; Wed, 14 Oct
 2015 12:00:12 -0700 (PDT)
X-Received: by 10.112.130.41 with SMTP id ob9mr1129274lbb.17.1444849212164;
        Wed, 14 Oct 2015 12:00:12 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x242.google.com (mail-wi0-x242.google.com. [2a00:1450:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id ch7si371224wib.2.2015.10.14.12.00.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:00:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) client-ip=2a00:1450:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wihh2 with SMTP id h2so14137150wih.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=/uIRLOXYBZroClyCC55kVNjXQbnr3+tMmvKnJAQQrgA=;
        b=LnWuWNO7SLiMCpJIUXbQpD90J2as+Iou4ywgX06jKdnEDLvgr5Np/f2vmj2p3sLR3Z
         HXNEH9a0O7ZRB2cNfdSXH0CN7Zd+O0OzwXqsrDJs5wRsEgIDRJNbz3Y9YvsRTBz2T/wa
         tYEuYwrDWOlMwLDe/8bmbyIXg8HKFwiiPl9v6sIz8odA1WqP2MAFGIyCsC5b/KvvUn/a
         bG2IQEs5HRdZADAp6fPPaWBhY+5/iP8SjJ6B2wZUio/e2rDIVdSHWhXCjXzgMXf7WOB3
         vuqfzSJn57A4g27i75H9dhRfYwFt8+NP6+d5Al5agw72W2nSo16VGW5R11IP06qmpnTY
         rkqQ==
MIME-Version: 1.0
X-Received: by 10.180.90.166 with SMTP id bx6mr28173277wib.93.1444849212044;
 Wed, 14 Oct 2015 12:00:12 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Wed, 14 Oct 2015 12:00:10 -0700 (PDT)
In-Reply-To: <27e3072f96b82d21efe09e193daf6e45a6d9176b.1444845354.git.ciorneiioana@gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>
	<27e3072f96b82d21efe09e193daf6e45a6d9176b.1444845354.git.ciorneiioana@gmail.com>
Date: Wed, 14 Oct 2015 22:00:10 +0300
Message-ID: <CAEnQRZBrKEwOLmwOLUC=Y2gw4V9ne2g6mwESCcP7wtce=-y=sw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4 4/9] staging: iio: adc: remove space
 after cast
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 9:14 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> Remove the space after an explicit cast because there is no
> point in having it
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
>
>  drivers/staging/iio/adc/ad7192.c      | 2 +-
>  drivers/staging/iio/adc/ad7280a.c     | 6 +++---
>  drivers/staging/iio/adc/ad7606_core.c | 2 +-
>  drivers/staging/iio/adc/ad7606_par.c  | 4 ++--
>  4 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index 6adac61..e7212c8 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -424,7 +424,7 @@ static ssize_t ad7192_set(struct device *dev,
>                 return -EBUSY;
>         }
>
> -       switch ((u32) this_attr->address) {
> +       switch ((u32)this_attr->address) {
>         case AD7192_REG_GPOCON:
>                 if (val)
>                         st->gpocon |= AD7192_GPOCON_BPDSW;
> diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> index 01156c7..2737033 100644
> --- a/drivers/staging/iio/adc/ad7280a.c
> +++ b/drivers/staging/iio/adc/ad7280a.c
> @@ -604,7 +604,7 @@ static ssize_t ad7280_read_channel_config(struct device *dev,
>         struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
>         unsigned val;
>
> -       switch ((u32) this_attr->address) {
> +       switch ((u32)this_attr->address) {
>         case AD7280A_CELL_OVERVOLTAGE:
>                 val = 1000 + (st->cell_threshhigh * 1568) / 100;
>                 break;
> @@ -640,7 +640,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
>         if (ret)
>                 return ret;
>
> -       switch ((u32) this_attr->address) {
> +       switch ((u32)this_attr->address) {
>         case AD7280A_CELL_OVERVOLTAGE:
>         case AD7280A_CELL_UNDERVOLTAGE:
>                 val = ((val - 1000) * 100) / 1568; /* LSB 15.68mV */
> @@ -656,7 +656,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
>         val = clamp(val, 0L, 0xFFL);
>
>         mutex_lock(&indio_dev->mlock);
> -       switch ((u32) this_attr->address) {
> +       switch ((u32)this_attr->address) {
>         case AD7280A_CELL_OVERVOLTAGE:
>                 st->cell_threshhigh = val;
>                 break;
> diff --git a/drivers/staging/iio/adc/ad7606_core.c b/drivers/staging/iio/adc/ad7606_core.c
> index 1e324fe..5796ed2 100644
> --- a/drivers/staging/iio/adc/ad7606_core.c
> +++ b/drivers/staging/iio/adc/ad7606_core.c
> @@ -97,7 +97,7 @@ static int ad7606_read_raw(struct iio_dev *indio_dev,
>
>                 if (ret < 0)
>                         return ret;
> -               *val = (short) ret;
> +               *val = (short)ret;
>                 return IIO_VAL_INT;
>         case IIO_CHAN_INFO_SCALE:
>                 *val = st->range * 2;
> diff --git a/drivers/staging/iio/adc/ad7606_par.c b/drivers/staging/iio/adc/ad7606_par.c
> index fbe8237..3537a78 100644
> --- a/drivers/staging/iio/adc/ad7606_par.c
> +++ b/drivers/staging/iio/adc/ad7606_par.c
> @@ -22,7 +22,7 @@ static int ad7606_par16_read_block(struct device *dev,
>         struct iio_dev *indio_dev = platform_get_drvdata(pdev);
>         struct ad7606_state *st = iio_priv(indio_dev);
>
> -       insw((unsigned long) st->base_address, buf, count);
> +       insw((unsigned long)st->base_address, buf, count);
>
>         return 0;
>  }
> @@ -38,7 +38,7 @@ static int ad7606_par8_read_block(struct device *dev,
>         struct iio_dev *indio_dev = platform_get_drvdata(pdev);
>         struct ad7606_state *st = iio_priv(indio_dev);
>
> -       insb((unsigned long) st->base_address, buf, count * 2);
> +       insb((unsigned long)st->base_address, buf, count * 2);
>
>         return 0;
>  }
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/27e3072f96b82d21efe09e193daf6e45a6d9176b.1444845354.git.ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

