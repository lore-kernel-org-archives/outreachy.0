X-GM-THRID: 6207856013446479872
X-Received: by 10.140.144.215 with SMTP id 206mr11602846qhq.6.1445501554595;
        Thu, 22 Oct 2015 01:12:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.72 with SMTP id d66ls848247qga.33.gmail; Thu, 22 Oct
 2015 01:12:33 -0700 (PDT)
X-Received: by 10.140.165.83 with SMTP id l80mr11561903qhl.14.1445501553902;
        Thu, 22 Oct 2015 01:12:33 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-io0-x234.google.com (mail-io0-x234.google.com. [2607:f8b0:4001:c06::234])
        by gmr-mx.google.com with ESMTPS id mh4si664452igb.0.2015.10.22.01.12.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 01:12:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2607:f8b0:4001:c06::234 as permitted sender) client-ip=2607:f8b0:4001:c06::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2607:f8b0:4001:c06::234 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x234.google.com with SMTP id z202so83548862iof.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 01:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=G4Vmj5ih3PlxK3/baLpCtOHxFQz0BPQdyM/SwEtrX3A=;
        b=qCgzQhBXk90tZ0xrLepP1HLtYkkdPLtAff2GIiMppJcaQwyYkEN0npJXRZh222vTq1
         uxUj1TNsgI+CA2vCOnAVF4Xqo8OjPpCDKPJXQOyPXKeIoTXN/xNQHuyEWa3RE2rccRkv
         Il5jeCkZtIX3cO30dnxyQFRIWSy/8255xya1v8qexboOSrmvVosNKVYIjb5ZXW6cUIfq
         rU2o611ni7NzgDx9y+DregWlQDjjbm3fDQECjsscj3DDUe3ZY85tiylU7in02r9OmbTn
         p0GDhRN7PllGZeNwDNsNwVlX9CqOY30eefmAcBnKtbfWOOqKmME9iSsJmtiWxFFwRth2
         ezlQ==
MIME-Version: 1.0
X-Received: by 10.107.160.67 with SMTP id j64mr13928664ioe.128.1445501553767;
 Thu, 22 Oct 2015 01:12:33 -0700 (PDT)
Received: by 10.64.230.131 with HTTP; Thu, 22 Oct 2015 01:12:33 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510220842030.2246@localhost6.localdomain6>
References: <1445463010-3525-1-git-send-email-cristina.moraru09@gmail.com>
	<alpine.DEB.2.02.1510220842030.2246@localhost6.localdomain6>
Date: Thu, 22 Oct 2015 11:12:33 +0300
Message-ID: <CAGZ2q2x9iTaFL3Lefy8PUbWe4OHqSQyV1W=PyrhZ8hgeM0C5ug@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: Add error code handling
From: Cristina-Gabriela Moraru <cristina.moraru09@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1140ed9ca27e810522ad0e1b

--001a1140ed9ca27e810522ad0e1b
Content-Type: text/plain; charset=UTF-8

2015-10-22 9:43 GMT+03:00 Julia Lawall <julia.lawall@lip6.fr>:

> On Thu, 22 Oct 2015, Cristina Moraru wrote:
>
> > Write function can return non-zero values indicating
> > errors. This values must be caught and handled.
>
> Why?  Sometimes it is possible to tolerate errors.  At least in the first
> case it seems possible that the developer considered the possibility that
> an error occurred and felt that this was not a problem.  Maybe it is
> correct that the errors are not tolearble, but more explanation is needed.
>
> julia
>
>
I didn't know that there are errors that are tolerated and, analyzing the
whole file, for me it looked like an error the fact that all functions were
returning an error code when write function failed and this one didn't.
Is there a way to figure out when a return value is ignored on purpose ?


> >
> > Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> > ---
> >  drivers/staging/iio/addac/adt7316.c | 11 +++++++----
> >  1 file changed, 7 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/iio/addac/adt7316.c
> b/drivers/staging/iio/addac/adt7316.c
> > index 3adc451..6d67edf 100644
> > --- a/drivers/staging/iio/addac/adt7316.c
> > +++ b/drivers/staging/iio/addac/adt7316.c
> > @@ -1850,10 +1850,11 @@ static ssize_t adt7316_set_int_mask(struct
> device *dev,
> >               mask = ADT7316_INT_MASK2_VDD;   /* disable vdd int */
> >
> >       ret = chip->bus.write(chip->bus.client, ADT7316_INT_MASK2, mask);
> > -     if (!ret) {
> > -             chip->int_mask &= ~ADT7316_VDD_INT_MASK;
> > -             chip->int_mask |= data & ADT7316_VDD_INT_MASK;
> > -     }
> > +     if (ret)
> > +             return -EIO;
> > +
> > +     chip->int_mask &= ~ADT7316_VDD_INT_MASK;
> > +     chip->int_mask |= data & ADT7316_VDD_INT_MASK;
> >
> >       if (data & ADT7316_TEMP_AIN_INT_MASK) {
> >               if ((chip->id & ID_FAMILY_MASK) == ID_ADT73XX)
> > @@ -1864,6 +1865,8 @@ static ssize_t adt7316_set_int_mask(struct device
> *dev,
> >                       mask = (~data) & ADT7316_TEMP_AIN_INT_MASK;
> >       }
> >       ret = chip->bus.write(chip->bus.client, ADT7316_INT_MASK1, mask);
> > +     if (ret)
> > +             return -EIO;
> >
> >       chip->int_mask = mask;
> >
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1445463010-3525-1-git-send-email-cristina.moraru09%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a1140ed9ca27e810522ad0e1b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2015-10-22 9:43 GMT+03:00 Julia Lawall <span dir=3D"ltr">&lt;<a href=3D=
"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt=
;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Thu, 22 Oct=
 2015, Cristina Moraru wrote:<br>
<br>
&gt; Write function can return non-zero values indicating<br>
&gt; errors. This values must be caught and handled.<br>
<br>
</span>Why?=C2=A0 Sometimes it is possible to tolerate errors.=C2=A0 At lea=
st in the first<br>
case it seems possible that the developer considered the possibility that<b=
r>
an error occurred and felt that this was not a problem.=C2=A0 Maybe it is<b=
r>
correct that the errors are not tolearble, but more explanation is needed.<=
br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div><=
br></div><div>I didn&#39;t know that there are errors that are tolerated an=
d, analyzing the<br></div><div>whole file, for me it looked like an error t=
he fact that all functions were<br></div><div>returning an error code when =
write function failed and this one didn&#39;t.<br></div><div>Is there a way=
 to figure out when a return value is ignored on purpose ?<br></div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=
=3D"h5">
&gt;<br>
&gt; Signed-off-by: Cristina Moraru &lt;<a href=3D"mailto:cristina.moraru09=
@gmail.com">cristina.moraru09@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/iio/addac/adt7316.c | 11 +++++++----<br>
&gt;=C2=A0 1 file changed, 7 insertions(+), 4 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio=
/addac/adt7316.c<br>
&gt; index 3adc451..6d67edf 100644<br>
&gt; --- a/drivers/staging/iio/addac/adt7316.c<br>
&gt; +++ b/drivers/staging/iio/addac/adt7316.c<br>
&gt; @@ -1850,10 +1850,11 @@ static ssize_t adt7316_set_int_mask(struct dev=
ice *dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mask =3D ADT7316=
_INT_MASK2_VDD;=C2=A0 =C2=A0/* disable vdd int */<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D chip-&gt;bus.write(chip-&gt;bus.clie=
nt, ADT7316_INT_MASK2, mask);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (!ret) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0chip-&gt;int_mask &am=
p;=3D ~ADT7316_VDD_INT_MASK;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0chip-&gt;int_mask |=
=3D data &amp; ADT7316_VDD_INT_MASK;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (ret)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EIO;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0chip-&gt;int_mask &amp;=3D ~ADT7316_VDD_INT_MASK;=
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0chip-&gt;int_mask |=3D data &amp; ADT7316_VDD_INT=
_MASK;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (data &amp; ADT7316_TEMP_AIN_INT_MASK) {<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((chip-&gt;id=
 &amp; ID_FAMILY_MASK) =3D=3D ID_ADT73XX)<br>
&gt; @@ -1864,6 +1865,8 @@ static ssize_t adt7316_set_int_mask(struct devic=
e *dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0mask =3D (~data) &amp; ADT7316_TEMP_AIN_INT_MASK;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D chip-&gt;bus.write(chip-&gt;bus.clie=
nt, ADT7316_INT_MASK1, mask);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (ret)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EIO;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0chip-&gt;int_mask =3D mask;<br>
&gt;<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1445463010-3525-1-git-send-email-cristina.=
moraru09%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.g=
oogle.com/d/msgid/outreachy-kernel/1445463010-3525-1-git-send-email-cristin=
a.moraru09%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--001a1140ed9ca27e810522ad0e1b--

