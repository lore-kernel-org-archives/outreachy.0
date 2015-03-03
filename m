X-GM-THRID: 6138556841984
X-Received: by 10.180.89.194 with SMTP id bq2mr75892wib.4.1425373933581;
        Tue, 03 Mar 2015 01:12:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.6 with SMTP id js6ls66422wid.46.gmail; Tue, 03 Mar 2015
 01:12:13 -0800 (PST)
X-Received: by 10.180.101.101 with SMTP id ff5mr2786745wib.5.1425373933299;
        Tue, 03 Mar 2015 01:12:13 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id l8si842570wia.0.2015.03.03.01.12.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 01:12:13 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghb13 with SMTP id b13so38617014wgh.0
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 01:12:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=6wUkqIE0rizAdO9TD0hyXkPI9DEVEK2uvTBOYRRvRv4=;
        b=n7CO/zjy3NzefkMm2ajoMH0OGbUD7v8VnpL7tf++xwIlAwnQhjJHbC0CxavIkG46UH
         Oo1OI6pxFh/3pb1T6gA+g6PLFKslclAuNRfA0mW1IP1uUL/nFGUPmKB4giqBTT/aFgrG
         Y1Bp3uKeBajCVqFcIeh5Hp54Y0xu6kUuLtD7v4CMZPKHLSTKzfD/EFIaT+eeF5OMsSgk
         ZyMZwoB4n/m7RwIauhgwwH6B7BbM7o4Cp03H0+P+hzfnOIvMd2qbLdVeGxGdH8KKGhwg
         nmrEOr/LqWRYCGLwXKt6ofj1pVaPBLvCGrB7dB648zC5IW8+8DR8ivuRZbGBhW4E50jp
         nNyw==
MIME-Version: 1.0
X-Received: by 10.181.8.103 with SMTP id dj7mr650677wid.75.1425373933180; Tue,
 03 Mar 2015 01:12:13 -0800 (PST)
Received: by 10.28.3.68 with HTTP; Tue, 3 Mar 2015 01:12:13 -0800 (PST)
In-Reply-To: <55796744480c8b6f72e12a50105b5db43b5bfa7b.1425356586.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425356586.git.mahfouz.saif.elyazal@gmail.com>
	<55796744480c8b6f72e12a50105b5db43b5bfa7b.1425356586.git.mahfouz.saif.elyazal@gmail.com>
Date: Tue, 3 Mar 2015 11:12:13 +0200
Message-ID: <CAEnQRZCb6fSwir27uZbK6kDuSUhoNTX94SwCLzrQLCEyTd0xew@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: iio: meter: adjust
 function call to be in one line
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 3, 2015 at 6:47 AM, Aya Mahfouz
<mahfouz.saif.elyazal@gmail.com> wrote:
> Adjusted a function call to be in one line since it did not
> exceed the 80 characters limit.
>
> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> ---
>  drivers/staging/iio/meter/ade7758_core.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
> index 029d223..950bc50 100644
> --- a/drivers/staging/iio/meter/ade7758_core.c
> +++ b/drivers/staging/iio/meter/ade7758_core.c
> @@ -447,9 +447,7 @@ static int ade7758_stop_device(struct device *dev)
>                         ADE7758_OPMODE,
>                         &val);
>         val |= 7 << 3;  /* ADE7758 powered down */
> -       ret = ade7758_spi_write_reg_8(dev,
> -                       ADE7758_OPMODE,
> -                       val);
> +       ret = ade7758_spi_write_reg_8(dev, ADE7758_OPMODE, val);
>         if (ret < 0)
>                 dev_err(dev, "failed to stop device");
>         return ret;

This could be folded in the previous patch. The same you did in ade7758_reset

thanks,
Daniel.

