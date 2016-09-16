X-GM-THRID: 6330756111319171072
X-Received: by 10.157.60.198 with SMTP id t6mr10062886otf.10.1474019928931;
        Fri, 16 Sep 2016 02:58:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.133.70 with SMTP id r67ls999447itd.6.canary; Fri, 16 Sep
 2016 02:58:47 -0700 (PDT)
X-Received: by 10.66.8.66 with SMTP id p2mr10361636paa.11.1474019927529;
        Fri, 16 Sep 2016 02:58:47 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id p193si622909ywe.6.2016.09.16.02.58.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 02:58:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id w204so5122520qka.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 02:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=OuprwwDXR7uQlFaLLIKpu0vmsXzzKumWS7dbXIQhBg4=;
        b=MPd4qJuUzkACD6A4CsRt57Eh4ydET1mPBEp5AqtwYVQmYyzYJ2iu/mk99J5QJXSCGw
         BVby5AFm8gQA2D/i2dtfGUPjflXdymoZbt1AyFlBQQLcJPXm1SV6XsDOnqJ3F5PYw9D5
         GOSiO1DQiIep3PjsIq2WoFxzAQuFhhIBJp1ILbKxFrFRYkMh3tdtP0+y28fO10McOH3E
         BjnSt9hGfN9GvGNRoe0C729xn99JIH6yZn67FmkPITO3o/4+nzbhIFsDphglfetQDf3D
         JM0XJMbsJE4j/8tMj1UQMFVXZJpP0KCkavKCakRHFqxLZl5nJhYwhmYTbWS8YU8ukd71
         rYqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=OuprwwDXR7uQlFaLLIKpu0vmsXzzKumWS7dbXIQhBg4=;
        b=gzNExlw0N6J2i007MvYiF/htmslmGLhZWlt06OB0Sjb8nnJ01dnw/n7lo4f3pUs549
         +acp6YkSYuteAXNwJ+qSMLHmMFfXQQE1NJBzzj+qLzf7sOeLEG3F/64/ZN3HpJmwDvX4
         LRq3SDaceahle27ylsROcYGWOh5544LSffILqGucDtXr/vDmmPxcHlTR883hDHBjgJ2M
         hqlg9p8gYDe6TA9RkuRsxwq3QdADi3TjiFUuiIvFX1KeUciaDkzpON6G+GmmpdWZ4dSW
         zpbN7zSHMYr5XU4aYWZutJjENelvMq6mZ+mN1O8DPXZ3E9Q49ac1bbpL4Wal4uMbaznh
         KVew==
X-Gm-Message-State: AE9vXwMjxY5oQSoa0ADMqwKAB3wuJJcL6IRkPno1WDTgqunb39hm1hIQDyI/u/kbBZgSkk/UI8ZnGlIu2F1ing==
X-Received: by 10.55.141.199 with SMTP id p190mr14701360qkd.185.1474019927255;
 Fri, 16 Sep 2016 02:58:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.184 with HTTP; Fri, 16 Sep 2016 02:58:16 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609160738320.3122@hadrien>
References: <cover.1473993585.git.gs051095@gmail.com> <73a02d3096f26d75f39cc09779e7d9f74eda9828.1473993585.git.gs051095@gmail.com>
 <alpine.DEB.2.10.1609160738320.3122@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Fri, 16 Sep 2016 15:28:16 +0530
Message-ID: <CAOCi2DFFBUX825dA0oKCysyaKRaVDegwLBc3d2UDEpgkKc=mOg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 5/8] staging: wlan-ng: add spaces
 around <<
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary=94eb2c081fde27f245053c9d0288

--94eb2c081fde27f245053c9d0288
Content-Type: text/plain; charset=UTF-8

On Fri, Sep 16, 2016 at 11:09 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Fri, 16 Sep 2016, Gargi Sharma wrote:
>
> > add spaces around << to fix the checkpatch issue, spaces preferred
> > around that '<<'.
> >
> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > ---
> >  drivers/staging/wlan-ng/hfa384x.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/wlan-ng/hfa384x.h
b/drivers/staging/wlan-ng/hfa384x.h
> > index 4bbbce5..616da07 100644
> > --- a/drivers/staging/wlan-ng/hfa384x.h
> > +++ b/drivers/staging/wlan-ng/hfa384x.h
> > @@ -508,7 +508,7 @@ Communication Frames: Test/Get/Set Field Values for
Transmit Frames
> >       HFA384x_TXSTATUS_DISCON | HFA384x_TXSTATUS_AGEDERR | \
> >       HFA384x_TXSTATUS_RETRYERR))
> >
> > -#define      HFA384x_TX_SET(v, m, s)         ((((u16)(v))<<((u16)(s)))
& ((u16)(m)))
> > +#define      HFA384x_TX_SET(v, m, s)         ((((u16)(v)) <<
((u16)(s))) & ((u16)(m)))
> >
> >  #define      HFA384x_TX_MACPORT_SET(v)       HFA384x_TX_SET(v,
HFA384x_TX_MACPORT, 8)
> >  #define      HFA384x_TX_STRUCTYPE_SET(v)     HFA384x_TX_SET(v, \
>
> This code quite unnecessarily exceeds 80 characters.  Add another patch to
> the series that moves the macro names to their normal position, one space
> after the #define.

I will add another patch to the series. :) A few of the patches from this
series have been accepted by Greg, should I drop them from the next series?

Thanks,
gargi

>
> julia
>
> > --
> > 2.9.2
> >
> > --
> > You received this message because you are subscribed to the Google
Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
msgid/outreachy-kernel/73a02d3096f26d75f39cc09779e7d9
f74eda9828.1473993585.git.gs051095%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

--94eb2c081fde27f245053c9d0288
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Fri, Sep 16, 2016 at 11:09 AM, Julia Lawall &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>=
&gt; wrote:<br>&gt;<br>&gt;<br>&gt;<br>&gt; On Fri, 16 Sep 2016, Gargi Shar=
ma wrote:<br>&gt;<br>&gt; &gt; add spaces around &lt;&lt; to fix the checkp=
atch issue, spaces preferred<br>&gt; &gt; around that &#39;&lt;&lt;&#39;.<b=
r>&gt; &gt;<br>&gt; &gt; Signed-off-by: Gargi Sharma &lt;<a href=3D"mailto:=
gs051095@gmail.com" target=3D"_blank">gs051095@gmail.com</a>&gt;<br>&gt; &g=
t; ---<br>&gt; &gt; =C2=A0drivers/staging/wlan-ng/<wbr>hfa384x.h | 2 +-<br>=
&gt; &gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>&gt; &gt;<=
br>&gt; &gt; diff --git a/drivers/staging/wlan-ng/<wbr>hfa384x.h b/drivers/=
staging/wlan-ng/<wbr>hfa384x.h<br>&gt; &gt; index 4bbbce5..616da07 100644<b=
r>&gt; &gt; --- a/drivers/staging/wlan-ng/<wbr>hfa384x.h<br>&gt; &gt; +++ b=
/drivers/staging/wlan-ng/<wbr>hfa384x.h<br>&gt; &gt; @@ -508,7 +508,7 @@ Co=
mmunication Frames: Test/Get/Set Field Values for Transmit Frames<br>&gt; &=
gt; =C2=A0 =C2=A0 =C2=A0 HFA384x_TXSTATUS_DISCON | HFA384x_TXSTATUS_AGEDERR=
 | \<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 HFA384x_TXSTATUS_RETRYERR))<br>&gt; =
&gt;<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0HFA384x_TX_SET(v, m, s) =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 ((((u16)(v))&lt;&lt;((u16)(s))) &amp; ((u16)(m)))<=
br>&gt; &gt; +#define =C2=A0 =C2=A0 =C2=A0HFA384x_TX_SET(v, m, s) =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 ((((u16)(v)) &lt;&lt; ((u16)(s))) &amp; ((u16)(m)))<br=
>&gt; &gt;<br>&gt; &gt; =C2=A0#define =C2=A0 =C2=A0 =C2=A0HFA384x_TX_MACPOR=
T_SET(v) =C2=A0 =C2=A0 =C2=A0 HFA384x_TX_SET(v, HFA384x_TX_MACPORT, 8)<br>&=
gt; &gt; =C2=A0#define =C2=A0 =C2=A0 =C2=A0HFA384x_TX_STRUCTYPE_SET(v) =C2=
=A0 =C2=A0 HFA384x_TX_SET(v, \<br>&gt;<br>&gt; This code quite unnecessaril=
y exceeds 80 characters.=C2=A0 Add another patch to<br>&gt; the series that=
 moves the macro names to their normal position, one space<br>&gt; after th=
e #define.<div><br></div><div>I will add another patch to the series. :) A =
few of the patches from this series have been accepted by Greg, should I dr=
op them from the next series?=C2=A0</div><div><br></div><div>Thanks,</div><=
div>gargi</div><div><br>&gt;<br>&gt; julia<br>&gt;<br>&gt; &gt; --<br>&gt; =
&gt; 2.9.2<br>&gt; &gt;<br>&gt; &gt; --<br>&gt; &gt; You received this mess=
age because you are subscribed to the Google Groups &quot;outreachy-kernel&=
quot; group.<br>&gt; &gt; To unsubscribe from this group and stop receiving=
 emails from it, send an email to <a href=3D"mailto:outreachy-kernel%2Bunsu=
bscribe@googlegroups.com" target=3D"_blank">outreachy-kernel+unsubscribe@<w=
br>googlegroups.com</a>.<br>&gt; &gt; To post to this group, send email to =
<a href=3D"mailto:outreachy-kernel@googlegroups.com" target=3D"_blank">outr=
eachy-kernel@googlegroups.<wbr>com</a>.<br>&gt; &gt; To view this discussio=
n on the web visit <a href=3D"https://groups.google.com/d/msgid/outreachy-k=
ernel/73a02d3096f26d75f39cc09779e7d9f74eda9828.1473993585.git.gs051095%40gm=
ail.com" target=3D"_blank">https://groups.google.com/d/<wbr>msgid/outreachy=
-kernel/<wbr>73a02d3096f26d75f39cc09779e7d9<wbr>f74eda9828.1473993585.git.<=
wbr>gs051095%40gmail.com</a>.<br>&gt; &gt; For more options, visit <a href=
=3D"https://groups.google.com/d/optout" target=3D"_blank">https://groups.go=
ogle.com/d/<wbr>optout</a>.<br>&gt; &gt;</div></div>

--94eb2c081fde27f245053c9d0288--

