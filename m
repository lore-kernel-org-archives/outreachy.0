X-GM-THRID: 6674191522051653632
X-Received: by 2002:a17:906:2295:: with SMTP id p21mr41474eja.9.1553957554795;
        Sat, 30 Mar 2019 07:52:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9950:: with SMTP id l16ls1427848edb.3.gmail; Sat, 30 Mar
 2019 07:52:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx8BndLx5TpXzaeYTZe7IIWqwIUl7g39UEue0tEavFp2J3YSFt8pgxyqXJ7Q+lGxgxqtFtn
X-Received: by 2002:a50:8692:: with SMTP id r18mr3206364eda.9.1553957553946;
        Sat, 30 Mar 2019 07:52:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553957553; cv=none;
        d=google.com; s=arc-20160816;
        b=fVZQhVVU2/1BIv/aLhwy3/ZBs7ROpjW4ENDvLRDPCMlVv0kSbgUH2R4mBhqv4XDWlH
         aOfrhJ9gZz1xV1wYl2q3lG4iMtbz7zEbrRcKslYpQvDFhLGk78s+DuEFo3dG+2r9Ie/S
         HG3ZVqgXwG3ZfxwEnxTwtnbt9CIjtjudOU6tLaZQ4aNDFvYyAOQUVFXHSSqYZp5bXS5l
         EPXBAUCPJonm7wC7VTgxxxOf1EvidraSkzOj1cnqD2LfjpJfm5GhHITJf1Kop1bcVq8z
         pC3DGejc/CY/Mbq/Empq4QkBqJCunn6iyRSA3eTrFE1ZyXnOyjUBrPoJ4X6LQBInkH0I
         LRTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yJDd46BJngGGLVyVzfv/rMp0lsuDnUIqL0QxtVgIbc0=;
        b=IS2S7fbBTZlbXGOMEfaFuLe8WTnOS2FNm8RrhjzfDsSILbHSaBE/MpoRhdkn/SZeRc
         5V0mQErimCpsvGsB1w943So5jtrvhyvWVEMGVtsRBv9ASHdAh6RH/UzJug0JoaH3tnmH
         PKEYFQ8z5/dSzWviJ7AXSKtEyNa93LHX/ryoYgj4gKLPCa9NEvOXNpdXJoRxSBNwXvnr
         FhChRnzpoEHKagVXOrDYnMVp8tmholf6ssspFATuqC/S1W+UEVvszrDv4omTZ+xxdF2g
         TZ/yAemj8+g/U4ns+VFRXkCrmPRZZnyt3x4ZnIFlT1ZWQEHkdbzlJ4AoUaZS0OPSyP7X
         jK/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jt4GVKG9;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id a38si242810edd.0.2019.03.30.07.52.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 07:52:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jt4GVKG9;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x233.google.com with SMTP id r24so4412847ljg.3
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 07:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yJDd46BJngGGLVyVzfv/rMp0lsuDnUIqL0QxtVgIbc0=;
        b=jt4GVKG91K1pwkg6wuKFkvH2UASB1Hh4+1sR/Vdynfm2J5rZRmyHOXuolINGYXNoo0
         MPmZ23OV1ksJ0VFvFwfhdfKjCSCtQJnLDIAGNY4EqZPaU62uWhqKPCVizearWyuPQ3JM
         UnOZE0ZcT6okxQlQdW3XO9wuA9BQD1Z9ey4BXd4U3YRklH5KIrv+ca2ez+rNNytl9ldP
         stHzJyIu63Qjw2RSRKgcsCm+gOXX9djUbWsJh3wuIwTAUDNxJpe4bduqnzSCz8R7pSTs
         PNC4QouEpeKLzhs8Dv6bmL3OmcA5egktQ5eI+Pn8RYDYDfLE+eZPdkhqgGmpFOWYN92b
         /UtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yJDd46BJngGGLVyVzfv/rMp0lsuDnUIqL0QxtVgIbc0=;
        b=V7Ja0TxFuOC974L5dAC5Q9LCrLrBwgaV0GCWW6amKJtZIkESQOE5YLkPVm1yds8Iof
         81pQq9XJ2/tOvwTVAh6JJqpyK8JmURHCySqFJukCfu9pm7SMgOP9owKq361PASyNnthB
         T0t0Z4qCQ22hRZiUvqpF9sXfMzmhLIW+kvxmWcdXqtCLPRXCMR7h7xNW2l75Oz2kAvpS
         3G8fUpoBoJ2RSVdqalxD3zkUQIWq63LqUIo0vnxQ9PnE4YYvExZhmQxNiAUUxmbRnodn
         Sn4VKrQ7c7bhbAiUIIi7pZvCclkWV8UGnVmCr3kcVJ4/uZlYdksZq2uPOfWThUHZVFiP
         eBJA==
X-Gm-Message-State: APjAAAWqE/r/wwPBca0FWIqP2pzEk9VCvAlVYLvi1Kr6skTbRfpYfaFc
	eS8J9EKs+vbYKZAmpNNTLVdoTlSYNaF+P9bkibQtAA==
X-Received: by 2002:a2e:960b:: with SMTP id v11mr19873696ljh.135.1553957553777;
 Sat, 30 Mar 2019 07:52:33 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1553955183.git.payal.s.kshirsagar.98@gmail.com>
 <4756f370659f5e98dcd00f7dea94b062d202235a.1553955183.git.payal.s.kshirsagar.98@gmail.com>
 <alpine.DEB.2.21.1903301543580.2608@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903301543580.2608@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sat, 30 Mar 2019 20:22:21 +0530
Message-ID: <CANTOzWEtZoMkfyz1DRdpPi=7OdihDQDOP1YHMXQ51A6WMrz+wQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: rtl8723bs: core:
 rtw_mlme.c: Compress two lines into one line
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000fd2f48058550eff4"

--000000000000fd2f48058550eff4
Content-Type: text/plain; charset="UTF-8"

On Sat, 30 Mar 2019 at 20:14, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 30 Mar 2019, Payal Kshirsagar wrote:
>
> > Challenge suggested by coccinelle.
> > Return value directly without saving it in a variable and remove that
> > variable.
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/core/rtw_mlme.c | 5 +----
> >  1 file changed, 1 insertion(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> > index 12661d7..ef5f78e 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> > @@ -353,10 +353,7 @@ u8 *rtw_get_beacon_interval_from_ie(u8 *ie)
> >
> >  int  rtw_init_mlme_priv(struct adapter *padapter)/* struct   mlme_priv
> *pmlmepriv) */
> >  {
> > -     int     res;
> > -
> > -     res = _rtw_init_mlme_priv(padapter);/*  (pmlmepriv); */
> > -     return res;
> > +     return _rtw_init_mlme_priv(padapter);
>
> The code doesn't look like this any more.  Please update your staging tree
> and start over with this patch series.
>

Okay I will.
thanks,
payal


> julia
>
>
> >  }
> >
> >  void rtw_free_mlme_priv(struct mlme_priv *pmlmepriv)
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
> https://groups.google.com/d/msgid/outreachy-kernel/4756f370659f5e98dcd00f7dea94b062d202235a.1553955183.git.payal.s.kshirsagar.98%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--000000000000fd2f48058550eff4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sat, 30 Mar 2019 at 20:14, Julia L=
awall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On Sat, 30 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt; Challenge suggested by coccinelle.<br>
&gt; Return value directly without saving it in a variable and remove that<=
br>
&gt; variable.<br>
&gt;<br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank">payal.s.kshirsagar.98@gmail.com</a>&gt;<=
br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/core/rtw_mlme.c | 5 +----<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 4 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/stagi=
ng/rtl8723bs/core/rtw_mlme.c<br>
&gt; index 12661d7..ef5f78e 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c<br>
&gt; @@ -353,10 +353,7 @@ u8 *rtw_get_beacon_interval_from_ie(u8 *ie)<br>
&gt;<br>
&gt;=C2=A0 int=C2=A0 rtw_init_mlme_priv(struct adapter *padapter)/* struct=
=C2=A0 =C2=A0mlme_priv *pmlmepriv) */<br>
&gt;=C2=A0 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0int=C2=A0 =C2=A0 =C2=A0res;<br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0res =3D _rtw_init_mlme_priv(padapter);/*=C2=A0 (p=
mlmepriv); */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return res;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return _rtw_init_mlme_priv(padapter);<br>
<br>
The code doesn&#39;t look like this any more.=C2=A0 Please update your stag=
ing tree<br>
and start over with this patch series.<br></blockquote><div><br></div><div>=
Okay I will.</div><div>thanks,</div><div>payal<br></div><div>=C2=A0</div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">
julia<br>
<br>
<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 void rtw_free_mlme_priv(struct mlme_priv *pmlmepriv)<br>
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
gle.com/d/msgid/outreachy-kernel/4756f370659f5e98dcd00f7dea94b062d202235a.1=
553955183.git.payal.s.kshirsagar.98%40gmail.com" rel=3D"noreferrer" target=
=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/4756f370659f=
5e98dcd00f7dea94b062d202235a.1553955183.git.payal.s.kshirsagar.98%40gmail.c=
om</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</blockquote></div></div>

--000000000000fd2f48058550eff4--

