X-GM-THRID: 6256792083376373760
X-Received: by 10.194.92.232 with SMTP id cp8mr1170043wjb.6.1456921657707;
        Wed, 02 Mar 2016 04:27:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.182.66 with SMTP id g63ls372192wmf.29.canary; Wed, 02 Mar
 2016 04:27:37 -0800 (PST)
X-Received: by 10.28.48.87 with SMTP id w84mr534971wmw.2.1456921657225;
        Wed, 02 Mar 2016 04:27:37 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x22b.google.com (mail-wm0-x22b.google.com. [2a00:1450:400c:c09::22b])
        by gmr-mx.google.com with ESMTPS id c140si187240wmh.1.2016.03.02.04.27.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 04:27:37 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) client-ip=2a00:1450:400c:c09::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22b.google.com with SMTP id l68so74164676wml.1
        for <outreachy-kernel@googlegroups.com>; Wed, 02 Mar 2016 04:27:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=lXVLrsRr7kW8rsIt9iGYLg8sz8i3WYe9luBqMaAXPb0=;
        b=NmruIR/zUgzE4JjSlb7LrebOhEamZm524lelupCIWvlQjSTeV2Z/Y0lI1uKFBoPe6h
         ZXiiy3LxEjF6iV9wQAW5hLkpGCyGy9YZlo4cJhe3ed5PeoYHSZSOptfXYJyRrp8Tw60y
         e7yFck0JF3MN6tQXZy1MlnETaXaKgT1SEOr277xX6zThdqkCxm3xfuCxSxzD514kPYA5
         viGH10liJ5Lk82pde/Q/F6tn9fGZAV6ciosRKLH9yLCv3A8me4CpMduzb8JnvXx8tVNh
         R8Xr41oon/dXrkrJLNiduBhkCnzSGphw1TFGZ8k9cG07c/InvfHYM+3GZT5Lxr1oETTq
         TVcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=lXVLrsRr7kW8rsIt9iGYLg8sz8i3WYe9luBqMaAXPb0=;
        b=C+t5pk0LghVOiUA8Lzj9u/8VkUERTxGCsgHbqVzyIHu7IMmWOe+Ywr+n6Dth8IOTwv
         MxVsxOmY+vbIyI+8Vi68prIMFqx/2ooejYGH4dMPv7G7EarSSR6AvPAi3h5TakNSwn52
         2o6SyHkXgr4qhDabAPykL/J/LkHzQbCUbzkTNdN5/PMaDuUIH3ffTSdbVz2au3htZftY
         OEwcTON7pSsKOAVGguDVfLqtQLK4dNgDHPxrXCvqeW3tCS4hLBc8pO/NLWSL4JJ3uNUv
         0j+It+i/C9yC1NzR9QMkBGNNFloBDUTji8fAJSdPYIC8FFBpuXFeS1+uynpHFR1upY/b
         Q7hQ==
X-Gm-Message-State: AD7BkJIzvR/UD7T/iX8Q3+jgBk+v1rgoifT3ra4MRAhAQW3X02ImZG8qm+HQfcCAsxk7pETl0oFkC51QCILXYw==
MIME-Version: 1.0
X-Received: by 10.194.2.202 with SMTP id 10mr29693788wjw.94.1456921657062;
 Wed, 02 Mar 2016 04:27:37 -0800 (PST)
Received: by 10.194.222.165 with HTTP; Wed, 2 Mar 2016 04:27:36 -0800 (PST)
In-Reply-To: <102b866d53918941b55224ed6fd482505cb14538.1456835561.git.bankarsandhya512@gmail.com>
References: <cover.1456835561.git.bankarsandhya512@gmail.com>
	<102b866d53918941b55224ed6fd482505cb14538.1456835561.git.bankarsandhya512@gmail.com>
Date: Wed, 2 Mar 2016 14:27:36 +0200
Message-ID: <CAEnQRZByhyS9JMHH=MP9XGwQLJhHgFWe7omgQwxDZXSeeiS3QA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 3/5] Staging: iio: ade7758_core:
 Remove unnecessary goto.
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 1, 2016 at 2:51 PM, Sandhya Bankar
<bankarsandhya512@gmail.com> wrote:
> Remove unnecessary goto.
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/iio/meter/ade7758_core.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
> index 0db23e4..40f5afa 100644
> --- a/drivers/staging/iio/meter/ade7758_core.c
> +++ b/drivers/staging/iio/meter/ade7758_core.c
> @@ -423,7 +423,7 @@ int ade7758_set_irq(struct device *dev, bool enable)
>
>         ret = ade7758_spi_read_reg_24(dev, ADE7758_MASK, &irqen);
>         if (ret)
> -               goto error_ret;
> +               return ret;
>
>         if (enable)
>                 irqen |= BIT(16); /* Enables an interrupt when a data is
> @@ -432,10 +432,7 @@ int ade7758_set_irq(struct device *dev, bool enable)
>                 irqen &= ~BIT(16);
>
>         ret = ade7758_spi_write_reg_24(dev, ADE7758_MASK, irqen);
Here you can directly do:

              return ade7758_spi_write_reg_24(dev, ADE7758_MASK, irqen);

I think I didn't explain it very well first time :D.

> -       if (ret)
> -               goto error_ret;
>
> -error_ret:
>         return ret;
>  }

Daniel.

