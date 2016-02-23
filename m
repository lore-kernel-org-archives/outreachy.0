X-GM-THRID: 6254186235119534080
X-Received: by 10.66.145.232 with SMTP id sx8mr32475294pab.13.1456257595945;
        Tue, 23 Feb 2016 11:59:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.132 with SMTP id h4ls2305687qgf.70.gmail; Tue, 23 Feb
 2016 11:59:55 -0800 (PST)
X-Received: by 10.140.154.143 with SMTP id a137mr6361182qha.11.1456257595395;
        Tue, 23 Feb 2016 11:59:55 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-ob0-x229.google.com (mail-ob0-x229.google.com. [2607:f8b0:4003:c01::229])
        by gmr-mx.google.com with ESMTPS id p10si2596882igg.1.2016.02.23.11.59.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:59:55 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c01::229 as permitted sender) client-ip=2607:f8b0:4003:c01::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c01::229 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x229.google.com with SMTP id dm2so30842724obb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 11:59:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:date:message-id
         :subject:from:to:content-type;
        bh=Yf3QfgI1eRg3868Nvc3jru/2Uoga2kOWbQCU8D46Ivo=;
        b=rJbsCITSxeFwXVWcJXpeGU+w6RFYoNzJm48J3O5QGv+QmAw3XfUjSLJhdD4pjionoP
         wN9IVeWzEJjIiyIFQ8a8vdapRnKM2vTZ82/5XjsElx3cT+5FNWNBgYhP08YO+y1Nx15G
         xHrNEoIx5dGF/rcxqiVUo++4JZ1aJlUvseegPCT0Wgo4ti2XxEQFWhdhFqlmZBrSsoiC
         3pofGrHlJxbhaq606gtRx42cVSmt2ecGlKeLW6IalrRPojB7HbbtqCbn3kwKlwgmhRYd
         TWk+1J0SqjmyZ4IsrsbyI/6ZnF38N10Lr/z8P3tvKGxkE1TrIvqFqG3O3EiaolKHz58p
         STLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :date:message-id:subject:from:to:content-type;
        bh=Yf3QfgI1eRg3868Nvc3jru/2Uoga2kOWbQCU8D46Ivo=;
        b=f8qtprf1kL6zvGZms4Chjd/1v/4bEjX9rdIDdvrcjNF4y6XX+yjQFCLLL2xBD3N8ec
         I7pp3o4NJ153DkBfU7FQX98pusAJB0bK3F0jEKgTi+mPEPEyurJ4YBU/MVowWc0pdulb
         AEKmYrpQv8/0PsbdqvFAKyoOW2AiT7XzzYEr5koxVkIUO2evLMQc+3S8ZNCKN/QBzWWO
         q7Q0tXbhoJHlOZ68bDyBUnUl5aKtFdGRtBDa0n4ADN0rYbpcQCtHXAbom+NkaOu06sjg
         5RkqaHopFaUOW4qTGfrEAZhDTWLDZhEb65PNJzm26bnTMxidR8vwLIXMj3jQDlz/kCcf
         W2Ig==
X-Gm-Message-State: AG10YOT9j6EyjKIvAzJg0Gs1g5vQIpYmK8xDW4jOuWiQmCobU8J4MXHK78NPrhBRYlkjHyoDA122rudZ7VJrrQ==
MIME-Version: 1.0
X-Received: by 10.60.101.199 with SMTP id fi7mr28517560oeb.20.1456257595203;
 Tue, 23 Feb 2016 11:59:55 -0800 (PST)
Received: by 10.157.47.212 with HTTP; Tue, 23 Feb 2016 11:59:55 -0800 (PST)
Reply-To: bankarsandhya512@gmail.com
In-Reply-To: <alpine.DEB.2.02.1602232052250.2040@localhost6.localdomain6>
References: <20160222103651.GA5176@sandhya>
	<alpine.DEB.2.02.1602232039200.2040@localhost6.localdomain6>
	<CAA3ASz=isFucBfQL0sf6hqjhWfC2R-ag8a_7s6W8wDnJMnGeHw@mail.gmail.com>
	<alpine.DEB.2.02.1602232052250.2040@localhost6.localdomain6>
Date: Wed, 24 Feb 2016 01:29:55 +0530
Message-ID: <CAA3ASzmv=fXGY7XFj=UO2J_Fq8cUHpu2FCdTU7L=Gg3tkP849A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: slicoss: Use sizeof structure
 *pointer over sizeof structure in kmalloc()/kzalloc().
From: sandhya bankar <bankarsandhya512@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e0111beb0a9ed35052c75641e

--089e0111beb0a9ed35052c75641e
Content-Type: text/plain; charset=UTF-8

thank you !!

On Wed, Feb 24, 2016 at 1:26 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Wed, 24 Feb 2016, sandhya bankar wrote:
>
> > Hello,
> > I understand the ==NULL changes,but i have not understood the "make a
> > series" concept.
>
> If you look at the patches sent by others, sometimes they say, eg
>
> [PATCH 1/4]
>
> That means that there is a series of four patches, and this one is the
> first one.  Making a series is necessary when you have several different
> changes to make, and they all touch the same file.  By putting 1/4, 2/4,
> etc in the subject line, the maintainer knows in what order they should
> be applied.  This reduces the chance of patch application errors.
>
> This is described in more detail in the Outreachy kernel tutorial in the
> section "Submitting a patchset".
>
>
> http://kernelnewbies.org/Outreachyfirstpatch#head-e0c4dbf8c60d25ca8e3ae133b6b65560f3c84c09
>
> julia
>
> >
> > On Wed, Feb 24, 2016 at 1:09 AM, Julia Lawall <julia.lawall@lip6.fr>
> wrote:
> >
> >
> >       On Mon, 22 Feb 2016, Sandhya Bankar wrote:
> >
> >       > Use sizeof structure *pointer over sizeof structure in
> >       kmalloc()/kzalloc().
> >       >
> >       > Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> >       > ---
> >       >  drivers/staging/slicoss/slicoss.c | 6 +++---
> >       >  1 file changed, 3 insertions(+), 3 deletions(-)
> >       >
> >       > diff --git a/drivers/staging/slicoss/slicoss.c
> >       b/drivers/staging/slicoss/slicoss.c
> >       > index a91c60a..ea6b7b5 100644
> >       > --- a/drivers/staging/slicoss/slicoss.c
> >       > +++ b/drivers/staging/slicoss/slicoss.c
> >       > @@ -880,7 +880,7 @@ static int slic_upr_queue_request(struct
> >       adapter *adapter,
> >       >       struct slic_upr *upr;
> >       >       struct slic_upr *uprqueue;
> >       >
> >       > -     upr = kmalloc(sizeof(struct slic_upr), GFP_ATOMIC);
> >       > +     upr = kmalloc(sizeof(*upr), GFP_ATOMIC);
> >       >       if (!upr)
> >       >               return -ENOMEM;
> >       >
> >       > @@ -1806,7 +1806,7 @@ static int slic_mcast_add_list(struct
> >       adapter *adapter, char *address)
> >       >       }
> >       >
> >       >       /* Doesn't already exist.  Allocate a structure to hold
> >       it */
> >       > -     mcaddr = kmalloc(sizeof(struct mcast_address),
> >       GFP_ATOMIC);
> >       > +     mcaddr = kmalloc(sizeof(*mcaddr), GFP_ATOMIC);
> >       >       if (mcaddr == NULL)
> >
> >       You could make a series and also eliminate this == NULL test.
> >
> >       julia
> >
> >       >               return 1;
> >       >
> >       > @@ -3049,7 +3049,7 @@ static u32 slic_card_locate(struct
> >       adapter *adapter)
> >       >       }
> >       >       if (!physcard) {
> >       >               /* no structure allocated for this physical
> >       card yet */
> >       > -             physcard = kzalloc(sizeof(struct physcard),
> >       GFP_ATOMIC);
> >       > +             physcard = kzalloc(sizeof(*physcard),
> >       GFP_ATOMIC);
> >       >               if (!physcard) {
> >       >                       if (card_hostid == SLIC_HOSTID_DEFAULT)
> >       >                               kfree(card);
> >       > --
> >       > 1.8.3.4
> >       >
> > > --
> > > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it,
> > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to
> > outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/20160222103651.GA5176%4
> > 0sandhya.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/CAA3ASz%3DisFucBfQL0sf6
> > hqjhWfC2R-ag8a_7s6W8wDnJMnGeHw%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >
>

--089e0111beb0a9ed35052c75641e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">thank you !! <br></div><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote">On Wed, Feb 24, 2016 at 1:26 AM, Julia Lawall <span =
dir=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">j=
ulia.lawall@lip6.fr</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><span class=3D""><br>
<br>
On Wed, 24 Feb 2016, sandhya bankar wrote:<br>
<br>
&gt; Hello,<br>
&gt; I understand the =3D=3DNULL changes,but i have not understood the &quo=
t;make a<br>
&gt; series&quot; concept.<br>
<br>
</span>If you look at the patches sent by others, sometimes they say, eg<br=
>
<br>
[PATCH 1/4]<br>
<br>
That means that there is a series of four patches, and this one is the<br>
first one.=C2=A0 Making a series is necessary when you have several differe=
nt<br>
changes to make, and they all touch the same file.=C2=A0 By putting 1/4, 2/=
4,<br>
etc in the subject line, the maintainer knows in what order they should<br>
be applied.=C2=A0 This reduces the chance of patch application errors.<br>
<br>
This is described in more detail in the Outreachy kernel tutorial in the<br=
>
section &quot;Submitting a patchset&quot;.<br>
<br>
<a href=3D"http://kernelnewbies.org/Outreachyfirstpatch#head-e0c4dbf8c60d25=
ca8e3ae133b6b65560f3c84c09" rel=3D"noreferrer" target=3D"_blank">http://ker=
nelnewbies.org/Outreachyfirstpatch#head-e0c4dbf8c60d25ca8e3ae133b6b65560f3c=
84c09</a><br>
<br>
julia<br>
<div><div class=3D"h5"><br>
&gt;<br>
&gt; On Wed, Feb 24, 2016 at 1:09 AM, Julia Lawall &lt;<a href=3D"mailto:ju=
lia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Mon, 22 Feb 2016, Sandhya Bankar wrote:<b=
r>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Use sizeof structure *pointer over size=
of structure in<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0kmalloc()/kzalloc().<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Sandhya Bankar &lt;<a hr=
ef=3D"mailto:bankarsandhya512@gmail.com">bankarsandhya512@gmail.com</a>&gt;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 drivers/staging/slicoss/slicoss.c=
 | 6 +++---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 1 file changed, 3 insertions(+), =
3 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/slicoss/sl=
icoss.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/slicoss/slicoss.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index a91c60a..ea6b7b5 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/slicoss/slicoss.c=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/slicoss/slicoss.c=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -880,7 +880,7 @@ static int slic_upr=
_queue_request(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0adapter *adapter,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct slic_u=
pr *upr;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct slic_u=
pr *uprqueue;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0upr =3D kmalloc(si=
zeof(struct slic_upr), GFP_ATOMIC);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0upr =3D kmalloc(si=
zeof(*upr), GFP_ATOMIC);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!upr)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0return -ENOMEM;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -1806,7 +1806,7 @@ static int slic_m=
cast_add_list(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0adapter *adapter, char *address)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Doesn&#39;=
t already exist.=C2=A0 Allocate a structure to hold<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0it */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0mcaddr =3D kmalloc=
(sizeof(struct mcast_address),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0GFP_ATOMIC);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0mcaddr =3D kmalloc=
(sizeof(*mcaddr), GFP_ATOMIC);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (mcaddr =
=3D=3D NULL)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0You could make a series and also eliminate t=
his =3D=3D NULL test.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0julia<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0return 1;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -3049,7 +3049,7 @@ static u32 slic_c=
ard_locate(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0adapter *adapter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!physcard=
) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/* no structure allocated for this physical<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0card yet */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0physcard =3D kzalloc(sizeof(struct physcard),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0GFP_ATOMIC);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0physcard =3D kzalloc(sizeof(*physcard),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0GFP_ATOMIC);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (!physcard) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (card_hostid =3D=3D SLIC_HO=
STID_DEFAULT)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kf=
ree(card);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; 1.8.3.4<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt; --<br>
&gt; &gt; You received this message because you are subscribed to the Googl=
e<br>
&gt; Groups &quot;outreachy-kernel&quot; group.<br>
&gt; &gt; To unsubscribe from this group and stop receiving emails from it,=
<br>
&gt; send an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@goog=
legroups.com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; &gt; To post to this group, send email to<br>
&gt; <a href=3D"mailto:outreachy-kernel@googlegroups.com">outreachy-kernel@=
googlegroups.com</a>.<br>
&gt; &gt; To view this discussion on the web visithttps://<a href=3D"http:/=
/groups.google.com/d/msgid/outreachy-kernel/20160222103651.GA5176%4" rel=3D=
"noreferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-kernel/2=
0160222103651.GA5176%4</a><br>
&gt; 0sandhya.<br>
&gt; &gt; For more options, visit <a href=3D"https://groups.google.com/d/op=
tout" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/opto=
ut</a>.<br>
&gt; &gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups<br>
&gt; &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an<br>
&gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups=
.com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
</div></div>&gt; To view this discussion on the web visithttps://<a href=3D=
"http://groups.google.com/d/msgid/outreachy-kernel/CAA3ASz%3DisFucBfQL0sf6"=
 rel=3D"noreferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-k=
ernel/CAA3ASz%3DisFucBfQL0sf6</a><br>
&gt; hqjhWfC2R-ag8a_7s6W8wDnJMnGeHw%<a href=3D"http://40mail.gmail.com" rel=
=3D"noreferrer" target=3D"_blank">40mail.gmail.com</a>.<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt; For more options, visit <a hre=
f=3D"https://groups.google.com/d/optout" rel=3D"noreferrer" target=3D"_blan=
k">https://groups.google.com/d/optout</a>.<br>
&gt;<br>
&gt; </div></div></blockquote></div><br></div>

--089e0111beb0a9ed35052c75641e--

