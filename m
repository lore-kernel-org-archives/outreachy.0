X-GM-THRID: 6254552091181711360
X-Received: by 10.13.219.80 with SMTP id d77mr11899244ywe.39.1456729476711;
        Sun, 28 Feb 2016 23:04:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.68.34 with SMTP id s2ls1187681obt.96.gmail; Sun, 28 Feb
 2016 23:04:36 -0800 (PST)
X-Received: by 10.182.125.8 with SMTP id mm8mr11282670obb.26.1456729476414;
        Sun, 28 Feb 2016 23:04:36 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x234.google.com (mail-qk0-x234.google.com. [2607:f8b0:400d:c09::234])
        by gmr-mx.google.com with ESMTPS id w126si1344064ywe.6.2016.02.28.23.04.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 23:04:36 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::234 as permitted sender) client-ip=2607:f8b0:400d:c09::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x234.google.com with SMTP id o6so53416930qkc.2
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 23:04:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to;
        bh=yrzuFSxi2mRD5J3Ok6MrK/DuC87kj8tTH1WpfbTL/O0=;
        b=YaGO648/02g4acCexOmkk0INVQ1vqrAinK6DGnHLKl3WknMRMnlZQrgYmXd0n+eFAd
         iotN7UsuGfc7+Xisw8uq0BYd/YcsvY4t5PWrVBKcuDhfDg18ucjWAjVMGXVEeR3xLbD+
         gCZTzTk2wx29jPuyS2edueZToLNFWSuKfUE86su61HhrXdc43gBb9H25o++qQ5l/oSCb
         rFV0akNXhCExp9csrS6lkYSVEr71TfwGMJjRz9jy1WWDbZwGcmDojPQoEtpywMvuzj2T
         D6r+749Tfx8GH5vWhNZM80So7JWT55q6VwnapRQ6/RrQK0maMdhHh67sOdhMwPej9/WL
         oesA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=yrzuFSxi2mRD5J3Ok6MrK/DuC87kj8tTH1WpfbTL/O0=;
        b=LzFps65g6GSElgnXv+JBDjlrPiIa4oni3YXF/eJw2fYwq7+eeVvu2ocy78K9PS1OH/
         QeQlSYoOMd9txgu6i5+Dgik6OdKc2t2zzsEpX0WwRm1pXi6tyG52BURUSU4FQGX1/aVZ
         4BcORekJrhCo9V0L46R2au0ciBk2fGsACs5Eyi0TPWBO2guQxJ3lHQMgCt75Rr5ddH/5
         H6jOSHde+qbfIiYx4IgNmT3YxAKCwrMoS2jfpGg30HmoE8gu8nR3LUIGNGDyD5K90bE1
         k41IM+3za2b8jFYf/EyIEveCjATvJfWCiXYE2nVd4nPp0Ri5954JvltdFZvRxUaG6N2D
         wZVA==
X-Gm-Message-State: AD7BkJKh1qKMjR8BZ8Mrjn5p9MzOFUQjm1UGsaYmcgI2Tr4P2v2P6GYbaPgQ9fHLWV36dUBCNvo9P5JZsx4B0w==
MIME-Version: 1.0
X-Received: by 10.55.49.11 with SMTP id x11mr17113541qkx.86.1456729476197;
 Sun, 28 Feb 2016 23:04:36 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Sun, 28 Feb 2016 23:04:36 -0800 (PST)
In-Reply-To: <20160223181623.GA20782@amitoj-Inspiron-3542>
References: <20160223181623.GA20782@amitoj-Inspiron-3542>
Date: Mon, 29 Feb 2016 12:34:36 +0530
Message-ID: <CA+5yK5HT2V3AF4GR3ukP3uek5QJ8VBUs8p9hNv543a3aMJs56Q@mail.gmail.com>
Subject: Re: [PATCH] staging: iio: adc: Use devm_ioremap_resource() instead of of_iomap()
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 23, 2016 at 11:46 PM, Amitoj Kaur Chawla
<amitoj1606@gmail.com> wrote:
> The adc driver uses of_iomap() which doesn't request the resource and
> isn't device managed so error handling is needed. of_iomap() is mainly
> used in cases where there is no driver or struct device so a switch to
> devm_ functions is required.
>
> This patch switches to use devm_ioremap_resource() instead which
> automatically requests the resource and is freed when the driver
> detaches.
>
> Removed the error handling to unmap I/O registers i.e.
> iounmap() in probe and remove functions of this driver and
> consequently removed an unnecessary label.
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/iio/adc/spear_adc.c | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/iio/adc/spear_adc.c b/drivers/staging/iio/adc/spear_adc.c
> index 0a6d0d7..8dc80b3 100644
> --- a/drivers/staging/iio/adc/spear_adc.c
> +++ b/drivers/staging/iio/adc/spear_adc.c
> @@ -262,6 +262,7 @@ static int spear_adc_probe(struct platform_device *pdev)
>         struct device_node *np = pdev->dev.of_node;
>         struct device *dev = &pdev->dev;
>         struct spear_adc_state *st;
> +       struct resource *res;
>         struct iio_dev *indio_dev = NULL;
>         int ret = -ENODEV;
>         int irq;
> @@ -280,24 +281,24 @@ static int spear_adc_probe(struct platform_device *pdev)
>          * (e.g. SPEAr3xx). Let's provide two register base addresses
>          * to support multi-arch kernels.
>          */
> -       st->adc_base_spear6xx = of_iomap(np, 0);
> -       if (!st->adc_base_spear6xx) {
> -               dev_err(dev, "failed mapping memory\n");
> -               return -ENOMEM;
> -       }
> +       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +       st->adc_base_spear6xx = devm_ioremap_resource(&pdev->dev, res);
> +       if (IS_ERR(st->adc_base_spear6xx))
> +               return PTR_ERR(st->adc_base_spear6xx);
> +
>         st->adc_base_spear3xx =
>                 (struct adc_regs_spear3xx __iomem *)st->adc_base_spear6xx;
>
>         st->clk = devm_clk_get(dev, NULL);
>         if (IS_ERR(st->clk)) {
>                 dev_err(dev, "failed getting clock\n");
> -               goto errout1;
> +               return ret;
>         }
>
>         ret = clk_prepare_enable(st->clk);
>         if (ret) {
>                 dev_err(dev, "failed enabling clock\n");
> -               goto errout1;
> +               return ret;
>         }
>
>         irq = platform_get_irq(pdev, 0);
> @@ -356,8 +357,6 @@ static int spear_adc_probe(struct platform_device *pdev)
>
>  errout2:
>         clk_disable_unprepare(st->clk);
> -errout1:
> -       iounmap(st->adc_base_spear6xx);
>         return ret;
>  }
>
> @@ -367,7 +366,6 @@ static int spear_adc_remove(struct platform_device *pdev)
>         struct spear_adc_state *st = iio_priv(indio_dev);
>
>         clk_disable_unprepare(st->clk);
> -       iounmap(st->adc_base_spear6xx);
>
>         return 0;
>  }
> --
> 1.9.1
>

Since another patch has been dropped for this file, I will rebase and
resend this patch.

Amitoj

