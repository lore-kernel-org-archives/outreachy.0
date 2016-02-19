X-GM-THRID: 6252670942191812608
X-Received: by 10.66.139.138 with SMTP id qy10mr12968011pab.46.1455895828742;
        Fri, 19 Feb 2016 07:30:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.32.130 with SMTP id g124ls188644iog.70.gmail; Fri, 19 Feb
 2016 07:30:28 -0800 (PST)
X-Received: by 10.66.119.197 with SMTP id kw5mr12614907pab.15.1455895828302;
        Fri, 19 Feb 2016 07:30:28 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ob0-x22d.google.com (mail-ob0-x22d.google.com. [2607:f8b0:4003:c01::22d])
        by gmr-mx.google.com with ESMTPS id s20si610340igr.2.2016.02.19.07.30.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 07:30:28 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::22d as permitted sender) client-ip=2607:f8b0:4003:c01::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::22d as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x22d.google.com with SMTP id xk3so112363553obc.2
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 07:30:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=LgEBqq7sgcMhAse9grzMvKub8W8WAItJFngNEFdkJ8E=;
        b=uREio3cn3FTAS4p4kC07gxzRF/M+/TEg69yUP77IHaM8mUs+QHW5/Q2+tRZ2kSt5Sa
         T2yoJjR4wYlRCx6B0co1wXVnESSusQ6KmfUq6yzoO+xFznpN2S5rfyI0nODEMXOguAfe
         QGBF4jATzyoN6yQAFgbJBKPtA0QIbav2VhIKLB1TtwkaP8HCH82d+u17qenD+1F5efbR
         mekauxMo5zC/DWF0pQG2UTvSLPmmVuk3nHvAa3B8A58F0L/1udh9c5hUMQ9fi08ShC/W
         RpvSLGrM2oviKv3GXWxzsTL8P7hyjzA2miHknv3ZKSqwX5NjdTyUcf1xQkTigUEKdl85
         3Yew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=LgEBqq7sgcMhAse9grzMvKub8W8WAItJFngNEFdkJ8E=;
        b=hxmxZ7g9yljCeklgEwsNuJFQYTYS/vf83g+a3XSTGAhuai0EkArdg4Q/WA/e23sMsh
         PPki36sgKnAhHA35zsmS18QIJsKdxIqOCA1YOefwZ9cxi8gn7YAtpzE/F8KqK+LSOqDk
         +CQI9I+W76P/V8ZeBE+GW0mXMbJ7Y+1rwomg43l5zVfNrmQymv6/NWPWNPZEz91loh0h
         7KjvaS7OZyz/+20TnX+i/zd8Ed5KNmWghlc/jQzGK5ZTlckxzFePLK8iRJ98YJiXSTa4
         uTriiXF5AqYWEQ8Jhpyh3wXwtAJlb/F1Zk1fQtEWQNalCgXMs9hiWIMPQdGpOdXcWnYi
         nuGw==
X-Gm-Message-State: AG10YOQXX02OGwUSY5gbMecesQTkZDxqfpYbPDuZlySP4uNU1mHtXSoYcXud4GEHWBHv6qgT7WWNxpRxWucEyg==
MIME-Version: 1.0
X-Received: by 10.182.133.4 with SMTP id oy4mr12045482obb.65.1455895828134;
 Fri, 19 Feb 2016 07:30:28 -0800 (PST)
Received: by 10.202.200.211 with HTTP; Fri, 19 Feb 2016 07:30:27 -0800 (PST)
Received: by 10.202.200.211 with HTTP; Fri, 19 Feb 2016 07:30:27 -0800 (PST)
In-Reply-To: <CAEnQRZDAOZgagApcF+xaLeNVWJ8ruDh2R_pcWEmMrOBaA-ByNw@mail.gmail.com>
References: <20160218213554.GA6769@janani-Inspiron-3521>
	<CAEnQRZDAOZgagApcF+xaLeNVWJ8ruDh2R_pcWEmMrOBaA-ByNw@mail.gmail.com>
Date: Fri, 19 Feb 2016 10:30:27 -0500
Message-ID: <CANnt6Xm760zJzQPmaD7QH_qYwBxWQ90W1w85=yiTLvXAKdo6eg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: addac: Remove
 unnecessary else after return in if block
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=e89a8ff25258aa7e82052c21299e

--e89a8ff25258aa7e82052c21299e
Content-Type: text/plain; charset=UTF-8

On Feb 19, 2016 6:06 AM, "Daniel Baluta" <daniel.baluta@gmail.com> wrote:
>
> On Thu, Feb 18, 2016 at 11:35 PM, Janani Ravichandran
> <janani.rvchndrn@gmail.com> wrote:
> > Else is unncessary when there is an return statement in the
> > corresponding if block. Remove else and refactor code.
> > Coccinelle patch used:
> >
> > @rule1@
> > expression e1;
> > @@
> >
> >         if (e1) { ... return ...; }
> > -       else{
> >                 ...
> > -       }
> >
> >
> > @rule2@
> > expression e2;
> > statement s1;
> > @@
> >
> >         if(e2) { ... return ...; }
> > -       else
> >                 s1
> >
> > Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> > ---
> >  drivers/staging/iio/addac/adt7316.c | 5 ++---
> >  1 file changed, 2 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/iio/addac/adt7316.c
b/drivers/staging/iio/addac/adt7316.c
> > index 3adc451..4a88a85 100644
> > --- a/drivers/staging/iio/addac/adt7316.c
> > +++ b/drivers/staging/iio/addac/adt7316.c
> > @@ -465,8 +465,7 @@ static ssize_t adt7316_show_all_ad_channels(struct
device *dev,
> >                 return sprintf(buf, "0 - VDD\n1 - Internal
Temperature\n"
> >                                 "2 - External Temperature or AIN1\n"
> >                                 "3 - AIN2\n4 - AIN3\n5 - AIN4\n");
> > -       else
> > -               return sprintf(buf, "0 - VDD\n1 - Internal
Temperature\n"
> > +       return sprintf(buf, "0 - VDD\n1 - Internal Temperature\n"
> >                                 "2 - External Temperature\n");
>
> While touching this, you can also fix the alignment for the second line
> CHECK: Alignment should match open parenthesis
>

Sure, Daniel. I will send a v2 for this. Thanks!

Janani.
> >  }
> >
> > @@ -637,7 +636,7 @@ static ssize_t
adt7316_show_da_high_resolution(struct device *dev,
> >         if (chip->config3 & ADT7316_DA_HIGH_RESOLUTION) {
> >                 if (chip->id == ID_ADT7316 || chip->id == ID_ADT7516)
> >                         return sprintf(buf, "1 (12 bits)\n");
> > -               else if (chip->id == ID_ADT7317 || chip->id ==
ID_ADT7517)
> > +               if (chip->id == ID_ADT7317 || chip->id == ID_ADT7517)
> >                         return sprintf(buf, "1 (10 bits)\n");
> >         }
> >
> > --

--e89a8ff25258aa7e82052c21299e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Feb 19, 2016 6:06 AM, &quot;Daniel Baluta&quot; &lt;<a href=3D"mailto:da=
niel.baluta@gmail.com">daniel.baluta@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Thu, Feb 18, 2016 at 11:35 PM, Janani Ravichandran<br>
&gt; &lt;<a href=3D"mailto:janani.rvchndrn@gmail.com">janani.rvchndrn@gmail=
.com</a>&gt; wrote:<br>
&gt; &gt; Else is unncessary when there is an return statement in the<br>
&gt; &gt; corresponding if block. Remove else and refactor code.<br>
&gt; &gt; Coccinelle patch used:<br>
&gt; &gt;<br>
&gt; &gt; @rule1@<br>
&gt; &gt; expression e1;<br>
&gt; &gt; @@<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (e1) { ... return ...; }<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0else{<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0...<=
br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; @rule2@<br>
&gt; &gt; expression e2;<br>
&gt; &gt; statement s1;<br>
&gt; &gt; @@<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if(e2) { ... return ...; }<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0s1<b=
r>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Janani Ravichandran &lt;<a href=3D"mailto:janani.r=
vchndrn@gmail.com">janani.rvchndrn@gmail.com</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 drivers/staging/iio/addac/adt7316.c | 5 ++---<br>
&gt; &gt;=C2=A0 1 file changed, 2 insertions(+), 3 deletions(-)<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/stagin=
g/iio/addac/adt7316.c<br>
&gt; &gt; index 3adc451..4a88a85 100644<br>
&gt; &gt; --- a/drivers/staging/iio/addac/adt7316.c<br>
&gt; &gt; +++ b/drivers/staging/iio/addac/adt7316.c<br>
&gt; &gt; @@ -465,8 +465,7 @@ static ssize_t adt7316_show_all_ad_channels(s=
truct device *dev,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0retu=
rn sprintf(buf, &quot;0 - VDD\n1 - Internal Temperature\n&quot;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;2 - External Temp=
erature or AIN1\n&quot;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;3 - AIN2\n4 - AIN=
3\n5 - AIN4\n&quot;);<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return sp=
rintf(buf, &quot;0 - VDD\n1 - Internal Temperature\n&quot;<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0return sprintf(buf, &quot;0 - VDD\n1 =
- Internal Temperature\n&quot;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;2 - External Temp=
erature\n&quot;);<br>
&gt;<br>
&gt; While touching this, you can also fix the alignment for the second lin=
e<br>
&gt; CHECK: Alignment should match open parenthesis<br>
&gt;</p>
<p dir=3D"ltr">Sure, Daniel. I will send a v2 for this. Thanks!</p>
<p dir=3D"ltr">Janani.<br>
&gt; &gt;=C2=A0 }<br>
&gt; &gt;<br>
&gt; &gt; @@ -637,7 +636,7 @@ static ssize_t adt7316_show_da_high_resolutio=
n(struct device *dev,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (chip-&gt;config3 &amp; ADT73=
16_DA_HIGH_RESOLUTION) {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (=
chip-&gt;id =3D=3D ID_ADT7316 || chip-&gt;id =3D=3D ID_ADT7516)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0return sprintf(buf, &quot;1 (12 bits)\n&quot;);<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else if (=
chip-&gt;id =3D=3D ID_ADT7317 || chip-&gt;id =3D=3D ID_ADT7517)<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (chip-=
&gt;id =3D=3D ID_ADT7317 || chip-&gt;id =3D=3D ID_ADT7517)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0return sprintf(buf, &quot;1 (10 bits)\n&quot;);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt;<br>
&gt; &gt; --<br>
</p>

--e89a8ff25258aa7e82052c21299e--

