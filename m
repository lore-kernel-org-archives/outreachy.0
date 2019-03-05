X-GM-THRID: 6664782574497300480
X-Received: by 2002:a25:3881:: with SMTP id f123mr800510yba.19.1551778999203;
        Tue, 05 Mar 2019 01:43:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:4986:: with SMTP id w128ls5875483ywa.7.gmail; Tue, 05
 Mar 2019 01:43:18 -0800 (PST)
X-Google-Smtp-Source: APXvYqx49ZJPNIwYGq4zv8x5n32Ltte3rppro7veLAaC46jfrqrPrpJmld6ZtJJTgu1kRkeWc+bh
X-Received: by 2002:a81:6c48:: with SMTP id h69mr91225ywc.17.1551778998445;
        Tue, 05 Mar 2019 01:43:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551778998; cv=none;
        d=google.com; s=arc-20160816;
        b=meVoImIDZDmrt6poWMEIR2ZHsuPXV+/GQACa4ee1/N6nydtbuGQXXzyE8q6nBWECxF
         bhg3Sbf9Nqn8/+uhjlFrj+ihepHoLe4SnrV16qCxqP1ADBkPKQ5cf6H6HRZr14+IvFBh
         vuO3/+esj/QGEfGBdGYw3MMVvR3BUct6F0AZAo6JGkg33rZOLkKN3xrkJVFnlicKUA7x
         4usEVpcLLFL/yNlpD5B6R96Exkpez3wMbaqiuu/2zmglOOASBVqBXXa/iy4FbXNgI5za
         XrhK8OYOAmqR1Fed+URldKQLwlJLZ2mpY3TZoxKb7LHnZoLVUChtHyCMoB/tGS/2jFE7
         cehA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=P0UkD5ZlVywzhdX6WEF8lwlnHfdW7GrX4YQoeQ1ZkIY=;
        b=ntp7e83OtwZhax1gBHAZwCba/KGl0dhpEIosOmVl6I9ybhK70hZcoc1vcHtj6T1Uuf
         c/7orj0AJTkaK2qK3/Jbs1Q7Fcb10c7AOGLQtuvkBChktRbVHsmDBIIWQ09uotcP1TL7
         y+TLdWeZPzqKSYoVUvgzLDJAxX+8vbZOPhvraXbWtMDM+0dWD3QftjQWeyIVG+slCFMG
         lL1LIC5EFOX79KhHO7rDHvuYfvcsFIMO94z/RaMtQdQE2knciQ1P9gadCPJluwKXOLAL
         R6glnNoWlHibjxFOrsCnn8uMl5ANBKe798h/mndypjgK0xdpp2ya5O5ikW5373Eoc8yx
         10Mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lilA49Qk;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id t128si391739ywa.4.2019.03.05.01.43.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 01:43:18 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lilA49Qk;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x744.google.com with SMTP id x6so4442654qki.6
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 01:43:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=P0UkD5ZlVywzhdX6WEF8lwlnHfdW7GrX4YQoeQ1ZkIY=;
        b=lilA49QkW1TTIkSV5Omezuo927EtR8zUmxHkbEze91JxoB4tkkaii0kvP9tQOUkvwX
         kLtciEapajVYjOCY0hkQfkva7pmZTAUc4uGf10nccbPGXegbCHov+j83dT4q5FjYE90K
         9hMea71vNmWLxmr5J8NXzDYe3mTAaGIBS2grRXXeqDZnCdVTgcluHzi0ppUe646xxA6A
         WNRv4srRbwdU3wbe5bx2TjoDe2y10a++5miPw75lMxEP6HaocFWmvaXKm2Wf1KvkcYZ6
         4fz7PisD3FbJLdGa8ntcahAH/ajYxDcuRrqOnrjeRBHa/sOMvT3rtsLqEIbdNhdruNUS
         T0xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=P0UkD5ZlVywzhdX6WEF8lwlnHfdW7GrX4YQoeQ1ZkIY=;
        b=HxEu9avq6pu16hHmDFfIjGGQemYalfg3V9JND27ScIEpPI2ZEFgR6PPxMEdnVQWdCY
         Xhx4l8NpCPF/H6L3qk0RjPgU7BmjURQBfGmEH5P8JTHupI+jZ8I1Rp6G3rz+ux2FgNzj
         rMbxJK1juWYJLwI7EYy6RKAbBVlpv4MREiR2eiPlw9BRatUPQiHd1nxlzavfnFlAq882
         7uzRJB20fUTC5g+fI7PDpnfSrAAtW3ii2uersQgAmoOz2PWorhI0moYzc/Y0xConIMdV
         EnhCieaxsIQpHwkS2M/JOjHeX7s5R0yi7CS1rCOsiPo4p40AAibfGfBjR7IRlG8Tc/X3
         HHaA==
X-Gm-Message-State: APjAAAWzSzKXRuF7CNfPSaLwhGKQm8bJ1pU7YBg28d4r7fYqePrYvBEP
	VDeU1bZCmZFtqYR44OmZyvSt1piJtn5i/DXOArI=
X-Received: by 2002:ae9:dc84:: with SMTP id q126mr1060378qkf.121.1551778998062;
 Tue, 05 Mar 2019 01:43:18 -0800 (PST)
MIME-Version: 1.0
References: <20190305060005.GA7726@bhagyashri-Lenovo-G570> <20190305074815.GD6158@kroah.com>
In-Reply-To: <20190305074815.GD6158@kroah.com>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Tue, 5 Mar 2019 15:12:40 +0530
Message-ID: <CAOMPgjhUj9jUqmL33eqLaMKfPsO50csyOdr0xMMsnuKewtMiQg@mail.gmail.com>
Subject: Re: [PATCH] staging: fbtft: Avoid CamelCase.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000f31149058355b341"

--000000000000f31149058355b341
Content-Type: text/plain; charset="UTF-8"

Greg, I will create two different patches for above change.

I did not understand the context of `inline function` usage here , can you
more elaborate?

Thanks

On Tue, Mar 5, 2019 at 1:18 PM Greg Kroah-Hartman <
gregkh@linuxfoundation.org> wrote:

> On Tue, Mar 05, 2019 at 11:30:05AM +0530, Bhagyashri Dighole wrote:
> > Fix coding style issues detected by checkpatch.pl `CHECK: Avoid
> > CamelCase`.
> >
> > Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> > ---
> >  drivers/staging/fbtft/fb_watterott.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/fbtft/fb_watterott.c
> b/drivers/staging/fbtft/fb_watterott.c
> > index 0a5206d..7e9c57b 100644
> > --- a/drivers/staging/fbtft/fb_watterott.c
> > +++ b/drivers/staging/fbtft/fb_watterott.c
> > @@ -90,13 +90,13 @@ static int write_vmem(struct fbtft_par *par, size_t
> offset, size_t len)
> >       return 0;
> >  }
> >
> > -#define RGB565toRGB323(c) ((((c) & 0xE000) >> 8) |\
> > +#define rgb565torgb323(c) ((((c) & 0xE000) >> 8) |\
> >                          (((c) & 000600) >> 6) |\
> >                          (((c) & 0x001C) >> 2))
> > -#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
> > +#define rgb565torgb332(c) ((((c) & 0xE000) >> 8) |\
> >                          (((c) & 000700) >> 6) |\
> >                          (((c) & 0x0018) >> 3))
> > -#define RGB565toRGB233(c) ((((c) & 0xC000) >> 8) |\
> > +#define rgb565torgb233(c) ((((c) & 0xC000) >> 8) |\
> >                          (((c) & 000700) >> 5) |\
> >                          (((c) & 0x001C) >> 2))
> >
> > @@ -122,7 +122,7 @@ static int write_vmem_8bit(struct fbtft_par *par,
> size_t offset, size_t len)
> >       for (i = start_line; i <= end_line; i++) {
> >               pos[1] = cpu_to_be16(i);
> >               for (j = 0; j < par->info->var.xres; j++) {
> > -                     buf8[j] = RGB565toRGB332(*vmem16);
> > +                     buf8[j] = rgb565torgb332(*vmem16);
>
> It looks like 2 of those #defines are not even used.  Please make this a
> patch series of two patches, the first one removing the unused #defines,
> and the second changing the name.
>
> But, this is a define, so all CAPS is normal for that.
>
> How about changing this to an inline function instead?  That would allow
> you to name it rgb565_to_rgb332() which is much more understandable and
> provide good typechecking.
>
> thanks,
>
> greg k-h
>

--000000000000f31149058355b341
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Greg, I will create two different patches for above c=
hange.</div><div><br></div><div>I did not understand the context of `inline=
 function` usage here , can you more elaborate?</div><div><br></div><div>Th=
anks<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Mar 5, 2019 at 1:18 PM Greg Kroah-Hartman &lt;<a hr=
ef=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, =
Mar 05, 2019 at 11:30:05AM +0530, Bhagyashri Dighole wrote:<br>
&gt; Fix coding style issues detected by <a href=3D"http://checkpatch.pl" r=
el=3D"noreferrer" target=3D"_blank">checkpatch.pl</a> `CHECK: Avoid<br>
&gt; CamelCase`.<br>
&gt; <br>
&gt; Signed-off-by: Bhagyashri Dighole &lt;<a href=3D"mailto:digholebhagyas=
hri@gmail.com" target=3D"_blank">digholebhagyashri@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/fbtft/fb_watterott.c | 8 ++++----<br>
&gt;=C2=A0 1 file changed, 4 insertions(+), 4 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fb=
tft/fb_watterott.c<br>
&gt; index 0a5206d..7e9c57b 100644<br>
&gt; --- a/drivers/staging/fbtft/fb_watterott.c<br>
&gt; +++ b/drivers/staging/fbtft/fb_watterott.c<br>
&gt; @@ -90,13 +90,13 @@ static int write_vmem(struct fbtft_par *par, size_=
t offset, size_t len)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt; -#define RGB565toRGB323(c) ((((c) &amp; 0xE000) &gt;&gt; 8) |\<br>
&gt; +#define rgb565torgb323(c) ((((c) &amp; 0xE000) &gt;&gt; 8) |\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 (((c) &amp; 000600) &gt;&gt; 6) |\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 (((c) &amp; 0x001C) &gt;&gt; 2))<br>
&gt; -#define RGB565toRGB332(c) ((((c) &amp; 0xE000) &gt;&gt; 8) |\<br>
&gt; +#define rgb565torgb332(c) ((((c) &amp; 0xE000) &gt;&gt; 8) |\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 (((c) &amp; 000700) &gt;&gt; 6) |\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 (((c) &amp; 0x0018) &gt;&gt; 3))<br>
&gt; -#define RGB565toRGB233(c) ((((c) &amp; 0xC000) &gt;&gt; 8) |\<br>
&gt; +#define rgb565torgb233(c) ((((c) &amp; 0xC000) &gt;&gt; 8) |\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 (((c) &amp; 000700) &gt;&gt; 5) |\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 (((c) &amp; 0x001C) &gt;&gt; 2))<br>
&gt;=C2=A0 <br>
&gt; @@ -122,7 +122,7 @@ static int write_vmem_8bit(struct fbtft_par *par, =
size_t offset, size_t len)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D start_line; i &lt;=3D end_line; i=
++) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pos[1] =3D cpu_t=
o_be16(i);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for (j =3D 0; j =
&lt; par-&gt;info-&gt;var.xres; j++) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0buf8[j] =3D RGB565toRGB332(*vmem16);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0buf8[j] =3D rgb565torgb332(*vmem16);<br>
<br>
It looks like 2 of those #defines are not even used.=C2=A0 Please make this=
 a<br>
patch series of two patches, the first one removing the unused #defines,<br=
>
and the second changing the name.<br>
<br>
But, this is a define, so all CAPS is normal for that.<br>
<br>
How about changing this to an inline function instead?=C2=A0 That would all=
ow<br>
you to name it rgb565_to_rgb332() which is much more understandable and<br>
provide good typechecking.<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div>

--000000000000f31149058355b341--

