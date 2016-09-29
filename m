X-GM-THRID: 6335689041155981312
X-Received: by 10.25.22.65 with SMTP id m62mr106367lfi.29.1475154295745;
        Thu, 29 Sep 2016 06:04:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.207 with SMTP id g76ls277565lji.42.gmail; Thu, 29 Sep
 2016 06:04:55 -0700 (PDT)
X-Received: by 10.25.206.200 with SMTP id e191mr107960lfg.3.1475154295088;
        Thu, 29 Sep 2016 06:04:55 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id e21si1013359wmc.2.2016.09.29.06.04.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 06:04:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id h96so680163lfi.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 06:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ErIPkxvKizaVJ3N9PvAVYJRhKgbuoH2CmZWtfrMqip4=;
        b=IbZx/r7P/M25LgjviksN4P7aVJBbsl6oz3QSzXTvN0ql5USETbmwnRY+S4e2Eb/M+G
         eAp8safHxCyh92KlhBhO6jLX1SGwn+WouI1pR0doBKlhl8S1xuUIuArztd8CG1Qf3amZ
         cZ59Z15+ibtUYZjsoxVojj3AhFABPisAW6zUhvuiLyD0rhcEME22cCbIqMZm5jRnc9v5
         /s44d8OuqdLCtWX0TSg/j3QtgW2POBXbwtnlWwwOqVOq5BmHw8/UVUYm/gg+AfKZ0Ust
         ONRD8zVwuIhD9srBd3uWGUi/nHSB9LAFGeXmMdMPsnzhsv7Cn/qY7RwtZaP6PMpQdq5U
         Txlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ErIPkxvKizaVJ3N9PvAVYJRhKgbuoH2CmZWtfrMqip4=;
        b=egsY86d1gAbtZnOk0ZLqn2vmRrwctv9N8oC6vA882gvawHmDSufDOFw2mTvgNc538C
         oD47AdsSMqpbbDjHuPwuY6/YakDNR9Ufu5WCz6GAjL9ygtAXNACMkSX/HsHDq7h07Kc6
         sCJfK3xHR0Rn8BjrHsVhJ+AeJt1fYlRSfo+RSIxgewoN9FdSSp93zc3wW3EJMx+X71Br
         bv4iSRA/69gqYwyN9mieyuz9JAXSPnnTOi6G6sU7jXMc2aWBJKxVos3sz//SqJVmeGt2
         JjtTskWCBl4aG5Kqkqm9WMI3KOcRAicdDBObNJdunpgzRBwCJcYH+KxeiFCFG30hrRWP
         YVOg==
X-Gm-Message-State: AA6/9RmRjF8uttC83waABuhDxvGo/cbAyj4yj2FuTXOb9I/V2H6KIJk1luYvse1HTlkV0lqOK6BVUzrsOIZoKg==
X-Received: by 10.46.71.144 with SMTP id u138mr678409lja.20.1475154294473;
 Thu, 29 Sep 2016 06:04:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.208.15 with HTTP; Thu, 29 Sep 2016 06:04:53 -0700 (PDT)
In-Reply-To: <b7e14439773be72f471528ac4606413d19db383d.1475141738.git.anchalj109@gmail.com>
References: <cover.1475141738.git.anchalj109@gmail.com> <b7e14439773be72f471528ac4606413d19db383d.1475141738.git.anchalj109@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 29 Sep 2016 16:04:53 +0300
Message-ID: <CAEnQRZAQxPnCpznJ+UEoVr-0dPXw+3_bDOhd05AHLPB7i6euFw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: iio: cdc: ad7152:
 CHECK:Please use a blank line
To: Anchal Jain <anchalj109@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	"Hennerich, Michael" <Michael.Hennerich@analog.com>, Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset=UTF-8

Hi Anchal,

Commit message should be clearer than that, insisting on why the
change is needed.

e.g.

staging: iio: cdc: ad7152: Add blank line after declarations to
increase readability


On Thu, Sep 29, 2016 at 12:49 PM, Anchal Jain <anchalj109@gmail.com> wrote:
> This patch fixes the checkpatch.pl issue:
>
> CHECK: Please use a blank line after function/struct/union/enum declarations
>
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/iio/cdc/ad7152.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
> index 2473af3..e383f00 100644
> --- a/drivers/staging/iio/cdc/ad7152.c
> +++ b/drivers/staging/iio/cdc/ad7152.c
> @@ -134,6 +134,7 @@ static inline ssize_t ad7152_start_calib(struct device *dev,
>         mutex_unlock(&indio_dev->mlock);
>         return len;
>  }
> +
>  static ssize_t ad7152_start_offset_calib(struct device *dev,
>                                          struct device_attribute *attr,
>                                          const char *buf,
> @@ -142,6 +143,7 @@ static ssize_t ad7152_start_offset_calib(struct device *dev,
>         return ad7152_start_calib(dev, attr, buf, len,
>                                   AD7152_CONF_MODE_OFFS_CAL);
>  }
> +
>  static ssize_t ad7152_start_gain_calib(struct device *dev,
>                                        struct device_attribute *attr,
>                                        const char *buf,
> @@ -317,6 +319,7 @@ out:
>         mutex_unlock(&indio_dev->mlock);
>         return ret;
>  }
> +
>  static int ad7152_read_raw(struct iio_dev *indio_dev,
>                            struct iio_chan_spec const *chan,
>                            int *val, int *val2,
> @@ -470,6 +473,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
>                 BIT(IIO_CHAN_INFO_SCALE),
>         }
>  };
> +
>  /*
>   * device probe and remove
>   */
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/b7e14439773be72f471528ac4606413d19db383d.1475141738.git.anchalj109%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

