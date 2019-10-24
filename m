X-GM-THRID: 6751148085003419648
X-Received: by 2002:ac8:682:: with SMTP id f2mr1913637qth.149.1571941806602;
        Thu, 24 Oct 2019 11:30:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:e409:: with SMTP id y9ls2336696qkf.1.gmail; Thu, 24 Oct
 2019 11:30:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqybD5cYY9Am52yyxyZy+uvDC9+PeDyHld/rhH/df/Hdw5aPm3ie8E7v5Hp4KejXQlLbKtbL
X-Received: by 2002:a37:5bc2:: with SMTP id p185mr15224557qkb.74.1571941805344;
        Thu, 24 Oct 2019 11:30:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571941805; cv=none;
        d=google.com; s=arc-20160816;
        b=R0ZZ+pkgOg3u/hv7Ii0ha85BFbzhDbHZkTwZE6IqpCCgug7rIcuZDJ0gEt5aTBmvog
         sxbvaZJySXJR7ttpNY3QvQpwO4/qc/Oikf2jAmMlGsJY4RiIXggwgta78yKbbJRUWYUU
         NuVr1ZhU+R8V3uZaPSAaf9079UOJcUm0gp+FqijBNEyvoB2ogE+mlM6WtdoUI2PXYVD1
         lwjwfnmMNXSAl85vZH1lTmnLs3iAFUo9KYugHJxQ3AD9266kFpzMAJ44sUIfWjH8E0P/
         hNM86MPkKr9Vb2mZ977EvkH76xzt7uIKpEcGJH9VSAH0A2IIXs0JtKY8AyaIouoSyFh0
         2sDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=e2lUYReVvm/vbwFd99VCl+PBYe17k6NzTlREkZJN2E4=;
        b=GIO4RmL+E6LzXKyCNyrdfSg6npJDj+aX/1uMJq6j4zbhG8mUieUKOq9vPRFPFHkIIO
         rHyIXkkjfp0pyuJmOrUKo9UhVwr/+S4Q29z8IJEF19lmwYqbTRF1WZLeeg0H3QMPUymz
         K5YCFk44DAgQMNA2eEtB2UlCGOQ6PRIAJi9nb9VwqiN6BN8piK6gpjipaZ1d1HyqAMV8
         /fx2z5F9UC3zzQ1SfFnWEV+sLkA6F8uZ81xhB8vdsiUTEd+nGzW26i2D3bafHG4ODgQw
         +pU3jBXYBFPMWyPqQgMMorQH09v3jz/zNRsIaVwEQfKSYqWOvfaoTHcA3SOSur3y+oku
         1RGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sSG27bnY;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id r28si882527qtu.0.2019.10.24.11.30.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 11:30:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sSG27bnY;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe43.google.com with SMTP id b1so16835321vsr.10
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 11:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=e2lUYReVvm/vbwFd99VCl+PBYe17k6NzTlREkZJN2E4=;
        b=sSG27bnYYORIMtDalCeCaKsbPjzQBI14KZ+OhmoWlAg8fuHt1p3n5HrWY+bAPoVlT6
         uRLYkoGwyjz8pKQuQaq8OrfiG76PociReCOooUOzCxi/9SSpqEXG/K6fFD44HYqcjYuc
         ASvX9ZDTnTPYrini/CeE/aNQ+d5FNQXYeoA21KheRnr+shySHrfIiEq6EAvQCUyEKznp
         FGvuaSEgg+T0H2LlaWjKPtKdy8+9aJGxqTZ7fzwI9UwPE4Hdfa0F9URPVd/41176EhzX
         7O9lhrRO1uByKg7dryOIUt3lMGbcd55iYy5/uv/9mm+rMsau65WxJh9uxD1rkWN3R7pA
         6/kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=e2lUYReVvm/vbwFd99VCl+PBYe17k6NzTlREkZJN2E4=;
        b=QcgpkztL576d3AxGZRIucZ/ewNLrhlwZzt3Aw8OJsmWN07iGQ9t3GRbOzn5QRq8G25
         IFXTEnRM89uwBW7VFoDO/NoPb7phIzmkx++2FlDBs422ZJIKJ17cKZpT/Ey6cgDqGXvG
         0PEmnGHFXRB1q+r1BgCH4cx3R5FwMl/VaDAX5R0+cDH7v8h96o4i6Y5cFxtlBzhjywUZ
         n1pU8AzeRJZDMosbLy6wegWnirTPCASu9INi2IMn0uBw9u8ZRHw2n793kBx3WfYor9a+
         RCuVbxNvFwJkqtwaFTZMHxrCe/u491rLbbpXyEU9pmVX1HS6PPp8ixqqZ2RZF3MYLmHZ
         kMcw==
X-Gm-Message-State: APjAAAXJM0IEsVgB98VcxJ+T0J5fGtdubpnRo7w1F9pCzs2vk4vxaDxE
	vEAZHZxNmSnj7sScoWIhsl2qpDKfIirxiDzd9Ek=
X-Received: by 2002:a67:6bc1:: with SMTP id g184mr9852927vsc.161.1571941804949;
 Thu, 24 Oct 2019 11:30:04 -0700 (PDT)
MIME-Version: 1.0
References: <20191023234230.GA4485@ik-ubuntu> <b4d518c4-602a-9db3-4370-e26dfb780637@mev.co.uk>
 <CANR89jYTpnXXZXBkmYwox-i+ZF_0bSWWCCTLOpjaYKJpXJkEZw@mail.gmail.com>
 <CANR89jaTcgtXzkPH-O6vTNoCjQXyHSTe-zY35y=O9p9WBQ=X7A@mail.gmail.com> <alpine.DEB.2.21.1910242021470.2621@hadrien>
In-Reply-To: <alpine.DEB.2.21.1910242021470.2621@hadrien>
From: evan chime <chime.evan.dri.devel@gmail.com>
Date: Thu, 24 Oct 2019 19:29:54 +0100
Message-ID: <CANR89jYskb=4rJ6r=WFS2QZRonHFs9_oiHok7SqC5iWCnc4qBg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 1/7] Staging: comedi: Remove
 wrapper function declarartion
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000e4541a0595ac3813"

--000000000000e4541a0595ac3813
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Julia

Please what does it mean by don=E2=80=99t top the post? I normally do reply=
 all
from my gmail

Kind regards
Evan

On Thu, 24 Oct 2019 at 19:22, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Thu, 24 Oct 2019, evan chime wrote:
>
> > So should we maybe email the names on the TODOs, next time, to clarify
> the
> > tasks
>
> Please don't top post.
>
> julia
>
> >
> > On Thu, 24 Oct 2019 at 10:53, evan chime <chime.evan.dri.devel@gmail.co=
m
> >
> > wrote:
> >       Hello Ian
> >
> > Thanks for the reply. Got it
> >
> > Kind Regards
> > Evan
> >
> > On Thu, 24 Oct 2019 at 10:38, Ian Abbott <abbotti@mev.co.uk> wrote:
> >       On 24/10/2019 00:42, Evan Chime wrote:
> >       > Remove wrapper function "comedi_buf_map_get" declaration
> >       > as part of remove all wrappers in
> >       drivers/staging/comedi/TODO
> >       >
> >       > Signed-off-by: Evan Chime
> >       <chime.evan.dri.devel@gmail.com>
> >       > ---
> >       >   drivers/staging/comedi/comedi_internal.h | 1 -
> >       >   1 file changed, 1 deletion(-)
> >       >
> >       > diff --git a/drivers/staging/comedi/comedi_internal.h
> >       b/drivers/staging/comedi/comedi_internal.h
> >       > index 515f293a5d26..df3b1af109f7 100644
> >       > --- a/drivers/staging/comedi/comedi_internal.h
> >       > +++ b/drivers/staging/comedi/comedi_internal.h
> >       > @@ -28,7 +28,6 @@ int comedi_buf_alloc(struct
> >       comedi_device *dev, struct comedi_subdevice *s,
> >       >                    unsigned long new_size);
> >       >   void comedi_buf_reset(struct comedi_subdevice *s);
> >       >   bool comedi_buf_is_mmapped(struct comedi_subdevice
> >       *s);
> >       > -void comedi_buf_map_get(struct comedi_buf_map *bm);
> >       >   int comedi_buf_map_put(struct comedi_buf_map *bm);
> >       >   int comedi_buf_map_access(struct comedi_buf_map *bm,
> >       unsigned long offset,
> >       >                         void *buf, int len, int write);
> >       >
> >
> >       Sorry, I don't really see the point of this patch series.
> >       For a start,
> >       the comedi_buf_map functions were added a long time after
> >       the TODO file
> >       was written.  I can't even remember what the "remove all
> >       wrappers" line
> >       in the TODO file is referring to.
> >
> >       Besides that, as pointed out by Julia, the
> <https://www.google.com/maps/search/Besides+that,+as+pointed+out+by+Julia=
,+the+?entry=3Dgmail&source=3Dg>patches
> have
> >       been ordered in
> >       such a way as to break the build between the patches.
> >
> >       --
> >       -=3D( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk
> >       )=3D-
> >       -=3D( MEV Ltd. is a company registered in England & Wales.
> >       )=3D-
> >       -=3D( Registered number: 02862268.  Registered address:
> >       )=3D-
> >       -=3D( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK.
> >       )=3D-
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/CANR89jaTcgtXzkPH-O6vTNo
> > CjQXyHSTe-zY35y%3DO9p9WBQ%3DX7A%40mail.gmail.com.
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.191024=
2021470.2621%40hadrien
> .
>

--000000000000e4541a0595ac3813
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Hello=C2=A0Julia</div></div><div dir=3D"auto"><br></=
div><div dir=3D"auto">Please what does it mean by don=E2=80=99t top the pos=
t? I normally do reply all from my gmail=C2=A0</div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">Kind regards=C2=A0</div><div dir=3D"auto">Evan=C2=A0=
</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Thu, 24 Oct 2019 at 19:22, Julia Lawall &lt;<a href=3D"mailto:julia=
.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><br>
<br>
On Thu, 24 Oct 2019, evan chime wrote:<br>
<br>
&gt; So should we maybe email the names on the TODOs, next time, to clarify=
 the<br>
&gt; tasks<br>
<br>
Please don&#39;t top post.<br>
<br>
julia<br>
<br>
&gt;<br>
&gt; On Thu, 24 Oct 2019 at 10:53, evan chime &lt;<a href=3D"mailto:chime.e=
van.dri.devel@gmail.com" target=3D"_blank">chime.evan.dri.devel@gmail.com</=
a>&gt;<br>
&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Hello=C2=A0Ian<br>
&gt;<br>
&gt; Thanks for the reply. Got it<br>
&gt;<br>
&gt; Kind=C2=A0Regards<br>
&gt; Evan=C2=A0<br>
&gt;<br>
&gt; On Thu, 24 Oct 2019 at 10:38, Ian Abbott &lt;<a href=3D"mailto:abbotti=
@mev.co.uk" target=3D"_blank">abbotti@mev.co.uk</a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On 24/10/2019 00:42, Evan Chime wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Remove wrapper function &quot;comedi_bu=
f_map_get&quot; declaration<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; as part of remove all wrappers in<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0drivers/staging/comedi/TODO<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Evan Chime<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:chime.evan.dri.devel@g=
mail.com" target=3D"_blank">chime.evan.dri.devel@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0drivers/staging/comedi/come=
di_internal.h | 1 -<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A01 file changed, 1 deletion(=
-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/comedi/com=
edi_internal.h<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/comedi/comedi_internal.h<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index 515f293a5d26..df3b1af109f7 100644=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/comedi/comedi_int=
ernal.h<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/comedi/comedi_int=
ernal.h<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -28,7 +28,6 @@ int comedi_buf_alloc(=
struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0comedi_device *dev, struct comedi_subdevice =
*s,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long new_size);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0void comedi_buf_reset(struc=
t comedi_subdevice *s);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0bool comedi_buf_is_mmapped(=
struct comedi_subdevice<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0*s);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -void comedi_buf_map_get(struct comedi_=
buf_map *bm);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0int comedi_buf_map_put(stru=
ct comedi_buf_map *bm);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0int comedi_buf_map_access(s=
truct comedi_buf_map *bm,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned long offset,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0void *buf, int len, int=
 write);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Sorry, I don&#39;t really see the point of t=
his patch series.=C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0For a start,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0the comedi_buf_map functions were added a lo=
ng time after<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0the TODO file<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0was written.=C2=A0 I can&#39;t even remember=
 what the &quot;remove all<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0wrappers&quot; line<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0in the TODO file is referring to.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://www.google.com/maps/searc=
h/Besides+that,+as+pointed+out+by+Julia,+the+?entry=3Dgmail&amp;source=3Dg"=
>Besides that, as pointed out by Julia, the </a>patches have<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0been ordered in<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0such a way as to break the build between the=
 patches.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-=3D( Ian Abbott &lt;<a href=3D"mailto:abbot=
ti@mev.co.uk" target=3D"_blank">abbotti@mev.co.uk</a>&gt; || Web: <a href=
=3D"http://www.mev.co.uk" rel=3D"noreferrer" target=3D"_blank">www.mev.co.u=
k</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0)=3D-<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-=3D( MEV Ltd. is a company registered in En=
gland &amp; Wales.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0)=3D-<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-=3D( Registered number: 02862268.=C2=A0 Reg=
istered address:=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0)=3D-<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-=3D( 15 West Park Road, Bramhall, STOCKPORT=
, SK7 3JZ, UK.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0)=3D-<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups<br>
&gt; &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an<br>
&gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups=
.com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<=
br>
&gt; To view this discussion on the web visithttps://<a href=3D"http://grou=
ps.google.com/d/msgid/outreachy-kernel/CANR89jaTcgtXzkPH-O6vTNo" rel=3D"nor=
eferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-kernel/CANR8=
9jaTcgtXzkPH-O6vTNo</a><br>
&gt; CjQXyHSTe-zY35y%3DO9p9WBQ%3DX7A%<a href=3D"http://40mail.gmail.com" re=
l=3D"noreferrer" target=3D"_blank">40mail.gmail.com</a>.<br>
&gt;<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1910242021470.2621%40hadrien" r=
el=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outre=
achy-kernel/alpine.DEB.2.21.1910242021470.2621%40hadrien</a>.<br>
</blockquote></div></div>

--000000000000e4541a0595ac3813--

