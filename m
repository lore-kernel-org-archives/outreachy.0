X-GM-THRID: 6671492660700643328
X-Received: by 2002:a2e:974d:: with SMTP id f13mr7424446ljj.140.1553329544500;
        Sat, 23 Mar 2019 01:25:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:429a:: with SMTP id m26ls1121770lfh.10.gmail; Sat, 23
 Mar 2019 01:25:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw8h8aKa25uTOtfOCT9g5fh9T/PBzUL8XvaqafbQyrD1zBK9Qdk3seDxHXO6RJaizNdeqgf
X-Received: by 2002:ac2:447a:: with SMTP id y26mr7737602lfl.169.1553329543601;
        Sat, 23 Mar 2019 01:25:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553329543; cv=none;
        d=google.com; s=arc-20160816;
        b=GAMY9Q6whNvXXGO+z9UIqtE1DHIlxe2PngmVHJw9H4dotTTfmLnPHsqpS5OH+1TmBU
         4i33Y8JGY0mi2H4/YncMk+YC5eds/972hVhXNQx911sdX6DtlkNfNB/g8Kh01obQvdxV
         vYSiV3e99BM1VpFdTO69qXzBX4W6ukxZdeWojQcYqz+LYkBosH7NqEnVq5/1+nT1+qrj
         hACz4ylUGjFumoct1H0pKARiJ3re8VnVqjxVaprV2QYCGRgilNfmIJRvGRwg2srn1j4e
         6m8pNrwfYckwH05bTqWMReCnyS6iYUu8ow97fI5wVyAHJKXDOm35Wm3CjPDz1nxNm8az
         Yrvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XyvCVjrv58VSIc7ILaryykj4SgqbTQt9LWGg/c5bWjo=;
        b=XmrBGsQyHXCKiO0HFQ3GDdTfLLfKDThEuRz1D4NNWnGVhMgiCzGTFmLUYLv3BVg87s
         P+7/bLSZSRTM9WkknOZjuDkJUdhkTM8c0xTGoYLJGCy5SjHpp0iyPW5uj3lSUYmTxFSy
         o029UEtTt3nWGMmVPp3LwOX2Ra9YaVSeLP4bTZLkIBJz0fJCMyoo6jOtjzNfFS8s1yv6
         Lh3pk7lWxK5ZvSjctwzCgi19lMMpimTOl6y0gbSTsbEQwv3nrsuGcgTnBXmRcRRz2fz2
         Tb3Rc01rtaR9YAenHBBmE8XH23cic+/E9ib4CAlR20yfrKCUo1u5FJW0N3x3Mw75agNV
         1eXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DrNeEdl2;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id m17si291575lfl.0.2019.03.23.01.25.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 01:25:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DrNeEdl2;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x143.google.com with SMTP id 10so2895336lfr.8
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 01:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XyvCVjrv58VSIc7ILaryykj4SgqbTQt9LWGg/c5bWjo=;
        b=DrNeEdl2BE9iNCmBGYslzTyyD3O3ZZtwtbkSKUH0VjJXc4keniD/eJIuddBVJKpPpG
         0ntwaQWpY4NZ0DYz1RnxPj+IDUTZx8YabPnR3X2Uw0b8YHKtViLHEd2NgZWFvzpFpZWJ
         46utOaLXXBtjNCu4AkKDnK/Yq81+qxEdxljnf6OPuT6rWV9h/ygGxwbWFWPwrl8YZIOO
         lqiM+oSmfQTp4zJaa39H15/sdF8g8botxzFrlP7qDtwW9tkHr8UmyrmxVP9sjfRKCV3I
         /DI9jw3oHHPs1PbWi8tzPHhLaIOUUpaoe7o3z3qrMWjbYNz8FSpwdjoClAyjR9BjpaDh
         LHBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XyvCVjrv58VSIc7ILaryykj4SgqbTQt9LWGg/c5bWjo=;
        b=Os06KdU8vg+yGngOSA6iEHk6b8I6FgfbmPiNrWBJ1/EcZrvmDxRhEFnuIICGwST4/1
         JVGPObLnK2GKaupr+wO19sB9i26aft0nfyfi6FqZ1yS87u4x33S06OEMd6ppxFxtdl8b
         ZcudGIfDL9Ly16t54nrjNfNpWpYIKEnCLJTFBHornQ+DhsEq2A+RRVA4tBQJsKQ6Vhme
         2OCWDEGFwokrzstMyvlP9gHDVs/+F0VSp/ANNhscAk7c5fKmM/Gel8++8z/inLPq5gd0
         qyizEKms6AMcS8tyQwdisKOZI98YvVooulJ/6MJkYca46LNzqV01MAI1wQcvamrWVPy4
         VRuQ==
X-Gm-Message-State: APjAAAXlj7UVxoRuGEd3KTqEXEhyzS2fHL5Vh1Pk36VlI7+uD65QYuTG
	fBOBqhj2f9QyX8jdi2sTRchsz4vv4aF94frLhWwrIA==
X-Received: by 2002:ac2:5479:: with SMTP id e25mr6559588lfn.121.1553329543448;
 Sat, 23 Mar 2019 01:25:43 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1553327467.git.payal.s.kshirsagar.98@gmail.com>
 <6b2beffe41d8256284179eda6eadd8b9cf0a24fb.1553327467.git.payal.s.kshirsagar.98@gmail.com>
 <alpine.DEB.2.21.1903230910120.2537@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903230910120.2537@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sat, 23 Mar 2019 13:55:31 +0530
Message-ID: <CANTOzWFyaovbYWFXJZhwL3LygV-As8CTbWOKR7K0eY50uj8ryg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: rtl8712: avoid camelcase
 variable name 'bPowerOn'
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, pkbehappyallthetime@gmail.com
Content-Type: multipart/alternative; boundary="000000000000a80c380584beb78d"

--000000000000a80c380584beb78d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 23 Mar 2019 at 13:43, Julia Lawall <julia.lawall@lip6.fr> wrote:

> When you make a series, it is nice to make a cover letter as well, so tha=
t
> one can see the scope of the changes all at once.  see the tutorial if yo=
u
> don't know how to do this.
>
> Sending.

On Sat, 23 Mar 2019, Payal Kshirsagar wrote:
>
> > Eliminate camelcase variable names to fix the style issue =E2=80=93 =E2=
=80=98avoid
> > camelcase=E2=80=99
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/rtl8712/rtl8712_efuse.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c
> b/drivers/staging/rtl8712/rtl8712_efuse.c
> > index 00babd0..3275f7a 100644
> > --- a/drivers/staging/rtl8712/rtl8712_efuse.c
> > +++ b/drivers/staging/rtl8712/rtl8712_efuse.c
> > @@ -23,11 +23,11 @@
> >  /* reserve 3 bytes for HW stop read */
> >  static int efuse_available_max_size =3D EFUSE_MAX_SIZE - 3 /*0x1FD*/;
> >
> > -static void efuse_reg_ctrl(struct _adapter *padapter, u8 bPowerOn)
> > +static void efuse_reg_ctrl(struct _adapter *padapter, u8 power_on)
>
> It seems that bPowerOn always has a boolean value.  It would be nice to
> add other patches to the series that declare the variables as type bool
> instead of u8 (or int in one case).
>
> Actually, this particular function is only called once and only called
> with the argument false.  The function that looks like it should call thi=
s
> one with the argument true currently just returns true,  I don't know if
> this function should be specialized to the false case and then inlined
> into the call site, or if it is considered that the true case gives usefu=
l
> information about the device, even if the code is not used.
>
>
Do you want me to do further changes?
thanks,
payal

> julia
>
> >  {
> >       u8 tmpu8 =3D 0;
> >
> > -     if (bPowerOn) {
> > +     if (power_on) {
> >               /* -----------------e-fuse pwr & clk reg ctrl
> ---------------
> >                * Enable LDOE25 Macro Block
> >                */
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/6b2beffe41d8256284179e=
da6eadd8b9cf0a24fb.1553327467.git.payal.s.kshirsagar.98%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
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
0910120.2537%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--000000000000a80c380584beb78d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sat, 23 Mar 2019 at 13:43, Julia L=
awall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">When =
you make a series, it is nice to make a cover letter as well, so that<br>
one can see the scope of the changes all at once.=C2=A0 see the tutorial if=
 you<br>
don&#39;t know how to do this.<br>
<br></blockquote><div>Sending.</div><div> <br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">
On Sat, 23 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt; Eliminate camelcase variable names to fix the style issue =E2=80=93 =
=E2=80=98avoid<br>
&gt; camelcase=E2=80=99<br>
&gt;<br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank">payal.s.kshirsagar.98@gmail.com</a>&gt;<=
br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl8712_efuse.c | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging=
/rtl8712/rtl8712_efuse.c<br>
&gt; index 00babd0..3275f7a 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl8712_efuse.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl8712_efuse.c<br>
&gt; @@ -23,11 +23,11 @@<br>
&gt;=C2=A0 /* reserve 3 bytes for HW stop read */<br>
&gt;=C2=A0 static int efuse_available_max_size =3D EFUSE_MAX_SIZE - 3 /*0x1=
FD*/;<br>
&gt;<br>
&gt; -static void efuse_reg_ctrl(struct _adapter *padapter, u8 bPowerOn)<br=
>
&gt; +static void efuse_reg_ctrl(struct _adapter *padapter, u8 power_on)<br=
>
<br>
It seems that bPowerOn always has a boolean value.=C2=A0 It would be nice t=
o<br>
add other patches to the series that declare the variables as type bool<br>
instead of u8 (or int in one case).<br>
<br>
Actually, this particular function is only called once and only called<br>
with the argument false.=C2=A0 The function that looks like it should call =
this<br>
one with the argument true currently just returns true,=C2=A0 I don&#39;t k=
now if<br>
this function should be specialized to the false case and then inlined<br>
into the call site, or if it is considered that the true case gives useful<=
br>
information about the device, even if the code is not used.<br>=C2=A0
<br></blockquote><div>Do you want me to do further changes?</div><div>thank=
s,</div><div>payal<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">
julia<br>
<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 tmpu8 =3D 0;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (bPowerOn) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (power_on) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* -------------=
----e-fuse pwr &amp; clk reg ctrl ---------------<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * Enable LDOE25=
 Macro Block<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>=
.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/6b2beffe41d8256284179eda6eadd8b9cf0a24fb.1=
553327467.git.payal.s.kshirsagar.98%40gmail.com" rel=3D"noreferrer" target=
=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/6b2beffe41d8=
256284179eda6eadd8b9cf0a24fb.1553327467.git.payal.s.kshirsagar.98%40gmail.c=
om</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903230910120.2537%40hadrien" r=
el=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outre=
achy-kernel/alpine.DEB.2.21.1903230910120.2537%40hadrien</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a>.<b=
r>
</blockquote></div></div>

--000000000000a80c380584beb78d--

