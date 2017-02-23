X-GM-THRID: 6390398326038069248
X-Received: by 10.36.111.73 with SMTP id x70mr2632997itb.23.1487882431039;
        Thu, 23 Feb 2017 12:40:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.212 with SMTP id e78ls72041ote.9.gmail; Thu, 23 Feb 2017
 12:40:30 -0800 (PST)
X-Received: by 10.31.54.206 with SMTP id d197mr10022116vka.21.1487882430273;
        Thu, 23 Feb 2017 12:40:30 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x241.google.com (mail-it0-x241.google.com. [2607:f8b0:4001:c0b::241])
        by gmr-mx.google.com with ESMTPS id b188si1011732ite.3.2017.02.23.12.40.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 12:40:30 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) client-ip=2607:f8b0:4001:c0b::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x241.google.com with SMTP id 203so2143080ith.2
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Feb 2017 12:40:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=lQ84/TmvkaRjHe1EdPHY+rFYAJD4KzXs3QDZ7XmC074=;
        b=PDYWz1mWnt886Ni5TzOJ6LzJFWkpDrwXVWeT+4UHyjyUhVk6UDItp/Vj/ZBv0p6Rl7
         90eHs9ILhFjgKl1GSUE+STA9TGf1u2kmC5qZ2fjTwV3V1JzAQH/4X+M2vW5xysN+m5H7
         FzBXWmhkp5oBmG7OYbE09FogTsQNyJ8oWo8CdGuY7UwQAQjH96dpcpmfS9kXd7Hqtplm
         20ZFRanPiWf87G4sJPZ8rN7UriEnTqj0dzGf2ErwFNdnfRzhHtXKKq1zIhk6G4Oc15hE
         /zmUYFGNAwC0ORDC/zq1x+Ky9JXOT5ITPhEgtrmBN17IuyHolVWtFzEPKSk9frxmpGWX
         5o9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=lQ84/TmvkaRjHe1EdPHY+rFYAJD4KzXs3QDZ7XmC074=;
        b=oU9d4msu5AKdQnPMw1FJlFnfd8FriOYyp9IlhKHQcfJVMi1BhFyGHKjcdZMTmxUQfo
         d9T1SXYho+shE3ksSPoYcvirCf84RhiBJDtHYku2BAWufvhAca48Yp4MoHZT8neZmhso
         65AduGhTsqIuVRBE3ohum21QuI63+LjmVpXU6Wzl9BH+YDI5hYecz3xYXG0VEBVVUMEv
         aUaMl1wwrDm8g1/hmyYILQIXAk67dLAl13vryVMA+t6txUt4JbQEu11qZPVJQ7Vl91gm
         i6DSUJ8O+Iz5N03LJ/fPQdLD8ysq1/dKAHDyj+JVagOp2Wy2XYGFnKwtthLN1iLK8rRY
         cMdg==
X-Gm-Message-State: AMke39k1+YMWBLnhydUwk1ijM6lQ30NEp0NOLA8Uk0fw4Sj0zD1Ho4VRONHMBoRYd8jQ10TPPBYZeLyS6uDMBw==
X-Received: by 10.36.200.9 with SMTP id w9mr6991593itf.113.1487882430010; Thu,
 23 Feb 2017 12:40:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Thu, 23 Feb 2017 12:39:59 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1702232132020.2103@hadrien>
References: <1487880419-28962-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1702232132020.2103@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Fri, 24 Feb 2017 02:09:59 +0530
Message-ID: <CAOCi2DG7im2+vSX67cHOWRqRRQvhg_FN8Sj=2VGR_O44xs2sow@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: replace explicit
 NULL comparison
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary=94eb2c057e14b55cba0549389f74

--94eb2c057e14b55cba0549389f74
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 24, 2017 at 2:02 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
> On Fri, 24 Feb 2017, Gargi Sharma wrote:
>
> > Replace explicit NULL comparison with ! operator to
> > simplify code.
>
> This change is already made in my kernel, suggesting that I already acked
> some other patch doing the same thing.

Sorry, my bad. Somebody used checkpatch to detect this, and did indeed make
the
same changes. I'll redact this patch.

thanks,
gargi
>
> julia
>
> >
> > Found with Coccinelle script:
> > @@
> > expression ptr;
> > position p;
> > statement s0, s1;
> > @@
> >
> > ptr@p =
> > \(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|usb_alloc_urb\|
> > alloc_netdev\|dev_alloc_skb\)(...)
> > ... when != ptr
> >
> > if (
> > (
> > + !
> > ptr
> > - == NULL
> > )
> > ) s0 else s1
> >
> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > ---
> >  drivers/staging/rtl8192e/rtl819x_BAProc.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c
b/drivers/staging/rtl8192e/rtl819x_BAProc.c
> > index 20260af..1d39631 100644
> > --- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
> > +++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
> > @@ -88,7 +88,7 @@ static struct sk_buff *rtllib_ADDBA(struct
rtllib_device *ieee, u8 *Dst,
> >               return NULL;
> >       }
> >       skb = dev_alloc_skb(len + sizeof(struct rtllib_hdr_3addr));
> > -     if (skb == NULL)
> > +     if (!skb)
> >               return NULL;
> >
> >       memset(skb->data, 0, sizeof(struct rtllib_hdr_3addr));
> > @@ -154,7 +154,7 @@ static struct sk_buff *rtllib_DELBA(struct
rtllib_device *ieee, u8 *dst,
> >       DelbaParamSet.field.TID = pBA->BaParamSet.field.TID;
> >
> >       skb = dev_alloc_skb(len + sizeof(struct rtllib_hdr_3addr));
> > -     if (skb == NULL)
> > +     if (!skb)
> >               return NULL;
> >
> >       skb_reserve(skb, ieee->tx_headroom);
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
msgid/outreachy-kernel/1487880419-28962-1-git-send-
email-gs051095%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

--94eb2c057e14b55cba0549389f74
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Fri, Feb 24, 2017 at 2:02 AM, Julia Lawall &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>=
&gt; wrote:<br>&gt;<br>&gt; On Fri, 24 Feb 2017, Gargi Sharma wrote:<br>&gt=
;<br>&gt; &gt; Replace explicit NULL comparison with ! operator to<br>&gt; =
&gt; simplify code.<br>&gt;<br>&gt; This change is already made in my kerne=
l, suggesting that I already acked<br>&gt; some other patch doing the same =
thing.<div><br></div><div>Sorry, my bad. Somebody used checkpatch to detect=
 this, and did indeed make the</div><div>same changes. I&#39;ll redact this=
 patch.</div><div><br></div><div>thanks,</div><div>gargi</div><div>&gt;<br>=
&gt; julia<br>&gt;<br>&gt; &gt;<br>&gt; &gt; Found with Coccinelle script:<=
br>&gt; &gt; @@<br>&gt; &gt; expression ptr;<br>&gt; &gt; position p;<br>&g=
t; &gt; statement s0, s1;<br>&gt; &gt; @@<br>&gt; &gt;<br>&gt; &gt; ptr@p =
=3D<br>&gt; &gt; \(kmalloc\|devm_kzalloc\|<wbr>kmalloc_array\|devm_ioremap\=
|<wbr>usb_alloc_urb\|<br>&gt; &gt; alloc_netdev\|dev_alloc_skb\)(<wbr>...)<=
br>&gt; &gt; ... when !=3D ptr<br>&gt; &gt;<br>&gt; &gt; if (<br>&gt; &gt; =
(<br>&gt; &gt; + !<br>&gt; &gt; ptr<br>&gt; &gt; - =3D=3D NULL<br>&gt; &gt;=
 )<br>&gt; &gt; ) s0 else s1<br>&gt; &gt;<br>&gt; &gt; Signed-off-by: Gargi=
 Sharma &lt;<a href=3D"mailto:gs051095@gmail.com" target=3D"_blank">gs05109=
5@gmail.com</a>&gt;<br>&gt; &gt; ---<br>&gt; &gt; =C2=A0drivers/staging/rtl=
8192e/<wbr>rtl819x_BAProc.c | 4 ++--<br>&gt; &gt; =C2=A01 file changed, 2 i=
nsertions(+), 2 deletions(-)<br>&gt; &gt;<br>&gt; &gt; diff --git a/drivers=
/staging/rtl8192e/<wbr>rtl819x_BAProc.c b/drivers/staging/rtl8192e/<wbr>rtl=
819x_BAProc.c<br>&gt; &gt; index 20260af..1d39631 100644<br>&gt; &gt; --- a=
/drivers/staging/rtl8192e/<wbr>rtl819x_BAProc.c<br>&gt; &gt; +++ b/drivers/=
staging/rtl8192e/<wbr>rtl819x_BAProc.c<br>&gt; &gt; @@ -88,7 +88,7 @@ stati=
c struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,<br>&gt;=
 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>&gt;=
 &gt; =C2=A0 =C2=A0 =C2=A0 }<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 skb =3D dev_=
alloc_skb(len + sizeof(struct rtllib_hdr_3addr));<br>&gt; &gt; - =C2=A0 =C2=
=A0 if (skb =3D=3D NULL)<br>&gt; &gt; + =C2=A0 =C2=A0 if (!skb)<br>&gt; &gt=
; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>&gt; &gt=
;<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 memset(skb-&gt;data, 0, sizeof(struct r=
tllib_hdr_3addr));<br>&gt; &gt; @@ -154,7 +154,7 @@ static struct sk_buff *=
rtllib_DELBA(struct rtllib_device *ieee, u8 *dst,<br>&gt; &gt; =C2=A0 =C2=
=A0 =C2=A0 DelbaParamSet.field.TID =3D pBA-&gt;BaParamSet.field.TID;<br>&gt=
; &gt;<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 skb =3D dev_alloc_skb(len + sizeof=
(struct rtllib_hdr_3addr));<br>&gt; &gt; - =C2=A0 =C2=A0 if (skb =3D=3D NUL=
L)<br>&gt; &gt; + =C2=A0 =C2=A0 if (!skb)<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>&gt; &gt;<br>&gt; &gt; =C2=A0 =
=C2=A0 =C2=A0 skb_reserve(skb, ieee-&gt;tx_headroom);<br>&gt; &gt; --<br>&g=
t; &gt; 2.7.4<br>&gt; &gt;<br>&gt; &gt; --<br>&gt; &gt; You received this m=
essage because you are subscribed to the Google Groups &quot;outreachy-kern=
el&quot; group.<br>&gt; &gt; To unsubscribe from this group and stop receiv=
ing emails from it, send an email to <a href=3D"mailto:outreachy-kernel%2Bu=
nsubscribe@googlegroups.com" target=3D"_blank">outreachy-kernel+unsubscribe=
@<wbr>googlegroups.com</a>.<br>&gt; &gt; To post to this group, send email =
to <a href=3D"mailto:outreachy-kernel@googlegroups.com" target=3D"_blank">o=
utreachy-kernel@googlegroups.<wbr>com</a>.<br>&gt; &gt; To view this discus=
sion on the web visit <a href=3D"https://groups.google.com/d/msgid/outreach=
y-kernel/1487880419-28962-1-git-send-email-gs051095%40gmail.com" target=3D"=
_blank">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>148788=
0419-28962-1-git-send-<wbr>email-gs051095%40gmail.com</a>.<br>&gt; &gt; For=
 more options, visit <a href=3D"https://groups.google.com/d/optout" target=
=3D"_blank">https://groups.google.com/d/<wbr>optout</a>.<br>&gt; &gt;</div>=
</div>

--94eb2c057e14b55cba0549389f74--

