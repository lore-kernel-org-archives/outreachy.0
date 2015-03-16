X-GM-THRID: 8221215424512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35fc9dbaa0120918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.167.131 with SMTP id zo3mr4427291lbb.7.1426497336408;
        Mon, 16 Mar 2015 02:15:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.207.101 with SMTP id lv5ls652590lac.22.gmail; Mon, 16 Mar
 2015 02:15:35 -0700 (PDT)
X-Received: by 10.112.219.102 with SMTP id pn6mr8829421lbc.12.1426497335910;
        Mon, 16 Mar 2015 02:15:35 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id c8si416906wiw.1.2015.03.16.02.15.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 02:15:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wg0-x236.google.com with SMTP id cc7so34180796wgb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 02:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=VAncG9kDnO0iCj8LrqdI4jM1+KwPsRnWAvBzwsLnips=;
        b=G75e2ikaUAyISPEqAIsCQcFt7NV/lUfDOvP1DGotad/OA6jWgd4E9IVm0gUz+Nip8P
         caYsae3ZqA1bsptaIiMjsk3bN8xFn+J4FYDDzbeH8YDJStiDk1KdUUFPINp0mv+b0jok
         13fUZo1VwgsgJ0tqQIzyWF8O7UxuwaAoNIOKKfnUg7VHgW2WvZnsBjyrW48Naph2nnwA
         uPi91EG8H9xA1NEUFHKsOyJpt2HUqtEa8uubMc8cZ603QccPi1QfjQqNoCKISyLpLmb6
         rdR3Bv/3RliIwWzCo111EOy2SJzRVIRB/eKeivifCh0BQI5ejDAfOICoA8AqssimSZaD
         izkA==
MIME-Version: 1.0
X-Received: by 10.194.86.135 with SMTP id p7mr122535006wjz.89.1426497335663;
 Mon, 16 Mar 2015 02:15:35 -0700 (PDT)
Sender: daniel.baluta@gmail.com
Received: by 10.28.139.211 with HTTP; Mon, 16 Mar 2015 02:15:35 -0700 (PDT)
In-Reply-To: <8fddb5ee8a8f3a53ebd4b337f08e475c2dce63ce.1426353884.git.cristina.opriceana@gmail.com>
References: <cover.1426353884.git.cristina.opriceana@gmail.com>
	<8fddb5ee8a8f3a53ebd4b337f08e475c2dce63ce.1426353884.git.cristina.opriceana@gmail.com>
Date: Mon, 16 Mar 2015 11:15:35 +0200
X-Google-Sender-Auth: 0Xk3c_E2Rn_koXdEpX3qVz3e5C0
Message-ID: <CAEnQRZCLX2gFKu=xwKPNugcRuXghTjimawTrFxGsQk9PzkPFEQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/6] Staging: iio: Remove explicit
 comparison to NULL
From: Daniel Baluta <daniel.baluta@intel.com>
To: Cristina Opriceana <cristina.opriceana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 14, 2015 at 8:50 PM, Cristina Opriceana
<cristina.opriceana@gmail.com> wrote:
> This patch simplifies pointer comparison to NULL and makes code
> easier to read. Warning found by checkpatch.pl.
>
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
>  drivers/staging/iio/frequency/ad9832.c | 2 +-
>  drivers/staging/iio/frequency/ad9834.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/iio/frequency/ad9832.c b/drivers/staging/iio/frequency/ad9832.c
> index 9a16699..8ecc0bc 100644
> --- a/drivers/staging/iio/frequency/ad9832.c
> +++ b/drivers/staging/iio/frequency/ad9832.c
> @@ -220,7 +220,7 @@ static int ad9832_probe(struct spi_device *spi)
>         }
>
>         indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
> -       if (indio_dev == NULL) {
> +       if (!indio_dev) {
>                 ret = -ENOMEM;
>                 goto error_disable_reg;
>         }
> diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
> index a346673..efea560 100644
> --- a/drivers/staging/iio/frequency/ad9834.c
> +++ b/drivers/staging/iio/frequency/ad9834.c
> @@ -336,7 +336,7 @@ static int ad9834_probe(struct spi_device *spi)
>         }
>
>         indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
> -       if (indio_dev == NULL) {
> +       if (!indio_dev) {
>                 ret = -ENOMEM;
>                 goto error_disable_reg;
>         }
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/8fddb5ee8a8f3a53ebd4b337f08e475c2dce63ce.1426353884.git.cristina.opriceana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

