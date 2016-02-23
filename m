X-GM-THRID: 6254186235119534080
X-Received: by 10.107.164.208 with SMTP id d77mr35868472ioj.22.1456256782262;
        Tue, 23 Feb 2016 11:46:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.106 with SMTP id e97ls2155409qgd.67.gmail; Tue, 23 Feb
 2016 11:46:21 -0800 (PST)
X-Received: by 10.129.4.201 with SMTP id 192mr32732415ywe.15.1456256781723;
        Tue, 23 Feb 2016 11:46:21 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-ob0-x230.google.com (mail-ob0-x230.google.com. [2607:f8b0:4003:c01::230])
        by gmr-mx.google.com with ESMTPS id nt4si1389381igb.2.2016.02.23.11.46.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:46:21 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c01::230 as permitted sender) client-ip=2607:f8b0:4003:c01::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c01::230 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x230.google.com with SMTP id gc3so204426661obb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 11:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:date:message-id
         :subject:from:to:content-type;
        bh=Fg5FQXc5mOlSyi0Xl45zAMiK9/TcWLYe+lM4qCITd14=;
        b=jN/iylT6VhFZJiGr4u9IJpva1A69flNbqI/Qf96JsXUTFoT1EP7WYm2dIBQwGlZiZ8
         hQYb6rnTVH0K4PQ9qlU9ZIAZdjeMnKs3muWejQhdQ2zrTV8WGD03pkN9cIMfKa1k1ksR
         4+mYttGeUg5zoIGzjDfn177g/yILcQvbiltSSnNxcL3cUv/Riyq+Teppq7zzrisUeoZT
         QWtqAw0C3j2j2WDxBKIQHQgdE49hWoEXaUMr96kGxQwaOFvfQe4wmGActRQWSFftmp+R
         3oHGGWHhKvF8nIShFHQz0Qrx9boaOO4BGCbVEMdZc+5WQG7wBEXnyEG5+m+yWi4iSsTd
         CS0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :date:message-id:subject:from:to:content-type;
        bh=Fg5FQXc5mOlSyi0Xl45zAMiK9/TcWLYe+lM4qCITd14=;
        b=lzvMjDVOvOwngDNXc24cETu6+yx8qHdckT/5zBRxQJYg6vxEDGBmjGXtJOG2xCEpUd
         ddVi1MhXrmAWk+iD5qlqhu6s+mmXnB0A4UYWBGsWxiunyApkAEgwam+DjId5Tnq0gjdc
         hc4ELIjjU9S3IwAj22gPmq5d39IWMZkm4wNDCLTeLGPs7QzoG2IuV1w5vQyLdewggXae
         Xu2+t2iv2mXwvX908nL7XVt1ut8G0E+xAuTsXdXL0mhWQbsrS1Aow+LBn7OtT+FTZl/o
         08QNeGEgZ318UYYhZa3HIAuPFHlOJ7j9l4xWvxNjWY2ENcXyn/ThBdIhiW0dpO3O71vg
         hDrw==
X-Gm-Message-State: AG10YOR26it82pl9XA2IPdIm7+5UZ7PXH9rpiabMT/flx25eBFbuvpiXRaKiudBeU37nplURoc1KJ3yB77NYbQ==
MIME-Version: 1.0
X-Received: by 10.182.158.196 with SMTP id ww4mr28639757obb.41.1456256781493;
 Tue, 23 Feb 2016 11:46:21 -0800 (PST)
Received: by 10.157.47.212 with HTTP; Tue, 23 Feb 2016 11:46:21 -0800 (PST)
Reply-To: bankarsandhya512@gmail.com
In-Reply-To: <alpine.DEB.2.02.1602232039200.2040@localhost6.localdomain6>
References: <20160222103651.GA5176@sandhya>
	<alpine.DEB.2.02.1602232039200.2040@localhost6.localdomain6>
Date: Wed, 24 Feb 2016 01:16:21 +0530
Message-ID: <CAA3ASz=isFucBfQL0sf6hqjhWfC2R-ag8a_7s6W8wDnJMnGeHw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: slicoss: Use sizeof structure
 *pointer over sizeof structure in kmalloc()/kzalloc().
From: sandhya bankar <bankarsandhya512@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e0141a93829aeaa052c75343b

--089e0141a93829aeaa052c75343b
Content-Type: text/plain; charset=UTF-8

Hello,
I understand the ==NULL changes,but i have not understood the "make a
series" concept.

On Wed, Feb 24, 2016 at 1:09 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Mon, 22 Feb 2016, Sandhya Bankar wrote:
>
> > Use sizeof structure *pointer over sizeof structure in
> kmalloc()/kzalloc().
> >
> > Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> > ---
> >  drivers/staging/slicoss/slicoss.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/slicoss/slicoss.c
> b/drivers/staging/slicoss/slicoss.c
> > index a91c60a..ea6b7b5 100644
> > --- a/drivers/staging/slicoss/slicoss.c
> > +++ b/drivers/staging/slicoss/slicoss.c
> > @@ -880,7 +880,7 @@ static int slic_upr_queue_request(struct adapter
> *adapter,
> >       struct slic_upr *upr;
> >       struct slic_upr *uprqueue;
> >
> > -     upr = kmalloc(sizeof(struct slic_upr), GFP_ATOMIC);
> > +     upr = kmalloc(sizeof(*upr), GFP_ATOMIC);
> >       if (!upr)
> >               return -ENOMEM;
> >
> > @@ -1806,7 +1806,7 @@ static int slic_mcast_add_list(struct adapter
> *adapter, char *address)
> >       }
> >
> >       /* Doesn't already exist.  Allocate a structure to hold it */
> > -     mcaddr = kmalloc(sizeof(struct mcast_address), GFP_ATOMIC);
> > +     mcaddr = kmalloc(sizeof(*mcaddr), GFP_ATOMIC);
> >       if (mcaddr == NULL)
>
> You could make a series and also eliminate this == NULL test.
>
> julia
>
> >               return 1;
> >
> > @@ -3049,7 +3049,7 @@ static u32 slic_card_locate(struct adapter
> *adapter)
> >       }
> >       if (!physcard) {
> >               /* no structure allocated for this physical card yet */
> > -             physcard = kzalloc(sizeof(struct physcard), GFP_ATOMIC);
> > +             physcard = kzalloc(sizeof(*physcard), GFP_ATOMIC);
> >               if (!physcard) {
> >                       if (card_hostid == SLIC_HOSTID_DEFAULT)
> >                               kfree(card);
> > --
> > 1.8.3.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20160222103651.GA5176%40sandhya
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--089e0141a93829aeaa052c75343b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br>I understand the =3D=3DNULL changes,but i have n=
ot understood the &quot;make a series&quot; concept.<br></div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Feb 24, 2016 at 1:09 A=
M, Julia Lawall <span dir=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@lip6.f=
r" target=3D"_blank">julia.lawall@lip6.fr</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><span class=3D""><br>
<br>
On Mon, 22 Feb 2016, Sandhya Bankar wrote:<br>
<br>
&gt; Use sizeof structure *pointer over sizeof structure in kmalloc()/kzall=
oc().<br>
&gt;<br>
&gt; Signed-off-by: Sandhya Bankar &lt;<a href=3D"mailto:bankarsandhya512@g=
mail.com">bankarsandhya512@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/slicoss/slicoss.c | 6 +++---<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 3 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slico=
ss/slicoss.c<br>
&gt; index a91c60a..ea6b7b5 100644<br>
&gt; --- a/drivers/staging/slicoss/slicoss.c<br>
&gt; +++ b/drivers/staging/slicoss/slicoss.c<br>
&gt; @@ -880,7 +880,7 @@ static int slic_upr_queue_request(struct adapter *=
adapter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct slic_upr *upr;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct slic_upr *uprqueue;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0upr =3D kmalloc(sizeof(struct slic_upr), GFP_ATOM=
IC);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0upr =3D kmalloc(sizeof(*upr), GFP_ATOMIC);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!upr)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENOMEM;<=
br>
&gt;<br>
&gt; @@ -1806,7 +1806,7 @@ static int slic_mcast_add_list(struct adapter *a=
dapter, char *address)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Doesn&#39;t already exist.=C2=A0 Allocate=
 a structure to hold it */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0mcaddr =3D kmalloc(sizeof(struct mcast_address), =
GFP_ATOMIC);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0mcaddr =3D kmalloc(sizeof(*mcaddr), GFP_ATOMIC);<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (mcaddr =3D=3D NULL)<br>
<br>
</span>You could make a series and also eliminate this =3D=3D NULL test.<br=
>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 1;<br>
&gt;<br>
&gt; @@ -3049,7 +3049,7 @@ static u32 slic_card_locate(struct adapter *adap=
ter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!physcard) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* no structure =
allocated for this physical card yet */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0physcard =3D kzalloc(=
sizeof(struct physcard), GFP_ATOMIC);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0physcard =3D kzalloc(=
sizeof(*physcard), GFP_ATOMIC);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!physcard) {=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (card_hostid =3D=3D SLIC_HOSTID_DEFAULT)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kfree(card);<br>
&gt; --<br>
&gt; 1.8.3.4<br>
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
gle.com/d/msgid/outreachy-kernel/20160222103651.GA5176%40sandhya" rel=3D"no=
referrer" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-ker=
nel/20160222103651.GA5176%40sandhya</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--089e0141a93829aeaa052c75343b--

