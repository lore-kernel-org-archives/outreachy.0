X-GM-THRID: 6805399652543758336
X-Received: by 2002:a17:90b:3583:: with SMTP id mm3mr10858238pjb.123.1584920673464;
        Sun, 22 Mar 2020 16:44:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:9911:: with SMTP id z17ls6985007pff.5.gmail; Sun, 22 Mar
 2020 16:44:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsv87OYZlFa2CF8/LqP05C06djM+B1GDgsDwU337kpCNOgWRyN6D7t/P3rce0Mr6FPIGwPP
X-Received: by 2002:a63:5864:: with SMTP id i36mr20389112pgm.426.1584920672067;
        Sun, 22 Mar 2020 16:44:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584920672; cv=none;
        d=google.com; s=arc-20160816;
        b=byj0hKUicGO4CdRi7cmAZ0DHhUOUBj8ELEDy6WKeI87pdmq40OxcXYf6rcrkmG03Vn
         wMK4AXB77jOaGu3jnw9cmmVRFqk6Lu3iWJADoOBFbJNgoj8st5hfAS+Km3sANSVhadWr
         Ye2nqRcseYzXKXFsuFOssX8UB8w/DzE7qlhR+zaiK+T9/vqWC1LYYp2sLBzMR01rptzM
         NpM2/aFdjb5JrqjIPOsFvGVRdCrTdVvlh/yawN0tkvpOqNh6fDxrIbpsKVGifwNlZN/g
         SDtt7QAo8eEfUrp4CTbJ+g+4sDWoh/vEnu6rLzr6TeCuw6HT2gMyHKYcnFwvrRvgDUNq
         ljSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OmMShW/GUFC3Yvu+SDL4Yk8LQjTS+uHX0dJqMxCZxrU=;
        b=kOGCb4+vEIZz865ZWOBCtqSISPgzLERp0AUbtFrAEISaBgD2vOc8HftbtctDjY8Ic7
         J/bE8xRTG2dUulkEQUBD+MzpsmD9Vn/PXN2EEwvrg+MJ2GTAh6DQyqEOYmhURkuuu+bF
         t6YIQYLvwB03ESQ/WIjhbLJ7GO0UAWsWxn6G79VSNmxHjVXY8RQNHARNYasgCRlmEYSJ
         Po0+bwuCcXYJRYDzwMkQl1ChXTvGn6rHRcT6eThNHz8h82+LJmYAtFv/ytx8H6tLz/C6
         uMAaWhh08BMXhXbOgKoHrypd/cXcHkv9WCE2tSY3y2jKiGNjLzUej4WdJIsJR2oND2Nu
         fq2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ooZyW+b8;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <andy.shevchenko@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id y5si294772plr.4.2020.03.22.16.44.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 16:44:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ooZyW+b8;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id d17so5656530pgo.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 16:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OmMShW/GUFC3Yvu+SDL4Yk8LQjTS+uHX0dJqMxCZxrU=;
        b=ooZyW+b8UXk6/KQZudpn/oxms4PlSmTPhAkU0isqrQxv3Ku5BfSJPd/kLypCBOFsac
         o9WTHI+3wTSu6rq5+N2N+uXCoe/DZ6ploTBkCGqcCwvRZNmSeWVRkDIZRLwfZPcPq/6H
         0AQ0RKBME6Lux++k4dOoX75XwI9pGmzNFWwHZQXqwoWTyemBGudxU78gycU5pPMyPu9q
         ca9YptG9DS2EgqHVgNnFOkDzxAsQh6No1yscaVnPNI2PcsdDcyBTjChMTfDSm2O5nGB4
         7jsZq6/ICGm3F3RDaMd2eCZyd52dRQp+uRWA3syCPozFxpVdRj9S+4gLabe+8e2K1gze
         P4WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OmMShW/GUFC3Yvu+SDL4Yk8LQjTS+uHX0dJqMxCZxrU=;
        b=KlL51ywIAujz1fNDDirgGC9qX6klwYTsrhDQaP8VnnpppPBmzuafFmXUheYIBKWzLp
         sVlFt1aQD1eo0M3wM9PQgWOqOY6sCNjR37ck2YsyCu0bIH8ylqGMkuXiNJg4vtmu7mec
         3cZsdEOeYzO3gPntduhGBfhoTwWTi5LxweLEkDufWnpEImhRASOPAKNCdJ7jxRVBzFaT
         KbtruUE8MMaQ+BywLNRj/Wvr8iJ+oLrL4Cy91Rd22yw5DAzHLNuN+IWemW6ANeNMyIYx
         daGHwIvkA1aJC2SiK5YpatuT1WC4cf7lUYnL/xJx0GD5HVqYiRiP76datZtwD6Vim8VL
         BmkQ==
X-Gm-Message-State: ANhLgQ30tD7yP4KyTgetNyfd20Jrp02ky+QtgKbXM29ck7/lWSDtblLF
	d3hk5YUusUjsaQhSpsvTqqdKZffgK/LmtADrTKI=
X-Received: by 2002:a63:5859:: with SMTP id i25mr18619637pgm.74.1584920671798;
 Sun, 22 Mar 2020 16:44:31 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1584904896.git.mh12gx2825@gmail.com> <dad3cdb5de76234cc460300c31aea6af671f81ad.1584904896.git.mh12gx2825@gmail.com>
In-Reply-To: <dad3cdb5de76234cc460300c31aea6af671f81ad.1584904896.git.mh12gx2825@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 23 Mar 2020 01:44:20 +0200
Message-ID: <CAHp75VfC=y1mHW5=ghwdMMZYg=00_a5RB0Phz4j_vM77pehvMA@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] staging: iio: adc: ad7192: get_filter_freq code optimization
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
> Current implementation of the function ad7192_get_available_filter_freq
> repeats calculation of output data rate a few times. We can simplify
> these steps by refactoring out the calculation of fADC. This would also
> addresses the checkpatch warning of line exceeding 80 character.

I'm not sure you did an equivalent changes. I believe in the original
code precision is better. Consider low clock frequencies when 10 bit
right shift may hide some bits of the division.

Care to write a python script to check the precision between old and new code?

...

> -       /* Formulas for filter at page 25 of the datasheet */
> -       fadc = DIV_ROUND_CLOSEST(st->fclk,
> -                                AD7192_SINC4_FILTER * AD7192_MODE_RATE(st->mode));
> -       freq[0] = DIV_ROUND_CLOSEST(fadc * 240, 1024);
> +       fadc = DIV_ROUND_CLOSEST(st->fclk, AD7192_MODE_RATE(st->mode) * 1024);
>
> -       fadc = DIV_ROUND_CLOSEST(st->fclk,
> -                                AD7192_SINC3_FILTER * AD7192_MODE_RATE(st->mode));
> -       freq[1] = DIV_ROUND_CLOSEST(fadc * 240, 1024);
> -
> -       fadc = DIV_ROUND_CLOSEST(st->fclk, AD7192_MODE_RATE(st->mode));
> -       freq[2] = DIV_ROUND_CLOSEST(fadc * 230, 1024);
> -       freq[3] = DIV_ROUND_CLOSEST(fadc * 272, 1024);
> +       /* Formulas for filter at page 25 of the datasheet */
> +       freq[0] = DIV_ROUND_CLOSEST(fadc * 240, AD7192_SINC4_FILTER);
> +       freq[1] = DIV_ROUND_CLOSEST(fadc * 240, AD7192_SINC3_FILTER);
> +       freq[2] = fadc * 230;
> +       freq[3] = fadc * 272;


-- 
With Best Regards,
Andy Shevchenko

