X-GM-THRID: 6202672545102036992
X-Received: by 10.195.18.100 with SMTP id gl4mr1145688wjd.4.1444849407540;
        Wed, 14 Oct 2015 12:03:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.164.77 with SMTP id n74ls72253lfe.94.gmail; Wed, 14 Oct
 2015 12:03:26 -0700 (PDT)
X-Received: by 10.112.190.74 with SMTP id go10mr1176653lbc.9.1444849406962;
        Wed, 14 Oct 2015 12:03:26 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id c7si959942wiy.3.2015.10.14.12.03.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:03:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id ll6so10485292wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=4nfsnJwvldjU/24eNWwCthbukUMhZT6irB48EKzOuug=;
        b=M0T5TozE8WYYFluqW7f5u30fO8JSSB6is4LI08EB16cFLvB0+MdqHfOtgxMXkoJ5g9
         GmMeoO3JVEyv74nyswG1ZHfq/PRhlP7SZEMQqy5tgiKMuPIEdH23a6kzzIom9pt18cen
         030LKPFPDFvGt93jtfqVPK2bF0k4EKp3mj7vvYH6rfroFLovfS1v1rR4TJrlpZG+FQ6T
         OnDckaVrekDIKvDVEF2mgwFcaG09Qb+v+bSIWDvZWD8bVdpXdqKZenU878v6q5Jot8wn
         4hJdZzDQBa3QBEKIap2habybs8pFjLX5K58m1eLSt15IZY4+WAuhGlv3ADRSSSvpH4oU
         79TA==
MIME-Version: 1.0
X-Received: by 10.194.202.137 with SMTP id ki9mr5721081wjc.16.1444849406859;
 Wed, 14 Oct 2015 12:03:26 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Wed, 14 Oct 2015 12:03:26 -0700 (PDT)
In-Reply-To: <27ecc770c22a71a8041a9a4e2edf0568c485f58a.1444845354.git.ciorneiioana@gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>
	<27ecc770c22a71a8041a9a4e2edf0568c485f58a.1444845354.git.ciorneiioana@gmail.com>
Date: Wed, 14 Oct 2015 22:03:26 +0300
Message-ID: <CAEnQRZDE43GCmdFH7RmKf9XWCddtEwH_NOdknaNkS1ap5cVnGA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4 7/9] staging: iio: adc: remove
 multiple blank lines
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 9:14 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> Remove multiple blank lines since there is no practical reason
> to have it
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
>  drivers/staging/iio/adc/ad7192.c  | 1 -
>  drivers/staging/iio/adc/ad7280a.c | 1 -
>  drivers/staging/iio/adc/ad7780.c  | 1 -
>  drivers/staging/iio/adc/ad7816.c  | 3 ---
>  4 files changed, 6 deletions(-)
>
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index e7212c8..f3d793c 100644
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
> index 2737033..d37e8a4 100644
> --- a/drivers/staging/iio/adc/ad7280a.c
> +++ b/drivers/staging/iio/adc/ad7280a.c
> @@ -769,7 +769,6 @@ static IIO_DEVICE_ATTR(in_temp_thresh_high_value,
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

