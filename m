X-GM-THRID: 6250059411855769600
X-Received: by 10.182.33.98 with SMTP id q2mr28541945obi.28.1455205788914;
        Thu, 11 Feb 2016 07:49:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.191.9 with SMTP id gu9ls543071obc.57.gmail; Thu, 11 Feb
 2016 07:49:45 -0800 (PST)
X-Received: by 10.182.29.129 with SMTP id k1mr42507589obh.23.1455205785588;
        Thu, 11 Feb 2016 07:49:45 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ob0-x235.google.com (mail-ob0-x235.google.com. [2607:f8b0:4003:c01::235])
        by gmr-mx.google.com with ESMTPS id 17si223106igj.2.2016.02.11.07.49.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 07:49:45 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::235 as permitted sender) client-ip=2607:f8b0:4003:c01::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::235 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x235.google.com with SMTP id is5so78869660obc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 07:49:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=VYFIsaebavWAcEen+PzwRdoneJMhVgej06irCMXzPDU=;
        b=pqSE2QJbxVOuzF7IQwnb4yIMF5Qg/ZaIl+bUx6gkz0sWG/H+occAuCZe5nC3kXdDfV
         3PBWQiiVyl/B6uYiTagd0rylCvpsSSERWcKM2jgKwHq7bGNFsE/G6ig4DdiSNiIhzPw7
         2in531L0wfu4hQj5AYrCGhb3325zpr1RbdLa0kZYLrYTh7x2cQK/is58/EU8kwAypGId
         sOr57sw8AH1VFJLzil/Du2UUmtgEDIttrgUSugvyeJVJhbhZqO1go+6amny+3mM9uKNm
         k7z7ycdIShkP9s9DFEoeyLCKj35SFs2q45CFzsp94LKvDa7/CqGrRUfpoPwHsCaF94O9
         K/zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=VYFIsaebavWAcEen+PzwRdoneJMhVgej06irCMXzPDU=;
        b=fBkDKr6ge39WsSqZJU27HFTOTFT6ZzXfXBgC5PlGqyCkqsI7EuAmMAVBbBjfj7LEjV
         /Vjh3NCtiTAHNkpEkVoNvWhFUyWwkzi+XmMIWo/gHn54splnmugonfQryNQKBs17P9TM
         1fxYpnwHXwyYMEB9z8LUxtkiqYuztNq8Qs4EAXWckYvVVEiN8GUk6tGGI19yy1ng4ZX4
         nq/thtjEqzXwxU4AUp6s8AHOe26owVuERwTWLjHkrKFjBJwaChnKCfhCe7xxcFkT5ik6
         J0WyrivWQdFLZhtM1cHIusfrThK5GlmBIBnZdcTbvS548FVYOkgcPT6WfcMZ2JNhjxMJ
         HLiQ==
X-Gm-Message-State: AG10YOTN685QO/h765afDRomPhakSTc1GIcutFZBXU1z7P973BMQgRn0h/jeWfmGImn1NbwrkKv0P7LW2VHS1g==
MIME-Version: 1.0
X-Received: by 10.60.43.170 with SMTP id x10mr49011272oel.68.1455205779699;
 Thu, 11 Feb 2016 07:49:39 -0800 (PST)
Received: by 10.202.170.195 with HTTP; Thu, 11 Feb 2016 07:49:39 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602111644580.2508@hadrien>
References: <20160211204155.GA3822@janani-Inspiron-3521>
	<alpine.DEB.2.10.1602111644580.2508@hadrien>
Date: Thu, 11 Feb 2016 10:49:39 -0500
Message-ID: <CANnt6Xm6QPL7gq7NHS7XxcUKVTkdnEGBnYm4TVwqav7ezf3_Qw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: Remove parentheses on
 the right hand side of assignment
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a11330c9495e6dc052b807f12

--001a11330c9495e6dc052b807f12
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 11, 2016 at 10:45 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Thu, 11 Feb 2016, Janani Ravichandran wrote:
>
> > Remove parentheses on the right hand side of assignment as they are not
> > needed. Semantic patch used:
> >
> > @@
> > expression a, b, c, d;
> > @@
> >
> > (
> >   a = (c == d)
> > |
> >   a =
> > - (
> >   b
> > - )
>
> Just for information, not because you should do anything about it, you
> could write this semantic patch with three metavariables rather than four.
> The metavariables in the different branches of a disjunction don't
> interfere with each other.
>
Sure, I'll write my next patch with three variables instead of four. Thanks
for
telling me this.

Janani.

>
> julia
>
> > )
> > Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> > ---
> >  drivers/staging/iio/accel/lis3l02dq_core.c | 4 ++--
> >  drivers/staging/iio/cdc/ad7746.c           | 4 ++--
> >  2 files changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/iio/accel/lis3l02dq_core.c
> b/drivers/staging/iio/accel/lis3l02dq_core.c
> > index 7939ae6..7a6fed3 100644
> > --- a/drivers/staging/iio/accel/lis3l02dq_core.c
> > +++ b/drivers/staging/iio/accel/lis3l02dq_core.c
> > @@ -567,7 +567,7 @@ static int lis3l02dq_read_event_config(struct
> iio_dev *indio_dev,
> >  {
> >       u8 val;
> >       int ret;
> > -     u8 mask = (1 << (chan->channel2 * 2 + (dir == IIO_EV_DIR_RISING)));
> > +     u8 mask = 1 << (chan->channel2 * 2 + (dir == IIO_EV_DIR_RISING));
> >
> >       ret = lis3l02dq_spi_read_reg_8(indio_dev,
> >                                      LIS3L02DQ_REG_WAKE_UP_CFG_ADDR,
> > @@ -622,7 +622,7 @@ static int lis3l02dq_write_event_config(struct
> iio_dev *indio_dev,
> >       u8 val, control;
> >       u8 currentlyset;
> >       bool changed = false;
> > -     u8 mask = (1 << (chan->channel2 * 2 + (dir == IIO_EV_DIR_RISING)));
> > +     u8 mask = 1 << (chan->channel2 * 2 + (dir == IIO_EV_DIR_RISING));
> >
> >       mutex_lock(&indio_dev->mlock);
> >       /* read current control */
> > diff --git a/drivers/staging/iio/cdc/ad7746.c
> b/drivers/staging/iio/cdc/ad7746.c
> > index 2c5d277..5771d4ee 100644
> > --- a/drivers/staging/iio/cdc/ad7746.c
> > +++ b/drivers/staging/iio/cdc/ad7746.c
> > @@ -529,8 +529,8 @@ static int ad7746_write_raw(struct iio_dev
> *indio_dev,
> >
> >               val /= 338646;
> >
> > -             chip->capdac[chan->channel][chan->differential] = (val > 0
> ?
> > -                     AD7746_CAPDAC_DACP(val) | AD7746_CAPDAC_DACEN : 0);
> > +             chip->capdac[chan->channel][chan->differential] = val > 0 ?
> > +                     AD7746_CAPDAC_DACP(val) | AD7746_CAPDAC_DACEN : 0;
> >
> >               ret = i2c_smbus_write_byte_data(chip->client,
> >                       AD7746_REG_CAPDACA,
> > --
> > 2.5.0
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20160211204155.GA3822%40janani-Inspiron-3521
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a11330c9495e6dc052b807f12
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Feb 11, 2016 at 10:45 AM, Julia Lawall <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.f=
r</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">=
<br>
<br>
On Thu, 11 Feb 2016, Janani Ravichandran wrote:<br>
<br>
&gt; Remove parentheses on the right hand side of assignment as they are no=
t<br>
&gt; needed. Semantic patch used:<br>
&gt;<br>
&gt; @@<br>
&gt; expression a, b, c, d;<br>
&gt; @@<br>
&gt;<br>
&gt; (<br>
&gt;=C2=A0 =C2=A0a =3D (c =3D=3D d)<br>
&gt; |<br>
&gt;=C2=A0 =C2=A0a =3D<br>
&gt; - (<br>
&gt;=C2=A0 =C2=A0b<br>
&gt; - )<br>
<br>
</span>Just for information, not because you should do anything about it, y=
ou<br>
could write this semantic patch with three metavariables rather than four.<=
br>
The metavariables in the different branches of a disjunction don&#39;t<br>
interfere with each other.<br></blockquote><div>Sure, I&#39;ll write my nex=
t patch with three variables instead of four. Thanks for <br></div><div>tel=
ling me this.<br><br></div><div>Janani. <br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; )<br>
&gt; Signed-off-by: Janani Ravichandran &lt;<a href=3D"mailto:janani.rvchnd=
rn@gmail.com">janani.rvchndrn@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/iio/accel/lis3l02dq_core.c | 4 ++--<br>
&gt;=C2=A0 drivers/staging/iio/cdc/ad7746.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0| 4 ++--<br>
&gt;=C2=A0 2 files changed, 4 insertions(+), 4 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/iio/accel/lis3l02dq_core.c b/drivers/stag=
ing/iio/accel/lis3l02dq_core.c<br>
&gt; index 7939ae6..7a6fed3 100644<br>
&gt; --- a/drivers/staging/iio/accel/lis3l02dq_core.c<br>
&gt; +++ b/drivers/staging/iio/accel/lis3l02dq_core.c<br>
&gt; @@ -567,7 +567,7 @@ static int lis3l02dq_read_event_config(struct iio_=
dev *indio_dev,<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 val;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int ret;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0u8 mask =3D (1 &lt;&lt; (chan-&gt;channel2 * 2 + =
(dir =3D=3D IIO_EV_DIR_RISING)));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0u8 mask =3D 1 &lt;&lt; (chan-&gt;channel2 * 2 + (=
dir =3D=3D IIO_EV_DIR_RISING));<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D lis3l02dq_spi_read_reg_8(indio_dev,<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LIS3L02DQ_RE=
G_WAKE_UP_CFG_ADDR,<br>
&gt; @@ -622,7 +622,7 @@ static int lis3l02dq_write_event_config(struct iio=
_dev *indio_dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 val, control;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 currentlyset;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0bool changed =3D false;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0u8 mask =3D (1 &lt;&lt; (chan-&gt;channel2 * 2 + =
(dir =3D=3D IIO_EV_DIR_RISING)));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0u8 mask =3D 1 &lt;&lt; (chan-&gt;channel2 * 2 + (=
dir =3D=3D IIO_EV_DIR_RISING));<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0mutex_lock(&amp;indio_dev-&gt;mlock);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* read current control */<br>
&gt; diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cd=
c/ad7746.c<br>
&gt; index 2c5d277..5771d4ee 100644<br>
&gt; --- a/drivers/staging/iio/cdc/ad7746.c<br>
&gt; +++ b/drivers/staging/iio/cdc/ad7746.c<br>
&gt; @@ -529,8 +529,8 @@ static int ad7746_write_raw(struct iio_dev *indio_=
dev,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0val /=3D 338646;=
<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0chip-&gt;capdac[chan-=
&gt;channel][chan-&gt;differential] =3D (val &gt; 0 ?<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0AD7746_CAPDAC_DACP(val) | AD7746_CAPDAC_DACEN : 0);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0chip-&gt;capdac[chan-=
&gt;channel][chan-&gt;differential] =3D val &gt; 0 ?<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0AD7746_CAPDAC_DACP(val) | AD7746_CAPDAC_DACEN : 0;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D i2c_smbu=
s_write_byte_data(chip-&gt;client,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0AD7746_REG_CAPDACA,<br>
&gt; --<br>
&gt; 2.5.0<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20160211204155.GA3822%40janani-Inspiron-35=
21" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/=
outreachy-kernel/20160211204155.GA3822%40janani-Inspiron-3521</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--001a11330c9495e6dc052b807f12--

