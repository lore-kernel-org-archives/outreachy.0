X-GM-THRID: 6202672545102036992
X-Received: by 10.181.29.103 with SMTP id jv7mr1256840wid.0.1444849327578;
        Wed, 14 Oct 2015 12:02:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.82.3 with SMTP id g3ls80747lfb.10.gmail; Wed, 14 Oct 2015
 12:02:06 -0700 (PDT)
X-Received: by 10.112.145.3 with SMTP id sq3mr1167033lbb.7.1444849326780;
        Wed, 14 Oct 2015 12:02:06 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id q6si956582wif.2.2015.10.14.12.02.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:02:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id p11so7513362wij.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=/CkXw15UO4YFeC6AZsYeNH5/AttPPoHZCyetX3vDswg=;
        b=dE73SnWBtCEmaOliCca4BBXPVsqFK9qAigAepA1Nxo7esweOLXlp9jK1o5UAhVA92f
         oT4UYXkcvfa6fzCYpUS1Bcl+0ogmqDq+z56JyhOBYppgx3hr/qjsv5GU2GBKpWKEuARx
         kDbUwQp+pZG87z3aGZhaHyf7VL3gJZWyv+jmxrsD7wDP32Y3mAvE7A19PVttM0AtFAUM
         UGQa/DjPC4yJXXH0jS3+Zt23rMNQdCK7VI9tcyh6qxBIDxfGTg76HPp2XqmsBbqX2g9y
         dmCna/NHGwwv/jQ0IkIbesYs4JvV9rgGACCchthqBLn3TY+ZvFt62DXzrXAA2KYOkW+c
         xIuQ==
MIME-Version: 1.0
X-Received: by 10.194.175.104 with SMTP id bz8mr6031646wjc.42.1444849326636;
 Wed, 14 Oct 2015 12:02:06 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Wed, 14 Oct 2015 12:02:06 -0700 (PDT)
In-Reply-To: <8536cc1301474789695e23a74e16aa31d2d62e7e.1444845354.git.ciorneiioana@gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>
	<8536cc1301474789695e23a74e16aa31d2d62e7e.1444845354.git.ciorneiioana@gmail.com>
Date: Wed, 14 Oct 2015 22:02:06 +0300
Message-ID: <CAEnQRZBO=gNAO6qodNpgWR7qpbSzAUbY9qcGojXfgR=HihtLzw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4 6/9] staging: iio: adc: add blank
 line after declarations
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 9:14 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> Insert a blank line after declarations
>
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>

Looks good to me.

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

For the next patches please try to explain *why* the change is needed.
Here for example
you could have mentioned that this is needed to increase readability :).


> ---
> Changes in v2:
>     - nothing
> Changes in v3:
>     - nothing
> Changes in v4:
>     - nothing
>
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/8536cc1301474789695e23a74e16aa31d2d62e7e.1444845354.git.ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

