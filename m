X-GM-THRID: 6464655213388103680
X-Received: by 10.46.33.202 with SMTP id h71mr1083445lji.3.1505202808648;
        Tue, 12 Sep 2017 00:53:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.169.70 with SMTP id s67ls9199lfe.33.gmail; Tue, 12 Sep 2017
 00:53:27 -0700 (PDT)
X-Received: by 10.25.78.196 with SMTP id u65mr1075251lfk.4.1505202807103;
        Tue, 12 Sep 2017 00:53:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505202807; cv=none;
        d=google.com; s=arc-20160816;
        b=vXiaioEZaT8hp9M0qrbu6y2Y7X5OOIUy6lvC/WefjDMqnYyXV/HEeCSEVoT8Ha9Dtd
         qf64Ycwlk3MK0q1qhNj55ipZnUugWY+Ri08XnHBOLtUH6tB8HPQpN0Iea/kiFxNhhpwL
         UrNY6vB682FSGvl19BJLJauQJP9iF5ZLHfkSuM8Ndu1U8b2I5nBttw6oNM7enQjaW71N
         yJoOpf5F5vZ7i89j06kl4s2ytXhhsWESOQWbxxPFQ8Jq4992WjuyU1YcUMuhz9jyc6cx
         FW8X/4+JK4W9WLvRCwVFKBKO5ZKaeXVCE9eLpU8VniB7G14ZN+urUSpc3oDiVhcRuqxa
         gQog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=CzX3pJY1Al+PxDRH17nKWfFg/DwbTzvFFEAkQQ4RB7o=;
        b=bRfMnIFpd9bRzTzuItuTmO+3CfYoXgZJyoivpVykMnT9YgfpoeG9oix5qiMQHQjgHq
         3XOgamkzeOfPg4Fhf0rbCvCpLe/UjuTteXefusxk37JsSZNb/6km7MM5O+8CaM3yrBgM
         m3ANo6TbALmkhO6VNg3G3YZ5HEWTeXarkOG2RlwUfSmf1DGnUqJAcHJzwXvv7IHIQkZr
         s82yOw36sv0FESU81w+LdMxxUJt1TVeSMyAqJxlDLiQODsulk0xI+R3Zw8c0rYGPMjdp
         4T3/kGngSZ0jirRHmdhhcDjD8mHJh4PzC/lqSl9vjAjglRTSqfZlrOCL+Ij9dgHqxXWd
         NU8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WwoGl78V;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id c142si799196wmh.3.2017.09.12.00.53.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 00:53:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WwoGl78V;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id x17so8645306wmd.5
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 00:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=CzX3pJY1Al+PxDRH17nKWfFg/DwbTzvFFEAkQQ4RB7o=;
        b=WwoGl78VTLM4mBqij09gUjy9XOwiRZQ1Sp5hWa6NrQdtC+8EHUEfAwheEO5ZTcPLo5
         TDXG2O67rhepyyhkUF3oGb8zA1hSLAQuJNFnXyDt+7vT3dBMb/4fuZNg2YFZHQ6UPS6G
         PspqD256tCTuL1Mo71xnY8ZTlcOmOTGsfoYiZuAefLJ6ctiXTCOwCrO6A1kjKNAXsgWB
         BtA8td4t2VCFExTGYVEfZaxG98rJ9X4EDjo11Idec6BanRvCwybbUxXwiSAeJAzrriNU
         K8OItQtRTtpt2sAZq50U9P9HLsATVGL0K/u3eczu1ic6LH4UzK9YrJZo/YOngU+qeajp
         mGmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=CzX3pJY1Al+PxDRH17nKWfFg/DwbTzvFFEAkQQ4RB7o=;
        b=Mhs9b5YYhuq0eooL7IXfSmsbq5X3PiZmdBbnhMwqjBPcTDqUGvF+dw+np/r8QbxMEc
         HFvs44KBPFomrHxUHwdaCoLOzMz/Gg44OZCcBxDQV5o2038fe7c24DgHHka1AQAGw07X
         KyRye0//LF1fnawu0b6mgGsxvO/ULrf0xz/WntA/6Si7fZVdRz5Fj/HWMap2APORbQzG
         DCVVrsVkLHfU1zFVSfo1Mc8hmZ4mWoZowev040SdIJ6JcFUk472VPHkKK06R8Yzj4qf3
         0mRabeWspxl8yqcOLvx+FlcGzC414nU50leyi+kcNyQctDy7qawxKzCuDX99l55+qr1E
         4MpQ==
X-Gm-Message-State: AHPjjUhuduLqXe8d4J0NiPdA/tvPtlFBPxPjT9CEn6NoUihiA5/70oS1
	oCQPMEcA02tk3MlN8R9B8S3ln6Q6eQ==
X-Google-Smtp-Source: ADKCNb5BHmUcI4jr0kR3d6JszCZP0aMJ9R1hAkNVRpaJ4UU/X5gV92MgUxKsRIRQrab6dAJoQo6z+01AEpVBT7y0qvU=
X-Received: by 10.80.224.8 with SMTP id e8mr11601189edl.259.1505202806690;
 Tue, 12 Sep 2017 00:53:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.149.152 with HTTP; Tue, 12 Sep 2017 00:53:26 -0700 (PDT)
In-Reply-To: <20170911224348.GA13259@himanshi-Inspiron-5558>
References: <20170911224348.GA13259@himanshi-Inspiron-5558>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 12 Sep 2017 10:53:26 +0300
Message-ID: <CAEnQRZDgXj85OTQAoEpij_3bSUnmcx1owNyeg10WCmiBGURURg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Fixed IIO_DEVICE_ATTR_NAMED API to
 take name as a string and added "" around names
To: Himanshi Jain <himshijain.hj@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	"Hennerich, Michael" <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald <pmeerw@pmeerw.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>, driverdev <devel@driverdev.osuosl.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, nick.desaulniers@gmail.com
Content-Type: text/plain; charset="UTF-8"

Hi Himanshi,

On Tue, Sep 12, 2017 at 1:43 AM, Himanshi Jain <himshijain.hj@gmail.com> wrote:
> Fixed IIO_DEVICE_ATTR_NAMED API to take name as a
> string instead of implicit conversion to string using
> preprocessors. Added double quotes around names in
> existing usage of IIO_DEVICE_ATTR_NAMED.

Always use imperative mood in commit subject (Fix instead of Fixed).

The subject should contain a tag, which describes the subsytem/files affected.

I would split this patch into:

1) sysfs: iio: Introduce *_ATTR_NAMED

and explain here why do we need  __ATTR_NAMED and IIO_ATTR_NAMED

2) iio: Use new IIO_DEVICE_ATTR_NAMED API

But of course, lets wait to see Lars and Jonathan's opinions.
thanks,
Daniel.

>
> Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
> ---
>  drivers/iio/adc/ad7793.c          | 2 +-
>  drivers/staging/iio/adc/ad7192.c  | 2 +-
>  drivers/staging/iio/adc/ad7280a.c | 4 ++--
>  include/linux/iio/sysfs.h         | 6 +++++-
>  include/linux/sysfs.h             | 7 +++++++
>  5 files changed, 16 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/iio/adc/ad7793.c b/drivers/iio/adc/ad7793.c
> index e6706a0..d74e324 100644
> --- a/drivers/iio/adc/ad7793.c
> +++ b/drivers/iio/adc/ad7793.c
> @@ -420,7 +420,7 @@ static ssize_t ad7793_show_scale_available(struct device *dev,
>  }
>
>  static IIO_DEVICE_ATTR_NAMED(in_m_in_scale_available,
> -               in_voltage-voltage_scale_available, S_IRUGO,
> +               "in_voltage-voltage_scale_available", S_IRUGO,
>                 ad7793_show_scale_available, NULL, 0);
>
>  static struct attribute *ad7793_attributes[] = {
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index d11c6de..daff38c 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -341,7 +341,7 @@ static int ad7192_setup(struct ad7192_state *st,
>  }
>
>  static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
> -                            in_voltage-voltage_scale_available,
> +                            "in_voltage-voltage_scale_available",
>                              0444, ad7192_show_scale_available, NULL, 0);
>
>  static IIO_DEVICE_ATTR(in_voltage_scale_available, 0444,
> diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> index f85dde9..fd32e9a 100644
> --- a/drivers/staging/iio/adc/ad7280a.c
> +++ b/drivers/staging/iio/adc/ad7280a.c
> @@ -750,14 +750,14 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
>  }
>
>  static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
> -               in_voltage-voltage_thresh_low_value,
> +               "in_voltage-voltage_thresh_low_value",
>                 0644,
>                 ad7280_read_channel_config,
>                 ad7280_write_channel_config,
>                 AD7280A_CELL_UNDERVOLTAGE);
>
>  static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
> -               in_voltage-voltage_thresh_high_value,
> +               "in_voltage-voltage_thresh_high_value",
>                 0644,
>                 ad7280_read_channel_config,
>                 ad7280_write_channel_config,
> diff --git a/include/linux/iio/sysfs.h b/include/linux/iio/sysfs.h
> index ce9426c..49c81a4 100644
> --- a/include/linux/iio/sysfs.h
> +++ b/include/linux/iio/sysfs.h
> @@ -55,6 +55,10 @@ struct iio_const_attr {
>         { .dev_attr = __ATTR(_name, _mode, _show, _store),      \
>           .address = _addr }
>
> +#define IIO_ATTR_NAMED(_name, _mode, _show, _store, _addr)             \
> +       { .dev_attr = __ATTR_NAMED(_name, _mode, _show, _store),        \
> +         .address = _addr }
> +
>  #define IIO_ATTR_RO(_name, _addr)       \
>         { .dev_attr = __ATTR_RO(_name), \
>           .address = _addr }
> @@ -85,7 +89,7 @@ struct iio_const_attr {
>
>  #define IIO_DEVICE_ATTR_NAMED(_vname, _name, _mode, _show, _store, _addr) \
>         struct iio_dev_attr iio_dev_attr_##_vname                       \
> -       = IIO_ATTR(_name, _mode, _show, _store, _addr)
> +       = IIO_ATTR_NAMED(_name, _mode, _show, _store, _addr)
>
>  #define IIO_CONST_ATTR(_name, _string)                                 \
>         struct iio_const_attr iio_const_attr_##_name                    \
> diff --git a/include/linux/sysfs.h b/include/linux/sysfs.h
> index aa02c32..20321cf 100644
> --- a/include/linux/sysfs.h
> +++ b/include/linux/sysfs.h
> @@ -104,6 +104,13 @@ struct attribute_group {
>         .store  = _store,                                               \
>  }
>
> +#define __ATTR_NAMED(_name, _mode, _show, _store) {                    \
> +       .attr = {.name = _name,                                         \
> +                .mode = VERIFY_OCTAL_PERMISSIONS(_mode) },             \
> +       .show = _show,                                                  \
> +       .store = _store,                                                \
> +}
> +
>  #define __ATTR_PREALLOC(_name, _mode, _show, _store) {                 \
>         .attr = {.name = __stringify(_name),                            \
>                  .mode = SYSFS_PREALLOC | VERIFY_OCTAL_PERMISSIONS(_mode) },\
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170911224348.GA13259%40himanshi-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.

