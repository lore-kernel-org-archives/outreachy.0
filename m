X-GM-THRID: 6202672545102036992
X-Received: by 10.194.118.65 with SMTP id kk1mr5887157wjb.5.1444668011260;
        Mon, 12 Oct 2015 09:40:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.98 with SMTP id gt2ls782914wib.54.canary; Mon, 12 Oct
 2015 09:40:10 -0700 (PDT)
X-Received: by 10.180.91.233 with SMTP id ch9mr3113721wib.4.1444668010645;
        Mon, 12 Oct 2015 09:40:10 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id m4si505172wib.0.2015.10.12.09.40.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 09:40:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id gb1so156012069wic.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 09:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=EsucRkMpj5eaSO+GdsDo88F7E6s3ZuWBr3muaUCOPDY=;
        b=SNAQmGFSkHb3uwJsJ3bTB+/Nzj5Rm4uVPwogQTS24FXAjQX0hB8ZXFTw/G6RCbSPe3
         FAohTBQgrmQwZUzFeo32aCm/jJ2TXMFcd7zyMAB3a3radnLeMoRuhpVTWdCGAfgLF5NV
         lC1kTiYtKA1niR5J+hCSYuspaEsKzPAatE2PxV2B66stdqfPcjpuJRanjMjMGU5wO6RW
         FF1JsSM/FJLcI1Sno0E4BvrVxVxDUp0k1FHOCrEBzL3E3O9oRX7M3N/Dmg3IvZt41eOW
         /TZU2C0jcZBGeLVvmL1zKlACjx50JE/gqGfZqAXvV90uvmqffiLMVZ/bLkMC61pv2WkA
         hbwA==
MIME-Version: 1.0
X-Received: by 10.180.86.231 with SMTP id s7mr14863676wiz.15.1444668010530;
 Mon, 12 Oct 2015 09:40:10 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Mon, 12 Oct 2015 09:40:10 -0700 (PDT)
In-Reply-To: <35c56be9ce1f3e1af6510fb788fccc3043d339ac.1444419393.git.ciorneiioana@gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>
	<35c56be9ce1f3e1af6510fb788fccc3043d339ac.1444419393.git.ciorneiioana@gmail.com>
Date: Mon, 12 Oct 2015 19:40:10 +0300
Message-ID: <CAEnQRZA+9ESmbb+Po314H0BfNSO=kQhwEFtgY1vPq=xCFPUJZQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 7/9] staging: iio: adc: remove
 multiple blank lines
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 9, 2015 at 10:51 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> Remove multiple blank lines since there is no practical reason
> to have it
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
>  drivers/staging/iio/adc/ad7192.c  | 1 -
>  drivers/staging/iio/adc/ad7280a.c | 1 -
>  drivers/staging/iio/adc/ad7780.c  | 1 -
>  drivers/staging/iio/adc/ad7816.c  | 3 ---
>  4 files changed, 6 deletions(-)
>
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index 1bae258..5f2b5a6 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -88,7 +88,6 @@
>  #define AD7192_CLK_INT_CO              3 /* Internal 4.92 MHz Clock available
>                                            * at the MCLK2 pin */
>
> -
>  /* Configuration Register Bit Designations (AD7192_REG_CONF) */
>
>  #define AD7192_CONF_CHOP       BIT(23) /* CHOP enable */
> diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> index e8e1eb1..2be3475 100644
> --- a/drivers/staging/iio/adc/ad7280a.c
> +++ b/drivers/staging/iio/adc/ad7280a.c
> @@ -773,7 +773,6 @@ static IIO_DEVICE_ATTR(in_temp_thresh_high_value,
>                 ad7280_write_channel_config,
>                 AD7280A_AUX_ADC_OVERVOLTAGE);
>
> -
>  static struct attribute *ad7280_event_attributes[] = {
>         &iio_dev_attr_in_thresh_low_value.dev_attr.attr,
>         &iio_dev_attr_in_thresh_high_value.dev_attr.attr,
> diff --git a/drivers/staging/iio/adc/ad7780.c b/drivers/staging/iio/adc/ad7780.c
> index 722bb15..618b41f 100644
> --- a/drivers/staging/iio/adc/ad7780.c
> +++ b/drivers/staging/iio/adc/ad7780.c
> @@ -206,7 +206,6 @@ static int ad7780_probe(struct spi_device *spi)
>         indio_dev->info = &ad7780_info;
>
>         if (pdata && gpio_is_valid(pdata->gpio_pdrst)) {
> -
>                 ret = devm_gpio_request_one(&spi->dev,
>                                             pdata->gpio_pdrst,
>                                             GPIOF_OUT_INIT_LOW,
> diff --git a/drivers/staging/iio/adc/ad7816.c b/drivers/staging/iio/adc/ad7816.c
> index 6636087..b3dec706 100644
> --- a/drivers/staging/iio/adc/ad7816.c
> +++ b/drivers/staging/iio/adc/ad7816.c
> @@ -38,7 +38,6 @@
>  #define AD7816_TEMP_FLOAT_OFFSET       2
>  #define AD7816_TEMP_FLOAT_MASK         0x3
>
> -
>  /*
>   * struct ad7816_chip_info - chip specific information
>   */
> @@ -70,7 +69,6 @@ static int ad7816_spi_read(struct ad7816_chip_info *chip, u16 *data)
>         }
>         gpio_set_value(chip->rdwr_pin, 1);
>
> -
>         if (chip->mode == AD7816_PD) { /* operating mode 2 */
>                 gpio_set_value(chip->convert_pin, 1);
>                 gpio_set_value(chip->convert_pin, 0);
> @@ -203,7 +201,6 @@ static IIO_DEVICE_ATTR(channel, S_IRUGO | S_IWUSR,
>                 ad7816_store_channel,
>                 0);
>
> -
>  static ssize_t ad7816_show_value(struct device *dev,
>                                  struct device_attribute *attr,
>                                  char *buf)
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/35c56be9ce1f3e1af6510fb788fccc3043d339ac.1444419393.git.ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

