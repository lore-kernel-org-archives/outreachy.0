X-GM-THRID: 6664844369829298176
Date: Tue, 5 Mar 2019 02:41:59 -0800 (PST)
From: Dana Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <2d1ff5e4-bd36-47e4-ba7a-36852db66767@googlegroups.com>
In-Reply-To: <20190305100416.GA32186@kroah.com>
References: <20190305100001.GA13873@pthm>
 <20190305100416.GA32186@kroah.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: Line over 80
 characters
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_904_1668890310.1551782519806"
X-Google-Token: EPek-eMFjKbVflveY9A0
X-Google-IP: 5.12.179.61

------=_Part_904_1668890310.1551782519806
Content-Type: multipart/alternative; 
	boundary="----=_Part_905_434757002.1551782519806"

------=_Part_905_434757002.1551782519806
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Tuesday, March 5, 2019 at 12:04:19 PM UTC+2, Greg Kroah-Hartman wrote:
>
> On Tue, Mar 05, 2019 at 12:00:01PM +0200, Daniela Mormocea wrote: 
> > Fix line over 80 characters to get rid of checkpatch warning 
> > 
> > Signed-off-by: Daniela Mormocea <daniela....@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/iio/addac/adt7316.c | 3 ++- 
> >  1 file changed, 2 insertions(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/iio/addac/adt7316.c 
> b/drivers/staging/iio/addac/adt7316.c 
> > index 6f7891b..be2dfdb 100644 
> > --- a/drivers/staging/iio/addac/adt7316.c 
> > +++ b/drivers/staging/iio/addac/adt7316.c 
> > @@ -2155,7 +2155,8 @@ int adt7316_probe(struct device *dev, struct 
> adt7316_bus *bus, 
> >          else 
> >                  chip->dac_bits = 8; 
> >   
> > -        chip->ldac_pin = devm_gpiod_get_optional(dev, "adi,ldac", 
> GPIOD_OUT_LOW); 
> > +        chip->ldac_pin = devm_gpiod_get_optional(dev, 
> > +                                                "adi,ldac", 
> GPIOD_OUT_LOW); 
>
> Shouldn't this be: 
>         chip->ldac_pin = devm_gpiod_get_optional(dev, "adi,ldac", 
>                                                  GPIOD_OUT_LOW); 
> ? 
>
> thanks, 
>
> greg k-h 
>


oops.. yes.. I will revert the changes and mail it back 

------=_Part_905_434757002.1551782519806
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tuesday, March 5, 2019 at 12:04:19 PM UTC+2, Gr=
eg Kroah-Hartman wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0=
;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Tue,=
 Mar 05, 2019 at 12:00:01PM +0200, Daniela Mormocea wrote:
<br>&gt; Fix line over 80 characters to get rid of checkpatch warning
<br>&gt;=20
<br>&gt; Signed-off-by: Daniela Mormocea &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"l0OczofdCQAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">daniela....@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/iio/addac/<wbr>adt7316.c | 3 ++-
<br>&gt; =C2=A01 file changed, 2 insertions(+), 1 deletion(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/iio/addac/<wbr>adt7316.c b/drivers/st=
aging/iio/addac/<wbr>adt7316.c
<br>&gt; index 6f7891b..be2dfdb 100644
<br>&gt; --- a/drivers/staging/iio/addac/<wbr>adt7316.c
<br>&gt; +++ b/drivers/staging/iio/addac/<wbr>adt7316.c
<br>&gt; @@ -2155,7 +2155,8 @@ int adt7316_probe(struct device *dev, struct=
 adt7316_bus *bus,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0chip-&gt;dac_<wbr>bits =3D 8;
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0chip-&gt;ldac_pin=
 =3D devm_gpiod_get_optional(dev, &quot;adi,ldac&quot;, GPIOD_OUT_LOW);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0chip-&gt;ldac_pin=
 =3D devm_gpiod_get_optional(dev,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0&quot;adi,ldac&quot;, GPIOD_OUT_LOW);
<br>
<br>Shouldn&#39;t this be:
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0chip-&gt;ldac_pin =3D d=
evm_gpiod_get_optional(dev, &quot;adi,ldac&quot;,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 GPIOD_OUT_LOW);
<br>?
<br>
<br>thanks,
<br>
<br>greg k-h
<br></blockquote><div><br></div><div><br></div><div>oops.. yes.. I will rev=
ert the changes and mail it back <br></div></div>
------=_Part_905_434757002.1551782519806--

------=_Part_904_1668890310.1551782519806--

