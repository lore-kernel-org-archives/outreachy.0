X-GM-THRID: 6388897294904721408
X-Received: by 10.98.29.7 with SMTP id d7mr2620982pfd.7.1488093614691;
        Sat, 25 Feb 2017 23:20:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.80.146 with SMTP id b18ls9401157oth.10.gmail; Sat, 25 Feb
 2017 23:20:14 -0800 (PST)
X-Received: by 10.129.95.133 with SMTP id t127mr4304826ywb.94.1488093614340;
        Sat, 25 Feb 2017 23:20:14 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id b188si924225ite.3.2017.02.25.23.20.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 23:20:14 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x244.google.com with SMTP id w185so8513332ita.3
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Feb 2017 23:20:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=++wYM2wXhmlnkjvLH5SDvZqENp52/BxYAG4MKeg47ww=;
        b=MXWpkzL292kd8/bDsUCvREG3ECCLXX8UC4vMpboc0arRlBWSjfUuzLnHNjGAXHzcjz
         mlObaIG9udpxyRbLqK2QFAD2/G1nW5QGnwh3ASTemKBCONRBFrkkTZFKzyi2c+56VMq1
         B4udvCUxGvGEaHx4gB3cT7GiQDBca3ROLMA4aphTA6A0E7l4knf6KuLMQpF2Sb6GIufA
         BTnA1Bm2GYpEr7yPA9IYx4r+ZZFjWtwckhGbQHj/9dFWWNJZiNs9djuWYil4ImlN9hAu
         w7TtyrTiTmoetAK1xHK36eik/K0mMCRm/ol5YFRZUNFLstvkHoz7bvg18SVJfpvlfFVH
         I/ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=++wYM2wXhmlnkjvLH5SDvZqENp52/BxYAG4MKeg47ww=;
        b=oOHmqY6dt5NwICR1+4+BQ3O6pyHjPTzNDvvw7NruLiNwA0Mm110uPH+gpd9vTl5XeH
         jFlGTMfuvhdkQnjKjDMqSFuM3A8XoJZY+P3vp3Vxm643VQNCdywlKJzXUW8j8apweJZo
         gvo/D2CjSByVmVVHwHnn1HJYm/AY7oXIMHo90sIh2aGefXHKDesTygZLgRbZrQJVCTyF
         hbZblOpnPKrIbFKYQO+IjHMEJa91U3CWLpDGnlNkpbvk6NiRfOXCVN+9uQmVszk+71De
         hUVVOfuXg20abXdaHTv+h95+ZyLPAglhi7XDEQLouHWo0uQf1VGJakENg3OQSQxHWQl+
         gUgQ==
X-Gm-Message-State: AMke39l324ukSMTHm/0eI//kuofUICvXDCRtgU//bUITfJiAcNe9U2J1R3NmBL11LrAwCcJ06TJ1QPS9KasX8Q==
X-Received: by 10.36.66.145 with SMTP id i139mr9513501itb.6.1488093614084;
 Sat, 25 Feb 2017 23:20:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Sat, 25 Feb 2017 23:19:43 -0800 (PST)
In-Reply-To: <20170224172356.GB11385@kroah.com>
References: <1487575302-12460-1-git-send-email-gs051095@gmail.com> <20170224172356.GB11385@kroah.com>
From: Gargi Sharma <gs051095@gmail.com>
Date: Sun, 26 Feb 2017 12:49:43 +0530
Message-ID: <CAOCi2DE6hbgroFNfo5P8hDxgMxk2JCez1zADarnZVCL2uJrCCw@mail.gmail.com>
Subject: Re: [PATCH v4] staging: rtl8192u: Remove ternary operator
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1144b9484296d4054969cba2

--001a1144b9484296d4054969cba2
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 24, 2017 at 10:53 PM, Greg KH <gregkh@linuxfoundation.org>
wrote:
>
> On Mon, Feb 20, 2017 at 12:51:42PM +0530, Gargi Sharma wrote:
> > Relational and logical operators evaluate to either true or false.
> > Lines with ternary operators were found using coccinelle script. In a
> > few cases using logical && operator would suffice. Hence those were
> > changed to improve readability.
> >
> > Coccinelle Script:
> > @r@
> > expression A,B;
> > symbol true,false;
> > binary operator b = {==,!=,&&,||,>=,<=,>,<};
> > @@
> > - (A b B) ? true : false
> > + A b B
> >
> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > ---
> > Changes in v4:
> >         - Aligned operands for && and added a newline.
> > Changes in v3:
> >         - Converted ? operator to &&.
> > Changes in v2:
> >         - Converted ? operator to if else statements.
> >
> > ---
> > ---
> >  drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c | 17
+++++++++--------
> >  1 file changed, 9 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> > index c27397b..b17bdf9 100644
> > --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> > +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> > @@ -977,16 +977,18 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
> >       HTSetConnectBwMode(ieee, (HT_CHANNEL_WIDTH)(pPeerHTCap->ChlWidth),
(HT_EXTCHNL_OFFSET)(pPeerHTInfo->ExtChlOffset));
> >
if (pHTInfo->bCurBW40MHz)
Is this the if statement you are talking about? Should I remove this or fix
the alignment for the next statement?

Thanks,
Gargi

> > -             pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth
== 1)?true:false);
> > +
> > +     pHTInfo->bCurTxBW40MHz = (pPeerHTInfo->RecommemdedTxWidth == 1);
>
> While the indentation does make sense, it does not look correct with the
> if statement still there, right?  Please fix this up when you resend
> this.
>
> thanks,
>
> greg k-h

--001a1144b9484296d4054969cba2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Fri, Feb 24, 2017 at 10:53 PM, Greg KH &lt;<a href=3D"m=
ailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@linuxfoundation.=
org</a>&gt; wrote:<br>&gt;<br>&gt; On Mon, Feb 20, 2017 at 12:51:42PM +0530=
, Gargi Sharma wrote:<br>&gt; &gt; Relational and logical operators evaluat=
e to either true or false.<br>&gt; &gt; Lines with ternary operators were f=
ound using coccinelle script. In a<br>&gt; &gt; few cases using logical &am=
p;&amp; operator would suffice. Hence those were<br>&gt; &gt; changed to im=
prove readability.<br>&gt; &gt;<br>&gt; &gt; Coccinelle Script:<br>&gt; &gt=
; @r@<br>&gt; &gt; expression A,B;<br>&gt; &gt; symbol true,false;<br>&gt; =
&gt; binary operator b =3D {=3D=3D,!=3D,&amp;&amp;,||,&gt;=3D,&lt;=3D,&gt;,=
&lt;};<br>&gt; &gt; @@<br>&gt; &gt; - (A b B) ? true : false<br>&gt; &gt; +=
 A b B<br>&gt; &gt;<br>&gt; &gt; Signed-off-by: Gargi Sharma &lt;<a href=3D=
"mailto:gs051095@gmail.com" target=3D"_blank">gs051095@gmail.com</a>&gt;<br=
>&gt; &gt; ---<br>&gt; &gt; Changes in v4:<br>&gt; &gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 - Aligned operands for &amp;&amp; and added a newline.<br>&gt; &=
gt; Changes in v3:<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 - Converted ? o=
perator to &amp;&amp;.<br>&gt; &gt; Changes in v2:<br>&gt; &gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 - Converted ? operator to if else statements.<br>&gt; &gt=
;<br>&gt; &gt; ---<br>&gt; &gt; ---<br>&gt; &gt; =C2=A0drivers/staging/rtl8=
192u/<wbr>ieee80211/rtl819x_HTProc.c | 17 +++++++++--------<br>&gt; &gt; =
=C2=A01 file changed, 9 insertions(+), 8 deletions(-)<br>&gt; &gt;<br>&gt; =
&gt; diff --git a/drivers/staging/rtl8192u/<wbr>ieee80211/rtl819x_HTProc.c =
b/drivers/staging/rtl8192u/<wbr>ieee80211/rtl819x_HTProc.c<br>&gt; &gt; ind=
ex c27397b..b17bdf9 100644<br>&gt; &gt; --- a/drivers/staging/rtl8192u/<wbr=
>ieee80211/rtl819x_HTProc.c<br>&gt; &gt; +++ b/drivers/staging/rtl8192u/<wb=
r>ieee80211/rtl819x_HTProc.c<br>&gt; &gt; @@ -977,16 +977,18 @@ void HTOnAs=
socRsp(struct ieee80211_device *ieee)<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 HTS=
etConnectBwMode(ieee, (HT_CHANNEL_WIDTH)(pPeerHTCap-<wbr>&gt;ChlWidth), (HT=
_EXTCHNL_OFFSET)(<wbr>pPeerHTInfo-&gt;ExtChlOffset));<br>&gt; &gt;<div>if (=
pHTInfo-&gt;bCurBW40MHz)<div>Is this the if statement you are talking about=
? Should I remove this or fix the alignment for the next statement?</div><d=
iv><br></div><div>Thanks,</div><div>Gargi</div><div><br>&gt; &gt; - =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pHTInfo-&gt;bCurTxBW40MHz =3D ((pPeerHTI=
nfo-&gt;<wbr>RecommemdedTxWidth =3D=3D 1)?true:false);<br>&gt; &gt; +<br>&g=
t; &gt; + =C2=A0 =C2=A0 pHTInfo-&gt;bCurTxBW40MHz =3D (pPeerHTInfo-&gt;<wbr=
>RecommemdedTxWidth =3D=3D 1);<br>&gt;<br>&gt; While the indentation does m=
ake sense, it does not look correct with the<br>&gt; if statement still the=
re, right?=C2=A0 Please fix this up when you resend<br>&gt; this.<br>&gt;<b=
r>&gt; thanks,<br>&gt;<br>&gt; greg k-h</div></div></div>

--001a1144b9484296d4054969cba2--

