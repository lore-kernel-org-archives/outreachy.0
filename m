X-GM-THRID: 6664599066779844608
X-Received: by 2002:a37:4a54:: with SMTP id x81mr11801329qka.36.1551730459915;
        Mon, 04 Mar 2019 12:14:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:acb6:: with SMTP id m51ls2857837qvc.1.gmail; Mon, 04 Mar
 2019 12:14:19 -0800 (PST)
X-Google-Smtp-Source: APXvYqx62aDfZvZbARoqySbc2LX3YgCOrGD9y/2WQaxghN7MVpSSqa+na3v4NF2E/++7s6721KQc
X-Received: by 2002:a0c:9211:: with SMTP id a17mr12180748qva.19.1551730459067;
        Mon, 04 Mar 2019 12:14:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551730459; cv=none;
        d=google.com; s=arc-20160816;
        b=JpMzuPsY0jGXkEc4XDyBC8CQDpVJzQLncoT7ScM2jKR+KJLKGzdszWNKijm0lNN3qu
         MV/YRSKhKFTWHxKD3WLI/Df1BtmCoE9HZUg73/dTwS0jjfaRCzr17cHKZJNZmUDOUxqZ
         4c823t5FD0kieVV9XatbxDwMV+Borx6tqwzf6GOZQa1dSL3qnvhPu4KWtbeTcB4yfVUy
         FnG4Uch1AR3Qz/dkLNgRTe6fkuMJtxGm9utt08nx149qR4PCdvcbBQhkZco1hAMi9NP3
         7+WUZmjrB0Om6OCTKloI5r+/UTekeYF969oXLcbXL+vNE2XKU6uAFrM6vlHd69H3o9JF
         GZlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4jQa+Ih81BT12EnZzlQaXtUtmeOomIbsW4itqbfcRM0=;
        b=cc1Kr2r8fzgdQ0X4HxoBVTT2URrzpWlRR6eTsS9pwOaASrfN/Rh5IgiqpkEXBGoQVA
         HaNWBN5mN7v56N4zR/LbkBZIgjkf/wpJtapI6N6YHbRbeYoiQkalvNfQQ8q6YZqagfsA
         9IB8UKnOb9tsJXNYB/5dfNUdm29e9QefJTV38T/AHODftYqBlIvn1tCDnjTZGHsPo4k0
         oJaFXjYVPr8qtzIu03XucYZqGnvyyptJzoT4tWdDUin20WolEsSaIz4pvuCa3Qw9InUB
         LZvEAuuaOiINPK32xjsQIP5n4Wn+zRQQazIMxNEFPs8e3DkWYg25f5RT4K0zoZh3CGf6
         f9SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=FZFW5INk;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com. [2607:f8b0:4864:20::735])
        by gmr-mx.google.com with ESMTPS id m1si288719qtc.2.2019.03.04.12.14.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 12:14:18 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4864:20::735 as permitted sender) client-ip=2607:f8b0:4864:20::735;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=FZFW5INk;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-qk1-x735.google.com with SMTP id i5so3510627qkd.13
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 12:14:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4jQa+Ih81BT12EnZzlQaXtUtmeOomIbsW4itqbfcRM0=;
        b=FZFW5INkGlVbmjuQNUqUl7jEMM/aV8rnq4y5/XCmnRpWK37co8QpRLbmU0Bqk4Ty20
         gWzjsbo+eqWclPOYNWFJaPOvSFK6vbZyomxHs5bwISZGynTau3SCCYhunbasI8OQsFjz
         +w+iHKCteX3ZJ70aaal1wCF0Q57VhADv3YGrw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4jQa+Ih81BT12EnZzlQaXtUtmeOomIbsW4itqbfcRM0=;
        b=s6347UetJ6/nuu4Zn3xRIwTrjYTq1YfisIN34nsWan67dSlVsqUpAQSFMOJPggvv3k
         3UmwpUtZ3Mi+D8qhuUxZl1WmbUnmFz36kHxMickKofrEkwWHwStE/tyhG4gBTsdSmErz
         QpJgW9eSuLWjqCkRZwtI0ibov/NrK3Hz48gsrXHvm4uZbnkISgsEwBkuGKMUPGPTNTpe
         ny1rjfOVH3DHAwmyHVnsHLaoeN38cNj0RofUb/mB9W+bBq7fKByDsCd7urX5UqKGgfRd
         ubPOHrS+I4/KmZQkp5vTL9eFek7+FGj/h/iZF/8OREiQk9nSBxbOisu9GqPcPzH6i1dD
         Lc3Q==
X-Gm-Message-State: APjAAAVDARQuBBeDS+/V3GcZqNIsLC6xQvj4B4qwKEKSXvwgS/jhCA/z
	XVd9Fc1d2G/wjilBNMzjIbbdDKM5w8mHBTsKfZIM/bAE8hk=
X-Received: by 2002:a37:bd81:: with SMTP id n123mr11934442qkf.249.1551730458374;
 Mon, 04 Mar 2019 12:14:18 -0800 (PST)
MIME-Version: 1.0
References: <20190304175753.543-1-nishka.dasgupta@yahoo.com> <20190304190311.GE13830@kroah.com>
In-Reply-To: <20190304190311.GE13830@kroah.com>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Tue, 5 Mar 2019 01:44:02 +0530
Message-ID: <CAC4++KBKrACCxsop+Q6TbycpJKQW1yeuA0qWViZ_G9uBn9RehA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: octeon-usb: Add brackets
 to avoid precedence issues
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 5, 2019 at 12:33 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Mon, Mar 04, 2019 at 11:27:53PM +0530, Nishka Dasgupta wrote:
> > Add parentheses around macro arguments to avoid precedence issues. Issue
> > found with Checkpatch.
> >
> > Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> > ---
> >  drivers/staging/octeon-usb/octeon-hcd.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/octeon-usb/octeon-hcd.h b/drivers/staging/octeon-usb/octeon-hcd.h
> > index ae7ae50071ae..0ee74f63fdbf 100644
> > --- a/drivers/staging/octeon-usb/octeon-hcd.h
> > +++ b/drivers/staging/octeon-usb/octeon-hcd.h
> > @@ -51,10 +51,10 @@
> >  #include <asm/bitfield.h>
> >
> >  #define CVMX_USBCXBASE 0x00016F0010000000ull
> > -#define CVMX_USBCXREG1(reg, bid) \
> > +#define CVMX_USBCXREG1((reg), bid) \
>
> I really do not think you changed any "precedence issues" here at all :(

Sorry about that; I won't submit this kind of patch in future.

- Nishka
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190304190311.GE13830%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.

