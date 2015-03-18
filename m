X-GM-THRID: 9022009769984
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1104e4ee22ff8188
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.30.106 with SMTP id r10mr5737985igh.0.1426697066922;
        Wed, 18 Mar 2015 09:44:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.72.20 with SMTP id l20ls726356qgc.2.gmail; Wed, 18 Mar
 2015 09:44:26 -0700 (PDT)
X-Received: by 10.236.1.200 with SMTP id 48mr76030796yhd.41.1426697066733;
        Wed, 18 Mar 2015 09:44:26 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-vc0-x236.google.com (mail-vc0-x236.google.com. [2607:f8b0:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id o10si295221vdh.1.2015.03.18.09.44.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 09:44:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400c:c03::236 as permitted sender) client-ip=2607:f8b0:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400c:c03::236 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vc0-f182.google.com with SMTP id kv19so5149408vcb.13
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 09:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-type;
        bh=f8lIyQE8LcLhHCjIVTDVhQEaTswkhrxTjYMK76u6vR0=;
        b=rzi6w+giKMOUCsJ1EsnxU1WZYSaRvmc5XreUbAQJWe538YslSyimOX9HLGmmZUP02e
         IVriOsKWYSJ2GI6nD1ceVY8L1/U/rTi525Qwu3KiKRRZk6OMe4xJPX9Tny+59wmiB/Fo
         S7KGA1wlna18MX82AaEtt6wQzWNTlqli/5W0OsvY6oDEXeTK1rLUOfV4X4h+ZUS0dJEv
         DKtMZsJCfwLHXOQ4WsIuhyvR9qzQhWsXTdNF8zNp4hW45AB70phPmpj05HADg/kAUShM
         lYhOUBA07WhSKRkWE+15MOBt//+9bPNnch8idg5mgbnN27nqGZtDcebDNqlQtMFLGz9S
         grsg==
X-Received: by 10.52.36.39 with SMTP id n7mr34279083vdj.2.1426697066552; Wed,
 18 Mar 2015 09:44:26 -0700 (PDT)
MIME-Version: 1.0
References: <1426696229-25453-1-git-send-email-somyaanand214@gmail.com> <alpine.DEB.2.10.1503181732230.2398@hadrien>
In-Reply-To: <alpine.DEB.2.10.1503181732230.2398@hadrien>
From: Somya Anand <somyaanand214@gmail.com>
Date: Wed, 18 Mar 2015 16:44:26 +0000
Message-ID: <CANPzvBCkuW1W=fqoKHCzndDotMifzZMd_Z3RJ-zrUkYDEecosQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: Avoid bitwise OR
 operator with zero valued variable
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=20cf307c9deadaa519051192cb68

--20cf307c9deadaa519051192cb68
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 18, 2015 at 10:05 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Wed, 18 Mar 2015, Somya Anand wrote:
>
> > Zero ORed with any expression is equal to that expression itself. So, it
> > is redundant to do OR with a variable whose value is 0.
> >
> > This patch identifies the issue and simplify the code by using
> expression x
> > itself instead of 0 | x where ever it is possible. While doing so,
> checks has
> > been made that the variable is not further assigned some non zero value
> or
> > there is no for or while loop. This change is done via following
> coccinelle script
> >
> > @@
> > expression x,e,e1;
> > statement S;
> > @@
> >
> > if (x == 0) {
> >   <... when != x = e1
> >        when != while(...) S
> >        when != for(...;...;...) S
> > (
> > -  x |= e;
> > +  x = e;
> > |
> > -  x | e
> > +  e
> > )
> >  ...>
> > }
> >
> > Signed-off-by: Somya Anand <somyaanand214@gmail.com>
> > ---
> >  drivers/staging/comedi/drivers/amplc_pci230.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/comedi/drivers/amplc_pci230.c
> b/drivers/staging/comedi/drivers/amplc_pci230.c
> > index 2dd794d..330bc46 100644
> > --- a/drivers/staging/comedi/drivers/amplc_pci230.c
> > +++ b/drivers/staging/comedi/drivers/amplc_pci230.c
> > @@ -1108,7 +1108,7 @@ static bool pci230_handle_ao_fifo(struct
> comedi_device *dev,
> >               /* Check for FIFO underrun. */
> >               if (dacstat & PCI230P2_DAC_FIFO_UNDERRUN_LATCHED) {
> >                       dev_err(dev->class_dev, "AO FIFO underrun\n");
> > -                     events |= COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;
> > +                     events = COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;
> >               }
> >               /*
> >                * Check for buffer underrun if FIFO less than half full
> > @@ -1118,7 +1118,7 @@ static bool pci230_handle_ao_fifo(struct
> comedi_device *dev,
> >               if (num_scans == 0 &&
> >                   (dacstat & PCI230P2_DAC_FIFO_HALF) == 0) {
> >                       dev_err(dev->class_dev, "AO buffer underrun\n");
> > -                     events |= COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;
> > +                     events = COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;
>
> I think that this code was discussed already, and it was decided not to
> make the change.  On the one hand, the issue is that your semantic patch
> only considers an assignment using =, whereas here before the second case
> there is an update of events using |= (ie the first case).  On the other
> hand, the two assignments actually |= the same value, so they are actually
> the same as an = assignment.  But maybe in reading the code it could look
> strange to abandon the previous value.

 I am sorry, I might have missed that discussion of code. Okay I got it
that its better to drop the change.

--
Somya

>

julia
>
>
> >               }
> >       }
> >       if (events == 0) {
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/1426696229-25453-1-git-send-
> email-somyaanand214%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--20cf307c9deadaa519051192cb68
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote">On Wed, Mar 18, 2015 at=
 10:05 PM Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.la=
wall@lip6.fr</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
On Wed, 18 Mar 2015, Somya Anand wrote:<br>
<br>
&gt; Zero ORed with any expression is equal to that expression itself. So, =
it<br>
&gt; is redundant to do OR with a variable whose value is 0.<br>
&gt;<br>
&gt; This patch identifies the issue and simplify the code by using express=
ion x<br>
&gt; itself instead of 0 | x where ever it is possible. While doing so, che=
cks has<br>
&gt; been made that the variable is not further assigned some non zero valu=
e or<br>
&gt; there is no for or while loop. This change is done via following cocci=
nelle script<br>
&gt;<br>
&gt; @@<br>
&gt; expression x,e,e1;<br>
&gt; statement S;<br>
&gt; @@<br>
&gt;<br>
&gt; if (x =3D=3D 0) {<br>
&gt;=C2=A0 =C2=A0&lt;... when !=3D x =3D e1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 when !=3D while(...) S<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 when !=3D for(...;...;...) S<br>
&gt; (<br>
&gt; -=C2=A0 x |=3D e;<br>
&gt; +=C2=A0 x =3D e;<br>
&gt; |<br>
&gt; -=C2=A0 x | e<br>
&gt; +=C2=A0 e<br>
&gt; )<br>
&gt;=C2=A0 ...&gt;<br>
&gt; }<br>
&gt;<br>
&gt; Signed-off-by: Somya Anand &lt;<a href=3D"mailto:somyaanand214@gmail.c=
om" target=3D"_blank">somyaanand214@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/comedi/<u></u>drivers/amplc_pci230.c | 4 ++--<br=
>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/comedi/<u></u>drivers/amplc_pci230.c b/dr=
ivers/staging/comedi/<u></u>drivers/amplc_pci230.c<br>
&gt; index 2dd794d..330bc46 100644<br>
&gt; --- a/drivers/staging/comedi/<u></u>drivers/amplc_pci230.c<br>
&gt; +++ b/drivers/staging/comedi/<u></u>drivers/amplc_pci230.c<br>
&gt; @@ -1108,7 +1108,7 @@ static bool pci230_handle_ao_fifo(struct comedi_=
device *dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Check for FIF=
O underrun. */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (dacstat &amp=
; PCI230P2_DAC_FIFO_UNDERRUN_<u></u>LATCHED) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0dev_err(dev-&gt;class_dev, &quot;AO FIFO underrun\n&quot;);<br=
>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0events |=3D COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0events =3D COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * Check for buf=
fer underrun if FIFO less than half full<br>
&gt; @@ -1118,7 +1118,7 @@ static bool pci230_handle_ao_fifo(struct comedi_=
device *dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (num_scans =
=3D=3D 0 &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(d=
acstat &amp; PCI230P2_DAC_FIFO_HALF) =3D=3D 0) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0dev_err(dev-&gt;class_dev, &quot;AO buffer underrun\n&quot;);<=
br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0events |=3D COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0events =3D COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;<br>
<br>
I think that this code was discussed already, and it was decided not to<br>
make the change.=C2=A0 On the one hand, the issue is that your semantic pat=
ch<br>
only considers an assignment using =3D, whereas here before the second case=
<br>
there is an update of events using |=3D (ie the first case).=C2=A0 On the o=
ther<br>
hand, the two assignments actually |=3D the same value, so they are actuall=
y<br>
the same as an =3D assignment.=C2=A0 But maybe in reading the code it could=
 look<br>
strange to abandon the previous value.</blockquote><div>=C2=A0I am sorry, I=
 might have missed that discussion of code. Okay I got it that its better t=
o drop the change.</div><div><br></div><div>--</div><div>Somya</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">=C2=A0</blockquote><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
julia<br>
<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (events =3D=3D 0) {<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@<u></u>googlegroups.com=
</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.<u></u>=
com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1426696229-25453-1-git-send-email-somyaana=
nd214%40gmail.com" target=3D"_blank">https://groups.google.com/d/<u></u>msg=
id/outreachy-kernel/<u></u>1426696229-25453-1-git-send-<u></u>email-somyaan=
and214%40gmail.<u></u>com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 target=3D"_blank">https://groups.google.com/d/<u></u>optout</a>.<br>
&gt;<br>
</blockquote></div></div>

--20cf307c9deadaa519051192cb68--

