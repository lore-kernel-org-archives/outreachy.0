X-GM-THRID: 6398911459091283968
X-Received: by 10.99.193.17 with SMTP id w17mr12721040pgf.85.1489943710048;
        Sun, 19 Mar 2017 10:15:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.34.208 with SMTP id i199ls277859ioi.35.gmail; Sun, 19 Mar
 2017 10:15:09 -0700 (PDT)
X-Received: by 10.99.114.19 with SMTP id n19mr6886060pgc.164.1489943709264;
        Sun, 19 Mar 2017 10:15:09 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x242.google.com (mail-it0-x242.google.com. [2607:f8b0:4001:c0b::242])
        by gmr-mx.google.com with ESMTPS id t8si760197ith.0.2017.03.19.10.15.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 10:15:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) client-ip=2607:f8b0:4001:c0b::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x242.google.com with SMTP id g138so12786063itb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 10:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ShZ83tlYYGUV00dGP+kLtmn4I7t7ZGvgRSwlZbb/3Jg=;
        b=vN8PxTJ5s/RFBhgGDFYXnMlMW1i/gUKc9JNGYZNqoMe2FUXzbplJwNMYhiZ8xVuP/n
         BY5Jjar2A1nDYCUeQP0nls2L+A8f5JAkWeRUXH0GelJDVK0LVH2pDNFW54ARkOctmLbY
         Mli31ul/cqF+bbV2FTfG/cF8qVJz+riT6GWj2j7IEoQ0IfiAUTvN4xmZ5XzHozCv8Qup
         lVGqu8WDwwetk+GbUTAIRBl+0o1lGWOmRbKXOhSVIeH8ZczxQRkLwZL+ECvVRJ1smVbN
         tKeoVfUYbnd6hufvTFw2C1z5PjkyVEZ2vcEQieuiQF3j4EGsKQ4JnGH1XyLk7DwKHMhC
         0x0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ShZ83tlYYGUV00dGP+kLtmn4I7t7ZGvgRSwlZbb/3Jg=;
        b=JQWCTHONSEcGMgG6z+U2EOHl1XsJhG0eBi/+AZmxx3nnc5aVVMGXGrV5LjnMzbGo2u
         tn9TBS9AHUHwX5sPWYJkNAw0D91A4oegU1WBqEMYckKNz46kZFd0C909pwU/nBq+FIkM
         2IqmP8wvHstp0NrOE8cVF5LnPZjSqP2RXJQnn4SUm04qBwhGEU9PVTKeipf7HbB0nG9K
         sl3M4QmgBMGZwjnOtNzLzkusKiBBRYtsoY9PS3u2mmYBNcVf3Qpb4MWvZUTy0LFkG58L
         emCKAAxAi1bbMbfREQREeEcyYa8dvMWqMUNvehpkJebylYTNwUIkI6qAFRHvtnkp8NAI
         5S9w==
X-Gm-Message-State: AFeK/H1ykvBlCNPj45zOr9/WYQj5DueGpd2LdaReRrf0wCcG+RS7t5DF2Bf9pMT9vcHxzWl4AIVAYA14iqQj1w==
X-Received: by 10.36.131.131 with SMTP id d125mr7107835ite.113.1489943708925;
 Sun, 19 Mar 2017 10:15:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Sun, 19 Mar 2017 10:14:38 -0700 (PDT)
In-Reply-To: <20170319125039.GA23385@singhal-Inspiron-5558>
References: <20170319125039.GA23385@singhal-Inspiron-5558>
From: Gargi Sharma <gs051095@gmail.com>
Date: Sun, 19 Mar 2017 22:44:38 +0530
Message-ID: <CAOCi2DF4T6MOVy5=UJ=K3mcpUt7pA_8KRO0JM=ejqfxvMY0MXw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v5] staging: Use buf_lock instead of
 mlock and Refactor code
To: simran singhal <singhalsimran0@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 19, 2017 at 6:20 PM, simran singhal
<singhalsimran0@gmail.com> wrote:
> The IIO subsystem is redefining iio_dev->mlock to be used by
> the IIO core only for protecting device operating mode changes.
> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
>
> In this driver, mlock was being used to protect hardware state
> changes. Replace it with buf_lock in the devices global data.
>
> As buf_lock protects both the adis16060_spi_write() and
> adis16060_spi_read() functions and both are always called in
> pair. First write, then read. Thus, refactor the code to have
> one single function adis16060_spi_write_than_read() which is
> protected by the existing buf_lock.
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>
>  v5:
>    -Rename val in adis16060_spi_write_than_read() to conf.
>    -Rename val2 in adis16060_spi_write_than_read() to val.
>    -Corrected Checkpatch issues.
>    -Removed goto from adis16060_read_raw().
>
>
>  drivers/staging/iio/gyro/adis16060_core.c | 42 ++++++++++++-------------------
>  1 file changed, 16 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
> index c9d46e7..0f12492 100644
> --- a/drivers/staging/iio/gyro/adis16060_core.c
> +++ b/drivers/staging/iio/gyro/adis16060_core.c
> @@ -40,25 +40,20 @@ struct adis16060_state {
>
>  static struct iio_dev *adis16060_iio_dev;
>
> -static int adis16060_spi_write(struct iio_dev *indio_dev, u8 val)
> +static int adis16060_spi_write_than_read(struct iio_dev *indio_dev,
> +                                        u8 conf, u16 *val)
>  {
>         int ret;
>         struct adis16060_state *st = iio_priv(indio_dev);
>
>         mutex_lock(&st->buf_lock);
> -       st->buf[2] = val; /* The last 8 bits clocked in are latched */
> +       st->buf[2] = conf; /* The last 8 bits clocked in are latched */
>         ret = spi_write(st->us_w, st->buf, 3);
> -       mutex_unlock(&st->buf_lock);
>
> -       return ret;
> -}
> -
> -static int adis16060_spi_read(struct iio_dev *indio_dev, u16 *val)
> -{
> -       int ret;
> -       struct adis16060_state *st = iio_priv(indio_dev);
> -
> -       mutex_lock(&st->buf_lock);
> +       if (ret < 0) {
> +               mutex_unlock(&st->buf_lock);
> +               return ret;
> +       }
>
>         ret = spi_read(st->us_r, st->buf, 3);
>
> @@ -69,8 +64,8 @@ static int adis16060_spi_read(struct iio_dev *indio_dev, u16 *val)
>          */
>         if (!ret)
>                 *val = ((st->buf[0] & 0x3) << 12) |
> -                       (st->buf[1] << 4) |
> -                       ((st->buf[2] >> 4) & 0xF);
> +                        (st->buf[1] << 4) |
> +                        ((st->buf[2] >> 4) & 0xF);
>         mutex_unlock(&st->buf_lock);
>
>         return ret;
> @@ -83,20 +78,19 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>  {
>         u16 tval = 0;
>         int ret;
> +       struct adis16060_state *st = iio_priv(indio_dev);
>
>         switch (mask) {
>         case IIO_CHAN_INFO_RAW:
>                 /* Take the iio_dev status lock */
> -               mutex_lock(&indio_dev->mlock);
> -               ret = adis16060_spi_write(indio_dev, chan->address);
> +               mutex_lock(&st->buf_lock);
> +               ret = adis16060_spi_write_than_read(indio_dev,
> +                                                   chan->address, &tval);
>                 if (ret < 0)
> -                       goto out_unlock;
> +                       mutex_unlock(&st->buf_lock);
> +                       return ret;
>
> -               ret = adis16060_spi_read(indio_dev, &tval);
> -               if (ret < 0)
> -                       goto out_unlock;
> -
> -               mutex_unlock(&indio_dev->mlock);
> +               mutex_unlock(&st->buf_lock);
>                 *val = tval;
>                 return IIO_VAL_INT;
>         case IIO_CHAN_INFO_OFFSET:
> @@ -110,10 +104,6 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>         }
>
>         return -EINVAL;
> -
> -out_unlock:
> -       mutex_unlock(&indio_dev->mlock);
> -       return ret;
>  }
>

Hey Simran,

I'm another Outreachy aspirant and I'm trying to work through a
similar patch in another driver. Can you please explain to me how you
are avoiding nested locks here? From what I understand, the function
adis16060_read_raw call a lock on &st->buf_lock and then you call the
function adis16060_spi_write_than_read which again tries to get hold
of the same lock. Isn't this a deadlock situation? Please let me know
if my understanding is incorrect.

Thank you!
Gargi

>  static const struct iio_info adis16060_info = {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170319125039.GA23385%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.

