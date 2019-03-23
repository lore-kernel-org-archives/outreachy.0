X-GM-THRID: 6671634495141052416
X-Received: by 2002:a5d:6887:: with SMTP id h7mr11053069wru.122.1553362570326;
        Sat, 23 Mar 2019 10:36:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:cc03:: with SMTP id f3ls1566721wmh.3.canary-gmail; Sat,
 23 Mar 2019 10:36:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy2gtG8ztOH7Ags5n07E/w+KUYXyDTmdq2hSIRpG2NjwbjxdLxl6FlNLSa1yPJzyTL6jitm
X-Received: by 2002:a1c:9d4c:: with SMTP id g73mr607881wme.48.1553362569135;
        Sat, 23 Mar 2019 10:36:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553362569; cv=none;
        d=google.com; s=arc-20160816;
        b=G2Bo41opHjx37w9CX1rLmf5q1cWseR9bOld6DLbKMU/fa2Omb2C5mq1tAz7B1xuJSt
         jdo0gTy/1cJ94GzdGC++rL936LrJHMFWB+yQgKTA5j1FVWZLucXU0y4gsxfXMg+tBwR5
         FRfbbFdARNAWk/7ys8RG33UOmTmmcWKz2uDy2X1Up0IPSqk6cBt29uaOxK5Er2ZeOYMj
         TmfbjHm2Jn+kK3KT6KE0Miy4t0FSVQWucFraixySxF8QoeyXK+BcoxX7IpBJQrAreXKa
         op/fZvV7y7y2UVbQVRtLGzC7n0eeyYrz3xNhsWuyjZTZY+ZRS3IjL7N7yZC5C7H4fPj/
         6+lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KadcteCs/XG6JIDM5UHOAOg+p+AI7QQNmdzTVYsCyI4=;
        b=WOF1bV3w6mQpsw2JQQv9IdYKZFyTfiFRJ+QUjDmBubEziyfNXydaFNmLRjRAscWzjF
         rgqmU/X9jBSgqEn/Vvo/goBTArVckwLSOEwuhtiOJBkFwPALVXs5kpZ4AAA6+988rycJ
         6s/DGzmhfvbq3vOc/S0FG/cEKHRQmMTfj69aTYV4Om/tOB4fxavQkvQRuRcPdi3sPzHD
         shLqzaxjTJR7ZbyaeqAx3aZH1ewW1Zzn6pr49wuz/Pzzu8hqf5fSjbidYAvnGL7LH7Mk
         IAu8/LKgOT8RcvWVNWr9EzvDIliNKWq7mgVjDoktEE8yaIiqJeIbC3pY0f2MekhcPPbO
         1LrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WCG4azna;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id n5si686833wrj.0.2019.03.23.10.36.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 10:36:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WCG4azna;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x143.google.com with SMTP id 10so3399709lfr.8
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 10:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KadcteCs/XG6JIDM5UHOAOg+p+AI7QQNmdzTVYsCyI4=;
        b=WCG4aznaKMpcnioh0u/h76OyrJMRw9Kw7C5Q2AdTSuiSDUSg9PNTZfcyeMX4f4hH5R
         6q/o4fGteyswesl+1VyK4vf2UX4oMeozL6ISP4XnwRcLvvp0j6efH22+BUbZVIHVMXZC
         QsvlQyVziNdZFCdhsN9ZR5mh8JDt2FLpYb0AwRgGHH6lFPQphr03Agv9Gt/E7EjrFu4W
         PXhQc8rADcVmWBXg/c9oWFIv0SpxDlcZksR5mRAMW6RWcsmANryEmZ5EPFj+qmxuJO0O
         AqHshJDDhVdPdeRwj6DHanfh97q9OrpY5LHC2zRAaK9J/jS/9gB1yRkwPsUITwubE5nG
         nmOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KadcteCs/XG6JIDM5UHOAOg+p+AI7QQNmdzTVYsCyI4=;
        b=QXDChNHpBWCl9+H4W9H6ISZP/oGFq5nwUJXAX16ISCg6X2rj0JyB6Z8gjuK6ztyao2
         PeU5NlT99/J6+rxMKgEEPH4NImiMvIbHbmHilALrYies5Uw8+XYAL8aBP+90ajfZnx61
         2+gY0/RqprRBzojrSY172TubUk/zezUml+KTizQ/9vUISHPnbtmdwQBONiU1JBgJI4RC
         7vIbh3jDvc5taKqNzEfHb/2sj8sgTaTf1DwP05KT84cl7WHXhzItWcyYT22qr9GaLfxa
         QwNTxng0YmyWTRr4fYXXEKHaPc8dEIY5JDPIlU1CtiRNJXmpVuRBuK3xQ0BMd9nu5uso
         BOyA==
X-Gm-Message-State: APjAAAUDpNdzEljsTJFTxnVThh7M4mLmWNk1TrnfNfbTDVDv4iFSxIDu
	LYcOur3QWqgQThjoWl0jx8AKNHtJCYiKDwlg/ld1sg==
X-Received: by 2002:ac2:4561:: with SMTP id k1mr3394311lfm.95.1553362568660;
 Sat, 23 Mar 2019 10:36:08 -0700 (PDT)
MIME-Version: 1.0
References: <1553360936-3525-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <alpine.DEB.2.21.1903231813540.5660@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903231813540.5660@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sat, 23 Mar 2019 23:05:56 +0530
Message-ID: <CANTOzWHGpSH_ovHWEN56_E1pY3i8ikW8ismHCb6LsJ4TGHYdFw@mail.gmail.com>
Subject: Re: [PATCH v2] [Outreachy kernel] staging: rtl8712: change type variables
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000001ccbc70584c66876"

--0000000000001ccbc70584c66876
Content-Type: text/plain; charset="UTF-8"

On Sat, 23 Mar 2019 at 22:44, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 23 Mar 2019, Payal Kshirsagar wrote:
>
> > Change the type of variable tempu8 to u8.
>
> You need to make your patches against Greg's tree, and not against the
> previous patches that you made.  The previous one was not correct, so Greg
> will just discard it.
>
> Okay.
Thanks,
payal


> julia
>
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> > Changes in v2:
> >       -Making the variable type temu8 of type u8.
> >
> >  drivers/staging/rtl8712/rtl8712_efuse.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c
> b/drivers/staging/rtl8712/rtl8712_efuse.c
> > index dde1255..4e2764f 100644
> > --- a/drivers/staging/rtl8712/rtl8712_efuse.c
> > +++ b/drivers/staging/rtl8712/rtl8712_efuse.c
> > @@ -25,7 +25,7 @@ static int efuse_available_max_size = EFUSE_MAX_SIZE -
> 3 /*0x1FD*/;
> >
> >  static void efuse_reg_ctrl(struct _adapter *padapter, bool power_on)
> >  {
> > -     bool tmpu8 = 0;
> > +     u8 tmpu8 = 0;
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
> https://groups.google.com/d/msgid/outreachy-kernel/1553360936-3525-1-git-send-email-payal.s.kshirsagar.98%40gmail.com
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
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903231813540.5660%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--0000000000001ccbc70584c66876
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sat, 23 Mar 2019 at 22:44, Julia L=
awall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On Sat, 23 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt; Change the type of variable tempu8 to u8.<br>
<br>
You need to make your patches against Greg&#39;s tree, and not against the<=
br>
previous patches that you made.=C2=A0 The previous one was not correct, so =
Greg<br>
will just discard it.<br>
<br></blockquote><div>Okay.</div><div>Thanks,</div><div>payal<br></div><div=
>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
julia<br>
<br>
&gt;<br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank">payal.s.kshirsagar.98@gmail.com</a>&gt;<=
br>
&gt; ---<br>
&gt; Changes in v2:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-Making the variable type temu8 of type u8.<=
br>
&gt;<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl8712_efuse.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging=
/rtl8712/rtl8712_efuse.c<br>
&gt; index dde1255..4e2764f 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl8712_efuse.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl8712_efuse.c<br>
&gt; @@ -25,7 +25,7 @@ static int efuse_available_max_size =3D EFUSE_MAX_SI=
ZE - 3 /*0x1FD*/;<br>
&gt;<br>
&gt;=C2=A0 static void efuse_reg_ctrl(struct _adapter *padapter, bool power=
_on)<br>
&gt;=C2=A0 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0bool tmpu8 =3D 0;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0u8 tmpu8 =3D 0;<br>
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
gle.com/d/msgid/outreachy-kernel/1553360936-3525-1-git-send-email-payal.s.k=
shirsagar.98%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://grou=
ps.google.com/d/msgid/outreachy-kernel/1553360936-3525-1-git-send-email-pay=
al.s.kshirsagar.98%40gmail.com</a>.<br>
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
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903231813540.5660%40hadrien" r=
el=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outre=
achy-kernel/alpine.DEB.2.21.1903231813540.5660%40hadrien</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a>.<b=
r>
</blockquote></div></div>

--0000000000001ccbc70584c66876--

