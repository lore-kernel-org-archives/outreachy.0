X-GM-THRID: 6200774307110453248
X-Received: by 10.112.169.34 with SMTP id ab2mr1920390lbc.23.1443741541674;
        Thu, 01 Oct 2015 16:19:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.23.131 with SMTP id m3ls248893wif.47.gmail; Thu, 01 Oct
 2015 16:19:01 -0700 (PDT)
X-Received: by 10.195.12.234 with SMTP id et10mr1935141wjd.2.1443741541240;
        Thu, 01 Oct 2015 16:19:01 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id ch7si152155wib.2.2015.10.01.16.19.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 16:19:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id lk2so9612251wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 16:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=F12kjkKa7gbH2yQ6tDkf8ijMbyXxn/nj03C4njKscjs=;
        b=NNkvpBC4hlGZuJObHI6BDoQxLSUrCLp7zdemlP/527wVVrbu0W6cbjHZ41wDG1W4ll
         GsUkqn5VxvDTzwkzt5zkmy3MFWeHx1UXiUwqu5V1busy0lTmdXexo4RMYQdsLpBHqyzL
         IOGAFg/7dtZRAI9gl8gb5ut/TkIzjYSqTwM54b0yEMFnwa1sXLxa5JE19pTENNS5oUly
         UZuqx8NML/EuwU/cyC+EuKbh9XiapV85csNbHUxPG1dutJXP14Pffg6e8Fr7V2hqy/CH
         pZ1DGBYqQc+YhhlzA45U6eamrJxVHIvXnL6u3bjxAiFFeE2DuwUB34Qbof64AOD3rkal
         VYvQ==
MIME-Version: 1.0
X-Received: by 10.180.10.197 with SMTP id k5mr1100747wib.22.1443741541070;
 Thu, 01 Oct 2015 16:19:01 -0700 (PDT)
Received: by 10.194.67.99 with HTTP; Thu, 1 Oct 2015 16:19:01 -0700 (PDT)
In-Reply-To: <41516ac4f917514f14dc5f8469a52aa8b6081818.1443729484.git.ciorneiioana@gmail.com>
References: <cover.1443729484.git.ciorneiioana@gmail.com>
	<41516ac4f917514f14dc5f8469a52aa8b6081818.1443729484.git.ciorneiioana@gmail.com>
Date: Fri, 2 Oct 2015 04:49:01 +0530
Message-ID: <CAK-LDbJ3uLD2gH592oRLCLGn0Yx5zosxg9YgSERxDkhUxzQpJQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: iio: resolver: replace
 iio_device_register by devm_iio_device_register
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 2, 2015 at 1:40 AM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> Use devm_iio_device_register instead of iio_device_register when the remove
> function is only used to call iio_device_unregister.
> Function devm_iio_device_register implicitly calls unregister so there is
> wqno need to specifically call it

wqno->no

Here, commit log looks confusing to me. Yes, it is good to use devm_iio_register
only when remove function is calling iio_device_unregister. But that is not the
reason why you should use resource managed function. Probably you need to
write the clear reason of why you should replace current code with
devm_iio_register.

> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/iio/resolver/ad2s90.c | 10 +---------
>  1 file changed, 1 insertion(+), 9 deletions(-)
>
> diff --git a/drivers/staging/iio/resolver/ad2s90.c b/drivers/staging/iio/resolver/ad2s90.c
> index e24c589..c57a296 100644
> --- a/drivers/staging/iio/resolver/ad2s90.c
> +++ b/drivers/staging/iio/resolver/ad2s90.c
> @@ -79,7 +79,7 @@ static int ad2s90_probe(struct spi_device *spi)
>         indio_dev->num_channels = 1;
>         indio_dev->name = spi_get_device_id(spi)->name;
>
> -       ret = iio_device_register(indio_dev);
> +       ret = devm_iio_device_register(indio_dev->dev.parent, indio_dev);
>         if (ret)
>                 return ret;
>
> @@ -91,13 +91,6 @@ static int ad2s90_probe(struct spi_device *spi)
>         return 0;
>  }
>
> -static int ad2s90_remove(struct spi_device *spi)
> -{
> -       iio_device_unregister(spi_get_drvdata(spi));
> -
> -       return 0;
> -}
> -
>  static const struct spi_device_id ad2s90_id[] = {
>         { "ad2s90" },
>         {}
> @@ -110,7 +103,6 @@ static struct spi_driver ad2s90_driver = {
>                 .owner = THIS_MODULE,
>         },
>         .probe = ad2s90_probe,
> -       .remove = ad2s90_remove,
>         .id_table = ad2s90_id,
>  };
>  module_spi_driver(ad2s90_driver);
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/41516ac4f917514f14dc5f8469a52aa8b6081818.1443729484.git.ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali

