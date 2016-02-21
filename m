X-GM-THRID: 6253707231891554304
X-Received: by 10.98.33.209 with SMTP id o78mr22073413pfj.6.1456060209643;
        Sun, 21 Feb 2016 05:10:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.131.166 with SMTP id on6ls332994igb.6.canary; Sun, 21 Feb
 2016 05:10:08 -0800 (PST)
X-Received: by 10.66.142.135 with SMTP id rw7mr22555415pab.20.1456060208751;
        Sun, 21 Feb 2016 05:10:08 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qk0-x22e.google.com (mail-qk0-x22e.google.com. [2607:f8b0:400d:c09::22e])
        by gmr-mx.google.com with ESMTPS id w126si1045595ywe.6.2016.02.21.05.10.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 05:10:08 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c09::22e as permitted sender) client-ip=2607:f8b0:400d:c09::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c09::22e as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22e.google.com with SMTP id s68so47109141qkh.3
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 05:10:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=MFyfb78Bom1QP4shRQH5tPxvIj1NOUuHx+UjDVwnuu8=;
        b=wFq3EiC3vO44N4yxwiZj10/s0RZ++J8docpvWqlw6jJwy16ibdPrpfYV+jQQVmLiko
         LepK2ij7ju+bMteEXXFZIFH38l1gnZoOwGzUWBm8s7qYWh/wmWAOnFob/Wp8tJoeuhe3
         KWCFtEFITmlHgnhVB6in/oz1YXXDxpc2nFVEzexoi1wFnaZu+/7xT+9FbXM4vh8NPqDZ
         DiJ8a0a/STJvgvMijil0R5+gIhqXFm0VKdQrWWPiZ3LdyrbKH+cUwCZe2wNEvIsT3KTk
         ujcYgPuYXwJg0gZhG9DkM+VFO9/s/KCn+ATg4TWGn9USViqSjIlOlJSz0cbSwPU/5q4D
         osDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=MFyfb78Bom1QP4shRQH5tPxvIj1NOUuHx+UjDVwnuu8=;
        b=aWOR1S+wAVpNB8zkRer15PQO/rSINX0zorGl+lFX0QeBpkK/CxSuPV8xiZBP+aqP41
         22wxxtaXLaGK48ofa25bHUZed/0+6z87BPyp5+jQaMaftAIv4bxaOCjqB5Mm0h+brvWH
         1HsW3xJ3vlFipzgvwRpGKG6XQ7I/V9oP1evG33BD9p0vP9jUY3LpOUl+T34aDKJCHzr2
         6H5QMH/YIJPlOyTGfrGpLzEiHAJWdFvf3Yt8rswXa6QaXHT1FOmVMqZF6pIhls7iTubx
         eANb7yDOnINquDuPL7W8m6PPtbLyvY1t0Z54GsXd359l3Cmcw7oM+d8BlLXFMNtQf97o
         DYmQ==
X-Gm-Message-State: AG10YOTqAFdnpcqyeFgFfJ/RqCrhkwFZ+xTDY+2jNCcEKqmY124kGX/GbcoTSq/IiZiPIIlW8FJYrYFORBrZOg==
X-Received: by 10.55.81.2 with SMTP id f2mr28200329qkb.87.1456060208559; Sun,
 21 Feb 2016 05:10:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.209.65 with HTTP; Sun, 21 Feb 2016 05:09:29 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602210722520.2782@hadrien>
References: <20160221113832.GA28242@Karyakshetra> <alpine.DEB.2.10.1602210722520.2782@hadrien>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Sun, 21 Feb 2016 18:39:29 +0530
Message-ID: <CAFNHFT9kXBxJbFKapk+-mQNx2-pgnYqwfokM0-00Lqw0pk6Low@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Prefer using kmalloc_array
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a114a822a80bcda052c476f74

--001a114a822a80bcda052c476f74
Content-Type: text/plain; charset=UTF-8

Hello Julia,

Thank you for your feedback.  I'll send a v2 for this patch.
Do you recommend going for the following semantic patch?

 It is preserving the format of the original file and is not introducing
any  80 character violations.


@@
expression e1, e2;
constant C;
type t;
@@
(
- kmalloc(
+ kmalloc_array(
e1
- *
+ ,
sizeof(e1), C)
|
- kmalloc(
+ kmalloc_array(
e2
- *
+ ,
sizeof(t), C)
|
- kmalloc(
+ kmalloc_array(
- sizeof(e1)
- *
e2
+ ,
+ sizeof(e1)
, C)
|
- kmalloc(
+ kmalloc_array(
- sizeof(e1)
- *
e2
+ ,
+ sizeof(t)
, C)
)

On Sun, Feb 21, 2016 at 5:53 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> On Sun, 21 Feb 2016, Bhaktipriya Shridhar wrote:
>
> > Use kmalloc_array instead of kmalloc for arrays to prevent integer
> > overflows.
> > This was done using Coccinelle:
> > @@
> > expression e1, e2;
> > constant C;
> > type t;
> > @@
> > (
> > - kmalloc(sizeof(e1)*e2, C)
> > + kmalloc_array(e2, sizeof(e1), C)
> > |
> > - kmalloc(e2*sizeof(e1), C)
> > + kmalloc_array(e2, sizeof(e1), C)
> > |
> > - kmalloc(e2*sizeof(t), C)
> > + kmalloc_array(e2, sizeof(t), C)
> > |
> > - kmalloc(sizeof(t)*e2, C)
> > + kmalloc_array(e2, sizeof(t), C)
> > )
> >
> > Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> > ---
> >  drivers/staging/fbtft/fb_agm1264k-fl.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c
> b/drivers/staging/fbtft/fb_agm1264k-fl.c
> > index 2a50cf9..5fbfd50 100644
> > --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> > +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> > @@ -272,8 +272,9 @@ static int write_vmem(struct fbtft_par *par, size_t
> offset, size_t len)
> >       int ret = 0;
> >
> >       /* buffer to convert RGB565 -> grayscale16 -> Dithered image 1bpp
> */
> > -     signed short *convert_buf = kmalloc(par->info->var.xres *
> > -             par->info->var.yres * sizeof(signed short), GFP_NOIO);
> > +     signed short *convert_buf = kmalloc_array(par->info->var.xres *
> par->info->var.yres,
> > +                                               sizeof(signed short),
> > +                                               GFP_NOIO);
>
> You should adjust the output of Coccinelle so as to not introduce 80
> character violations.
>
> julia
>
> >
> >       if (!convert_buf)
> >               return -ENOMEM;
> > --
> > 2.1.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20160221113832.GA28242%40Karyakshetra
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a114a822a80bcda052c476f74
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hello Julia,<br><br></div>Thank you fo=
r your feedback.=C2=A0 I&#39;ll send a v2 for this patch.<br></div></div>Do=
 you recommend going for the following semantic patch?<br><br>=C2=A0It is p=
reserving the format of the original file and is not introducing<br>any=C2=
=A0 80 character violations.<br><br><br>@@<br>expression e1, e2;<br>constan=
t C;<br>type t;<br>@@<br>(<br>- kmalloc(<br>+ kmalloc_array(<br>e1<br>- *<b=
r>+ ,<br>sizeof(e1), C)<br>|<br>- kmalloc(<br>+ kmalloc_array(<br>e2<br>- *=
<br>+ ,<br>sizeof(t), C)<br>|<br>- kmalloc(<br>+ kmalloc_array(<br>- sizeof=
(e1)<br>- *<br>e2<br>+ ,<br>+ sizeof(e1)<br>, C)<br>|<br>- kmalloc(<br>+ km=
alloc_array(<br>- sizeof(e1)<br>- *<br>e2<br>+ ,<br>+ sizeof(t)<br>, C)<br>=
)<br><div><div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On=
 Sun, Feb 21, 2016 at 5:53 PM, Julia Lawall <span dir=3D"ltr">&lt;<a href=
=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On =
Sun, 21 Feb 2016, Bhaktipriya Shridhar wrote:<br>
<br>
&gt; Use kmalloc_array instead of kmalloc for arrays to prevent integer<br>
&gt; overflows.<br>
&gt; This was done using Coccinelle:<br>
&gt; @@<br>
&gt; expression e1, e2;<br>
&gt; constant C;<br>
&gt; type t;<br>
&gt; @@<br>
&gt; (<br>
&gt; - kmalloc(sizeof(e1)*e2, C)<br>
&gt; + kmalloc_array(e2, sizeof(e1), C)<br>
&gt; |<br>
&gt; - kmalloc(e2*sizeof(e1), C)<br>
&gt; + kmalloc_array(e2, sizeof(e1), C)<br>
&gt; |<br>
&gt; - kmalloc(e2*sizeof(t), C)<br>
&gt; + kmalloc_array(e2, sizeof(t), C)<br>
&gt; |<br>
&gt; - kmalloc(sizeof(t)*e2, C)<br>
&gt; + kmalloc_array(e2, sizeof(t), C)<br>
&gt; )<br>
&gt;<br>
&gt; Signed-off-by: Bhaktipriya Shridhar &lt;<a href=3D"mailto:bhaktipriya9=
6@gmail.com">bhaktipriya96@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/fbtft/fb_agm1264k-fl.c | 5 +++--<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/=
fbtft/fb_agm1264k-fl.c<br>
&gt; index 2a50cf9..5fbfd50 100644<br>
&gt; --- a/drivers/staging/fbtft/fb_agm1264k-fl.c<br>
&gt; +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c<br>
&gt; @@ -272,8 +272,9 @@ static int write_vmem(struct fbtft_par *par, size_=
t offset, size_t len)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int ret =3D 0;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* buffer to convert RGB565 -&gt; grayscale1=
6 -&gt; Dithered image 1bpp */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0signed short *convert_buf =3D kmalloc(par-&gt;inf=
o-&gt;var.xres *<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0par-&gt;info-&gt;var.=
yres * sizeof(signed short), GFP_NOIO);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0signed short *convert_buf =3D kmalloc_array(par-&=
gt;info-&gt;var.xres * par-&gt;info-&gt;var.yres,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0sizeof(signed short),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0GFP_NOIO);<br>
<br>
You should adjust the output of Coccinelle so as to not introduce 80<br>
character violations.<br>
<br>
julia<br>
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!convert_buf)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENOMEM;<=
br>
<span class=3D""><font color=3D"#888888">&gt; --<br>
&gt; 2.1.4<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20160221113832.GA28242%40Karyakshetra" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outreac=
hy-kernel/20160221113832.GA28242%40Karyakshetra</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div></div></div></div>

--001a114a822a80bcda052c476f74--

