X-GM-THRID: 6671625526346514432
X-Received: by 2002:adf:ebce:: with SMTP id v14mr10035904wrn.69.1553360116295;
        Sat, 23 Mar 2019 09:55:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:96c9:: with SMTP id y192ls1527879wmd.5.canary-gmail;
 Sat, 23 Mar 2019 09:55:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwsIffNvdUgBYvTkVJKZhsTSO0pBsDcjFWbIwrwFwi0y1DK/sCk8FyjWJhWQJ3+W1LA8A8e
X-Received: by 2002:a1c:b403:: with SMTP id d3mr460016wmf.85.1553360115405;
        Sat, 23 Mar 2019 09:55:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553360115; cv=none;
        d=google.com; s=arc-20160816;
        b=SyHZc4V2spfpwhp4OK6f2gAVxQ5AjjtgQhKbWX2C1zcYZCsl+n3UWttW11Pud4SwDw
         HAzMnyQfgmZGwun2JQ4i27UGcWK8p9Wkf/NreIZLOZTe/14cvnz8rrL1p3/kQB0zRtfR
         pZTeNEcOhpNbMK1YQxPLyqPUJPPiUB/YrQ85Fh5pfIGL05vq1m8g32gPdcUdgS51Z/Wh
         sd5Z3OensiDxrhBKVfBr54dQkEjXyawrJ/x8kK8uY8a8evR88cEC4aWUVYeFE6n65FiJ
         BCp2OKOT5g7RFgkb0/6QYIzGe/NGhCr1vKvgxTOJo6HjFNPwQxOTZfgkl7/IejZBHVSE
         w0gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DHo0VpvBQebVxGyT8LBG2CZcZV4+AWOSFvpJxQR9kmg=;
        b=UyrqV8iXPx3d9dJczbCwm71RshygPh3cUi5eV655fBAYfYF6RU2d4WGFtEOytz2yXI
         Kl7ivJcJT6xa8SgL9B4UL8Cxb/esfJFtJjD4RJHWzaSFm8zD3B5aYB6pIAe4cNRzGb2U
         Gs68YZvNnTsHKIFH1QQFW2AYQ04jBGH0lIcRDHuMusS4faIkzLFrzh6U71bdi0ctvWBY
         pxOnSlKgO3solX/enahLSekmrT0N80sdAIrX1jxku+ohUl59faQZMtLJHJwlDWf95f9W
         ZfoHeMltCEJUi0Q2QH6Bt5lXXEEMW0yrDPGLfgUHJ1QcQ15R1R1Q8Hp1ZpccJn5ZCu2G
         gMYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EZGwM8cV;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com. [2a00:1450:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id v1si62027wrd.4.2019.03.23.09.55.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 09:55:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::22f as permitted sender) client-ip=2a00:1450:4864:20::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EZGwM8cV;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x22f.google.com with SMTP id v13so4485635ljk.4
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 09:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DHo0VpvBQebVxGyT8LBG2CZcZV4+AWOSFvpJxQR9kmg=;
        b=EZGwM8cVKORSlZMFYH61ILl5tsyFZ0hVEHWprnwG/EcUiG477krG5ywwullpe2vAlQ
         3WS5X+ZhyWYGaKfZJHT9pKGMdGkxxqot/lbhwcL8tQY9xkSq8nQV/F7mzcJUNyKk8pSv
         A9aIn6ob1B/6+g0YOcukUd33UNVQNOrxVo1XA3ulaQbLo+9L4FxqnIsxNs8eqPyAskKz
         UrleFt3sZHKA0qbaodehi3oflTBcQzinbmVKbXaHxgoeldKoBIUExmcs3RjeLMVePcd4
         xHrOwF+YCAsr2VWYAe4cYIHdZpyjGvFVMzG4Zh10bZqSrsBEpeKOYegsFvqXfkxWA5ww
         4dWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DHo0VpvBQebVxGyT8LBG2CZcZV4+AWOSFvpJxQR9kmg=;
        b=IKy+P6v6SJHCTrYZbbhAlkqrXCYpL0yGPLLiBSmx3YLV/KKc4/twMT37w3Vio/vBxg
         DbY/ExKOBKoyhjAX2yZiTz6x5FQPaWr6s2GdNnz1yfHSz58b7Kf59ug13YU8KVsm6kHq
         1wSxFjhdliVIhTt1ekODLqly4bC4fu7miEYZpj0ads4xiiaXUdyzE2MnWYHwtKPri+6Q
         BhHsioGJ1Ctyn27mXmG1/bubhShbuQ+MYDjnA8lX8fSRcUxEnTPwg8K7Yg3qVQ1Tc8DL
         wap5xnyNblFeY1jL5+EhICZ5lGxJ1hKx6iajRatPRrbDwrye4dWEqMOxnl44PAPsbZzA
         +YvQ==
X-Gm-Message-State: APjAAAXHjFutlcrqLCNdrYS4VpO63Nl1DuUX9ppIlgSxyN9dAKMQfWcC
	G+Nx3BVXUYhg8TVcXMVZUdrVmkk567fJAqTY+YtMkdw0
X-Received: by 2002:a2e:86ca:: with SMTP id n10mr8366623ljj.135.1553360114899;
 Sat, 23 Mar 2019 09:55:14 -0700 (PDT)
MIME-Version: 1.0
References: <1553358841-3093-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <alpine.DEB.2.21.1903231740540.5660@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903231740540.5660@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sat, 23 Mar 2019 22:25:02 +0530
Message-ID: <CANTOzWGhdgBY=iaYyV_URW2xCL8AKMp0NK1aTFmBFqEM2T1s5w@mail.gmail.com>
Subject: Re: [PATCH] [Outreachy kernel] staging: rtl8712: change type of variables
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000db5e350584c5d505"

--000000000000db5e350584c5d505
Content-Type: text/plain; charset="UTF-8"

On Sat, 23 Mar 2019 at 22:11, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 23 Mar 2019, Payal Kshirsagar wrote:
>
> > It would be better to declare variables having boolean value as bool
> > rather than u8. Change variable type u8 to type bool.
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/rtl8712/rtl8712_efuse.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c
> b/drivers/staging/rtl8712/rtl8712_efuse.c
> > index 3ff64e2..dde1255 100644
> > --- a/drivers/staging/rtl8712/rtl8712_efuse.c
> > +++ b/drivers/staging/rtl8712/rtl8712_efuse.c
> > @@ -23,9 +23,9 @@
> >  /* reserve 3 bytes for HW stop read */
> >  static int efuse_available_max_size = EFUSE_MAX_SIZE - 3 /*0x1FD*/;
> >
> > -static void efuse_reg_ctrl(struct _adapter *padapter, u8 power_on)
> > +static void efuse_reg_ctrl(struct _adapter *padapter, bool power_on)
> >  {
> > -     u8 tmpu8 = 0;
> > +     bool tmpu8 = 0;
>
> tmpu8 is not a boolean.  A boolean value is either true or false.
>
> Sorry, I mistakenly did that.
I will send v2 with the corrections.
thanks,
payal

> julia
>
> >
> >       if (power_on) {
> >               /* -----------------e-fuse pwr & clk reg ctrl
> ---------------
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
> https://groups.google.com/d/msgid/outreachy-kernel/1553358841-3093-1-git-send-email-payal.s.kshirsagar.98%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--000000000000db5e350584c5d505
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sat, 23 Mar 2019 at 22:11, Julia L=
awall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On Sat, 23 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt; It would be better to declare variables having boolean value as bool<b=
r>
&gt; rather than u8. Change variable type u8 to type bool.<br>
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
&gt; index 3ff64e2..dde1255 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl8712_efuse.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl8712_efuse.c<br>
&gt; @@ -23,9 +23,9 @@<br>
&gt;=C2=A0 /* reserve 3 bytes for HW stop read */<br>
&gt;=C2=A0 static int efuse_available_max_size =3D EFUSE_MAX_SIZE - 3 /*0x1=
FD*/;<br>
&gt;<br>
&gt; -static void efuse_reg_ctrl(struct _adapter *padapter, u8 power_on)<br=
>
&gt; +static void efuse_reg_ctrl(struct _adapter *padapter, bool power_on)<=
br>
&gt;=C2=A0 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0u8 tmpu8 =3D 0;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0bool tmpu8 =3D 0;<br>
<br>
tmpu8 is not a boolean.=C2=A0 A boolean value is either true or false.<br>
<br></blockquote><div>Sorry, I <span>mistakenly</span> did that.</div><div>=
I will send v2 with the corrections.<br></div><div>thanks,</div><div>payal=
=C2=A0 <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
julia<br>
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (power_on) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* -------------=
----e-fuse pwr &amp; clk reg ctrl ---------------<br>
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
gle.com/d/msgid/outreachy-kernel/1553358841-3093-1-git-send-email-payal.s.k=
shirsagar.98%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://grou=
ps.google.com/d/msgid/outreachy-kernel/1553358841-3093-1-git-send-email-pay=
al.s.kshirsagar.98%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</blockquote></div></div>

--000000000000db5e350584c5d505--

