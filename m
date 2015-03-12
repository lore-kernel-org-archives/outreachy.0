X-GM-THRID: 7925745582080
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,529c520bcab52e04
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.40.81 with SMTP id v17mr2686838lbk.5.1426185085314;
        Thu, 12 Mar 2015 11:31:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.86.2 with SMTP id l2ls4684wiz.11.gmail; Thu, 12 Mar 2015
 11:31:24 -0700 (PDT)
X-Received: by 10.180.81.134 with SMTP id a6mr741569wiy.1.1426185084839;
        Thu, 12 Mar 2015 11:31:24 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id gj20si1602454wic.1.2015.03.12.11.31.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 11:31:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by wiwh11 with SMTP id h11so39729wiw.5
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 11:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=eYrfZE9gVj3byqd0SaL7RCW77wTcs9U2j1WjtClnSB8=;
        b=COzG1erHYPp8wwIjCIhd+Ye17EJR1rMOT9aNe1nyTMO2QjITM2lhf0mJdXTlgIZoJ0
         vvipfgF0XBZ3Jr6Aa1e+Nj42AaZB+q3hK0+K/JOkoKmEJbFKOPpfZkwIBe4xW1UHzcEQ
         /lpHOtWlbUM/ynSaVkfRgCHOeL41hIjQTdrVJYlWvIirKGORmVszt7RQPt9BrZJuIwF1
         luqxzIYcy5aJs0+sfJyp1MvtTe9MMaBl60KrZ2Fp2IyEO1/bCjw55L/Yh0r4a03LarE2
         Rg0x/pnh0a2AgXecMFixz79HKJAdUWq/XE8/EI3yMzJb9BilTBWRTZSbTUgAZJlUomXJ
         1Mug==
MIME-Version: 1.0
X-Received: by 10.180.103.40 with SMTP id ft8mr136943411wib.68.1426185084713;
 Thu, 12 Mar 2015 11:31:24 -0700 (PDT)
Sender: daniel.baluta@gmail.com
Received: by 10.28.139.211 with HTTP; Thu, 12 Mar 2015 11:31:24 -0700 (PDT)
In-Reply-To: <20150312171031.GA3558@Inspiron>
References: <20150312171031.GA3558@Inspiron>
Date: Thu, 12 Mar 2015 20:31:24 +0200
X-Google-Sender-Auth: Fy9WKrGfhuce-s-yk86NWLEXRM4
Message-ID: <CAEnQRZBdN3_fm=ndZ5xHwZTkJGAT0P_A_nxnxLjhnxSFBm4R+A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: Simplify return logic
From: Daniel Baluta <daniel.baluta@intel.com>
To: Cristina Opriceana <cristina.opriceana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 12, 2015 at 7:10 PM, Cristina Opriceana
<cristina.opriceana@gmail.com> wrote:
> This patch removes the conditional return of the ade77*_probe functions
> based on the return values of iio_device_register as the latter
> returns 0 or ret, the same as the checked values.
>
> Warning found by coccinelle.
>
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
>  drivers/staging/iio/meter/ade7753.c | 6 +-----
>  drivers/staging/iio/meter/ade7754.c | 6 +-----
>  drivers/staging/iio/meter/ade7759.c | 6 +-----
>  3 files changed, 3 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
> index 78e8f56..30d8adf 100644
> --- a/drivers/staging/iio/meter/ade7753.c
> +++ b/drivers/staging/iio/meter/ade7753.c
> @@ -517,11 +517,7 @@ static int ade7753_probe(struct spi_device *spi)
>         if (ret)
>                 return ret;
>
> -       ret = iio_device_register(indio_dev);
> -       if (ret)
> -               return ret;
> -
> -       return 0;
> +       return iio_device_register(indio_dev);
>  }
>
>  /* fixme, confirm ordering in this function */
> diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
> index 81f6731..d21f935 100644
> --- a/drivers/staging/iio/meter/ade7754.c
> +++ b/drivers/staging/iio/meter/ade7754.c
> @@ -540,11 +540,7 @@ static int ade7754_probe(struct spi_device *spi)
>         ret = ade7754_initial_setup(indio_dev);
>         if (ret)
>                 return ret;
> -       ret = iio_device_register(indio_dev);
> -       if (ret)
> -               return ret;
> -
> -       return 0;
> +       return iio_device_register(indio_dev);
>  }
>
>  /* fixme, confirm ordering in this function */
> diff --git a/drivers/staging/iio/meter/ade7759.c b/drivers/staging/iio/meter/ade7759.c
> index 694e0ce..418aa9e 100644
> --- a/drivers/staging/iio/meter/ade7759.c
> +++ b/drivers/staging/iio/meter/ade7759.c
> @@ -462,11 +462,7 @@ static int ade7759_probe(struct spi_device *spi)
>         if (ret)
>                 return ret;
>
> -       ret = iio_device_register(indio_dev);
> -       if (ret)
> -               return ret;
> -
> -       return 0;
> +       return iio_device_register(indio_dev);
>  }
>
>  /* fixme, confirm ordering in this function */
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150312171031.GA3558%40Inspiron.
> For more options, visit https://groups.google.com/d/optout.

