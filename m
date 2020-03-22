X-GM-THRID: 6805399652543758336
X-Received: by 2002:a63:ec50:: with SMTP id r16mr20375275pgj.274.1584920421960;
        Sun, 22 Mar 2020 16:40:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:9416:: with SMTP id r22ls71457pjo.0.canary-gmail;
 Sun, 22 Mar 2020 16:40:20 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsRV4Wt7LWIy9CTbADrCIrSSmKhdBK93b+DtoZvNnhoRMZRp3Bxy/OhVTcCXY6a0lyATAeD
X-Received: by 2002:a17:90a:a511:: with SMTP id a17mr22305379pjq.178.1584920420387;
        Sun, 22 Mar 2020 16:40:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584920420; cv=none;
        d=google.com; s=arc-20160816;
        b=oOuGhqD/FaUecEDQPXHNeg1MLXxxsxFpVPiGEG7ZyRUw/aRHIE1VuYId2lTdV+s3E6
         bmnNa6AuEn3YOnCx8mtm0NWjlBqTaEPq3cgS6jo7RmsKHIcS3PD+VcUIIOY/RPqaibkJ
         jDwCa3BjwFTU9Y6ofxZQ0QwUEOph8qVCHCmdmBBreJKslJL/HG5nhAwZelRmz6MsFhM2
         L8YEHUKj319gdy4z8o7hRUO/lA9vC28KUcU5oNtKxQ2tjY72w1lPtbWqvcRBSFQaWZ+y
         mofGEmh7jzPLg+NSxStyMe2aPk5whZAD+2CiK3zUOL0AIJXmzq9oxsCMwNvknhjQq+fA
         RnkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LSoiX2KDtuHcjAvxn49iG05bHr7GoZNqUhV+VjEizwk=;
        b=u0XBmymcfrmPDUrb5e/Dq6OccecUjPy5Zwr0klev/8eJXNpPH1b0rVuS2P01JtZEMz
         JUaqtaNlhxi/h/87TPinb0NTa0xiiolWSvJUx2I5LMyZ1FC5eN+03IL7CFD4XjDtU6qg
         d7ICJfg/5o+gFlylVQRxEnOcdx6Iejr8WD6aS1QsY33IN3oBtOfGLZhK6gXmcEt7b+YE
         ltyUKw7Pq/b6z5ley9vtP+RLeHVoyEPNLI2U/gR7OL/+5prgu4sZnU+b1rmPpLjcCayJ
         /PIVZU0MebKWf1ml4lyIVxFYh/qwDYE2QEb39kIZs4yLXJpMDz4FuGfmCFmnn93v7a96
         v4VA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="WZ/Ip6wy";
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <andy.shevchenko@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id i19si1017992pjx.1.2020.03.22.16.40.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 16:40:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="WZ/Ip6wy";
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id m15so6202394pgv.12
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 16:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LSoiX2KDtuHcjAvxn49iG05bHr7GoZNqUhV+VjEizwk=;
        b=WZ/Ip6wynDqJa9GGL49tMWQvik+WaB0D69d3p+XvJGoesXA3FtD+CMF8+jIW25XvTz
         nJDQhCnczt7zliOOYI6U6j/G9vVgAhL5WK3bH/8H3fxglqA/U98iVQSKQN9lmwVvAIe+
         vKyd0jz08PlxCGq4SD+0EKGcp9S1uAqqHDtKtmo+7dUkFszA15/juQULGJ9t3cwF/ztR
         CFah5QcrIkiCRTYKYTzBq6EUfzuQYuji0qQkYHuNaI4U4YSNk6piKhcyYvVXJzwgTgXQ
         B5CyI0/58j3yKrpHG9aQnnfehWQ53EP5bhEgdafipqbS6a0TZnwtY7GZCT2cRFse9sFY
         mvGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LSoiX2KDtuHcjAvxn49iG05bHr7GoZNqUhV+VjEizwk=;
        b=fIgzvHYiyRRtYIMoCSb2HoXWH/cgq3i3nbaXDNV2cVEekfE51iE0ULrJ86HIv7/OQV
         WkO+j5wILwlAn5jxJRxi1SS7IvPNsYHFh4LHh3JJaHTFioS7Zkp/kn2D5vvucjJPAVkx
         ZEFSb/ozChsPYuYY5pgHtk5uiID5OxomfvN8+u1p670D5QXebOlpR0T/yFoiqSZkM+4D
         v3PvTJLt17NbcGRWHaShzBy4d2Tt8H3IIgOuN6ZyTHtcUlaRBmG3zJC6Xf+7xc4E93Mb
         5Bcv6Nx7BrrLn+QHPU9qTCrHONkRuWdPikrMZSk7ZX+6/bq39qDuP+OWMMjelbYk9ltQ
         KJ6A==
X-Gm-Message-State: ANhLgQ0qVht/AB+eh+EU3OwafqXmHFYsG7u9UnHJKhaHiZY6Q59DyRzM
	qScOSvrb+NfSQR9AMezIEQE6N2UTqYVAomZREsI=
X-Received: by 2002:aa7:958f:: with SMTP id z15mr20806386pfj.130.1584920420057;
 Sun, 22 Mar 2020 16:40:20 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1584904896.git.mh12gx2825@gmail.com> <a5aea6836da9aa2f950449225892ee18f10e217c.1584904896.git.mh12gx2825@gmail.com>
In-Reply-To: <a5aea6836da9aa2f950449225892ee18f10e217c.1584904896.git.mh12gx2825@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 23 Mar 2020 01:40:08 +0200
Message-ID: <CAHp75VetdASuw60zcp+O=RWK+pmksuPtkGL3smrqYbdfgC98xw@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] staging: iio: adc: ad7192: Correct macro names
 from SYNC to SINC
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Daniel Baluta <daniel.baluta@gmail.com>, 
	kieran.bingham@ideasonboard.com, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald <pmeerw@pmeerw.net>, 
	linux-iio <linux-iio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 22, 2020 at 9:57 PM Deepak R Varma <mh12gx2825@gmail.com> wrote:
>
> Three macros include SYNC in their names which is a typo. Update those
> names to SINC.

It is good to elaborate the source of the above statement (e.g.
datasheet pages).

> Fixes: 77f6a23092c0 ("staging: iio: adc: ad7192: Add low_pass_3db_filter_frequency")

>

This blank line should go before Fixes tag. The rule is that tags are
forming a block at the end of commit message.

> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> Suggested-by: Lars-Peter Clausen <lars@metafoo.de>

The code below looks good to me.


>
> ---
>
> Changes since v2:
>         - None. Version increment to follow patch series versioning.
>
> Changes since v1:
>         - None. Patch added in v2 version as suggested by Stefano.
>
>
>  drivers/iio/adc/ad7192.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/iio/adc/ad7192.c b/drivers/iio/adc/ad7192.c
> index 02981f3d1794..d9a220d4217f 100644
> --- a/drivers/iio/adc/ad7192.c
> +++ b/drivers/iio/adc/ad7192.c
> @@ -144,9 +144,9 @@
>  #define AD7192_EXT_FREQ_MHZ_MAX        5120000
>  #define AD7192_INT_FREQ_MHZ    4915200
>
> -#define AD7192_NO_SYNC_FILTER  1
> -#define AD7192_SYNC3_FILTER    3
> -#define AD7192_SYNC4_FILTER    4
> +#define AD7192_NO_SINC_FILTER  1
> +#define AD7192_SINC3_FILTER    3
> +#define AD7192_SINC4_FILTER    4
>
>  /* NOTE:
>   * The AD7190/2/5 features a dual use data out ready DOUT/RDY output.
> @@ -367,7 +367,7 @@ static int ad7192_setup(struct ad7192_state *st, struct device_node *np)
>                 st->conf |= AD7192_CONF_REFSEL;
>
>         st->conf &= ~AD7192_CONF_CHOP;
> -       st->f_order = AD7192_NO_SYNC_FILTER;
> +       st->f_order = AD7192_NO_SINC_FILTER;
>
>         buf_en = of_property_read_bool(np, "adi,buffer-enable");
>         if (buf_en)
> @@ -484,11 +484,11 @@ static void ad7192_get_available_filter_freq(struct ad7192_state *st,
>
>         /* Formulas for filter at page 25 of the datasheet */
>         fadc = DIV_ROUND_CLOSEST(st->fclk,
> -                                AD7192_SYNC4_FILTER * AD7192_MODE_RATE(st->mode));
> +                                AD7192_SINC4_FILTER * AD7192_MODE_RATE(st->mode));
>         freq[0] = DIV_ROUND_CLOSEST(fadc * 240, 1024);
>
>         fadc = DIV_ROUND_CLOSEST(st->fclk,
> -                                AD7192_SYNC3_FILTER * AD7192_MODE_RATE(st->mode));
> +                                AD7192_SINC3_FILTER * AD7192_MODE_RATE(st->mode));
>         freq[1] = DIV_ROUND_CLOSEST(fadc * 240, 1024);
>
>         fadc = DIV_ROUND_CLOSEST(st->fclk, AD7192_MODE_RATE(st->mode));
> @@ -576,25 +576,25 @@ static int ad7192_set_3db_filter_freq(struct ad7192_state *st,
>
>         switch (idx) {
>         case 0:
> -               st->f_order = AD7192_SYNC4_FILTER;
> +               st->f_order = AD7192_SINC4_FILTER;
>                 st->mode &= ~AD7192_MODE_SINC3;
>
>                 st->conf |= AD7192_CONF_CHOP;
>                 break;
>         case 1:
> -               st->f_order = AD7192_SYNC3_FILTER;
> +               st->f_order = AD7192_SINC3_FILTER;
>                 st->mode |= AD7192_MODE_SINC3;
>
>                 st->conf |= AD7192_CONF_CHOP;
>                 break;
>         case 2:
> -               st->f_order = AD7192_NO_SYNC_FILTER;
> +               st->f_order = AD7192_NO_SINC_FILTER;
>                 st->mode &= ~AD7192_MODE_SINC3;
>
>                 st->conf &= ~AD7192_CONF_CHOP;
>                 break;
>         case 3:
> -               st->f_order = AD7192_NO_SYNC_FILTER;
> +               st->f_order = AD7192_NO_SINC_FILTER;
>                 st->mode |= AD7192_MODE_SINC3;
>
>                 st->conf &= ~AD7192_CONF_CHOP;
> --
> 2.17.1
>


-- 
With Best Regards,
Andy Shevchenko

