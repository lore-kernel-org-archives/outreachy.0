X-GM-THRID: 6463264709450661888
X-Received: by 10.107.136.38 with SMTP id k38mr2273119iod.132.1504898915891;
        Fri, 08 Sep 2017 12:28:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.18.76 with SMTP id 73ls2002849itp.22.canary-gmail; Fri, 08
 Sep 2017 12:28:35 -0700 (PDT)
X-Received: by 10.107.200.73 with SMTP id y70mr575493iof.42.1504898915004;
        Fri, 08 Sep 2017 12:28:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504898914; cv=none;
        d=google.com; s=arc-20160816;
        b=j9Vlt5T3olqHJ70QXq++pCnIFYV8L9SxGewr3S91j3iblbB+fm8wZ2/VX8QHfCsfkc
         2pSRJdsBDl8DCf5MxYylvIth5H69qT/cjhziHsL3dkX1F3KVYZJn3qqqUUjGowQJrAQd
         P6HzM0x0nZ1/bFpXVjkD0D6ujcfxp5Ii5IPMEo+meZOM9RtVXXPYLFu0O/V4N06fnJRm
         cotvHEv9GxLpvuD9chun0kH4nNWCmTYAAQ+VkHWBGMcSswJBvhuKM3wlcbQk6RuUGa7r
         QFq/slgo0oBomHn7ZYo8z/ozEVxDsVTxTDgFtAWkgcAfDS6df80OZj1yi4M5Az9+IBzb
         MiCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=XCmqh7oETiR6d9csHy8l0yJFM4v5p+ULOv/AcCCE8e0=;
        b=FjvcyzAu4KqBl02X5ZWnsza6v6FJIKDwK/1t/jFWlmQAtfJhI/eOJ+5FqT/Hr35VC4
         WZ8ecWuOlq5+mQuHxGh6F1RPrjkhcNAPFWkgxf801MmhRCzoLMQiBtpsE1/Nx2wHMWAv
         6kopV7UpD9Ce75X157WjlblVt7Fy6cqk+GrUIIgMpLgANOsyrApz9YHNtvCZgfDAHy8l
         f38y+HmaCQDS+CzFDSYsX3U2nR21sBLmQcPU0SYfvU6G3dI00oVR+LCDnEqdbz15kijL
         bMr15ocWt5tGiTNbS0E/6n5OLAwhufhv6NARA9kCEvMPpj/cUMcpb3nxdbghpvXMm+5P
         lhCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Svq9EA0n;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4003:c06::22a as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <himshijain.hj@gmail.com>
Received: from mail-oi0-x22a.google.com (mail-oi0-x22a.google.com. [2607:f8b0:4003:c06::22a])
        by gmr-mx.google.com with ESMTPS id o65si194952ywf.4.2017.09.08.12.28.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 12:28:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4003:c06::22a as permitted sender) client-ip=2607:f8b0:4003:c06::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Svq9EA0n;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4003:c06::22a as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x22a.google.com with SMTP id r20so20077367oie.0
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 12:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=XCmqh7oETiR6d9csHy8l0yJFM4v5p+ULOv/AcCCE8e0=;
        b=Svq9EA0nw0uodxQej3uW5iDF0Wqwjq7jzX7Uk0iMmCB9/NLTNtZQe3KRXascdcC11k
         GOtMYJ5mVkS9upodrKFIp4YNVq0QBppvIVeTvpw/wvi6Qxeg8Sa+aXWkoGZpM12iYed1
         Iv/5jKUyAzZN6vegImdm1sqL429+mraK82cu+fn13pyMhJvBlY+ACtHzbcD179X3rJms
         69/xp7/8f2DvRMyCApQa+YDNbn50XjnNd84pzgsKgOFvPGTlj4usJHItWaPvdispBb8k
         AXphk3zll0NGxxIpssHGq7m8UpnrSAvb7c1HXlkoUj6tjmEAV/j6LcBtLZgfEZRD41+2
         nHGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=XCmqh7oETiR6d9csHy8l0yJFM4v5p+ULOv/AcCCE8e0=;
        b=KPLnQ8Br2dhBkmavNGFlM2/3jKVb6zdyj1bzyHGM0Nb0aOIIoZkJXgz2otr6aubh6N
         pjAI3IhObO+KEAtaATC8dkVCpl3mQpVr7mse7w6TU28LWoE0kRDv9sJNH0LfVZLF+ix+
         FuIx1YAkLyqLCyW2HhnHryXigIhkRbYOutpF89XIGHR3fIdIwmPU3lhWn3fkya81qkrC
         uAhBSkCEsBgj7s/+Wzdb2kkaK8bE3IcVs32QJU+pIYlR+caQR4Cu4j08Lf/xTNzhjqFw
         cWp+PGWWZlrs3HrhpUIL63ZlRL7mCQkRQPd+Iw1fYl+wVZ8xPK/y0T8CUjOiB7X1Vc3q
         rgiw==
X-Gm-Message-State: AHPjjUiuM6sx1ynR7jSxWE9AEFnn3vNxCXEd9kC9PVCw21v9lQcMU3T1
	ld4KXIBfnP3p3vTAbNC1M88gvCGE+A==
X-Google-Smtp-Source: AOwi7QBjBOxoWvAKKk59+lP6R0gi0Jede667gFHA6GTYkw9DGg1ibnQQNpaHzRHCvyxKhFY9C8Y4B7SupY+rO6+IzTU=
X-Received: by 10.202.195.83 with SMTP id t80mr4440279oif.131.1504898914605;
 Fri, 08 Sep 2017 12:28:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.82.130 with HTTP; Fri, 8 Sep 2017 12:28:34 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709081358500.3165@hadrien>
References: <20170908044752.GA6199@himanshi-Inspiron-5558> <DEB4AC67-43D5-40F9-9495-DB4966A07661@jic23.retrosnub.co.uk>
 <20170908103257.00002165@huawei.com> <2e3476f0-9e7e-2701-220a-5fb178d68d2e@metafoo.de>
 <alpine.DEB.2.20.1709081157590.3165@hadrien> <9590dab0-5bd8-c4d0-1f34-934d3835fade@metafoo.de>
 <alpine.DEB.2.20.1709081232370.3165@hadrien> <bd51f23b-a84d-460d-9a7c-7b3b3213def7@googlegroups.com>
 <alpine.DEB.2.20.1709081358500.3165@hadrien>
From: Himanshi Jain <himshijain.hj@gmail.com>
Date: Sat, 9 Sep 2017 00:58:34 +0530
Message-ID: <CAKJRnmOHBEF=qqfUPV+Dg7Sej-QdjvfOgPAknrWqJ=ofck+c_g@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: iio: adc: Added Space
 around binary op.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

So I would definitely like to work on this.
What do you suggest me to proceed with? Adding comments to the files
having this warning or modifying each MACRO use to pass string to it
(with double quotes) and modifying the MACRO to cope with receiving a
string(not sure how, would want to discuss and propose a solution in
case we want to work with this option).

On Fri, Sep 8, 2017 at 5:33 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Fri, 8 Sep 2017, Himanshi Jain wrote:
>
> >
> > Yeah, I am so sorry. That was too silly of me to just follow the checkpatch
> > warning to think of a string passed as two variables being operated. I would
> > definitely like to work on this so that others do not fall in this trap.
> >
> >
> > So what do you suggest me to proceed with?
> >
> >  1.
> >
> >     If it is about adding comments to the files with these warnings that
> >     these should not be fixed, I could find two more instances for this
> >     warning in drivers/staging/iio/adc/* itself.
> >
> >
> > I have a doubt here, so I tried searching for the checkpatch warnings using:
> >
> > perl scripts/checkpatch.pl -f drivers/staging/iio/*
> >
> > and it gives  nothing but an error (diff: drivers/staging/iio/accel/null: No
> > such file or directory) due to folders contained in this directory. Is there
> > a better way to search that I am missing? While finally I just ran this
> > script for each folder individually with grep error to find two more
> > instances.
> >
> >
> >  1.
> >
> >     Or if it about the API, I am not that clear about what will I have to do
> >     since I am new to this but as far as I could explore  and follow the
> >     tags from :
> >
> > drivers/staging/iio/adc/ad7192.c (line 343 - IIO_DEVICE_ATTR_NAMED)  ->
> > include/linux/iio/sysfs.h (line 88 - IIO_ATTR) ->
> >  include/linux/iio/sysfs.h(line 55 - __ATTR) -> include/linux/sysfs.h(line
> > 101 - __stringify(_name)) - where the implicit conversion of _name to string
> > is being handled.
> >
> > Would this be done by defining a MACRO  - VERIFY_IS_STRING(name) like for
> > mode  VERIFY_OCTAL_PERMISSIONS(perms) in the file  include/linux/kernel.h ?
>
> I think that the idea would be to make the NAMED macro take a string as an
> argument in that particular position.  Then you will have to check how the
> definition of that macro can cope with receiving a string.  There is a
> whole chain of macros involved.  You could perhaps just inline them into
> this definition.  The other option would be to create string variants of
> all of the other macros, but perhaps that would be overkill if there are
> no other uses.
>
> Then you will have to update all the uses of this macro so that they take
> a string.
>
> julia
>
> >
> >
> >
> > On Friday, September 8, 2017 at 4:03:27 PM UTC+5:30, Julia Lawall wrote:
> >
> >
> >       On Fri, 8 Sep 2017, Lars-Peter Clausen wrote:
> >
> >       > On 09/08/2017 11:59 AM, Julia Lawall wrote:
> >       > >
> >       > >
> >       > > On Fri, 8 Sep 2017, Lars-Peter Clausen wrote:
> >       > >
> >       > >> On 09/08/2017 11:32 AM, Jonathan Cameron wrote:
> >       > >>> On Fri, 8 Sep 2017 07:29:06 +0100
> >       > >>> Jonathan Cameron <ji...@jic23.retrosnub.co.uk> wrote:
> >       > >>>
> >       > >>>> On 8 September 2017 05:47:52 BST, Himanshi Jain
> >       <himshi...@gmail.com> wrote:
> >       > >>>>> Added space around(one on each side of) binary
> >       > >>>>> operator(-) as preferred according to kernel
> >       > >>>>> coding style.
> >       > >>>>>
> >       > >>>>> Signed-off-by: Himanshi Jain <himshi...@gmail.com>
> >       > >>>>
> >       > >>>> Take a closer look at that macro. It isn't doing what you
> >       think...
> >       > >>>> To give a hint, changing this breaks userspace.
> >       > >>>
> >       > >>> Ok, I'm bored of this particular one coming up. When you
> >       have
> >       > >>> worked out what is going on Himanshi, would you mind
> >       putting
> >       > >>> together a patch adding a comment describing why it is a
> >       bad
> >       > >>> idea to 'fix' this?  That would be a very useful patch as
> >       > >>> far as I'm concerned :)
> >       > >>>
> >       > >>> There aren't that many cases of this in IIO so adding a
> >       comment
> >       > >>> on each of them is probably reasonable just to avoid
> >       wasting
> >       > >>> people's time on fixing them! (I think we have had more
> >       than
> >       > >>> 5 such goes this year so far...)
> >       > >>>
> >       > >>
> >       > >> I'd much rather fix this API so that you have to put ""
> >       around the name so
> >       > >> that it is clear that it is a string, rather than doing the
> >       implicit
> >       > >> conversion to string using preprocessor magic. Better to
> >       have a
> >       > >> self-documenting API then having to add a comment to each
> >       user of the API.
> >       > >
> >       > > All the DEVICE_ATTR macros use the same strategy.  And the
> >       non-IIO ones,
> >       > > eg DEVICE_ATTR_RW, also use the provided name to construct
> >       the names of
> >       > > the show and store functions, so I don't think a string
> >       would be
> >       > > appropriate.
> >       >
> >       > I'm only suggesting to use a string for the _NAMED macros
> >       where the name is
> >       > not used to construct the identifiers.
> >       >
> >       > In the case where the name is used to construct the
> >       identifiers we don't
> >       > have the issue with false positives since the name must be a
> >       valid
> >       > identifier on its own.
> >
> >       OK, it looks like a good project :)
> >
> >       julia
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/bd51f23b-a84d-460d-9a7c-
> > 7b3b3213def7%40googlegroups.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >

