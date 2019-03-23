X-GM-THRID: 6671492660700643328
X-Received: by 2002:adf:ea88:: with SMTP id s8mr9219418wrm.300.1553330843844;
        Sat, 23 Mar 2019 01:47:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:db08:: with SMTP id s8ls1710066wri.16.gmail; Sat, 23 Mar
 2019 01:47:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzHriVrD3iBwH10728hg0FAnFmLeg9w8umIS84HGMIP8kYWTQhDRiTPLDovh9z+pXCYmLpq
X-Received: by 2002:adf:f803:: with SMTP id s3mr8813100wrp.54.1553330842782;
        Sat, 23 Mar 2019 01:47:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553330842; cv=none;
        d=google.com; s=arc-20160816;
        b=zIhdfsTMUzDqFSy/qjeUu8Hp7mdfsahyZuc+0AkbOvNKF7DrMfYimyS7OYB1hoXUtZ
         MXWdRhSud6R/3D4V1DLes4Xn3PoFGpyp6J8OM5eVqkvhtn1yw8c10k4H6/IX8qbkOQ1D
         G3P8pOAHBhbvJeW7VsECBtBWLym7jvT3CYuqcc051tUGaPtKIriIAdoYB3DJHEyR6ZoP
         xyiCixyTT6MdquEwvKLYG9Nm1sNbc2WySkDl1nIRfP9Dr0YV2fn7ZMtrtiuQjQfX9IOV
         TtRGP0wuzPVTFXevKMrEGoaOuN2qS+dY6C0kO+YOQVHF8DPr9yZzubtxSwc9uAe74YFD
         Yn9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+I+rSrUqRl6bbrBZ7YVcMqR8YxcawwtB/spaJT5Pzak=;
        b=ROgXm9hi+iqD179qlWJsQ3fp0zNFmyzz+2zLssjz7Ipf50z3gbRbaemgw1nTvmvDim
         TdoGfIQ4jFGwnuZXTgHSEod0ims2W2aTi0nWs3sZLIo67jEjoIuckSfF9nAe4neXQjgn
         Gt8f3HwqifFsxvQHayaY3StxpIiUmZP/YaKhqaiJ2LLbAYUHru7IQwaNzXJH5FVhwkeL
         b8YZNfqCer4zHpkoNr8CJpV0L8cB55cJ9m+50jICj1nRfUlPqRZNZUQZuC5ltGyuKsVG
         9soK1JrKnn7U4Zi+IXsdAZI8t4tZskh41T0Vi0rv0oTyGncXHCkqoUh9aenkooFUWa++
         ReVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=foXaxpKh;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id y192si392768wmd.1.2019.03.23.01.47.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 01:47:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=foXaxpKh;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x22b.google.com with SMTP id r24so2864947ljg.3
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 01:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+I+rSrUqRl6bbrBZ7YVcMqR8YxcawwtB/spaJT5Pzak=;
        b=foXaxpKhgJdbNU1/Y+SRrQ3xzS1ZtulHAUNDafHt5mn13MYD4y0mFnh+sYmcX31izj
         XvS3TVkHh0lo0yEjhYnKDuk4UFRs3eq4lObu5daQpoCCgwBdsoa/U8IAuUrEUKToUezk
         Yl19H2yb/HGlzHre9XlF28UWonmG8CDuHEUGlPqyQX96rk1kbd8I23fHbOFYIMwpD+9T
         aCGzrBHA6x/IUS6YBxHeBDEYlo0KcgBfvuOyXcmRiif4SO5LVLLDmYzckzvJr6/H8oOD
         bovV9CfGFOzgOuQX0lbZPoPyeuhMhxPfVT0Ha32wv4EnJ4ALoxkDGZPAngeqqsyZEAvr
         b99g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+I+rSrUqRl6bbrBZ7YVcMqR8YxcawwtB/spaJT5Pzak=;
        b=LiXHUKRSckfWxgrsBvI2vaARaa6mMO+kWWDkJI4tyR4MHG0jxP5lA9iu8Fcuk+Znko
         tZ/BlFCMSgbCnhmCEplInE3r2CKshJ88D3jTGw4dWw0xU5SJ85thQdVxmz0ixVSivwGw
         0ctD8uLnAI+r9kXSP7HEWYcM8XYaLNkk8SQzRVt1EQ2AbTupKFXftAbCE+k3OvJHO7IP
         DeNI6ne6Fr/81M6BpopEMaxkrBk+mU+q98Dv5/N9XhJuYloYZ4hi4ORl+LhYC3o3kOtd
         UVdmmafyO9nXOOWWVLFBVJy2cxhdeQxHgpVRzXEfK+lNoDCz4LSP4DfLf0dA5UapNJnJ
         mTwA==
X-Gm-Message-State: APjAAAXoZw/h9dCU4xzHGtyjZ0fs8mGs+NrCV2cmV6KRzpbKerBEKbqc
	lxD6oR6cg6XNOVSlOPc+L2yn9LSPXLIRq0V88nyv6A==
X-Received: by 2002:a2e:2f04:: with SMTP id v4mr7672580ljv.129.1553330842553;
 Sat, 23 Mar 2019 01:47:22 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1553327467.git.payal.s.kshirsagar.98@gmail.com>
 <6b2beffe41d8256284179eda6eadd8b9cf0a24fb.1553327467.git.payal.s.kshirsagar.98@gmail.com>
 <alpine.DEB.2.21.1903230910120.2537@hadrien> <CANTOzWFyaovbYWFXJZhwL3LygV-As8CTbWOKR7K0eY50uj8ryg@mail.gmail.com>
 <alpine.DEB.2.21.1903230942200.2537@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903230942200.2537@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sat, 23 Mar 2019 14:17:10 +0530
Message-ID: <CANTOzWHuq3Nxb+fFnJ6PovgfOhxdo2gu38kzBsG0XHAq-5FcOQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: rtl8712: avoid camelcase
 variable name 'bPowerOn'
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000016d5ae0584bf05a1"

--00000000000016d5ae0584bf05a1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Mar 23, 2019, 2:12 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 23 Mar 2019, Payal Kshirsagar wrote:
>
> >
> >
> > On Sat, 23 Mar 2019 at 13:43, Julia Lawall <julia.lawall@lip6.fr> wrote=
:
> >       When you make a series, it is nice to make a cover letter as
> >       well, so that
> >       one can see the scope of the changes all at once.  see the
> >       tutorial if you
> >       don't know how to do this.
> >
> > Sending.
> >
> >       On Sat, 23 Mar 2019, Payal Kshirsagar wrote:
> >
> >       > Eliminate camelcase variable names to fix the style issue =E2=
=80=93
> >       =E2=80=98avoid
> >       > camelcase=E2=80=99
> >       >
> >       > Signed-off-by: Payal Kshirsagar
> >       <payal.s.kshirsagar.98@gmail.com>
> >       > ---
> >       >  drivers/staging/rtl8712/rtl8712_efuse.c | 4 ++--
> >       >  1 file changed, 2 insertions(+), 2 deletions(-)
> >       >
> >       > diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c
> >       b/drivers/staging/rtl8712/rtl8712_efuse.c
> >       > index 00babd0..3275f7a 100644
> >       > --- a/drivers/staging/rtl8712/rtl8712_efuse.c
> >       > +++ b/drivers/staging/rtl8712/rtl8712_efuse.c
> >       > @@ -23,11 +23,11 @@
> >       >  /* reserve 3 bytes for HW stop read */
> >       >  static int efuse_available_max_size =3D EFUSE_MAX_SIZE - 3
> >       /*0x1FD*/;
> >       >
> >       > -static void efuse_reg_ctrl(struct _adapter *padapter, u8
> >       bPowerOn)
> >       > +static void efuse_reg_ctrl(struct _adapter *padapter, u8
> >       power_on)
> >
> >       It seems that bPowerOn always has a boolean value.  It would be
> >       nice to
> >       add other patches to the series that declare the variables as
> >       type bool
> >       instead of u8 (or int in one case).
> >
> >       Actually, this particular function is only called once and only
> >       called
> >       with the argument false.  The function that looks like it should
> >       call this
> >       one with the argument true currently just returns true,  I don't
> >       know if
> >       this function should be specialized to the false case and then
> >       inlined
> >       into the call site, or if it is considered that the true case
> >       gives useful
> >       information about the device, even if the code is not used.
> >
> >
> > Do you want me to do further changes?
>
> Please do the change from u8 to bool.


> Okay I will change and resend it.
Thanks,
Payal

julia
>
> > thanks,
> > payal
> >       julia
> >
> >       >  {
> >       >       u8 tmpu8 =3D 0;
> >       >
> >       > -     if (bPowerOn) {
> >       > +     if (power_on) {
> >       >               /* -----------------e-fuse pwr & clk reg ctrl
> >       ---------------
> >       >                * Enable LDOE25 Macro Block
> >       >                */
> >       > --
> >       > 2.7.4
> >       >
> >       > --
> >       > You received this message because you are subscribed to the
> >       Google Groups "outreachy-kernel" group.
> >       > To unsubscribe from this group and stop receiving emails from
> >       it, send an email to
> >       outreachy-kernel+unsubscribe@googlegroups.com.
> >       > To post to this group, send email to
> >       outreachy-kernel@googlegroups.com.
> >       > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/6b2beffe41d8256284179eda
> >       6eadd8b9cf0a24fb.1553327467.git.payal.s.kshirsagar.98%40gmail.com=
.
> >       > For more options, visit https://groups.google.com/d/optout.
> >       >
> >
> >       --
> >       You received this message because you are subscribed to the
> >       Google Groups "outreachy-kernel" group.
> >       To unsubscribe from this group and stop receiving emails from
> >       it, send an email to
> >       outreachy-kernel+unsubscribe@googlegroups.com.
> >       To post to this group, send email to
> >       outreachy-kernel@googlegroups.com.
> >       To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.19032309
> >       10120.2537%40hadrien.
> >       For more options, visit https://groups.google.com/d/optout.
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/CANTOzWFyaovbYWFXJZhwL3L
> > ygV-As8CTbWOKR7K0eY50uj8ryg%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.190323=
0942200.2537%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--00000000000016d5ae0584bf05a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Sat, Mar 23, 2019, 2:12 PM Julia Lawall &lt;<a href=3D"mailto:julia.lawa=
ll@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><br>
<br>
On Sat, 23 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Sat, 23 Mar 2019 at 13:43, Julia Lawall &lt;<a href=3D"mailto:julia=
.lawall@lip6.fr" target=3D"_blank" rel=3D"noreferrer">julia.lawall@lip6.fr<=
/a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0When you make a series, it is nice to make a=
 cover letter as<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0well, so that<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0one can see the scope of the changes all at =
once.=C2=A0 see the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0tutorial if you<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0don&#39;t know how to do this.<br>
&gt;<br>
&gt; Sending.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Sat, 23 Mar 2019, Payal Kshirsagar wrote:=
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Eliminate camelcase variable names to f=
ix the style issue =E2=80=93<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=80=98avoid<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; camelcase=E2=80=99<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Payal Kshirsagar<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:payal.s.kshirsagar.98@=
gmail.com" target=3D"_blank" rel=3D"noreferrer">payal.s.kshirsagar.98@gmail=
.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 drivers/staging/rtl8712/rtl8712_e=
fuse.c | 4 ++--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 1 file changed, 2 insertions(+), =
2 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/rtl8712/rt=
l8712_efuse.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/rtl8712/rtl8712_efuse.c<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index 00babd0..3275f7a 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/rtl8712/rtl8712_e=
fuse.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/rtl8712/rtl8712_e=
fuse.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -23,11 +23,11 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 /* reserve 3 bytes for HW stop re=
ad */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 static int efuse_available_max_si=
ze =3D EFUSE_MAX_SIZE - 3<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/*0x1FD*/;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -static void efuse_reg_ctrl(struct _ada=
pter *padapter, u8<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0bPowerOn)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +static void efuse_reg_ctrl(struct _ada=
pter *padapter, u8<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0power_on)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0It seems that bPowerOn always has a boolean =
value.=C2=A0 It would be<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0nice to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0add other patches to the series that declare=
 the variables as<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0type bool<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0instead of u8 (or int in one case).<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Actually, this particular function is only c=
alled once and only<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0called<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0with the argument false.=C2=A0 The function =
that looks like it should<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0call this<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0one with the argument true currently just re=
turns true,=C2=A0 I don&#39;t<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0know if<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0this function should be specialized to the f=
alse case and then<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0inlined<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0into the call site, or if it is considered t=
hat the true case<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0gives useful<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0information about the device, even if the co=
de is not used.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<br>
&gt;<br>
&gt; Do you want me to do further changes?<br>
<br>
Please do the change from u8 to bool.</blockquote><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><br></blockquote></div></div><div dir=3D"auto">Okay I will change and=
 resend it.</div><div dir=3D"auto">Thanks,</div><div dir=3D"auto">Payal</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
julia<br>
<br>
&gt; thanks,<br>
&gt; payal<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0julia<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 tmpu8 =3D =
0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0if (bPowerOn) {<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0if (power_on) {<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/* -----------------e-fuse pwr &amp; clk reg ctrl<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0---------------<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 * Enable LDOE25 Macro Block<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; 2.7.4<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; You received this message because you a=
re subscribed to the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Google Groups &quot;outreachy-kernel&quot; g=
roup.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To unsubscribe from this group and stop=
 receiving emails from<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0it, send an email to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel%2Bunsubsc=
ribe@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kerne=
l+unsubscribe@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To post to this group, send email to<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel@googlegro=
ups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@googlegroups=
.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To view this discussion on the web visi=
thttps://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/6b2be=
ffe41d8256284179eda" rel=3D"noreferrer noreferrer" target=3D"_blank">groups=
.google.com/d/msgid/outreachy-kernel/6b2beffe41d8256284179eda</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A06eadd8b9cf0a24fb.1553327467.git.payal.s.kshi=
rsagar.98%<a href=3D"http://40gmail.com" rel=3D"noreferrer noreferrer" targ=
et=3D"_blank">40gmail.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; For more options, visit <a href=3D"http=
s://groups.google.com/d/optout" rel=3D"noreferrer noreferrer" target=3D"_bl=
ank">https://groups.google.com/d/optout</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0You received this message because you are su=
bscribed to the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Google Groups &quot;outreachy-kernel&quot; g=
roup.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To unsubscribe from this group and stop rece=
iving emails from<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0it, send an email to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel%2Bunsubsc=
ribe@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kerne=
l+unsubscribe@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To post to this group, send email to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel@googlegro=
ups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@googlegroups=
.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To view this discussion on the web visithttp=
s://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB=
.2.21.19032309" rel=3D"noreferrer noreferrer" target=3D"_blank">groups.goog=
le.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.19032309</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A010120.2537%40hadrien.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0For more options, visit <a href=3D"https://g=
roups.google.com/d/optout" rel=3D"noreferrer noreferrer" target=3D"_blank">=
https://groups.google.com/d/optout</a>.<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups<br>
&gt; &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an<br>
&gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups=
.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@goo=
glegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@g=
ooglegroups.com</a>.<br>
&gt; To view this discussion on the web visithttps://<a href=3D"http://grou=
ps.google.com/d/msgid/outreachy-kernel/CANTOzWFyaovbYWFXJZhwL3L" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-k=
ernel/CANTOzWFyaovbYWFXJZhwL3L</a><br>
&gt; ygV-As8CTbWOKR7K0eY50uj8ryg%<a href=3D"http://40mail.gmail.com" rel=3D=
"noreferrer noreferrer" target=3D"_blank">40mail.gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
&gt;<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@googlegro=
ups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@google=
groups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903230942200.2537%40hadrien" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/alpine.DEB.2.21.1903230942200.2537%40hadrien</a>.<br=
>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--00000000000016d5ae0584bf05a1--

