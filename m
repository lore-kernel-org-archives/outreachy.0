X-GM-THRID: 6885028425195585536
X-Received: by 2002:a9d:2f09:: with SMTP id h9mr6083609otb.186.1603763465115;
        Mon, 26 Oct 2020 18:51:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:3108:: with SMTP id b8ls435726ots.5.gmail; Mon, 26
 Oct 2020 18:51:04 -0700 (PDT)
X-Received: by 2002:a9d:6c94:: with SMTP id c20mr6728937otr.151.1603763464086;
        Mon, 26 Oct 2020 18:51:04 -0700 (PDT)
Received: by 2002:aca:1002:0:b029:c2:846:c263 with SMTP id 2-20020aca10020000b02900c20846c263msoiq;
        Fri, 23 Oct 2020 06:40:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwC/NBMAKvjGityPlhgpQw8PoSQ1r94lbE1HFFw+Gwb5ACIXRTZtx1m3+zlA8aqycuB5glm
X-Received: by 2002:a92:aad5:: with SMTP id p82mr1668963ill.150.1603460437398;
        Fri, 23 Oct 2020 06:40:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603460437; cv=none;
        d=google.com; s=arc-20160816;
        b=Ca6wksm44g2APdkg2KabZ2Atc1N0MgfdZOj7xC7WhmyIpluVaIYAM7L4qb+JBLpFjT
         uh2u44bQRg6Kh92C9U3lmCG6aVxDUJ5TCLUyDfipSanM+Xy+HdmqqqNCbZ+S4AmAZ7J0
         e2hjhPfl+D6p0i6v5ZqlBxnRZBYkULrtwpG2SOLvSxr9syiO50IW1JBnOOW1vS5DyILL
         WOeLybZSpWVIKWcybsDR+X6W8opsTxEtG2ngREpuMsazh2+6RxAyDyv6RyWeq1Xi+qWh
         8i3wQu//ckYn7Q2PnIeQW+Ow0d4deYuimGL3iggHL31bvj+r1FGP1u4lCC/dxmWK6DCg
         wg/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EE6QLq3H9vg8P7f+BmZLoNP2p9Lky1XXmxkG6HdEm3I=;
        b=C1IE4AYFne7xvGwkftm7mf202Ttgd3LdZRspm9e7qgJCONf64e3rnXWEyKNjWor+yS
         6sR5Xrok4EC737xObv/RUY187f5r9edmcKQBgl17tQA55oBTIo5V846UzVGN71YSbkIl
         OPUhuVtpesB8l9yAzqOqRgVSWx8psZNUF28z8efY2TS3x6jsXMLGI49TbUO0dpmljcw4
         B96cl888b/8H5UjSEkMtH4SURLvaXP5dpNWd8GkiNSm41A4fWFdZ3Cgca3XU6eFzZ+Gj
         +5g3j/y7+vWufDNXQps9CPqnl6n93yL65tkYnDexjVA2reOGDqYiDjGN7saH/TTBh0AW
         2Xow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JiU1TMwT;
       spf=pass (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=thesven73@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <thesven73@gmail.com>
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id e1si98818ilm.0.2020.10.23.06.40.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 06:40:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JiU1TMwT;
       spf=pass (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=thesven73@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe43.google.com with SMTP id b3so873535vsc.5
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2020 06:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EE6QLq3H9vg8P7f+BmZLoNP2p9Lky1XXmxkG6HdEm3I=;
        b=JiU1TMwTOZyr549hsHq4nj275ztqDnBjn5qT92PKyxZ/RiQQICIEtw0Gj+P3gBteOz
         j/UYsxINernPiTX3cK4bm1s/51ZnUU9Y37TBRnXB+VQizd8GRstD22Fpf4g1VKmH10zQ
         8wk/s+9SOUaj7SGZflmObeZOWT7bqflpmdxjP9MQ1TjbYLPpRDCHBNgwtyD6f1biE7OL
         pWKuu2fXMjmWkKFnds5WngwsgSnc85Q7/3xjgoxrAJ+SFga7EYlG1X3dqPDW6SWUyqBx
         6b3u8sL4ZXz55JueBzresUlj2KLA6VuO87CgVRuwxGq9DOip8NibayeJIngO1U1aOdDN
         1FLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EE6QLq3H9vg8P7f+BmZLoNP2p9Lky1XXmxkG6HdEm3I=;
        b=lTfW75dIBhSWVZW4Lyr+d6kiM+oV5zK5dMK0MSOXQUvik7ruh+V1JfyrpHSCyWIiWX
         ruGMh+OIrxWGjp0xm2K93iL4lqd5WvumLn3kDZmJDmgM3FmGVMmWDe6GxLCdsLkMvh5z
         cYOMkONrQsuGpLH2qpLWcoqQ9dgG+OsKMSqEotxF+mntlP0XFkcVaYQH5SHY2BAbjRWa
         bqHn6tuQpOcgWyGbUB17Utnw5X400c43FEHDQ3Q3PHYeTKwOCes47gP39qqphtPsNcka
         cA+qoTa3EsiW49J6ngMH6kNeIa2eGfa4fPbSRbvWHgC3/mDMPKuMO5CjCiEWJkftbZe1
         g9hw==
X-Gm-Message-State: AOAM531+T3lrV0ibkgMu2wkL/veigK2L4q3P+NHuw/WVxT8AfMWSghr3
	lGfdmuxawt0iIQ/x5a/Aos05QGrX+HS5IcailCXM7sFo
X-Received: by 2002:a67:cc2:: with SMTP id 185mr1437733vsm.42.1603460436985;
 Fri, 23 Oct 2020 06:40:36 -0700 (PDT)
MIME-Version: 1.0
References: <20201018182633.GA46761@ubuntu204>
In-Reply-To: <20201018182633.GA46761@ubuntu204>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Fri, 23 Oct 2020 09:40:25 -0400
Message-ID: <CAGngYiVKiRxDHi_7Hbfy6FViFkS_5dV66nkV-apRsEoZ1OmHzg@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: Use sysfs_emit for show(device *...) functions
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

Hi Deepak, thank you for the patch.

There are many other sysfs show functions in this driver that can be converted
to use sysfs_emit().

But, the perfect musn't be the enemy of the good:

Reviewed-by: Sven Van Asbroeck <TheSven73@gmail.com>

On Sun, Oct 18, 2020 at 2:26 PM Deepak R Varma <mh12gx2825@gmail.com> wrote:
>
> Convert snprintf calls in device show functions to sysfs_emit for
> PAGE_SIZE buffer safety.
> Warning generated by: scripts/coccinelle/api/device_attr_show.cocci
>
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/fieldbus/dev_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/fieldbus/dev_core.c b/drivers/staging/fieldbus/dev_core.c
> index 1ba0234cc60d..698d7b479270 100644
> --- a/drivers/staging/fieldbus/dev_core.c
> +++ b/drivers/staging/fieldbus/dev_core.c
> @@ -70,7 +70,7 @@ static ssize_t card_name_show(struct device *dev, struct device_attribute *attr,
>          * card_name was provided by child driver, could potentially be long.
>          * protect against buffer overrun.
>          */
> -       return snprintf(buf, PAGE_SIZE, "%s\n", fb->card_name);
> +       return sysfs_emit(buf, "%s\n", fb->card_name);
>  }
>  static DEVICE_ATTR_RO(card_name);
>
> --
> 2.25.1
>

