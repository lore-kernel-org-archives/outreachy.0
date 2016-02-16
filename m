X-GM-THRID: 6251954010773782528
X-Received: by 10.194.216.3 with SMTP id om3mr2793710wjc.7.1455647490210;
        Tue, 16 Feb 2016 10:31:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.40.12 with SMTP id o12ls744312lfo.38.gmail; Tue, 16 Feb
 2016 10:31:29 -0800 (PST)
X-Received: by 10.112.205.164 with SMTP id lh4mr2741402lbc.6.1455647489599;
        Tue, 16 Feb 2016 10:31:29 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x230.google.com (mail-wm0-x230.google.com. [2a00:1450:400c:c09::230])
        by gmr-mx.google.com with ESMTPS id e130si818379wme.2.2016.02.16.10.31.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 10:31:29 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) client-ip=2a00:1450:400c:c09::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x230.google.com with SMTP id g62so122260806wme.1
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 10:31:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=7np+YdAEV0aRdSPknKbT2cbr07vKxVqCNsCt3sAHLEk=;
        b=qaAY7Q+OG1UhE06xDkzqi6EPlhEWNUbZhferGllpZBW67y5WlFd/egGcD6ebKwXzwW
         eX6+7EOcx4oYLQkr0/MKPU1kEmfqvEFRa56f6+iDM2y+GEIpJIpcDegBN0jgwna21dvh
         LaZWR08yeDgjFE28mINIR2fUTX2yteScGI+GjK8TZ8jEkGgYX1GJEz0mXf1E+Iu643KU
         8DmNlcV1FXcD6x21VYEl64CGUnB25BLIwwOyiiLJNigJ/ymheJUgiVLsYdvwob1Akd5A
         zUAvvCZLEW3PVBlTSf7V3iOL3ssHRvU7Rb2KpMHo0K2y5WudbNNUaEM0BJgEXR+uxqVU
         LlTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=7np+YdAEV0aRdSPknKbT2cbr07vKxVqCNsCt3sAHLEk=;
        b=CPXIRLAXGWJfmXtAFqzMduz5dp93FqI4CJNRojpE53WRX8Dpr9nHHHx0IJZgZb+ZVt
         hfYDir0aF6n0MoaSWZg6SzbinYnk7EZFvc65rtwAvI93RaWGGWnsqooQmo++BEaiO3cK
         LDwnlCSo8xYm1L3/W1tbJ1qkQby19Qqxk4cVu1ByCp+CRoJh77J/kIfXuWdSxzAR5DLP
         S2SXD4iQYia6D+4DFd/LXC4a6AnBrmJXUigKd6g6UHYiwZOKAPnwzLf+EWA7wSlttUXI
         kDsqL2zaTdOSt12hvizm1JgqXXu+OPag8A7t+rwn7ugRStksT3v7tAjh3GtX0zDLcBeK
         3K+Q==
X-Gm-Message-State: AG10YORYxp7olA9/as5vsG90zq4n+nFJ/7sE3h21v/hxwonyjc5FwWnig50nr4REbHO/AKRPOT+eKw7LkpfRlA==
MIME-Version: 1.0
X-Received: by 10.194.123.102 with SMTP id lz6mr6638831wjb.2.1455647489447;
 Tue, 16 Feb 2016 10:31:29 -0800 (PST)
Received: by 10.194.222.165 with HTTP; Tue, 16 Feb 2016 10:31:29 -0800 (PST)
In-Reply-To: <20160216181431.GA1934@amitoj-Inspiron-3542>
References: <20160216181431.GA1934@amitoj-Inspiron-3542>
Date: Tue, 16 Feb 2016 20:31:29 +0200
Message-ID: <CAEnQRZB=wE6h=UVTOxiM584P_uRxXxoYucKE2VTe-39grfp9Zg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Remove unnecessary
 test from if conditions
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 16, 2016 at 8:14 PM, Amitoj Kaur Chawla
<amitoj1606@gmail.com> wrote:
> Remove unnecessary test condition on ret variable which has been
> previously tested and returns its value if the value is non zero.
>
> This fixes the following smatch warnings:
> drivers/staging/iio/adc/ad7816.c:299 ad7816_set_oti() warn: we tested
> 'ret' before and it was 'false'
> drivers/staging/iio/adc/ad7816.c:306 ad7816_set_oti() warn: we tested
> 'ret' before and it was 'false'
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>

Nice catch.

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
>  drivers/staging/iio/adc/ad7816.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/iio/adc/ad7816.c b/drivers/staging/iio/adc/ad7816.c
> index 2226051..ac3735c 100644
> --- a/drivers/staging/iio/adc/ad7816.c
> +++ b/drivers/staging/iio/adc/ad7816.c
> @@ -296,14 +296,14 @@ static inline ssize_t ad7816_set_oti(struct device *dev,
>                 dev_err(dev, "Invalid oti channel id %d.\n", chip->channel_id);
>                 return -EINVAL;
>         } else if (chip->channel_id == 0) {
> -               if (ret || value < AD7816_BOUND_VALUE_MIN ||
> +               if (value < AD7816_BOUND_VALUE_MIN ||
>                     value > AD7816_BOUND_VALUE_MAX)
>                         return -EINVAL;
>
>                 data = (u8)(value - AD7816_BOUND_VALUE_MIN +
>                         AD7816_BOUND_VALUE_BASE);
>         } else {
> -               if (ret || value < AD7816_BOUND_VALUE_BASE || value > 255)
> +               if (value < AD7816_BOUND_VALUE_BASE || value > 255)
>                         return -EINVAL;
>
>                 data = (u8)value;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160216181431.GA1934%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.

