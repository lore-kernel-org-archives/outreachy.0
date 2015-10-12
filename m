X-GM-THRID: 6202672545102036992
X-Received: by 10.180.208.7 with SMTP id ma7mr3100500wic.5.1444667486676;
        Mon, 12 Oct 2015 09:31:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.39.75 with SMTP id n11ls856948wik.50.gmail; Mon, 12 Oct
 2015 09:31:26 -0700 (PDT)
X-Received: by 10.180.210.212 with SMTP id mw20mr3090286wic.3.1444667486319;
        Mon, 12 Oct 2015 09:31:26 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id q6si522793wif.2.2015.10.12.09.31.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 09:31:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x230.google.com with SMTP id q8so65924715wij.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 09:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=ot0PZDSSPS1XXJ86bZF+k5XegJ9Xrlus1fFDfGW8IHY=;
        b=KzYxJKs2QO8M/V8HWg6/Gdcik32L/BUkgvsf10/THP2nTo426T3Z0+nOQjuzf/31Bv
         0GU8y8UST+iw3U94GzrxQv2nXfqtDsEnLN/Dzi3OuKICJa51iC9LE+EiHJNOkJeVw/uZ
         qytDNOpeSv76NiMs4AZ75Q0ZcOWjnAKuGKHnkm/BkI0ZnMgYUTlAZ9Ya7Rrv4A1rWnwA
         laX3hD6vJ+dm5k/xjaOl1+FCVRgeiHQljkqQrhOqrn8axOWgEaaMhxp6PdbxiZNQrK7y
         eN+OpdND7DFBDCLLUNt1UAictgLStDR6LYt+b7LhLyG2EUa3QAviZPxWZ26yX9FufPKM
         PBGw==
MIME-Version: 1.0
X-Received: by 10.180.90.166 with SMTP id bx6mr14746335wib.93.1444667486166;
 Mon, 12 Oct 2015 09:31:26 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Mon, 12 Oct 2015 09:31:26 -0700 (PDT)
In-Reply-To: <38a48156926a77db8a247e311f879238c0f60981.1444419393.git.ciorneiioana@gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>
	<38a48156926a77db8a247e311f879238c0f60981.1444419393.git.ciorneiioana@gmail.com>
Date: Mon, 12 Oct 2015 19:31:26 +0300
Message-ID: <CAEnQRZAbYksW7kvGywbUWKa4M6sj+ABUvzOaHzJZt74GNcwiHw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 4/9] staging: iio: adc: remove space
 after cast
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 9, 2015 at 10:51 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> Remove the space after an explicit cast because there is no
> point in having it
>
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
>
> Changes in v2:
>     - nothing
> Changes in v3:
>     - nothing
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
> index 8ee2868..2c07198 100644
> --- a/drivers/staging/iio/adc/ad7280a.c
> +++ b/drivers/staging/iio/adc/ad7280a.c
> @@ -606,7 +606,7 @@ static ssize_t ad7280_read_channel_config(struct device *dev,
>         struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
>         unsigned val;
>
> -       switch ((u32) this_attr->address) {
> +       switch ((u32)this_attr->address) {
>         case AD7280A_CELL_OVERVOLTAGE:
>                 val = 1000 + (st->cell_threshhigh * 1568) / 100;
>                 break;
> @@ -642,7 +642,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
>         if (ret)
>                 return ret;
>
> -       switch ((u32) this_attr->address) {
> +       switch ((u32)this_attr->address) {
>         case AD7280A_CELL_OVERVOLTAGE:
>         case AD7280A_CELL_UNDERVOLTAGE:
>                 val = ((val - 1000) * 100) / 1568; /* LSB 15.68mV */
> @@ -658,7 +658,7 @@ static ssize_t ad7280_write_channel_config(struct device *dev,
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

