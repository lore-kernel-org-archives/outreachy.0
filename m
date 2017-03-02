X-GM-THRID: 6391489857245413376
Date: Thu, 2 Mar 2017 08:50:24 -0800 (PST)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, gregkh@linuxfoundation.org
Message-Id: <729bc163-e2e0-4736-9aaf-5ad1e43f5213@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1703021133550.3414@hadrien>
References: <58b77c39.0532630a.33e60.bc40@mx.google.com>
 <alpine.DEB.2.20.1703021133550.3414@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v4] staging: emxx_udc: Add comment
 for spinlock_t definition.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_327_376028600.1488473424445"
X-Google-Token: ENCa4cUFQOohIICRl1c0
X-Google-IP: 117.211.102.45

------=_Part_327_376028600.1488473424445
Content-Type: multipart/alternative; 
	boundary="----=_Part_328_826696102.1488473424445"

------=_Part_328_826696102.1488473424445
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



> > The nbu2ss_udc structure is used to perform various usb device 
> > operations. It is important to protect the members as they can make 
> > system calls. Lock variable of type spinlock_t, is used to provide 
> > protection by using various spinlock functions. 
>
> I'm not sure to understand the idea of a structure member making a system 
> call.

    
    Sorry, for not making it clear. 
 

>  Normally, one puts a lock around something because the location may 
> be shared between multiple processes, who may try to update it 
> concurrently with other reads or writes. 
>
> > @@ -567,7 +567,7 @@ struct nbu2ss_udc { 
> >          struct usb_gadget_driver *driver; 
> >          struct platform_device *pdev; 
> >          struct device *dev; 
> > -        spinlock_t lock; 
> > +        spinlock_t lock; /* Protects nbu2ss_udc structure fields */ 
> >          struct completion                *pdone; 
> > 
> >          enum ep0_state                        ep0state; 
>

------=_Part_328_826696102.1488473424445
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; The =
nbu2ss_udc structure is used to perform various usb device
<br>&gt; operations. It is important to protect the members as they can mak=
e
<br>&gt; system calls. Lock variable of type spinlock_t, is used to provide
<br>&gt; protection by using various spinlock functions.
<br>
<br>I&#39;m not sure to understand the idea of a structure member making a =
system
<br>call.</blockquote><div>=C2=A0 =C2=A0 <br>=C2=A0 =C2=A0 Sorry, for not m=
aking it clear. </div><div>=C2=A0</div><blockquote class=3D"gmail_quote" st=
yle=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-lef=
t: 1ex;"> =C2=A0Normally, one puts a lock around something because the loca=
tion may
<br>be shared between multiple processes, who may try to update it
<br>concurrently with other reads or writes.
<br>
<br></blockquote><blockquote class=3D"gmail_quote" style=3D"margin: 0;margi=
n-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; @@ -567,=
7 +567,7 @@ struct nbu2ss_udc {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct usb_g=
adget_driver *driver;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct platf=
orm_device *pdev;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct devic=
e *dev;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spinlock_t lock;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spinlock_t lock; =
/* Protects nbu2ss_udc structure fields */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct compl=
etion=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0*<wbr>pdone;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0enum ep0_sta=
te=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0ep0state;
<br></blockquote></div>
------=_Part_328_826696102.1488473424445--

------=_Part_327_376028600.1488473424445--

