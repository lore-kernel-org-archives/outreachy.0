X-GM-THRID: 6674917600635387904
Date: Mon, 1 Apr 2019 21:40:22 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <9965a002-ae1d-49bf-843f-dc17b0b8eaf0@googlegroups.com>
In-Reply-To: <20190401173139.GA4212@kroah.com>
References: <20190401132906.4406-1-sanjana99reddy99@gmail.com>
 <20190401173139.GA4212@kroah.com>
Subject: Re: [PATCH] staging: gasket: apex: Modify return type suggested by
 Coccinelle.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_136_1143774910.1554180022170"
X-Google-Token: ELbPi-UFqN6fpbrg8W80
X-Google-IP: 123.201.165.14

------=_Part_136_1143774910.1554180022170
Content-Type: multipart/alternative; 
	boundary="----=_Part_137_1693228938.1554180022170"

------=_Part_137_1693228938.1554180022170
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Monday, April 1, 2019 at 11:11:07 PM UTC+5:30, gregkh wrote:
>
> On Mon, Apr 01, 2019 at 06:59:06PM +0530, Sanjana Sanikommu wrote: 
> > The last two lines in the function could 
> > be compressed into one. Avoid usage of local variable. 
> > Issue found by Coccinelle using ret.cocci. 
> > 
> > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/gasket/apex_driver.c | 4 +--- 
> >  1 file changed, 1 insertion(+), 3 deletions(-) 
> > 
> > diff --git a/drivers/staging/gasket/apex_driver.c 
> b/drivers/staging/gasket/apex_driver.c 
> > index a79613db71ef..2be45ee9d061 100644 
> > --- a/drivers/staging/gasket/apex_driver.c 
> > +++ b/drivers/staging/gasket/apex_driver.c 
> > @@ -439,9 +439,7 @@ static int apex_reset(struct gasket_dev *gasket_dev) 
> >                  if (ret) 
> >                          return ret; 
> >          } 
> > -        ret = apex_quit_reset(gasket_dev); 
> > - 
> > -        return ret; 
> > +        return apex_quit_reset(gasket_dev); 
> >  } 
> >   
> >  /* 
>
> This patch does not apply to my tree at all, I think someone else 
> already did this before you did.  Please update your local tree and 
> verify this. 
>

   Sure, I would drop this.
   Thanks
    Sanjana 

>
> thanks, 
>
> greg k-h 
>

------=_Part_137_1693228938.1554180022170
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Monday, April 1, 2019 at 11:11:07 PM UTC+5:30, =
gregkh wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-le=
ft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Mon, Apr 01, 2=
019 at 06:59:06PM +0530, Sanjana Sanikommu wrote:
<br>&gt; The last two lines in the function could
<br>&gt; be compressed into one. Avoid usage of local variable.
<br>&gt; Issue found by Coccinelle using ret.cocci.
<br>&gt;=20
<br>&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"7sMxpp8aBwAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">sanjana9...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/gasket/apex_<wbr>driver.c | 4 +---
<br>&gt; =C2=A01 file changed, 1 insertion(+), 3 deletions(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/gasket/apex_<wbr>driver.c b/drivers/s=
taging/gasket/apex_<wbr>driver.c
<br>&gt; index a79613db71ef..2be45ee9d061 100644
<br>&gt; --- a/drivers/staging/gasket/apex_<wbr>driver.c
<br>&gt; +++ b/drivers/staging/gasket/apex_<wbr>driver.c
<br>&gt; @@ -439,9 +439,7 @@ static int apex_reset(struct gasket_dev *gaske=
t_dev)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ret)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>return ret;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D apex_quit=
_reset(gasket_dev);
<br>&gt; -
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return apex_quit_=
reset(gasket_dev);
<br>&gt; =C2=A0}
<br>&gt; =C2=A0
<br>&gt; =C2=A0/*
<br>
<br>This patch does not apply to my tree at all, I think someone else
<br>already did this before you did. =C2=A0Please update your local tree an=
d
<br>verify this.
<br></blockquote><div><br></div><div>=C2=A0 =C2=A0Sure, I would drop this.<=
/div><div>=C2=A0 =C2=A0Thanks</div><div>=C2=A0 =C2=A0 Sanjana=C2=A0</div><b=
lockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;borde=
r-left: 1px #ccc solid;padding-left: 1ex;">
<br>thanks,
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_137_1693228938.1554180022170--

------=_Part_136_1143774910.1554180022170--

