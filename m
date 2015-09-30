X-GM-THRID: 6200307025703862272
X-Received: by 10.112.164.1 with SMTP id ym1mr567206lbb.15.1443621697798;
        Wed, 30 Sep 2015 07:01:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.126.5 with SMTP id mu5ls178245wib.17.gmail; Wed, 30 Sep
 2015 07:01:37 -0700 (PDT)
X-Received: by 10.180.107.167 with SMTP id hd7mr689558wib.6.1443621697327;
        Wed, 30 Sep 2015 07:01:37 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-la0-x231.google.com (mail-la0-x231.google.com. [2a00:1450:4010:c03::231])
        by gmr-mx.google.com with ESMTPS id qc10si21957lbb.1.2015.09.30.07.01.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 07:01:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c03::231 as permitted sender) client-ip=2a00:1450:4010:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c03::231 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-la0-x231.google.com with SMTP id h2so47268211lah.0
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 07:01:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=/UV+o3xfW9Zl7sPBIuWWB07RtB4uW0BBPVpudzXyc44=;
        b=w9yGLxsbEP1ABPDJThNcgxwk6/AK0pZXD78lk8xI64CoFn2NJRDCYFSMS7rBhN5TQN
         FMr8FUNqS1qoG+EZ4YXMS1NarsKi7dHtk3WfimY3T/sGj16ecdWP+brLkLr/rFoqzu7c
         TJ92q02sA0xhjpLKGIyYFX6ghWqS2ZdSLwtVhNspHji3+NUbliKXWU9p+kt+L2oBwlls
         sX9tYtzSAHEfKQtC7sPpjvuOcIv/3iLFLSeAYqIIFa3lVAdncvgCxQg9F9kt64j0mpbb
         yIPsfEAdRNklCJl9Rfh9Z+MmjLiQxy5mFHm3Gun87F1dnr+9TtvE3uzv2mzEr9G8fQxH
         r7EA==
MIME-Version: 1.0
X-Received: by 10.152.22.138 with SMTP id d10mr1117876laf.85.1443621697216;
 Wed, 30 Sep 2015 07:01:37 -0700 (PDT)
Received: by 10.25.217.207 with HTTP; Wed, 30 Sep 2015 07:01:37 -0700 (PDT)
In-Reply-To: <1443621463-8343-1-git-send-email-shraddha.6596@gmail.com>
References: <1443621463-8343-1-git-send-email-shraddha.6596@gmail.com>
Date: Wed, 30 Sep 2015 17:01:37 +0300
Message-ID: <CAEnQRZAUL-V5o0rRocz7vNRyrkumahJRGwb-48phBAH53sWW3A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: cdc: Prefer using the
 BIT macro
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 30, 2015 at 4:57 PM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
> Replace bit shifting on 1 with the BIT(x) macro
>
> This was done with coccinelle:
> @@ int g; @@
>
> -(1 << g)
> +BIT(g)
>
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/iio/cdc/ad7746.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
> index 10fa372..aa97437 100644
> --- a/drivers/staging/iio/cdc/ad7746.c
> +++ b/drivers/staging/iio/cdc/ad7746.c
> @@ -52,10 +52,10 @@
>  #define AD7746_STATUS_RDYCAP           BIT(0)
>
>  /* Capacitive Channel Setup Register Bit Designations (AD7746_REG_CAP_SETUP) */
> -#define AD7746_CAPSETUP_CAPEN          (1 << 7)
> -#define AD7746_CAPSETUP_CIN2           (1 << 6) /* AD7746 only */
> -#define AD7746_CAPSETUP_CAPDIFF                (1 << 5)
> -#define AD7746_CAPSETUP_CACHOP         (1 << 0)
> +#define AD7746_CAPSETUP_CAPEN          BIT(7)
> +#define AD7746_CAPSETUP_CIN2           BIT(6) /* AD7746 only */
> +#define AD7746_CAPSETUP_CAPDIFF                BIT(5)
> +#define AD7746_CAPSETUP_CACHOP         BIT(0)
>
>  /* Voltage/Temperature Setup Register Bit Designations (AD7746_REG_VT_SETUP) */
>  #define AD7746_VTSETUP_VTEN            (1 << 7)

What about this? It's preferred to fix all issues of the same type in
a single patch.

thanks,
Daniel.

