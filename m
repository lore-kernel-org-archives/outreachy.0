X-GM-THRID: 6138556841984
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,db883bf8dd7e9dae
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.19.100 with SMTP id d4mr4568359lae.7.1425390228657;
        Tue, 03 Mar 2015 05:43:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.65 with SMTP id o1ls32671laj.67.gmail; Tue, 03 Mar 2015
 05:43:48 -0800 (PST)
X-Received: by 10.112.214.234 with SMTP id od10mr4515415lbc.3.1425390228224;
        Tue, 03 Mar 2015 05:43:48 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id o3si886798wib.2.2015.03.03.05.43.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 05:43:48 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id em10so22781950wid.5
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 05:43:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=WziV2qkkdnjGAHmwIqcZqa/xCiqfG1QM2ODYesRuryw=;
        b=E2D7lzIvGQZEyEOdBiaduKO0z1wwxkZGftDNBjRF2DOcuqM1q554tm0yeZMPuRobe2
         oscxvlKLNsgeef8JwQ+e487vhH5jHPvmBGU7SLcUqMewtgGEHcTR8XRipPaXrYUAwNxB
         lkqKZmgw1KOsWD+M9e4+9VrI5l0qCvIYeLjQJUmhI1T25Og9LLpT6Ef5zZaWhY7htSIa
         xSPwddd4VQDlIX3yXypL3d8fbRqawiwK4970XEG0qLtxPtLXntCUBxK55tMjlxs4NiVR
         +muKMLw1UMDo7bhdy1OOcvq3gqZciqWEFqrfbYX9ROewvGZj5Xr6QTvEMAlNzGLovfDP
         ZmjQ==
MIME-Version: 1.0
X-Received: by 10.180.80.34 with SMTP id o2mr45913228wix.75.1425390228122;
 Tue, 03 Mar 2015 05:43:48 -0800 (PST)
Received: by 10.28.3.68 with HTTP; Tue, 3 Mar 2015 05:43:48 -0800 (PST)
In-Reply-To: <20150303133629.GA25966@waves>
References: <20150303133629.GA25966@waves>
Date: Tue, 3 Mar 2015 15:43:48 +0200
Message-ID: <CAEnQRZC6HspQ65-_dD57O42F-3Jg5nojtpwi++9wKbN9t0cLXw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4] staging: iio: meter: add check on
 return variables
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 3, 2015 at 3:36 PM, Aya Mahfouz
<mahfouz.saif.elyazal@gmail.com> wrote:
> Adds checks on variables that are used to return values. If
> the value is less than zero, this indicates that an error
> occurred and hence a message is printed through dev_err.
> Checks are made on negative values only since spi_* functions
> return negative error codes.
>
> The functions were found using the following script but the
> aforementioned modification was what was carried out in the end:
> @@
> identifier len,f;
> @@
>
> -int len;
>  ... when != len
>      when strict
> -len =
> +return
>         f(...);
> -return len;
>
> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>

Commit message looks good to me.

> ---
> v1: added checks on last calls only.
> v2: added checks on all calls that return values along with labels.
> v3: added changelog that was missed in v2.
> v4: adjusted the patch to state how the problem was discovered, simplify
> the if conditions and avoid redundant error messages.
>
>  drivers/staging/iio/meter/ade7758_core.c | 22 ++++++++--------------
>  1 file changed, 8 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
> index 70e96b2..f696188 100644
> --- a/drivers/staging/iio/meter/ade7758_core.c
> +++ b/drivers/staging/iio/meter/ade7758_core.c
> @@ -303,14 +303,11 @@ static int ade7758_reset(struct device *dev)
>         int ret;
>         u8 val;
>
> -       ade7758_spi_read_reg_8(dev,
> -                       ADE7758_OPMODE,
> -                       &val);
> +       ret = ade7758_spi_read_reg_8(dev, ADE7758_OPMODE, &val);
> +       if (ret < 0)
> +               return ret;

I think we should keep the warning messages. Here we could say
something like this
dev_err( ...  "Failed to read opmode reg\n");

>         val |= 1 << 6; /* Software Chip Reset */
> -       ret = ade7758_spi_write_reg_8(dev,
> -                       ADE7758_OPMODE,
> -                       val);
> -
> +       ret = ade7758_spi_write_reg_8(dev, ADE7758_OPMODE, val);
Then also:

if (ret)
       dev_err( ... "FAiled to write opmode reg\n");

>         return ret;
>  }
>
> @@ -444,14 +441,11 @@ static int ade7758_stop_device(struct device *dev)
>         int ret;
>         u8 val;
>
> -       ade7758_spi_read_reg_8(dev,
> -                       ADE7758_OPMODE,
> -                       &val);
> +       ret = ade7758_spi_read_reg_8(dev, ADE7758_OPMODE, &val);
> +       if (ret < 0)
> +               return ret;
>         val |= 7 << 3;  /* ADE7758 powered down */
> -       ret = ade7758_spi_write_reg_8(dev,
> -                       ADE7758_OPMODE,
> -                       val);
> -
> +       ret = ade7758_spi_write_reg_8(dev, ADE7758_OPMODE, val);
>         return ret;

The same here.

