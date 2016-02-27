X-GM-THRID: 6255614868842348544
X-Received: by 10.66.139.162 with SMTP id qz2mr4288773pab.1.1456560198376;
        Sat, 27 Feb 2016 00:03:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.146 with SMTP id c140ls917265ioe.76.gmail; Sat, 27 Feb
 2016 00:03:17 -0800 (PST)
X-Received: by 10.107.185.4 with SMTP id j4mr10277117iof.21.1456560197605;
        Sat, 27 Feb 2016 00:03:17 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x236.google.com (mail-qg0-x236.google.com. [2607:f8b0:400d:c04::236])
        by gmr-mx.google.com with ESMTPS id t198si1017206ywe.3.2016.02.27.00.03.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 00:03:17 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) client-ip=2607:f8b0:400d:c04::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x236.google.com with SMTP id y89so82446008qge.2
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 00:03:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to;
        bh=+PGGT0r5qfBCyUEkleVXAODS0l4IgTGsqbLSqB2KISY=;
        b=iqxgXleMyEpZfiaADA4iU9cHUoNCH8k+cTWwtpkAdZlHpXiJZusThYUeD/izfq2pJV
         XwC2K/96a1hLgmluERx3hHsNeJzupBfw3G8HBOvXNbF07W23ipQZtr1SEDz1AzCnF4ib
         tFbU94xY97zAHo78WbdYUJGrODxw5OOHnIz//lkQZnZvMk0aMBI7+xnF4jp2tpBKnU+J
         afmGf+SNLnijmi/DmDQWPJ4HqijQazTj0Y4UghekpQjqA9xG5PKj/42YdyjmtS+Xoua+
         hx/qf9W1dp8pfWmLPnoK9JqrWcQmjtGhXUA5sG4CSn6oaZjMNrJOuqZivtZIH8AlgDM1
         JFSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=+PGGT0r5qfBCyUEkleVXAODS0l4IgTGsqbLSqB2KISY=;
        b=Gq2MT/Z0kX+s3OkkQ5suB2xU/UCWC5Wkz6u5jx/rb6JWmQWu1FrI3aC0MkNmyXjEhi
         qDoWupKsZQr5AFnvAkA2K589VTZhDsozz67wDP1LbLfAl7waAmPJaYIgxsJlcy/J93j1
         uL3aLIWND1HxaqQVukCKx3YFPZWYMcIMEDWuxVmCWFbyjrkOI3mcxhRNG4gmxWuuJfga
         nVhHhkqfReYRNPLG8nNDKbmXh9mEBNnPnK7W9JP7kDCCaBs2t9hneOHG+lZ1y8plSpv6
         iOtlyqeFYGsHFsLdXiwHyxOqNX6cuFBKhp3D6IpwLCPyh/T6uYtekT8CsPAUkNB1b7F6
         W1qA==
X-Gm-Message-State: AD7BkJKnA4SDhd+HkUMwJxHo3wytgToyKpd/pJX6vO372c+DMrdOwIdsOJlKvuD39znMOjjff0UOYeb1v+mCBg==
MIME-Version: 1.0
X-Received: by 10.140.167.135 with SMTP id n129mr7115325qhn.73.1456560197315;
 Sat, 27 Feb 2016 00:03:17 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Sat, 27 Feb 2016 00:03:17 -0800 (PST)
In-Reply-To: <20160226150029.GA32277@amitoj-Inspiron-3542>
References: <20160226150029.GA32277@amitoj-Inspiron-3542>
Date: Sat, 27 Feb 2016 13:33:17 +0530
Message-ID: <CA+5yK5GOvuzj5SnHqpLzo5fM78N96jtCxA2qSWtSbmETLrOmSA@mail.gmail.com>
Subject: Re: [PATCH] staging: media: davinci_vpfe: Replace kzalloc with devm_kzalloc
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 26, 2016 at 8:30 PM, Amitoj Kaur Chawla
<amitoj1606@gmail.com> wrote:
> Replace data allocated by kzalloc to managed data allocated by
> devm_kzalloc. Remove unnecessary kzfree.
>
> Also remove a goto by replacing it with returns and dropping the
> unnecessary label.
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  .../staging/media/davinci_vpfe/vpfe_mc_capture.c   | 22 +++++++---------------
>  1 file changed, 7 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
> index bf077f8..5852a6b 100644
> --- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
> +++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
> @@ -579,22 +579,20 @@ static int vpfe_probe(struct platform_device *pdev)
>         struct resource *res1;
>         int ret = -ENOMEM;
>
> -       vpfe_dev = kzalloc(sizeof(*vpfe_dev), GFP_KERNEL);
> +       vpfe_dev = devm_kzalloc(&pdev->dev, sizeof(*vpfe_dev), GFP_KERNEL);
>         if (!vpfe_dev)
>                 return ret;
>
>         if (pdev->dev.platform_data == NULL) {
>                 v4l2_err(pdev->dev.driver, "Unable to get vpfe config\n");
> -               ret = -ENOENT;
> -               goto probe_free_dev_mem;
> +               return -ENOENT;
>         }
>
>         vpfe_dev->cfg = pdev->dev.platform_data;
>         if (vpfe_dev->cfg->card_name == NULL ||
>                         vpfe_dev->cfg->sub_devs == NULL) {
>                 v4l2_err(pdev->dev.driver, "null ptr in vpfe_cfg\n");
> -               ret = -ENOENT;
> -               goto probe_free_dev_mem;
> +               return -ENOENT;
>         }
>
>         /* Get VINT0 irq resource */
> @@ -602,8 +600,7 @@ static int vpfe_probe(struct platform_device *pdev)
>         if (!res1) {
>                 v4l2_err(pdev->dev.driver,
>                          "Unable to get interrupt for VINT0\n");
> -               ret = -ENOENT;
> -               goto probe_free_dev_mem;
> +               return -ENOENT;
>         }
>         vpfe_dev->ccdc_irq0 = res1->start;
>
> @@ -612,8 +609,7 @@ static int vpfe_probe(struct platform_device *pdev)
>         if (!res1) {
>                 v4l2_err(pdev->dev.driver,
>                          "Unable to get interrupt for VINT1\n");
> -               ret = -ENOENT;
> -               goto probe_free_dev_mem;
> +               return -ENOENT;
>         }
>         vpfe_dev->ccdc_irq1 = res1->start;
>
> @@ -622,8 +618,7 @@ static int vpfe_probe(struct platform_device *pdev)
>         if (!res1) {
>                 v4l2_err(pdev->dev.driver,
>                          "Unable to get interrupt for DMA\n");
> -               ret = -ENOENT;
> -               goto probe_free_dev_mem;
> +               return -ENOENT;
>         }
>         vpfe_dev->imp_dma_irq = res1->start;
>
> @@ -632,7 +627,7 @@ static int vpfe_probe(struct platform_device *pdev)
>         /* enable vpss clocks */
>         ret = vpfe_enable_clock(vpfe_dev);
>         if (ret)
> -               goto probe_free_dev_mem;
> +               return ret;
>
>         ret = vpfe_initialize_modules(vpfe_dev, pdev);
>         if (ret)
> @@ -680,8 +675,6 @@ probe_out_entities_cleanup:
>         vpfe_cleanup_modules(vpfe_dev, pdev);
>  probe_disable_clock:
>         vpfe_disable_clock(vpfe_dev);
> -probe_free_dev_mem:
> -       kzfree(vpfe_dev);
>
>         return ret;
>  }
> @@ -702,7 +695,6 @@ static int vpfe_remove(struct platform_device *pdev)
>         v4l2_device_unregister(&vpfe_dev->v4l2_dev);
>         media_device_unregister(&vpfe_dev->media_dev);
>         vpfe_disable_clock(vpfe_dev);
> -       kzfree(vpfe_dev);
>
>         return 0;
>  }
> --
> 1.9.1
>

This patch is incorrect and should not be taken.

Sorry for the inconvenience,
Amitoj

