X-GM-THRID: 6254572813361872896
Date: Thu, 10 Mar 2016 19:43:57 -0800 (PST)
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: janani.rvchndrn@gmail.com
Message-Id: <3cbc3911-42bf-4a03-baec-89bc7fb30c2f@googlegroups.com>
In-Reply-To: <20160311033540.GA4980@kroah.com>
References: <20160224003604.GA3314@janani-Inspiron-3521>
 <20160311033540.GA4980@kroah.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: drivers: Remove
 unneeded NULL check before kfree()
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1371_1759550629.1457667837630"
X-Google-Token: EP39iLcFSpW4lo-olB00
X-Google-IP: 2620:cc:8000:1481:5938:ff73:ba35:9d97

------=_Part_1371_1759550629.1457667837630
Content-Type: multipart/alternative; 
	boundary="----=_Part_1372_1270080758.1457667837631"

------=_Part_1372_1270080758.1457667837631
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Thursday, 10 March 2016 22:35:55 UTC-5, gregkh wrote:
>
> On Tue, Feb 23, 2016 at 07:36:04PM -0500, Janani Ravichandran wrote: 
> > Remove NULL check before kfree as it is not needed. 
> > 
> > Signed-off-by: Janani Ravichandran <janani....@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/comedi/drivers/amplc_pci224.c | 6 ++---- 
> >  1 file changed, 2 insertions(+), 4 deletions(-) 
> > 
> > diff --git a/drivers/staging/comedi/drivers/amplc_pci224.c 
> b/drivers/staging/comedi/drivers/amplc_pci224.c 
> > index cac011f..656df1a 100644 
> > --- a/drivers/staging/comedi/drivers/amplc_pci224.c 
> > +++ b/drivers/staging/comedi/drivers/amplc_pci224.c 
> > @@ -1096,10 +1096,8 @@ static void pci224_detach(struct comedi_device 
> *dev) 
> >          struct pci224_private *devpriv = dev->private; 
> >   
> >          comedi_pci_detach(dev); 
> > -        if (devpriv) { 
> > -                kfree(devpriv->ao_scan_vals); 
> > -                kfree(devpriv->ao_scan_order); 
> > -        } 
> > +        kfree(devpriv->ao_scan_vals); 
> > +        kfree(devpriv->ao_scan_order); 
> >  } 
>
> Oops, I applied this, but it's obviously wrong.  Think about what you 
> just changed here... 
>

Oh yes, it's wrong! devpriv->ao_scan_vals and devpriv->ao_scan_order cannot 
be accessed if
if(devpriv) is false. Extremely sorry for the carelessness. 

Janani.

>
> I'll go revert it now. 
>
> greg k-h 
>

------=_Part_1372_1270080758.1457667837631
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Thursday, 10 March 2016 22:35:55 UTC-5, gregkh =
 wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.=
8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Tue, Feb 23, 2016 at=
 07:36:04PM -0500, Janani Ravichandran wrote:
<br>&gt; Remove NULL check before kfree as it is not needed.
<br>&gt;=20
<br>&gt; Signed-off-by: Janani Ravichandran &lt;<a href=3D"javascript:" tar=
get=3D"_blank" gdf-obfuscated-mailto=3D"_q637CM9CgAJ" rel=3D"nofollow" onmo=
usedown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.=
href=3D&#39;javascript:&#39;;return true;">janani....@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/comedi/<wbr>drivers/amplc_pci224.c | 6 ++---=
-
<br>&gt; =C2=A01 file changed, 2 insertions(+), 4 deletions(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/comedi/<wbr>drivers/amplc_pci224.c b/=
drivers/staging/comedi/<wbr>drivers/amplc_pci224.c
<br>&gt; index cac011f..656df1a 100644
<br>&gt; --- a/drivers/staging/comedi/<wbr>drivers/amplc_pci224.c
<br>&gt; +++ b/drivers/staging/comedi/<wbr>drivers/amplc_pci224.c
<br>&gt; @@ -1096,10 +1096,8 @@ static void pci224_detach(struct comedi_dev=
ice *dev)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct pci22=
4_private *devpriv =3D dev-&gt;private;
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0comedi_pci_d=
etach(<wbr>dev);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (devpriv) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree(<wbr>devpriv-&gt;ao_scan_vals);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree(<wbr>devpriv-&gt;ao_scan_order);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree(devpriv-&gt=
;ao_<wbr>scan_vals);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree(devpriv-&gt=
;ao_<wbr>scan_order);
<br>&gt; =C2=A0}
<br>
<br>Oops, I applied this, but it&#39;s obviously wrong. =C2=A0Think about w=
hat you
<br>just changed here...
<br></blockquote><div><br></div><div>Oh yes, it&#39;s wrong! devpriv-&gt;ao=
_scan_vals and devpriv-&gt;ao_scan_order cannot be accessed if</div><div>if=
(devpriv) is false. Extremely sorry for the carelessness.=C2=A0</div><div><=
br></div><div>Janani.</div><blockquote class=3D"gmail_quote" style=3D"margi=
n: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>I&#39;ll go revert it now.
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_1372_1270080758.1457667837631--

------=_Part_1371_1759550629.1457667837630--

