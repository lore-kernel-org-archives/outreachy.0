X-GM-THRID: 6331683912219099136
X-Received: by 10.129.77.212 with SMTP id a203mr6287900ywb.45.1474298840217;
        Mon, 19 Sep 2016 08:27:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.18 with SMTP id o18ls842112ota.40.gmail; Mon, 19 Sep
 2016 08:27:19 -0700 (PDT)
X-Received: by 10.129.108.23 with SMTP id h23mr3964111ywc.172.1474298839873;
        Mon, 19 Sep 2016 08:27:19 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-qt0-x244.google.com (mail-qt0-x244.google.com. [2607:f8b0:400d:c0d::244])
        by gmr-mx.google.com with ESMTPS id w124si2142248ywc.4.2016.09.19.08.27.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 08:27:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) client-ip=2607:f8b0:400d:c0d::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x244.google.com with SMTP id p47so4882650qtc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 08:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=1DR0kY3MEPFqW3qMw1Irz282nY81VzS12f/prqOKReo=;
        b=jnuVDlgJZiFa/bPvARUJJqGimL18E9mvjcrbZ4pE4XFWk2X8DN3p+0xLtJtzeA99g6
         wHbCnPQnrmY8x7tfWkwUn+1rjHqQZn538jXPKsT0HAH8NB09iIo0a9VjHUa+JeIyp4S0
         +124UMOzjpuw/X4NgkLhMONiHVHO5kawss96PJlHigBhwOBxNRauu+NDZ/08M7JKIlqX
         lj1sCPmU0w1df+TBANZ0/rOH6FHbQPeCiq1xEbz6vGneaGcuzfguRU6B6UtzZ4ip3d0c
         Xkpb7p3rHJlevpDWEtRnZf6GDmCtErp4fnBUcjVFBC6KVa0RNf/pHADV235plIpyjJmF
         5K2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :from:date:message-id:subject:to:cc;
        bh=1DR0kY3MEPFqW3qMw1Irz282nY81VzS12f/prqOKReo=;
        b=gtEHFzfCwsKQUsT6DoPKGDzL0KhXM4RxPAlO4yDvDBh2Q778Q0egEHfaprfFgiN8V5
         BBzi9KKxQpCp3LGyXTyjXM3HKAmh/ciao+ox8HvLQ6UEXaTCNGAklbFVNQrvXUHSDaFp
         L6K57n5/TlwSZSGFVeNZ4wittOLzik6PIqifUZc8Q37ZFvNkvBNkEkIje0kOl/mWEHLF
         pwth6nxV9xFkzNr1hIFGhWYczTKt8yFdraaeLfyRMULdFpktdFAJeUVoY6BC0M0oHQoK
         jDJ10iIu/2JPhiPGQKlf1je1iXUEepjrt3engE6EqhLYxEObwUx/lswX+0XKc2AdcjLE
         crRw==
X-Gm-Message-State: AE9vXwOXvE0pQW7TvVPqQRFgYk1wunhzBlPDjMxpK/P4eP4RFTNHOGITRKWnByv4M5y8I3LKQCRC0mqpUo+YCg==
X-Received: by 10.200.54.106 with SMTP id n39mr23154200qtb.50.1474298839650;
 Mon, 19 Sep 2016 08:27:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.49.231 with HTTP; Mon, 19 Sep 2016 08:27:18 -0700 (PDT)
Reply-To: bankarsandhya512@gmail.com
In-Reply-To: <alpine.DEB.2.10.1609191404260.3203@hadrien>
References: <20160918144757.GA3786@sandhya> <alpine.DEB.2.10.1609181723120.3204@hadrien>
 <c273ac58-4efb-9abe-4ec8-3c818ed8a17d@mev.co.uk> <alpine.DEB.2.10.1609191404260.3203@hadrien>
From: sandhya bankar <bankarsandhya512@gmail.com>
Date: Mon, 19 Sep 2016 20:57:18 +0530
Message-ID: <CAA3ASzn5oKkfjOCxWsUd7oM5UV-dxDeo8=M=AgNEreqLp=tTug@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: Use
 usb_endpoint_dir_in(endpoint) instead of (endpoint->bEndpointAddress & USB_DIR_IN).
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Ian Abbott <abbotti@mev.co.uk>, outreachy-kernel@googlegroups.com, 
	hsweeten@visionengravers.com, Greg KH <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary=001a1135a0e0a15654053cddf203

--001a1135a0e0a15654053cddf203
Content-Type: text/plain; charset=UTF-8

Thanks Ian and Julia ! I will send a patch as per your suggestion.

On Mon, Sep 19, 2016 at 5:34 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Mon, 19 Sep 2016, Ian Abbott wrote:
>
> > On 18/09/16 16:26, Julia Lawall wrote:
> > > On Sun, 18 Sep 2016, Sandhya Bankar wrote:
> > >
> > > > Use usb_endpoint_dir_in(endpoint) instead of
> (endpoint->bEndpointAddress &
> > > > USB_DIR_IN).
> > > >
> > > > This correction is made using below coccinelle script:
> > > >
> > > > @@
> > > > struct usb_endpoint_descriptor *endpoint;
> > > > expression E;
> > > > @@
> > > > (
> > > > - endpoint->bEndpointAddress & USB_DIR_IN
> > > > + usb_endpoint_dir_in(endpoint)
> > > > |
> > > > - endpoint->bEndpointAddress == USB_DIR_IN
> > > > + usb_endpoint_dir_in(endpoint)
> > > > |
> > > > - (endpoint->bEndpointAddress & E) == USB_DIR_IN
> > > > + usb_endpoint_dir_in(endpoint)
> > > > )
> > > >
> > > >
> > > > Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> > > > ---
> > > >  drivers/staging/comedi/drivers/dt9812.c |    2 +-
> > > >  1 files changed, 1 insertions(+), 1 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/comedi/drivers/dt9812.c
> > > > b/drivers/staging/comedi/drivers/dt9812.c
> > > > index 7ebca86..4007c45 100644
> > > > --- a/drivers/staging/comedi/drivers/dt9812.c
> > > > +++ b/drivers/staging/comedi/drivers/dt9812.c
> > > > @@ -676,7 +676,7 @@ static int dt9812_find_endpoints(struct
> comedi_device
> > > > *dev)
> > > >                   dir = USB_DIR_IN;
> > > >                   break;
> > > >           }
> > > > -         if ((ep->bEndpointAddress & USB_DIR_IN) != dir) {
> > > > +         if ((usb_endpoint_dir_in(ep)) != dir) {
> > >
> > > Small problem:  The parentheses around the function call are not
> needed.
> > >
> > > Big problem: The transformation is not correct in this context.  If you
> > > look at the definition of usb_endpoint_dir_in, you will see that, like
> in
> > > most of the rules of the semantic patch, the main operator in the
> > > computation of the return value is ==.  So the function returns a
> boolean,
> > > ie 0 or 1.  The first rule of the semantic patch is only valid when the
> > > result is being tested for being true or false, not when it is
> compared to
> > > something.  Maybe there is some other way to reorganize the code to use
> > > the endpoint functions.
> >
> > There doesn't appear to be a function such as usb_endpoint_dir(ep) to
> return
> > the endpoint direction as one of the values USB_DIR_IN or USB_DIR_OUT,
> which
> > would have been nice.
> >
> > I think the original code is using USB_DIR_IN incorrectly on that line.
> It
> > should really be replaced with USB_ENDPOINT_DIR_MASK like this:
> >
> >               if ((ep->bEndpointAddress & USB_ENDPOINT_DIR_MASK) != dir)
> {
> >
> > (USB_ENDPOINT_DIR_MASK and USB_DIR_IN have the same value, but
> > USB_ENDPOINT_DIR_MASK is more "correct" for use as a mask.)
>
> That looks better to me.
>
> julia
>

--001a1135a0e0a15654053cddf203
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Ian and Julia ! I will send a patch as per your sug=
gestion.<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>On Mon, Sep 19, 2016 at 5:34 PM, Julia Lawall <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"=
><div class=3D"h5"><br>
<br>
On Mon, 19 Sep 2016, Ian Abbott wrote:<br>
<br>
&gt; On 18/09/16 16:26, Julia Lawall wrote:<br>
&gt; &gt; On Sun, 18 Sep 2016, Sandhya Bankar wrote:<br>
&gt; &gt;<br>
&gt; &gt; &gt; Use usb_endpoint_dir_in(endpoint) instead of (endpoint-&gt;b=
EndpointAddress &amp;<br>
&gt; &gt; &gt; USB_DIR_IN).<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; This correction is made using below coccinelle script:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; @@<br>
&gt; &gt; &gt; struct usb_endpoint_descriptor *endpoint;<br>
&gt; &gt; &gt; expression E;<br>
&gt; &gt; &gt; @@<br>
&gt; &gt; &gt; (<br>
&gt; &gt; &gt; - endpoint-&gt;bEndpointAddress &amp; USB_DIR_IN<br>
&gt; &gt; &gt; + usb_endpoint_dir_in(endpoint)<br>
&gt; &gt; &gt; |<br>
&gt; &gt; &gt; - endpoint-&gt;bEndpointAddress =3D=3D USB_DIR_IN<br>
&gt; &gt; &gt; + usb_endpoint_dir_in(endpoint)<br>
&gt; &gt; &gt; |<br>
&gt; &gt; &gt; - (endpoint-&gt;bEndpointAddress &amp; E) =3D=3D USB_DIR_IN<=
br>
&gt; &gt; &gt; + usb_endpoint_dir_in(endpoint)<br>
&gt; &gt; &gt; )<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Signed-off-by: Sandhya Bankar &lt;<a href=3D"mailto:bankarsa=
ndhya512@gmail.com">bankarsandhya512@gmail.com</a>&gt;<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt;=C2=A0 drivers/staging/comedi/<wbr>drivers/dt9812.c |=C2=A0 =
=C2=A0 2 +-<br>
&gt; &gt; &gt;=C2=A0 1 files changed, 1 insertions(+), 1 deletions(-)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; diff --git a/drivers/staging/comedi/<wbr>drivers/dt9812.c<br=
>
&gt; &gt; &gt; b/drivers/staging/comedi/<wbr>drivers/dt9812.c<br>
&gt; &gt; &gt; index 7ebca86..4007c45 100644<br>
&gt; &gt; &gt; --- a/drivers/staging/comedi/<wbr>drivers/dt9812.c<br>
&gt; &gt; &gt; +++ b/drivers/staging/comedi/<wbr>drivers/dt9812.c<br>
&gt; &gt; &gt; @@ -676,7 +676,7 @@ static int dt9812_find_endpoints(struct =
comedi_device<br>
&gt; &gt; &gt; *dev)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0dir =3D USB_DIR_IN;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0break;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((ep-&gt;bEndpointAddr=
ess &amp; USB_DIR_IN) !=3D dir) {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((usb_endpoint_dir_in(=
ep)) !=3D dir) {<br>
&gt; &gt;<br>
&gt; &gt; Small problem:=C2=A0 The parentheses around the function call are=
 not needed.<br>
&gt; &gt;<br>
&gt; &gt; Big problem: The transformation is not correct in this context.=
=C2=A0 If you<br>
&gt; &gt; look at the definition of usb_endpoint_dir_in, you will see that,=
 like in<br>
&gt; &gt; most of the rules of the semantic patch, the main operator in the=
<br>
&gt; &gt; computation of the return value is =3D=3D.=C2=A0 So the function =
returns a boolean,<br>
&gt; &gt; ie 0 or 1.=C2=A0 The first rule of the semantic patch is only val=
id when the<br>
&gt; &gt; result is being tested for being true or false, not when it is co=
mpared to<br>
&gt; &gt; something.=C2=A0 Maybe there is some other way to reorganize the =
code to use<br>
&gt; &gt; the endpoint functions.<br>
&gt;<br>
&gt; There doesn&#39;t appear to be a function such as usb_endpoint_dir(ep)=
 to return<br>
&gt; the endpoint direction as one of the values USB_DIR_IN or USB_DIR_OUT,=
 which<br>
&gt; would have been nice.<br>
&gt;<br>
&gt; I think the original code is using USB_DIR_IN incorrectly on that line=
. It<br>
&gt; should really be replaced with USB_ENDPOINT_DIR_MASK like this:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((ep-&gt;bEnd=
pointAddress &amp; USB_ENDPOINT_DIR_MASK) !=3D dir) {<br>
&gt;<br>
&gt; (USB_ENDPOINT_DIR_MASK and USB_DIR_IN have the same value, but<br>
&gt; USB_ENDPOINT_DIR_MASK is more &quot;correct&quot; for use as a mask.)<=
br>
<br>
</div></div>That looks better to me.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
julia<br>
</font></span></blockquote></div><br></div>

--001a1135a0e0a15654053cddf203--

