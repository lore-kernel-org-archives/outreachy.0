X-GM-THRID: 6207856013446479872
X-Received: by 10.112.54.197 with SMTP id l5mr3289679lbp.21.1445501861189;
        Thu, 22 Oct 2015 01:17:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.84.147 with SMTP id i141ls275894lfb.15.gmail; Thu, 22 Oct
 2015 01:17:40 -0700 (PDT)
X-Received: by 10.112.198.33 with SMTP id iz1mr3302922lbc.8.1445501860412;
        Thu, 22 Oct 2015 01:17:40 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x242.google.com (mail-wi0-x242.google.com. [2a00:1450:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id bn7si645257wib.0.2015.10.22.01.17.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 01:17:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) client-ip=2a00:1450:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x242.google.com with SMTP id uk10so17571514wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 01:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=P7j0MIsccDBJ2AftWSnvbSLwFFCKTLqJeluIAasXjYY=;
        b=vQHMDJYH1waGoBfNVGEQe0B22zYyrfL1HOk4r43ygdi5vq8hPWOZ2qHXINFjhhkOCS
         ipCf48JlbxYdEAhZA17Gx+cryB+CWFURPejZy/kZS1udVN7fQKlnIUkFn09EVqoXeF13
         Qsi96nckGhAlGEV/wfifeeNkzic6kHCW7f/bXUOTi2jXLH7JsnQnDf2K6A9gnjFqBBvz
         0SxfDCDWcXXQgmb6MEuNHSM+zJRSU+nyRzLYXUpag3tgP1Ldik0eo6BYTEA3b/e4ohoI
         Nqo/XOmaJLKzWmQhEY2xNGYntFdj+Rti9NkikLD92vPCgge9yGOLrpaAQTOWzjg120Bh
         4N/A==
MIME-Version: 1.0
X-Received: by 10.194.175.104 with SMTP id bz8mr15882189wjc.42.1445501860262;
 Thu, 22 Oct 2015 01:17:40 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Thu, 22 Oct 2015 01:17:40 -0700 (PDT)
In-Reply-To: <1445446380-19431-1-git-send-email-cristina.moraru09@gmail.com>
References: <1445379022-14114-1-git-send-email-cristina.moraru09@gmail.com>
	<1445446380-19431-1-git-send-email-cristina.moraru09@gmail.com>
Date: Thu, 22 Oct 2015 11:17:40 +0300
Message-ID: <CAEnQRZC0CY9KO+pgXO79=CFb8vS=2Ln8rEeuzKhNs-nsx3SgKQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: iio: Add exit label and
 error code handling
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Cristina Moraru <cristina.moraru09@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 21, 2015 at 7:53 PM, Cristina Moraru
<cristina.moraru09@gmail.com> wrote:
> This commit introduces a label for unlocking the mutex
> and exiting the function adis16060_read_raw and redirects
> the exit on failure of function call adis16060_spi_write
> to that label. Also, adds error handling of the function
> call adis16060_spi_read by a redirection to the same label.
>

The code is correct. Anyhow, the commit message should say
why this change is needed.

staging: iio: adis16060_core: Fix error handling

We need to check adis16060_spi_read return code to avoid feeding user space
with bogus data.
While, at it introduce out_unlock label in order to simplify locking
on error path.

> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
>  drivers/staging/iio/gyro/adis16060_core.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
> index 80783e7..981b63f 100644
> --- a/drivers/staging/iio/gyro/adis16060_core.c
> +++ b/drivers/staging/iio/gyro/adis16060_core.c
> @@ -89,11 +89,13 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>                 /* Take the iio_dev status lock */
>                 mutex_lock(&indio_dev->mlock);
>                 ret = adis16060_spi_write(indio_dev, chan->address);
> -               if (ret < 0) {
> -                       mutex_unlock(&indio_dev->mlock);
> -                       return ret;
> -               }
> +               if (ret < 0)
> +                       goto out_unlock;
> +
>                 ret = adis16060_spi_read(indio_dev, &tval);
> +               if (ret < 0)
> +                       goto out_unlock;
> +
>                 mutex_unlock(&indio_dev->mlock);
>                 *val = tval;
>                 return IIO_VAL_INT;
> @@ -108,6 +110,10 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>         }
>
>         return -EINVAL;
> +
> +out_unlock:
> +       mutex_unlock(&indio_dev->mlock);
> +       return ret;
>  }
>
>  static const struct iio_info adis16060_info = {
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1445446380-19431-1-git-send-email-cristina.moraru09%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

