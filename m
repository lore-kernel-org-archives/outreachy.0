X-GM-THRID: 6252670942191812608
X-Received: by 10.28.129.210 with SMTP id c201mr1069442wmd.1.1455879999216;
        Fri, 19 Feb 2016 03:06:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.134.131 with SMTP id i125ls22915lfd.88.gmail; Fri, 19 Feb
 2016 03:06:38 -0800 (PST)
X-Received: by 10.112.162.101 with SMTP id xz5mr1725066lbb.20.1455879998526;
        Fri, 19 Feb 2016 03:06:38 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x231.google.com (mail-wm0-x231.google.com. [2a00:1450:400c:c09::231])
        by gmr-mx.google.com with ESMTPS id s141si433693wmd.1.2016.02.19.03.06.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 03:06:38 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) client-ip=2a00:1450:400c:c09::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x231.google.com with SMTP id a4so65497267wme.1
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 03:06:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=dmvZIckbPpJKaEoHqmrwUSivUJYS4hczGRtjlZ5zmCU=;
        b=x1R1/W8ZMiwylT7lFpgbaTbIjCbf5I3/3qINeuq9piwsTzxxti9InvTWJAU/ol5Jz5
         ImZFbmz0dbPpoNO25Lo7+VrJ3ZIMq1r9ndPq0tjghaLkJQfZGIGFvnQR0+C793swserR
         Z4+DBBCjqbgiOl7bf91Inrpk6LlzH0rkJd1Kk5wRMq30PnPQxIHq13iCSXhAjO9PZWyM
         KnlRL0P5SxJwDv8wsO2rHc+3LmSeQBsbhwjrkBQVUkOem7tXsvmq4v74DA5KhFWM7ykt
         P4Nh50hYyB8IjBcjDfn8Z0+CUxlpIqDoGWn3vZroPX2TJI7pxLkg85ZqcHmizkBL08+V
         MtwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=dmvZIckbPpJKaEoHqmrwUSivUJYS4hczGRtjlZ5zmCU=;
        b=UCF73+lI0kJNcs5REjGm1vtEfJhWwdpkjXLHbP8CNSMu8fI8SL1yjfN1obJ8ejkoMA
         o7hJfbTjmpWxuNfCXH/R5vr20QH6wZmo8K8ftEOXU7HJCsNTFkCHiXCbtZe3pv/XwQuP
         6V0Z/unopFiOkdQq6YB/jgGVivwWv5RPumEXrMyiweEyzzZTksNviW80dBLzAENkcBpM
         4Zj8Bjs3dVDYNo0M0yju+hxzaOpDvIfu1rdYQ9u/HbUkmfkpemJJ7QnKQ3Yh9keLwXnj
         I/lthsNmtfIldMNLNnEnWPLYcGl3ryNodTfQGGsilc6S58yt2mQ1GCRW+3x0uOdR/PgH
         VxgQ==
X-Gm-Message-State: AG10YOQ38sF5ITtFXb89QkErPyNvhyDMylZazTVToBbYgD+kn1sa9FvAo1uuJblpmd40b0+Njz6iaM7Cbx3UKA==
MIME-Version: 1.0
X-Received: by 10.194.88.195 with SMTP id bi3mr12246114wjb.34.1455879998409;
 Fri, 19 Feb 2016 03:06:38 -0800 (PST)
Received: by 10.194.222.165 with HTTP; Fri, 19 Feb 2016 03:06:38 -0800 (PST)
In-Reply-To: <20160218213554.GA6769@janani-Inspiron-3521>
References: <20160218213554.GA6769@janani-Inspiron-3521>
Date: Fri, 19 Feb 2016 13:06:38 +0200
Message-ID: <CAEnQRZDAOZgagApcF+xaLeNVWJ8ruDh2R_pcWEmMrOBaA-ByNw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: addac: Remove
 unnecessary else after return in if block
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 18, 2016 at 11:35 PM, Janani Ravichandran
<janani.rvchndrn@gmail.com> wrote:
> Else is unncessary when there is an return statement in the
> corresponding if block. Remove else and refactor code.
> Coccinelle patch used:
>
> @rule1@
> expression e1;
> @@
>
>         if (e1) { ... return ...; }
> -       else{
>                 ...
> -       }
>
>
> @rule2@
> expression e2;
> statement s1;
> @@
>
>         if(e2) { ... return ...; }
> -       else
>                 s1
>
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/iio/addac/adt7316.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
> index 3adc451..4a88a85 100644
> --- a/drivers/staging/iio/addac/adt7316.c
> +++ b/drivers/staging/iio/addac/adt7316.c
> @@ -465,8 +465,7 @@ static ssize_t adt7316_show_all_ad_channels(struct device *dev,
>                 return sprintf(buf, "0 - VDD\n1 - Internal Temperature\n"
>                                 "2 - External Temperature or AIN1\n"
>                                 "3 - AIN2\n4 - AIN3\n5 - AIN4\n");
> -       else
> -               return sprintf(buf, "0 - VDD\n1 - Internal Temperature\n"
> +       return sprintf(buf, "0 - VDD\n1 - Internal Temperature\n"
>                                 "2 - External Temperature\n");

While touching this, you can also fix the alignment for the second line
CHECK: Alignment should match open parenthesis

>  }
>
> @@ -637,7 +636,7 @@ static ssize_t adt7316_show_da_high_resolution(struct device *dev,
>         if (chip->config3 & ADT7316_DA_HIGH_RESOLUTION) {
>                 if (chip->id == ID_ADT7316 || chip->id == ID_ADT7516)
>                         return sprintf(buf, "1 (12 bits)\n");
> -               else if (chip->id == ID_ADT7317 || chip->id == ID_ADT7517)
> +               if (chip->id == ID_ADT7317 || chip->id == ID_ADT7517)
>                         return sprintf(buf, "1 (10 bits)\n");
>         }
>
> --

