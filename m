X-GM-THRID: 6394971085965623296
Date: Thu, 9 Mar 2017 06:55:06 -0800 (PST)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Message-Id: <64d237ab-7a90-4f09-9786-3abc672a0953@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1703091548380.3186@hadrien>
References: <cover.1489069491.git.varshar186@gmail.com> <58c16ab4.c348620a.f3c4a.da3e@mx.google.com>
 <alpine.DEB.2.20.1703091548380.3186@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: media: atomisp: Remove
 useless cast.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_788_711274008.1489071306436"
X-Google-Token: EMrZhcYFXhxrmQ38ACE0
X-Google-IP: 45.125.141.33

------=_Part_788_711274008.1489071306436
Content-Type: multipart/alternative; 
	boundary="----=_Part_789_1350802751.1489071306436"

------=_Part_789_1350802751.1489071306436
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Thursday, March 9, 2017 at 8:20:43 PM UTC+5:30, Julia Lawall wrote:
>
> > @@ -873,7 +873,7 @@ static int gc2235_detect(struct i2c_client *client) 
> >          } 
> >          ret = gc2235_read_reg(client, GC2235_8BIT, 
> >                                          GC2235_SENSOR_ID_L, &low); 
> > -        id = ((((u16) high) << 8) | (u16) low); 
> > +        id = (((high) << 8) | low); 
>
> Useless parens. 
>
> >          if (id != GC2235_ID) { 
> >                  dev_err(&client->dev, "sensor ID error, 0x%x\n", id); 
> > diff --git a/drivers/staging/media/atomisp/i2c/mt9m114.c 
> b/drivers/staging/media/atomisp/i2c/mt9m114.c 
> > index 8762124..514b112 100644 
> > --- a/drivers/staging/media/atomisp/i2c/mt9m114.c 
> > +++ b/drivers/staging/media/atomisp/i2c/mt9m114.c 
> > @@ -618,9 +618,9 @@ static int distance(struct mt9m114_res_struct const 
> *res, u32 w, u32 h) 
> >          h_ratio = (res->height << 13) / h; 
> >          if (h_ratio == 0) 
> >                  return -1; 
> > -        match   = abs(((w_ratio << 13) / h_ratio) - ((int)8192)); 
> > +        match   = abs(((w_ratio << 13) / h_ratio) - (8192)); 
> > 
> > -        if ((w_ratio < (int)8192) || (h_ratio < (int)8192)  || 
> > +        if ((w_ratio < 8192) || (h_ratio < 8192)  || 
> >                  (match > LARGEST_ALLOWED_RATIO_MISMATCH)) 
> >                  return -1; 
> > 
> > diff --git a/drivers/staging/media/atomisp/i2c/ov2722.c 
> b/drivers/staging/media/atomisp/i2c/ov2722.c 
> > index 43e872a..f615898 100644 
> > --- a/drivers/staging/media/atomisp/i2c/ov2722.c 
> > +++ b/drivers/staging/media/atomisp/i2c/ov2722.c 
> > @@ -807,9 +807,9 @@ static int distance(struct ov2722_resolution *res, 
> u32 w, u32 h) 
> >          h_ratio = (res->height << 13) / h; 
> >          if (h_ratio == 0) 
> >                  return -1; 
> > -        match   = abs(((w_ratio << 13) / h_ratio) - ((int)8192)); 
> > +        match   = abs(((w_ratio << 13) / h_ratio) - (8192)); 
>
> More useless parens. 
>
 
   I will send a new patchset.
  
   Thanks,
   Varsha

------=_Part_789_1350802751.1489071306436
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Thursday, March 9, 2017 at 8:20:43 PM UTC+5:30,=
 Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;ma=
rgin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; @@ -8=
73,7 +873,7 @@ static int gc2235_detect(struct i2c_client *client)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D gc22=
35_read_reg(client, GC2235_8BIT,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0GC2235_SENSOR_ID_L, &amp;low);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0id =3D ((((u16) h=
igh) &lt;&lt; 8) | (u16) low);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0id =3D (((high) &=
lt;&lt; 8) | low);
<br>
<br>Useless parens.
<br>
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (id !=3D =
GC2235_ID) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_err(&amp;<wbr>client-&gt;dev, &quot=
;sensor ID error, 0x%x\n&quot;, id);
<br>&gt; diff --git a/drivers/staging/media/<wbr>atomisp/i2c/mt9m114.c b/dr=
ivers/staging/media/<wbr>atomisp/i2c/mt9m114.c
<br>&gt; index 8762124..514b112 100644
<br>&gt; --- a/drivers/staging/media/<wbr>atomisp/i2c/mt9m114.c
<br>&gt; +++ b/drivers/staging/media/<wbr>atomisp/i2c/mt9m114.c
<br>&gt; @@ -618,9 +618,9 @@ static int distance(struct mt9m114_res_struct =
const *res, u32 w, u32 h)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0h_ratio =3D =
(res-&gt;height &lt;&lt; 13) / h;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (h_ratio =
=3D=3D 0)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -1;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0match =C2=A0 =3D =
abs(((w_ratio &lt;&lt; 13) / h_ratio) - ((int)8192));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0match =C2=A0 =3D =
abs(((w_ratio &lt;&lt; 13) / h_ratio) - (8192));
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((w_ratio &lt;=
 (int)8192) || (h_ratio &lt; (int)8192) =C2=A0||
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((w_ratio &lt;=
 8192) || (h_ratio &lt; 8192) =C2=A0||
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(match &gt; LARGEST_ALLOWED_RATIO_<wbr>=
MISMATCH))
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -1;
<br>&gt;
<br>&gt; diff --git a/drivers/staging/media/<wbr>atomisp/i2c/ov2722.c b/dri=
vers/staging/media/<wbr>atomisp/i2c/ov2722.c
<br>&gt; index 43e872a..f615898 100644
<br>&gt; --- a/drivers/staging/media/<wbr>atomisp/i2c/ov2722.c
<br>&gt; +++ b/drivers/staging/media/<wbr>atomisp/i2c/ov2722.c
<br>&gt; @@ -807,9 +807,9 @@ static int distance(struct ov2722_resolution *=
res, u32 w, u32 h)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0h_ratio =3D =
(res-&gt;height &lt;&lt; 13) / h;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (h_ratio =
=3D=3D 0)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -1;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0match =C2=A0 =3D =
abs(((w_ratio &lt;&lt; 13) / h_ratio) - ((int)8192));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0match =C2=A0 =3D =
abs(((w_ratio &lt;&lt; 13) / h_ratio) - (8192));
<br>
<br>More useless parens.
<br>
</blockquote><div>=C2=A0<br>=C2=A0=C2=A0 I will send a new patchset.<br></d=
iv><div>=C2=A0 <br>=C2=A0=C2=A0 Thanks,<br>=C2=A0=C2=A0 Varsha<br></div></d=
iv>
------=_Part_789_1350802751.1489071306436--

------=_Part_788_711274008.1489071306436--

