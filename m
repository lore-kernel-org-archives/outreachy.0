X-GM-THRID: 6670735710407884800
Date: Thu, 21 Mar 2019 00:20:58 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <4788afa4-da02-4a87-b289-dd041bb57a10@googlegroups.com>
In-Reply-To: <20190321071521.GA14810@kroah.com>
References: <20190321070114.7272-1-sanjana99reddy99@gmail.com>
 <20190321071521.GA14810@kroah.com>
Subject: Re: [PATCH] staging: greybus: usb.c: Remove unnecessary local
 variables.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_81_1015006572.1553152859069"
X-Google-Token: ENr2zOQFKN2PpT0uRfs0
X-Google-IP: 219.91.183.81

------=_Part_81_1015006572.1553152859069
Content-Type: multipart/alternative; 
	boundary="----=_Part_82_1377846863.1553152859069"

------=_Part_82_1377846863.1553152859069
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Thursday, March 21, 2019 at 12:47:26 PM UTC+5:30, gregkh wrote:
>
> On Thu, Mar 21, 2019 at 12:31:14PM +0530, Sanjana Sanikommu wrote: 
> > The two lines could be compressed into one statement. 
> > Challenge suggested by Coccinelle using ret.cocci. 
> > 
> > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/greybus/usb.c | 6 ++---- 
> >  1 file changed, 2 insertions(+), 4 deletions(-) 
> > 
> > diff --git a/drivers/staging/greybus/usb.c 
> b/drivers/staging/greybus/usb.c 
> > index 1c246c73a085..3aac637c3a50 100644 
> > --- a/drivers/staging/greybus/usb.c 
> > +++ b/drivers/staging/greybus/usb.c 
> > @@ -48,11 +48,9 @@ static inline struct usb_hcd 
> *gb_usb_device_to_hcd(struct gb_usb_device *dev) 
> >  static void hcd_stop(struct usb_hcd *hcd) 
> >  { 
> >          struct gb_usb_device *dev = to_gb_usb_device(hcd); 
> > -        int ret; 
> >   
> > -        ret = gb_operation_sync(dev->connection, GB_USB_TYPE_HCD_STOP, 
> > -                                NULL, 0, NULL, 0); 
> > -        if (ret) 
> > +        if (gb_operation_sync(dev->connection, GB_USB_TYPE_HCD_STOP, 
> > +                              NULL, 0, NULL, 0)) 
> >                  dev_err(&dev->gbphy_dev->dev, "HCD stop failed '%d'\n", 
> ret); 
>
> This does not look correct, ret.cocci shouldn't be triggering this as 
> there is a coding style "rule" that you do not call functions within an 
> if () statemetn if at all possible. 
>

Fine, It seems like I violated rules and modified.
Thanks for letting me know. I would drop changes 
Sanjana 

>
> thanks, 
>
> greg k-h 
>

------=_Part_82_1377846863.1553152859069
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Thursday, March 21, 2019 at 12:47:26 PM UTC+5:3=
0, gregkh wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin=
-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Thu, Mar 21=
, 2019 at 12:31:14PM +0530, Sanjana Sanikommu wrote:
<br>&gt; The two lines could be compressed into one statement.
<br>&gt; Challenge suggested by Coccinelle using ret.cocci.
<br>&gt;=20
<br>&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"2O909pEGBAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">sanjana9...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/greybus/usb.c | 6 ++----
<br>&gt; =C2=A01 file changed, 2 insertions(+), 4 deletions(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/greybus/usb.<wbr>c b/drivers/staging/=
greybus/usb.<wbr>c
<br>&gt; index 1c246c73a085..3aac637c3a50 100644
<br>&gt; --- a/drivers/staging/greybus/usb.<wbr>c
<br>&gt; +++ b/drivers/staging/greybus/usb.<wbr>c
<br>&gt; @@ -48,11 +48,9 @@ static inline struct usb_hcd *gb_usb_device_to_=
hcd(struct gb_usb_device *dev)
<br>&gt; =C2=A0static void hcd_stop(struct usb_hcd *hcd)
<br>&gt; =C2=A0{
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct gb_us=
b_device *dev =3D to_gb_usb_device(hcd);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int ret;
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D gb_operat=
ion_sync(dev-&gt;<wbr>connection, GB_USB_TYPE_HCD_STOP,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0NULL, 0, NULL, 0=
);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ret)
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (gb_operation_=
sync(dev-&gt;<wbr>connection, GB_USB_TYPE_HCD_STOP,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0 =C2=A0NULL, 0, NULL, 0))
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_err(&amp;dev-<wbr>&gt;gbphy_dev-&gt=
;dev, &quot;HCD stop failed &#39;%d&#39;\n&quot;, ret);
<br>
<br>This does not look correct, ret.cocci shouldn&#39;t be triggering this =
as
<br>there is a coding style &quot;rule&quot; that you do not call functions=
 within an
<br>if () statemetn if at all possible.
<br></blockquote><div><br></div><div>Fine, It seems like I violated rules a=
nd modified.</div><div>Thanks for letting me know. I would drop changes=C2=
=A0</div><div>Sanjana=C2=A0</div><blockquote class=3D"gmail_quote" style=3D=
"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex=
;">
<br>thanks,
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_82_1377846863.1553152859069--

------=_Part_81_1015006572.1553152859069--

