X-GM-THRID: 6805399652543758336
X-Received: by 2002:a17:902:8341:: with SMTP id z1mr22569799pln.178.1584985815529;
        Mon, 23 Mar 2020 10:50:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:cf0b:: with SMTP id j11ls1807503pgg.10.gmail; Mon, 23
 Mar 2020 10:50:13 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvovQcLiTFw6mgInWqrH5megxeL+u3NLK7Ul+Uav2oKxqlKJfvOR9cbRxxkwUZrZfR7qmRn
X-Received: by 2002:a63:3850:: with SMTP id h16mr7980670pgn.344.1584985813761;
        Mon, 23 Mar 2020 10:50:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584985813; cv=none;
        d=google.com; s=arc-20160816;
        b=HPtVG4D7cWPPCVr9glipLIpDsn0TWP2tIs7/ptuA13GYSAbNNorDsUzv8U9yVfZC7h
         nk0XuXnUyxGN7XeivlC7jxwC8xApWY+r7fo4Otc8rjCM++wmvXIw6eiDKoE9ZzJgmhRN
         BaC06vlcQTp86Z3jfklETlgmjvMUrcGxo2z1Zh3So4Tk3qjNPPTVcTS8nXxaKW74DExs
         ACjYPx3w9mPBQip9XTDPCEw/ADOGnWxuhbX4WvXjaOI5073YBGxN3nmRBIAOX/N7au5R
         A5OA7X9Hm1vRtLu9hCxK94mhZG0d2OCLNnAdh/BfPJzK75V42PCBw+VV8F9Nrk99YGD4
         XF5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=GvzX87ZAuDOtSf9ktETqmuX5+J+Lr+vZommjhI4YPnA=;
        b=QA3fgejRMGz4ETdSGTu6NQbLKrwKA/VWKmkNQjKRDCjByppETSTBbBIwLVj7afYVEZ
         Qyk/equ+lYPv8Lrg62ZEKH3cEfDrxzhJluGTGYy14Fj8efo6tIa6SMg3u3FJx6R1i/CY
         FxJAgp8xRUMLiTxYdfHwHeepY97PgKjEFzXLZLznXzr3izhBVN83rM5QOfaWR3LmXxBQ
         TSow9+SFf//MsqlojI0FTcI0fLbeSAspkfiNPB2aVBzECrbsMtEJ4E873s8UVHiVHyBz
         FSG96l5EMGMDNkkeMVXPFNcPji+Y8Oa5ZoPeqkRi9NOHNXTOmNigHG3FMZkT49K3c7cy
         4ZvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uRmBCOIl;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id j14si846627pgg.1.2020.03.23.10.50.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 10:50:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uRmBCOIl;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id q16so207398pje.1
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 10:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=GvzX87ZAuDOtSf9ktETqmuX5+J+Lr+vZommjhI4YPnA=;
        b=uRmBCOIlK4vFDtlWZD0dXx5uBtaO4UoSj+N0FGlGCu7BVmLTtVQHjr2EBtuJYk0M3L
         7C8bCNhHFDSLLoSGy20igYAL1YOJBqyX+WTwUOFL2Iqe6VUs54Nk2Ys5GjG7UjRbdhkb
         wtnlxtL8VpMehg7oBKa9VX2pgPvqEROQVaCEI6k1lpTgnmKOkct4AaZJoZS/3qzbtSg3
         Vwm8Ne3gS0DmtGMzk5KXoWcICMsw4OozgwplOvnpN3GI6dkAtg+Xd4RBOy8MIzvwSo7a
         C7xQZs/rz+Qe7u8jBndLFGHti5sEZCODH8E44nmG+EJARk79vYkjUX+0QzbUG79ekVLe
         I/CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=GvzX87ZAuDOtSf9ktETqmuX5+J+Lr+vZommjhI4YPnA=;
        b=NctAxBxOKtYSK8BDnL6/USDwuw5GvAmw5xulG7DYlkpDZ6VyoH1hOcMmyJsXbvxY1Z
         cdTG4+LesUzCQx2G9a8zgJlp9rPB4GQdyjqEmLNworDYHHlCjjVoqrpYPS2TQKVF3hF7
         cmJXkYvaiJY79ZOeqOZSOJjKZuunrMiafZ/litVLSKcNk6nlNWUXwczmKbNV6P67rELe
         tztyQwcc+H9rdKdK2Emmef599DvwJdOtwRDaIoFEh2sSKeT3NKGyeur93d/8EuDcyFdi
         hXKgvTpkknC6FMuBWO2+F7qWkuSBSJlF4YbuBxibuPmG3yAEd7yM1RbCvcpmfHUrceuS
         flug==
X-Gm-Message-State: ANhLgQ3Hkux0CZuMBnbqWYMeOLFKUQ1w+LIRnPK9PSzkWS6ShkBvtpkS
	VGO5awIG/UNZnZLewQG5zjOJrXpn
X-Received: by 2002:a17:90a:fa08:: with SMTP id cm8mr548614pjb.144.1584985813421;
        Mon, 23 Mar 2020 10:50:13 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.191])
        by smtp.gmail.com with ESMTPSA id i3sm7919350pgj.13.2020.03.23.10.50.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 23 Mar 2020 10:50:12 -0700 (PDT)
Date: Mon, 23 Mar 2020 23:20:05 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Daniel Baluta <daniel.baluta@gmail.com>,
	kieran.bingham@ideasonboard.com,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald <pmeerw@pmeerw.net>,
	linux-iio <linux-iio@vger.kernel.org>
Subject: Re: [PATCH v3 2/4] staging: iio: adc: ad7192: Correct macro names
 from SYNC to SINC
Message-ID: <20200323175003.GB22110@deeUbuntu>
References: <cover.1584904896.git.mh12gx2825@gmail.com>
 <a5aea6836da9aa2f950449225892ee18f10e217c.1584904896.git.mh12gx2825@gmail.com>
 <CAHp75VetdASuw60zcp+O=RWK+pmksuPtkGL3smrqYbdfgC98xw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHp75VetdASuw60zcp+O=RWK+pmksuPtkGL3smrqYbdfgC98xw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 23, 2020 at 01:40:08AM +0200, Andy Shevchenko wrote:
> On Sun, Mar 22, 2020 at 9:57 PM Deepak R Varma <mh12gx2825@gmail.com> wrote:
> >
> > Three macros include SYNC in their names which is a typo. Update those
> > names to SINC.
> 
> It is good to elaborate the source of the above statement (e.g.
> datasheet pages).
> 
> > Fixes: 77f6a23092c0 ("staging: iio: adc: ad7192: Add low_pass_3db_filter_frequency")
> 
> >
> 
> This blank line should go before Fixes tag. The rule is that tags are
> forming a block at the end of commit message.
> 
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > Suggested-by: Lars-Peter Clausen <lars@metafoo.de>
> 
> The code below looks good to me.

Thank you for your feedback. I agree with your comments. I will update
and send this back as next version.

Deepak.

> 
> 
> >
> > ---
> >
> > Changes since v2:
> >         - None. Version increment to follow patch series versioning.
> >
> > Changes since v1:
> >         - None. Patch added in v2 version as suggested by Stefano.
> >
> >
> >  drivers/iio/adc/ad7192.c | 20 ++++++++++----------
> >  1 file changed, 10 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/iio/adc/ad7192.c b/drivers/iio/adc/ad7192.c
> > index 02981f3d1794..d9a220d4217f 100644
> > --- a/drivers/iio/adc/ad7192.c
> > +++ b/drivers/iio/adc/ad7192.c
> > @@ -144,9 +144,9 @@
> >  #define AD7192_EXT_FREQ_MHZ_MAX        5120000
> >  #define AD7192_INT_FREQ_MHZ    4915200
> >
> > -#define AD7192_NO_SYNC_FILTER  1
> > -#define AD7192_SYNC3_FILTER    3
> > -#define AD7192_SYNC4_FILTER    4
> > +#define AD7192_NO_SINC_FILTER  1
> > +#define AD7192_SINC3_FILTER    3
> > +#define AD7192_SINC4_FILTER    4
> >
> >  /* NOTE:
> >   * The AD7190/2/5 features a dual use data out ready DOUT/RDY output.
> > @@ -367,7 +367,7 @@ static int ad7192_setup(struct ad7192_state *st, struct device_node *np)
> >                 st->conf |= AD7192_CONF_REFSEL;
> >
> >         st->conf &= ~AD7192_CONF_CHOP;
> > -       st->f_order = AD7192_NO_SYNC_FILTER;
> > +       st->f_order = AD7192_NO_SINC_FILTER;
> >
> >         buf_en = of_property_read_bool(np, "adi,buffer-enable");
> >         if (buf_en)
> > @@ -484,11 +484,11 @@ static void ad7192_get_available_filter_freq(struct ad7192_state *st,
> >
> >         /* Formulas for filter at page 25 of the datasheet */
> >         fadc = DIV_ROUND_CLOSEST(st->fclk,
> > -                                AD7192_SYNC4_FILTER * AD7192_MODE_RATE(st->mode));
> > +                                AD7192_SINC4_FILTER * AD7192_MODE_RATE(st->mode));
> >         freq[0] = DIV_ROUND_CLOSEST(fadc * 240, 1024);
> >
> >         fadc = DIV_ROUND_CLOSEST(st->fclk,
> > -                                AD7192_SYNC3_FILTER * AD7192_MODE_RATE(st->mode));
> > +                                AD7192_SINC3_FILTER * AD7192_MODE_RATE(st->mode));
> >         freq[1] = DIV_ROUND_CLOSEST(fadc * 240, 1024);
> >
> >         fadc = DIV_ROUND_CLOSEST(st->fclk, AD7192_MODE_RATE(st->mode));
> > @@ -576,25 +576,25 @@ static int ad7192_set_3db_filter_freq(struct ad7192_state *st,
> >
> >         switch (idx) {
> >         case 0:
> > -               st->f_order = AD7192_SYNC4_FILTER;
> > +               st->f_order = AD7192_SINC4_FILTER;
> >                 st->mode &= ~AD7192_MODE_SINC3;
> >
> >                 st->conf |= AD7192_CONF_CHOP;
> >                 break;
> >         case 1:
> > -               st->f_order = AD7192_SYNC3_FILTER;
> > +               st->f_order = AD7192_SINC3_FILTER;
> >                 st->mode |= AD7192_MODE_SINC3;
> >
> >                 st->conf |= AD7192_CONF_CHOP;
> >                 break;
> >         case 2:
> > -               st->f_order = AD7192_NO_SYNC_FILTER;
> > +               st->f_order = AD7192_NO_SINC_FILTER;
> >                 st->mode &= ~AD7192_MODE_SINC3;
> >
> >                 st->conf &= ~AD7192_CONF_CHOP;
> >                 break;
> >         case 3:
> > -               st->f_order = AD7192_NO_SYNC_FILTER;
> > +               st->f_order = AD7192_NO_SINC_FILTER;
> >                 st->mode |= AD7192_MODE_SINC3;
> >
> >                 st->conf &= ~AD7192_CONF_CHOP;
> > --
> > 2.17.1
> >
> 
> 
> -- 
> With Best Regards,
> Andy Shevchenko

