X-GM-THRID: 6329844985199853568
X-Received: by 10.129.154.196 with SMTP id r187mr1214793ywg.54.1473782986957;
        Tue, 13 Sep 2016 09:09:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.42.234 with SMTP id e97ls1645771otb.40.gmail; Tue, 13 Sep
 2016 09:09:46 -0700 (PDT)
X-Received: by 10.129.4.147 with SMTP id 141mr1221322ywe.22.1473782986527;
        Tue, 13 Sep 2016 09:09:46 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id m82si1252687ywm.2.2016.09.13.09.09.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 09:09:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id b204so4921188qkc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 09:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ReBrC1YhMHw/r+Ns/Qpq2LsQw1oQC71WlPWT9+gmpTY=;
        b=hIA263VembC7GQ20rdH14g/F9gZCpX3bORTj5n3dXryyc5/cgC5wwEzU/vWWO89Uer
         pjJCuxCfNKXZV/fVmuylNz95XhGb/FBSdXVOeqoSBeOdzX/4ZkweypjBabF8gU4LWiwG
         ZnsJK77ibIP6XyQfLYBCdIqOjx5N2VPRB4EsCA1mEO0QiXJkr0Fhu20l1KM6iqP3QpmC
         WCy5fMN6TaW1h+52TzTaT5pXGGbvMIAekvfu6Ub/+5Wm3AnNXxU5T1nZf/n6hgxlxoPZ
         l0Kq4cwfe4mfFr5hUPkDMviVn4gmj/TmdbBfbLuqFqpOppy9sZLqzk9XRD3wDEnzcyVc
         +muA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ReBrC1YhMHw/r+Ns/Qpq2LsQw1oQC71WlPWT9+gmpTY=;
        b=dCPHc+IO8+8QUTp+LWZfm3sA7R5ZXRAQ6DoDvBxdiRM70uP6gXbsIae+agWhjJO/8v
         UlkysPEWLoLam5n7C7tjoCg4hfdb7i2mK28cVnT6BnMBeKtK0PXvk7iBSuFHVz8t9IRD
         zkfL6IjivpB6qzEKem2KD8CVzmT2/MRPDVowC5Z1d/bnBG13OAUm29wUj+gJAQQQzXWV
         rS8wWKX0OkBwfFGvn41IwP1lBv14OILxiuKkV9jdW0xGFj9W90/4NZgG3KJdU/bvd6PF
         AERMT7NKqh/gq9zSYLrLSvKIoEtZDAB74a1OR9qfxczuU/BB3ydQn0uCcrZ/0lNoMb4N
         noQQ==
X-Gm-Message-State: AE9vXwNEcwnrJuE6BYxTdW9oc+48YBXBYuZfeNkAkjvQxHBCmIbcReKQr5YsKK0FfGuxy6a1ajBk2r2+8iGNhw==
X-Received: by 10.55.203.198 with SMTP id u67mr1891319qkl.66.1473782986310;
 Tue, 13 Sep 2016 09:09:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.184 with HTTP; Tue, 13 Sep 2016 09:09:15 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609131754180.3355@hadrien>
References: <20160913155037.12206-1-gs051095@gmail.com> <alpine.DEB.2.10.1609131754180.3355@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 13 Sep 2016 21:39:15 +0530
Message-ID: <CAOCi2DEQhf6AeNByf7rOSudqsGaYr4=SVM0Q-DAnRg4R7AqX_g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: xgifb: move AND operator for
 logical continuation
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, arnaud.patard@rtp-net.org, 
	gregkh@linuxfoundation.org
Content-Type: multipart/alternative; boundary=001a1145a0c260119c053c65d792

--001a1145a0c260119c053c65d792
Content-Type: text/plain; charset=UTF-8

Hi

On Tue, Sep 13, 2016 at 9:27 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Tue, 13 Sep 2016, Gargi Sharma wrote:
>
> > Fixes the checkpatch issue Logical continuations should be on the
> > previous line.
> >
> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > ---
> >  drivers/staging/xgifb/vb_setmode.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/xgifb/vb_setmode.c
b/drivers/staging/xgifb/vb_setmode.c
> > index 50c8ea4..ac27b2c 100644
> > --- a/drivers/staging/xgifb/vb_setmode.c
> > +++ b/drivers/staging/xgifb/vb_setmode.c
> > @@ -1741,8 +1741,8 @@ static void XGI_SetCRT2ECLK(unsigned short
ModeIdIndex,
> >       for (i = 0; i < 4; i++) {
> >               xgifb_reg_and_or(pVBInfo->P3d4, 0x31, ~0x30,
> >                               (unsigned short) (0x10 * i));
> > -             if ((!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA))
> > -                             && (!(pVBInfo->VBInfo & SetInSlaveMode)))
{
> > +             if ((!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA)) &&
> > +                             (!(pVBInfo->VBInfo & SetInSlaveMode))) {
>
> It's another issue, but all of those parentheses are rather tiring to look
> at.  The ones outside the ! are not needed.  The indentation is also a bit
> much.  There is no need for the argument of && to be aligned with the
> third argument of xgifb_reg_and_or.  At least drop one tab, or even align
> the two ! expressions.
>The space is also not needed after (unsigned
> short) in the line above.

This check is generated by the checkpatch, and will send another patch
addressing this issue.

>This should be done in a series, with one patch
> per change.

So should I send a patch-set or separate patches per change?

gargi

>
> julia
>
> >                       xgifb_reg_set(pVBInfo->P3c4, 0x2e, di_0);
> >                       xgifb_reg_set(pVBInfo->P3c4, 0x2f, di_1);
> >               } else {
> > --
> > 2.9.2
> >
> > --
> > You received this message because you are subscribed to the Google
Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/ms
gid/outreachy-kernel/20160913155037.12206-1-gs051095%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

--001a1145a0c260119c053c65d792
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi</div><div><br></div>On Tue, Sep 13, 2016 at 9:27 P=
M, Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blan=
k">julia.lawall@lip6.fr</a>&gt; wrote:<br>&gt;<br>&gt;<br>&gt;<br>&gt; On T=
ue, 13 Sep 2016, Gargi Sharma wrote:<br>&gt;<br>&gt; &gt; Fixes the checkpa=
tch issue Logical continuations should be on the<br>&gt; &gt; previous line=
.<br>&gt; &gt;<br>&gt; &gt; Signed-off-by: Gargi Sharma &lt;<a href=3D"mail=
to:gs051095@gmail.com" target=3D"_blank">gs051095@gmail.com</a>&gt;<br>&gt;=
 &gt; ---<br>&gt; &gt; =C2=A0drivers/staging/xgifb/vb_setm<wbr>ode.c | 4 ++=
--<br>&gt; &gt; =C2=A01 file changed, 2 insertions(+), 2 deletions(-)<br>&g=
t; &gt;<br>&gt; &gt; diff --git a/drivers/staging/xgifb/vb_set<wbr>mode.c b=
/drivers/staging/xgifb/vb_set<wbr>mode.c<br>&gt; &gt; index 50c8ea4..ac27b2=
c 100644<br>&gt; &gt; --- a/drivers/staging/xgifb/vb_set<wbr>mode.c<br>&gt;=
 &gt; +++ b/drivers/staging/xgifb/vb_set<wbr>mode.c<br>&gt; &gt; @@ -1741,8=
 +1741,8 @@ static void XGI_SetCRT2ECLK(unsigned short ModeIdIndex,<br>&gt;=
 &gt; =C2=A0 =C2=A0 =C2=A0 for (i =3D 0; i &lt; 4; i++) {<br>&gt; &gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 xgifb_reg_and_or(pVBInfo-&gt;=
P3d4<wbr>, 0x31, ~0x30,<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (unsigne=
d short) (0x10 * i));<br>&gt; &gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 if ((!(pVBInfo-&gt;VBInfo &amp; XGI_SetCRT2ToLCDA))<br>&gt; &gt; - =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 &amp;&amp; (!(pVBInfo-&gt;VBInfo &amp; SetInSlaveMode)=
)) {<br>&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if ((!(pVBInf=
o-&gt;VBInfo &amp; XGI_SetCRT2ToLCDA)) &amp;&amp;<br>&gt; &gt; + =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (!(pVBInfo-&gt;VBInfo &amp; SetInSlaveMode))) {<br>&gt;<br>&g=
t; It&#39;s another issue, but all of those parentheses are rather tiring t=
o look<br>&gt; at.=C2=A0 The ones outside the ! are not needed.=C2=A0 The i=
ndentation is also a bit<br>&gt; much.=C2=A0 There is no need for the argum=
ent of &amp;&amp; to be aligned with the<br>&gt; third argument of xgifb_re=
g_and_or.=C2=A0 At least drop one tab, or even align<br>&gt; the two ! expr=
essions. =C2=A0<div>&gt;The space is also not needed after (unsigned<div>&g=
t; short) in the line above.</div><div><br></div><div>This check is generat=
ed by the checkpatch, and will send another patch addressing this issue.</d=
iv><div><br></div><div>&gt;This should be done in a series, with one patch<=
/div><div>&gt; per change.</div><div><br></div><div>So should I send a patc=
h-set or separate patches per change?</div><div><br></div><div>gargi</div><=
div><br>&gt;<br>&gt; julia<br>&gt;<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 xgifb_reg_set(pVBInfo-&gt=
;P3c4, 0x2e, di_0);<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 xgifb_reg_set(pVBInfo-&gt;P3c4, 0x2f, di=
_1);<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {=
<br>&gt; &gt; --<br>&gt; &gt; 2.9.2<br>&gt; &gt;<br>&gt; &gt; --<br>&gt; &g=
t; You received this message because you are subscribed to the Google Group=
s &quot;outreachy-kernel&quot; group.<br>&gt; &gt; To unsubscribe from this=
 group and stop receiving emails from it, send an email to <a href=3D"mailt=
o:outreachy-kernel%2Bunsubscribe@googlegroups.com" target=3D"_blank">outrea=
chy-kernel+unsubscribe@g<wbr>ooglegroups.com</a>.<br>&gt; &gt; To post to t=
his group, send email to <a href=3D"mailto:outreachy-kernel@googlegroups.co=
m" target=3D"_blank">outreachy-kernel@googlegroups.<wbr>com</a>.<br>&gt; &g=
t; To view this discussion on the web visit <a href=3D"https://groups.googl=
e.com/d/msgid/outreachy-kernel/20160913155037.12206-1-gs051095%40gmail.com"=
 target=3D"_blank">https://groups.google.com/d/ms<wbr>gid/outreachy-kernel/=
201609131<wbr>55037.12206-1-gs051095%40gmail<wbr>.com</a>.<br>&gt; &gt; For=
 more options, visit <a href=3D"https://groups.google.com/d/optout" target=
=3D"_blank">https://groups.google.com/d/op<wbr>tout</a>.<br>&gt; &gt;</div>=
</div></div>

--001a1145a0c260119c053c65d792--

