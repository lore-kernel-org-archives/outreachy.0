X-GM-THRID: 6330315387682422784
X-Received: by 10.157.47.73 with SMTP id h67mr7491268otb.5.1473963054497;
        Thu, 15 Sep 2016 11:10:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.112 with SMTP id o45ls3865731oto.24.gmail; Thu, 15 Sep
 2016 11:10:54 -0700 (PDT)
X-Received: by 10.157.29.38 with SMTP id m35mr1415574otm.7.1473963054063;
        Thu, 15 Sep 2016 11:10:54 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qt0-x241.google.com (mail-qt0-x241.google.com. [2607:f8b0:400d:c0d::241])
        by gmr-mx.google.com with ESMTPS id y77si423929ywd.7.2016.09.15.11.10.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 11:10:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) client-ip=2607:f8b0:400d:c0d::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x241.google.com with SMTP id 11so1864987qtc.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 11:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=xc0taob14aDdS4QkcVx/w0N1XpnhMIVnHxNd3Vjhyb0=;
        b=w7t1xU0xfybkIVMLUKpEjrnz3ZNDWe5sZ3WggLeXAMcuhfE/ztpskeBl0v5kozhkeh
         MEd3Z5DIxgqWhCK19/jccqw+xjvGN5RFMYwYE5+zFvzzqRDziC4ZHI4ipE2BbvoIu/WK
         0DWit52opQnoZRGK5+y3iWVOuMBFiIldQvDmeczQeHNUb1QsqwFLP6GiWAXaNSNQXsSg
         DTx9fAmkf3O3O/IEtCEfQJ2dMHp4tVnq1p4wkyJt/0P6cFyJiC+HxN75vWzfiOfCKnx6
         m1N4zbndR+HnD/yRhLxxMu44PF0V26RMO1A8Tx4mStnLwwG1rkJ44qHh1HKQx/N6Ezvy
         tciQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=xc0taob14aDdS4QkcVx/w0N1XpnhMIVnHxNd3Vjhyb0=;
        b=Ws+tgTtaghEj1+FLN8fxTBBE+9UdlB/aeaQWZHKtNrXTjCma2ZAjZtVriDl03zB/8T
         0MUDj/lq/zBmDfMafmSwdzx4Bi6H3lqE44Sp5CX45MQIqg8Nev60TaO9zFtAOJ3FSINg
         xRZRqZceKForO8pQ4KG1gMzzsM6aDy61HL2GgabG027m8BEsMOyw/KqFjKIraWYsNyx9
         lHrSauQ0aOgGETDIe7z7uxwKArSmeo6L1Ljw/lEHht+hH0O2dB4rLi3O5DE+SepjZXly
         LU5E6haa/Xx1bfDmhewHF37EImDnlT0oLQi9NQGdQtAkQNfrpeRJll3pkLe9NPXO3dNN
         m5JQ==
X-Gm-Message-State: AE9vXwPKsdVyUt9zHaTS3typbvGOQAtm2gGq+hizaxlbpfcNGWLXBjzu8RrOv8XtWmVfMPlgujPwrLKNQuKFMg==
X-Received: by 10.237.38.129 with SMTP id q1mr10605160qtd.104.1473963053820;
 Thu, 15 Sep 2016 11:10:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Thu, 15 Sep 2016 11:10:33 -0700 (PDT)
In-Reply-To: <20160915180849.GA6416@namrata-HP-Pavilion-g6-Notebook-PC>
References: <CAFrQyDHhpXVeYyQGb=kwRp=4ToJw-9i6Y2KiwxVTb=21Wtxb9Q@mail.gmail.com>
 <alpine.DEB.2.10.1609150718460.6078@hadrien> <20160915180849.GA6416@namrata-HP-Pavilion-g6-Notebook-PC>
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Thu, 15 Sep 2016 23:40:33 +0530
Message-ID: <CAFrQyDFZ92oTmzrW1k62uyjRowFKbkhmX6jzzcX334kJCzjbuA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/6] staging: vt6656: main_usb: Replace
 data type declaration with variable of same type
To: outreachy-kernel <outreachy-kernel@googlegroups.com>, Julia Lawall <julia.lawall@lip6.fr>
Content-Type: multipart/alternative; boundary=001a114f5db63c2eb1053c8fc46f

--001a114f5db63c2eb1053c8fc46f
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 15, 2016 at 07:19:23AM +0200, Julia Lawall wrote:
>
>
> On Thu, 15 Sep 2016, Namrata A Shettar wrote:
>
> > This patch fixes checkpatch issue:
> > -Replacing sizeof(struct vnt_usb_send_context) with sizeof(*tx_context)
> > -Replacing sizeof(struct vnt_rcb) with sizeof(*priv->rcb[ii])
> > The replacements are of the type they are replaced with hence size
> > remains same.
> >
> > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > ---
> >  drivers/staging/vt6656/main_usb.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> >         for (ii = 0; ii < priv->num_tx_context; ii++) {
> > -               tx_context = kmalloc(sizeof(struct
vnt_usb_send_context),
> > +               tx_context = kmalloc(sizeof(*tx_context),
> >
GFP_KERNEL);
>
> The GFP_KERNEL argument should not be left way out on the right like that.
> Now it could be on the sam line as the kmalloc.
>
> julia
>

Will that change come in the same patch? or should I create a new patch
for the same?

Thanks,
Namrata

On Thu, Sep 15, 2016 at 11:38 PM, Namrata A Shettar <
namrataashettar@gmail.com> wrote:

> On Thu, Sep 15, 2016 at 07:19:23AM +0200, Julia Lawall wrote:
> >
> >
> > On Thu, 15 Sep 2016, Namrata A Shettar wrote:
> >
> > > This patch fixes checkpatch issue:
> > > -Replacing sizeof(struct vnt_usb_send_context) with sizeof(*tx_context)
> > > -Replacing sizeof(struct vnt_rcb) with sizeof(*priv->rcb[ii])
> > > The replacements are of the type they are replaced with hence size
> > > remains same.
> > >
> > > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > > ---
> > >  drivers/staging/vt6656/main_usb.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > >         for (ii = 0; ii < priv->num_tx_context; ii++) {
> > > -               tx_context = kmalloc(sizeof(struct
> vnt_usb_send_context),
> > > +               tx_context = kmalloc(sizeof(*tx_context),
> > >
> GFP_KERNEL);
> >
> > The GFP_KERNEL argument should not be left way out on the right like
> that.
> > Now it could be on the sam line as the kmalloc.
> >
> > julia
> >
>
> Will that change come in the same patch? or should I create a new patch
> for the same?
>
> Thanks,
> Namrata
>

--001a114f5db63c2eb1053c8fc46f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span class=3D"gmail-im">On Thu, Sep 15, 2016 at 07:19:23A=
M +0200, Julia Lawall wrote:<br>
&gt;<br>
&gt;<br>
&gt; On Thu, 15 Sep 2016, Namrata A Shettar wrote:<br>
&gt;<br>
&gt; &gt; This patch fixes checkpatch issue:<br>
&gt; &gt; -Replacing sizeof(struct vnt_usb_send_context) with sizeof(*tx_co=
ntext)<br>
&gt; &gt; -Replacing sizeof(struct vnt_rcb) with sizeof(*priv-&gt;rcb[ii])<=
br>
&gt; &gt; The replacements are of the type they are replaced with hence siz=
e<br>
&gt; &gt; remains same.<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Namrata A Shettar &lt;<a href=3D"mailto:namrataash=
ettar@gmail.com">namrataashettar@gmail.com</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt; =C2=A0drivers/staging/vt6656/main_<wbr>usb.c | 4 ++--<br>
&gt; &gt; =C2=A01 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt; &gt;<br>
</span><span class=3D"gmail-im">&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (=
ii =3D 0; ii &lt; priv-&gt;num_tx_context; ii++) {<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tx_contex=
t =3D kmalloc(sizeof(struct vnt_usb_send_context),<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tx_contex=
t =3D kmalloc(sizeof(*tx_context),<br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 GFP_KERNEL);<br>
&gt;<br>
&gt; The GFP_KERNEL argument should not be left way out on the right like t=
hat.<br>
&gt; Now it could be on the sam line as the kmalloc.<br>
&gt;<br>
&gt; julia<br>
&gt;<br>
<br>
</span>Will that change come in the same patch? or should I create a new pa=
tch<br>
for the same?<br>
<br>
Thanks,<br>
Namrata</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On T=
hu, Sep 15, 2016 at 11:38 PM, Namrata A Shettar <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:namrataashettar@gmail.com" target=3D"_blank">namrataashettar@g=
mail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D"im HOEnZb">On Thu, Sep 15, 2016 at 07:19:23AM +0200, Julia Lawall wr=
ote:<br>
&gt;<br>
&gt;<br>
</span><span class=3D"im HOEnZb">&gt; On Thu, 15 Sep 2016, Namrata A Shetta=
r wrote:<br>
&gt;<br>
&gt; &gt; This patch fixes checkpatch issue:<br>
&gt; &gt; -Replacing sizeof(struct vnt_usb_send_context) with sizeof(*tx_co=
ntext)<br>
&gt; &gt; -Replacing sizeof(struct vnt_rcb) with sizeof(*priv-&gt;rcb[ii])<=
br>
&gt; &gt; The replacements are of the type they are replaced with hence siz=
e<br>
&gt; &gt; remains same.<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Namrata A Shettar &lt;<a href=3D"mailto:namrataash=
ettar@gmail.com">namrataashettar@gmail.com</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt; =C2=A0drivers/staging/vt6656/main_<wbr>usb.c | 4 ++--<br>
&gt; &gt; =C2=A01 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt; &gt;<br>
</span><span class=3D"im HOEnZb">&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 for =
(ii =3D 0; ii &lt; priv-&gt;num_tx_context; ii++) {<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tx_contex=
t =3D kmalloc(sizeof(struct vnt_usb_send_context),<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tx_contex=
t =3D kmalloc(sizeof(*tx_context),<br>
&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 GFP_KERNEL);<br>
&gt;<br>
&gt; The GFP_KERNEL argument should not be left way out on the right like t=
hat.<br>
&gt; Now it could be on the sam line as the kmalloc.<br>
&gt;<br>
&gt; julia<br>
&gt;<br>
<br>
</span><div class=3D"HOEnZb"><div class=3D"h5">Will that change come in the=
 same patch? or should I create a new patch<br>
for the same?<br>
<br>
Thanks,<br>
Namrata<br>
</div></div></blockquote></div><br></div>

--001a114f5db63c2eb1053c8fc46f--

