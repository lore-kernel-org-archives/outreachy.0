X-GM-THRID: 6202672545102036992
X-Received: by 10.180.210.212 with SMTP id mw20mr3097716wic.3.1444667956004;
        Mon, 12 Oct 2015 09:39:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.81.208 with SMTP id f199ls69121lfb.101.gmail; Mon, 12 Oct
 2015 09:39:15 -0700 (PDT)
X-Received: by 10.112.140.202 with SMTP id ri10mr5183269lbb.10.1444667955315;
        Mon, 12 Oct 2015 09:39:15 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id bh7si539718wib.1.2015.10.12.09.39.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 09:39:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id q12so28610578wie.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 09:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=mLypjdca2FzFEKG6QqG53ShMIfUyklWuIjS3ep4Q4E4=;
        b=Z9P8cuq95mnS2DNZGovtzjgWCJzTxkTmCwfnTdUGvO0OGwS4//h3d28WtCU52bD2Ma
         bV9v7/DMPqerg+O8SM2Sg+N6TiC70bqKpVf4DopsO9g3qPPA6VCYgHqQfoG94gpCllbo
         e/QUz36/Drp5FbWU6Dv+uMwM251L7DXaN2LD0ZEY5+aJguZ/+5IcDMEQGFAAK3oBIZYj
         9zsS4jux1dAwvvHKHfIKbdltejOq5Ku7keZGVbPBb0OHBTh3PjwA05oM57WL2wBCeQ+I
         /mA2reXv/8Lxaok++92JP/fbBg6VroHa2X7ToJbmHvHgialf5H/swXJijEquW930r3pp
         6yyQ==
MIME-Version: 1.0
X-Received: by 10.194.175.104 with SMTP id bz8mr31489913wjc.42.1444667955158;
 Mon, 12 Oct 2015 09:39:15 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Mon, 12 Oct 2015 09:39:15 -0700 (PDT)
In-Reply-To: <dda33ad15dafe15f720f120eb5c0d87efb52f391.1444419393.git.ciorneiioana@gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>
	<dda33ad15dafe15f720f120eb5c0d87efb52f391.1444419393.git.ciorneiioana@gmail.com>
Date: Mon, 12 Oct 2015 19:39:15 +0300
Message-ID: <CAEnQRZCfnbYtcrXUrfenNP7hOVr6MVsy-iS-0oT=G-p5TRew+Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 6/9] staging: iio: adc: add blank
 line after declarations
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 9, 2015 at 10:51 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> Insert a blank line after declarations
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
>  drivers/staging/iio/adc/ad7606_par.c | 1 +
>  drivers/staging/iio/adc/ad7606_spi.c | 1 +
>  2 files changed, 2 insertions(+)
>
> diff --git a/drivers/staging/iio/adc/ad7606_par.c b/drivers/staging/iio/adc/ad7606_par.c
> index 3537a78..adc370e 100644
> --- a/drivers/staging/iio/adc/ad7606_par.c
> +++ b/drivers/staging/iio/adc/ad7606_par.c
> @@ -113,6 +113,7 @@ static const struct dev_pm_ops ad7606_pm_ops = {
>         .suspend = ad7606_par_suspend,
>         .resume  = ad7606_par_resume,
>  };
> +
>  #define AD7606_PAR_PM_OPS (&ad7606_pm_ops)
>
>  #else
> diff --git a/drivers/staging/iio/adc/ad7606_spi.c b/drivers/staging/iio/adc/ad7606_spi.c
> index 9c62e94..b88f882 100644
> --- a/drivers/staging/iio/adc/ad7606_spi.c
> +++ b/drivers/staging/iio/adc/ad7606_spi.c
> @@ -85,6 +85,7 @@ static const struct dev_pm_ops ad7606_pm_ops = {
>         .suspend = ad7606_spi_suspend,
>         .resume  = ad7606_spi_resume,
>  };
> +
>  #define AD7606_SPI_PM_OPS (&ad7606_pm_ops)
>
>  #else
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/dda33ad15dafe15f720f120eb5c0d87efb52f391.1444419393.git.ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

