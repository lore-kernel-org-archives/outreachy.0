X-GM-THRID: 6207856013446479872
X-Received: by 10.129.80.132 with SMTP id e126mr2401655ywb.44.1445502838495;
        Thu, 22 Oct 2015 01:33:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.26 with SMTP id x26ls696015ioi.31.gmail; Thu, 22 Oct
 2015 01:33:58 -0700 (PDT)
X-Received: by 10.107.159.132 with SMTP id i126mr12183126ioe.23.1445502838041;
        Thu, 22 Oct 2015 01:33:58 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-io0-x232.google.com (mail-io0-x232.google.com. [2607:f8b0:4001:c06::232])
        by gmr-mx.google.com with ESMTPS id mh4si667462igb.0.2015.10.22.01.33.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 01:33:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2607:f8b0:4001:c06::232 as permitted sender) client-ip=2607:f8b0:4001:c06::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2607:f8b0:4001:c06::232 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x232.google.com with SMTP id z202so83954870iof.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 01:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=/9WnoDjM3ruXYYnW4oRHc9anmz7DtJGMgCw+bZV6svs=;
        b=yf5eMm2WpOMvVcLPm5AQShr0gFAF4rx2rbyKpftV82wiMrq36TXuVWZNGA7G6QACXx
         hB3gJP9qgBpbKM+SlxpYvfAW1PJxFsAlKPlDhCFIdg5IAF8tgTTqiEwDk3/7CXz1S9aw
         ocEu0mJv6hlTg7LmrdZpmlXV/xonwY3Xc/I5YDPADhJvAGdg1tr7X091cZ/NY342v5lJ
         EQ2HIiXJBkT8BehJ4Eiz0L0sch7ubqTLlVZkbSB+WTgh93xGh7B6BsX2IIp5dG0fBopG
         DkMV6Ta3Xl+2RwACIpWC0aoN8mbDzXaxtQcGy7RgLciMzaN9NT1mNsX2QHMTQ9J4w7cH
         j4Eg==
MIME-Version: 1.0
X-Received: by 10.107.163.204 with SMTP id m195mr16692423ioe.65.1445502837934;
 Thu, 22 Oct 2015 01:33:57 -0700 (PDT)
Received: by 10.64.230.131 with HTTP; Thu, 22 Oct 2015 01:33:57 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510221013530.2607@hadrien>
References: <1445463010-3525-1-git-send-email-cristina.moraru09@gmail.com>
	<alpine.DEB.2.02.1510220842030.2246@localhost6.localdomain6>
	<CAGZ2q2x9iTaFL3Lefy8PUbWe4OHqSQyV1W=PyrhZ8hgeM0C5ug@mail.gmail.com>
	<alpine.DEB.2.10.1510221013530.2607@hadrien>
Date: Thu, 22 Oct 2015 11:33:57 +0300
Message-ID: <CAGZ2q2w43SahBdmCYXkL7R=CXiNF=TD3x6dpD17_s70VC85AhQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: Add error code handling
From: Cristina-Gabriela Moraru <cristina.moraru09@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1140fb702d51640522ad5b1e

--001a1140fb702d51640522ad5b1e
Content-Type: text/plain; charset=UTF-8

2015-10-22 11:16 GMT+03:00 Julia Lawall <julia.lawall@lip6.fr>:

> On Thu, 22 Oct 2015, Cristina-Gabriela Moraru wrote:
>
> >
> >
> > 2015-10-22 9:43 GMT+03:00 Julia Lawall <julia.lawall@lip6.fr>:
> >       On Thu, 22 Oct 2015, Cristina Moraru wrote:
> >
> >       > Write function can return non-zero values indicating
> >       > errors. This values must be caught and handled.
> >
> >       Why?  Sometimes it is possible to tolerate errors.  At least in
> >       the first
> >       case it seems possible that the developer considered the
> >       possibility that
> >       an error occurred and felt that this was not a problem.  Maybe
> >       it is
> >       correct that the errors are not tolearble, but more explanation
> >       is needed.
> >
> >       julia
> >
> >
> > I didn't know that there are errors that are tolerated and, analyzing the
> > whole file, for me it looked like an error the fact that all functions
> were
> > returning an error code when write function failed and this one didn't.
> > Is there a way to figure out when a return value is ignored on purpose ?
>
> I think you would have to understand the behavior of the device.
>
> The fact that in one case there was a test on the return value and an
> action in the success case suggests that the developer thought about the
> failure case and decided that it isn't a problem.
>
> The problem with a write is that the effect of the failure on the rest of
> the execution is not clear from the rest of the code. If a memory
> allocation fails and that is not tested for and there is a later access to
> the memory, then it is clear that there is a problem.
>
> julia
>
>
Ok. Understood. Thanks !

Cristina


>
> >       >
> >       > Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> >       > ---
> >       >  drivers/staging/iio/addac/adt7316.c | 11 +++++++----
> >       >  1 file changed, 7 insertions(+), 4 deletions(-)
> >       >
> >       > diff --git a/drivers/staging/iio/addac/adt7316.c
> >       b/drivers/staging/iio/addac/adt7316.c
> >       > index 3adc451..6d67edf 100644
> >       > --- a/drivers/staging/iio/addac/adt7316.c
> >       > +++ b/drivers/staging/iio/addac/adt7316.c
> >       > @@ -1850,10 +1850,11 @@ static ssize_t
> >       adt7316_set_int_mask(struct device *dev,
> >       >               mask = ADT7316_INT_MASK2_VDD;   /* disable vdd
> >       int */
> >       >
> >       >       ret = chip->bus.write(chip->bus.client,
> >       ADT7316_INT_MASK2, mask);
> >       > -     if (!ret) {
> >       > -             chip->int_mask &= ~ADT7316_VDD_INT_MASK;
> >       > -             chip->int_mask |= data & ADT7316_VDD_INT_MASK;
> >       > -     }
> >       > +     if (ret)
> >       > +             return -EIO;
> >       > +
> >       > +     chip->int_mask &= ~ADT7316_VDD_INT_MASK;
> >       > +     chip->int_mask |= data & ADT7316_VDD_INT_MASK;
> >       >
> >       >       if (data & ADT7316_TEMP_AIN_INT_MASK) {
> >       >               if ((chip->id & ID_FAMILY_MASK) == ID_ADT73XX)
> >       > @@ -1864,6 +1865,8 @@ static ssize_t
> >       adt7316_set_int_mask(struct device *dev,
> >       >                       mask = (~data) &
> >       ADT7316_TEMP_AIN_INT_MASK;
> >       >       }
> >       >       ret = chip->bus.write(chip->bus.client,
> >       ADT7316_INT_MASK1, mask);
> >       > +     if (ret)
> >       > +             return -EIO;
> >       >
> >       >       chip->int_mask = mask;
> >       >
> >       > --
> >       > 1.9.1
> >       >
> > > --
> > > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it,
> > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to
> > outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/1445463010-3525-1-git-se
> > nd-email-cristina.moraru09%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/CAGZ2q2x9iTaFL3Lefy8PUbW
> > e4OHqSQyV1W%3DPyrhZ8hgeM0C5ug%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >
>

--001a1140fb702d51640522ad5b1e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2015-10-22 11:16 GMT+03:00 Julia Lawall <span dir=3D"ltr">&lt;<a href=
=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>=
&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><span>On Thu, 22 Oct 2015, C=
ristina-Gabriela Moraru wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; 2015-10-22 9:43 GMT+03:00 Julia Lawall &lt;<a href=3D"mailto:julia.law=
all@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt;:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Thu, 22 Oct 2015, Cristina Moraru wrote:<=
br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Write function can return non-zero valu=
es indicating<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; errors. This values must be caught and =
handled.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Why?=C2=A0 Sometimes it is possible to toler=
ate errors.=C2=A0 At least in<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0the first<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case it seems possible that the developer co=
nsidered the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0possibility that<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0an error occurred and felt that this was not=
 a problem.=C2=A0 Maybe<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0it is<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0correct that the errors are not tolearble, b=
ut more explanation<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0is needed.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0julia<br>
&gt;<br>
&gt;<br>
&gt; I didn&#39;t know that there are errors that are tolerated and, analyz=
ing the<br>
&gt; whole file, for me it looked like an error the fact that all functions=
 were<br>
&gt; returning an error code when write function failed and this one didn&#=
39;t.<br>
&gt; Is there a way to figure out when a return value is ignored on purpose=
 ?<br>
<br>
</span>I think you would have to understand the behavior of the device.<br>
<br>
The fact that in one case there was a test on the return value and an<br>
action in the success case suggests that the developer thought about the<br=
>
failure case and decided that it isn&#39;t a problem.<br>
<br>
The problem with a write is that the effect of the failure on the rest of<b=
r>
the execution is not clear from the rest of the code. If a memory<br>
allocation fails and that is not tested for and there is a later access to<=
br>
the memory, then it is clear that there is a problem.<br>
<br>
julia<br>
<div><div><br></div></div></blockquote><div><br></div><div>Ok. Understood. =
Thanks !<br><br></div><div>Cristina<br></div><div>=C2=A0</div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div><div>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Cristina Moraru &lt;<a h=
ref=3D"mailto:cristina.moraru09@gmail.com" target=3D"_blank">cristina.morar=
u09@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 drivers/staging/iio/addac/adt7316=
.c | 11 +++++++----<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 1 file changed, 7 insertions(+), =
4 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/iio/addac/=
adt7316.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/iio/addac/adt7316.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index 3adc451..6d67edf 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/iio/addac/adt7316=
.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/iio/addac/adt7316=
.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -1850,10 +1850,11 @@ static ssize_t<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0adt7316_set_int_mask(struct device *dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0mask =3D ADT7316_INT_MASK2_VDD;=C2=A0 =C2=A0/* disable vdd=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D chip-=
&gt;bus.write(chip-&gt;bus.client,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ADT7316_INT_MASK2, mask);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0if (!ret) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0chip-&gt;int_mask &amp;=3D ~ADT7316_VDD_INT_MASK;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0chip-&gt;int_mask |=3D data &amp; ADT7316_VDD_INT_MASK;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0if (ret)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0return -EIO;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0chip-&gt;int_mask =
&amp;=3D ~ADT7316_VDD_INT_MASK;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0chip-&gt;int_mask =
|=3D data &amp; ADT7316_VDD_INT_MASK;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (data &amp=
; ADT7316_TEMP_AIN_INT_MASK) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if ((chip-&gt;id &amp; ID_FAMILY_MASK) =3D=3D ID_ADT73XX)<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -1864,6 +1865,8 @@ static ssize_t<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0adt7316_set_int_mask(struct device *dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mask =3D (~data) &amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ADT7316_TEMP_AIN_INT_MASK;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D chip-=
&gt;bus.write(chip-&gt;bus.client,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ADT7316_INT_MASK1, mask);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0if (ret)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0return -EIO;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0chip-&gt;int_=
mask =3D mask;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; 1.9.1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt; --<br>
&gt; &gt; You received this message because you are subscribed to the Googl=
e<br>
&gt; Groups &quot;outreachy-kernel&quot; group.<br>
&gt; &gt; To unsubscribe from this group and stop receiving emails from it,=
<br>
&gt; send an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@goog=
legroups.com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.c=
om</a>.<br>
&gt; &gt; To post to this group, send email to<br>
&gt; <a href=3D"mailto:outreachy-kernel@googlegroups.com" target=3D"_blank"=
>outreachy-kernel@googlegroups.com</a>.<br>
&gt; &gt; To view this discussion on the web visithttps://<a href=3D"http:/=
/groups.google.com/d/msgid/outreachy-kernel/1445463010-3525-1-git-se" rel=
=3D"noreferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-kerne=
l/1445463010-3525-1-git-se</a><br>
&gt; nd-email-cristina.moraru09%<a href=3D"http://40gmail.com" rel=3D"noref=
errer" target=3D"_blank">40gmail.com</a>.<br>
&gt; &gt; For more options, visit <a href=3D"https://groups.google.com/d/op=
tout" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/opto=
ut</a>.<br>
&gt; &gt;<br>
&gt;<br>
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
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>=
.<br>
</div></div>&gt; To view this discussion on the web visithttps://<a href=3D=
"http://groups.google.com/d/msgid/outreachy-kernel/CAGZ2q2x9iTaFL3Lefy8PUbW=
" rel=3D"noreferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-=
kernel/CAGZ2q2x9iTaFL3Lefy8PUbW</a><br>
&gt; e4OHqSQyV1W%3DPyrhZ8hgeM0C5ug%<a href=3D"http://40mail.gmail.com" rel=
=3D"noreferrer" target=3D"_blank">40mail.gmail.com</a>.<br>
<div><div>&gt; For more options, visit <a href=3D"https://groups.google.com=
/d/optout" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d=
/optout</a>.<br>
&gt;<br>
&gt;</div></div></blockquote></div><br></div></div>

--001a1140fb702d51640522ad5b1e--

