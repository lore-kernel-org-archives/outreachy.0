X-GM-THRID: 6463264709450661888
X-Received: by 10.25.201.15 with SMTP id z15mr174674lff.40.1504864805975;
        Fri, 08 Sep 2017 03:00:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.219 with SMTP id 88ls121530lfs.16.gmail; Fri, 08 Sep
 2017 03:00:04 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QC0KfEgLl6exEy6O4NFejZvwo7WAzMIL+67U7EaFbjABqyjmjv9eURtYw1vfU0yzM2MaQmb
X-Received: by 10.46.85.22 with SMTP id j22mr179156ljb.29.1504864804534;
        Fri, 08 Sep 2017 03:00:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504864804; cv=none;
        d=google.com; s=arc-20160816;
        b=jJjTfej/F8TTVx4o+K3MZxeUR43N7ak67ZzDXok3kNE3MNNiJvZ41l+It8yxWQw1dO
         rZv/b0O2KU9cFaXZfuQIuLVav7cB6/OjNr2XLNfGni7PtcoJmsfiWs6+DuaIC/YT1C4v
         iy964MksZ6H/NWhyiUA5Jo4/a3OG0mI9dTYH2l7OD1C0lupdGRZcK8mI/LEA3xxDGC2l
         bsY57IWhR/rqKJL5ftpcFO+VuEbi5rDlKIA2HWpuaAj/vFk4NpKfDNC8C98ft9MwB9ZM
         8kcAZ1UiUbwJuQhMkd5rQxdMYbyU2258ZAEqkoKRkySOSizeOxLzErIx7eP8b+VgKdPI
         Q7fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=A7tE2qK1KO6uCH/Thn+Cusbe7kRQ4XpkwH7l1X8ZosU=;
        b=LIufnzYzvtxHhiRjKGpJo9+Sd78KE2eOgaS8Q5KXhJYqpHNvirpgbayVrPYREjtWd9
         kc0zHBPSxvqB1DrvsdgjcI1jZbTBgxaD25Mh+/bBvO//3uzVUr00PZmKkiCLFcKerTHP
         49M37ztRopatBBPF5ue30JQ1Wb0GOolTdUQ600a1bqWQtMatSZZKWPWiScBss2pvSQcQ
         SlzRNytL89jfPtQWAM/GaUloQ4eo45e0y3tgtis+JGRWn4bgU+M2EftYCU6ojWLK7XHc
         KtkbCRCXK2nu/Uv6ohOYYYjuEUcUPR4pOFuovYrIBF8vNYu5xhvsm+h7bqAZ9yjgeifT
         murw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i90si102742wmh.5.2017.09.08.03.00.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 03:00:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,360,1500933600"; 
   d="scan'208";a="290147720"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Sep 2017 12:00:03 +0200
Date: Fri, 8 Sep 2017 11:59:34 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Lars-Peter Clausen <lars@metafoo.de>
cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
    Jonathan Cameron <jic23@jic23.retrosnub.co.uk>, 
    Himanshi Jain <himshijain.hj@gmail.com>, outreachy-kernel@googlegroups.com, 
    Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de, 
    pmeerw@pmeerw.net, gregkh@linuxfoundation.org, linux-iio@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: iio: adc: Added Space
 around binary op.
In-Reply-To: <2e3476f0-9e7e-2701-220a-5fb178d68d2e@metafoo.de>
Message-ID: <alpine.DEB.2.20.1709081157590.3165@hadrien>
References: <20170908044752.GA6199@himanshi-Inspiron-5558> <DEB4AC67-43D5-40F9-9495-DB4966A07661@jic23.retrosnub.co.uk> <20170908103257.00002165@huawei.com> <2e3476f0-9e7e-2701-220a-5fb178d68d2e@metafoo.de>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 8 Sep 2017, Lars-Peter Clausen wrote:

> On 09/08/2017 11:32 AM, Jonathan Cameron wrote:
> > On Fri, 8 Sep 2017 07:29:06 +0100
> > Jonathan Cameron <jic23@jic23.retrosnub.co.uk> wrote:
> >
> >> On 8 September 2017 05:47:52 BST, Himanshi Jain <himshijain.hj@gmail.com> wrote:
> >>> Added space around(one on each side of) binary
> >>> operator(-) as preferred according to kernel
> >>> coding style.
> >>>
> >>> Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
> >>
> >> Take a closer look at that macro. It isn't doing what you think...
> >> To give a hint, changing this breaks userspace.
> >
> > Ok, I'm bored of this particular one coming up. When you have
> > worked out what is going on Himanshi, would you mind putting
> > together a patch adding a comment describing why it is a bad
> > idea to 'fix' this?  That would be a very useful patch as
> > far as I'm concerned :)
> >
> > There aren't that many cases of this in IIO so adding a comment
> > on each of them is probably reasonable just to avoid wasting
> > people's time on fixing them! (I think we have had more than
> > 5 such goes this year so far...)
> >
>
> I'd much rather fix this API so that you have to put "" around the name so
> that it is clear that it is a string, rather than doing the implicit
> conversion to string using preprocessor magic. Better to have a
> self-documenting API then having to add a comment to each user of the API.

All the DEVICE_ATTR macros use the same strategy.  And the non-IIO ones,
eg DEVICE_ATTR_RW, also use the provided name to construct the names of
the show and store functions, so I don't think a string would be
appropriate.

julia

>
> > Jonathan
> >
> >>
> >> Jonathan
> >>
> >>
> >>> ---
> >>> drivers/staging/iio/adc/ad7192.c | 2 +-
> >>> 1 file changed, 1 insertion(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/staging/iio/adc/ad7192.c
> >>> b/drivers/staging/iio/adc/ad7192.c
> >>> index d11c6de..1aee662 100644
> >>> --- a/drivers/staging/iio/adc/ad7192.c
> >>> +++ b/drivers/staging/iio/adc/ad7192.c
> >>> @@ -341,7 +341,7 @@ static int ad7192_setup(struct ad7192_state *st,
> >>> }
> >>>
> >>> static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
> >>> -			     in_voltage-voltage_scale_available,
> >>> +			     in_voltage - voltage_scale_available,
> >>> 			     0444, ad7192_show_scale_available, NULL, 0);
> >>>
> >>> static IIO_DEVICE_ATTR(in_voltage_scale_available, 0444,
> >>
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/2e3476f0-9e7e-2701-220a-5fb178d68d2e%40metafoo.de.
> For more options, visit https://groups.google.com/d/optout.
>

