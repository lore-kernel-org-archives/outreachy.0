X-GM-THRID: 929564721152
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e63c190f0f3ec0ee
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.72.44 with SMTP id a12mr967726wiv.0.1424378094395;
        Thu, 19 Feb 2015 12:34:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.9.168 with SMTP id a8ls187167lab.14.gmail; Thu, 19 Feb
 2015 12:34:53 -0800 (PST)
X-Received: by 10.112.50.106 with SMTP id b10mr841365lbo.8.1424378093923;
        Thu, 19 Feb 2015 12:34:53 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-lb0-x22e.google.com (mail-lb0-x22e.google.com. [2a00:1450:4010:c04::22e])
        by gmr-mx.google.com with ESMTPS id xl7si2722753lbb.1.2015.02.19.12.34.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 12:34:53 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::22e as permitted sender) client-ip=2a00:1450:4010:c04::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::22e as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x22e.google.com with SMTP id z11so2304951lbi.5
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 12:34:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=kbXDVxMtmjwFRudnDBEXYC/ZcFLkTcseV+eGuEHdxi8=;
        b=L3OTdSjowEDLieC0u0s8qE8vc7/uXXQpewj5BnAMBs3jQ5JkdWiN6ZIgcpoYqCTeOE
         FVFA97H7OrdAmOG4d3BWNpDh/MXVu2+YcEdvKK7+M5RnYxIRMx/jFi7Vp8e7wyC/SwDM
         ApXM1Jn0ViF4s/VuDC2GtPPkytPLK/JgsR2/h/CnBZojbJ7f1jO7QLUYEazm14tp+FRD
         rQV2Mk5SSNHWdB+hkUh/918ECF/mUXvSfPj6Z9rPW+m9j18OQ9fgnXETfwgzRPu7s6VT
         5Hr7A2f6RSGucV+KHAIFYChbPs0UszMIQRh5vaDjxF9pV62ihIj2AzeU+VMgcwuW/G6f
         WPoA==
MIME-Version: 1.0
X-Received: by 10.152.21.100 with SMTP id u4mr5465854lae.41.1424378093791;
 Thu, 19 Feb 2015 12:34:53 -0800 (PST)
Received: by 10.114.182.9 with HTTP; Thu, 19 Feb 2015 12:34:53 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1502192130240.2192@localhost6.localdomain6>
References: <1424377421-20388-1-git-send-email-ksenija.stanojevic@gmail.com>
	<alpine.DEB.2.02.1502192130240.2192@localhost6.localdomain6>
Date: Thu, 19 Feb 2015 21:34:53 +0100
Message-ID: <CAL7P5jK0AKAH1uZTO+2dyESqB9rD-Ystu0wfVE+gbayQO5u5wA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: vino: Convert comments
 from C99 to C89 style
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e014941664e6fa8050f76debc

--089e014941664e6fa8050f76debc
Content-Type: text/plain; charset=UTF-8

Yes I know, the problem is similar to my previous patch, but two other
comments
are not related to this issue and thus require separate patch

On Thu, Feb 19, 2015 at 9:31 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> On Thu, 19 Feb 2015, Ksenija Stanojevic wrote:
>
> > This patch fixes the checkpatch.pl error:
> > ERROR: "Do not use C99 // comments"
> >
> > Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> > ---
> >  drivers/staging/media/vino/indycam.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/media/vino/indycam.c
> b/drivers/staging/media/vino/indycam.c
> > index f1d192b..8e223bd 100644
> > --- a/drivers/staging/media/vino/indycam.c
> > +++ b/drivers/staging/media/vino/indycam.c
> > @@ -34,7 +34,7 @@ MODULE_AUTHOR("Mikael Nousiainen <tmnousia@cc.hut.fi
> >");
> >  MODULE_LICENSE("GPL");
> >
> >
> > -// #define INDYCAM_DEBUG
> > +/* #define INDYCAM_DEBUG */
> >
> >  #ifdef INDYCAM_DEBUG
> >  #define dprintk(x...) printk("IndyCam: " x);
>
> You could consider whether you could get rid of dprintk, and replace it by
> the use of standard Linux debug logging functions, such as dev_dbg.
>
> julia
>
> > @@ -324,7 +324,7 @@ static int indycam_probe(struct i2c_client *client,
> >
> >       indycam_regdump(sd);
> >
> > -     // initialize
> > +     /* initialize */
> >       err = indycam_write_block(sd, 0, sizeof(initseq), (u8 *)&initseq);
> >       if (err) {
> >               printk(KERN_ERR "IndyCam initialization failed\n");
> > @@ -334,7 +334,7 @@ static int indycam_probe(struct i2c_client *client,
> >
> >       indycam_regdump(sd);
> >
> > -     // white balance
> > +     /* white balance */
> >       err = indycam_write_reg(sd, INDYCAM_REG_CONTROL,
> >                         INDYCAM_CONTROL_AGCENA | INDYCAM_CONTROL_AWBCTL);
> >       if (err) {
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1424377421-20388-1-git-send-email-ksenija.stanojevic%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--089e014941664e6fa8050f76debc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes I know, the problem is similar to my previous patch, b=
ut two other comments <br>are not related to this issue and thus require se=
parate patch <br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">On Thu, Feb 19, 2015 at 9:31 PM, Julia Lawall <span dir=3D"ltr">&lt;<=
a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.=
fr</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""=
>On Thu, 19 Feb 2015, Ksenija Stanojevic wrote:<br>
<br>
&gt; This patch fixes the <a href=3D"http://checkpatch.pl" target=3D"_blank=
">checkpatch.pl</a> error:<br>
&gt; ERROR: &quot;Do not use C99 // comments&quot;<br>
&gt;<br>
&gt; Signed-off-by: Ksenija Stanojevic &lt;<a href=3D"mailto:ksenija.stanoj=
evic@gmail.com">ksenija.stanojevic@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/media/vino/indycam.c | 6 +++---<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 3 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/media/vino/indycam.c b/drivers/staging/me=
dia/vino/indycam.c<br>
&gt; index f1d192b..8e223bd 100644<br>
&gt; --- a/drivers/staging/media/vino/indycam.c<br>
&gt; +++ b/drivers/staging/media/vino/indycam.c<br>
&gt; @@ -34,7 +34,7 @@ MODULE_AUTHOR(&quot;Mikael Nousiainen &lt;<a href=3D=
"mailto:tmnousia@cc.hut.fi">tmnousia@cc.hut.fi</a>&gt;&quot;);<br>
&gt;=C2=A0 MODULE_LICENSE(&quot;GPL&quot;);<br>
&gt;<br>
&gt;<br>
&gt; -// #define INDYCAM_DEBUG<br>
&gt; +/* #define INDYCAM_DEBUG */<br>
&gt;<br>
&gt;=C2=A0 #ifdef INDYCAM_DEBUG<br>
&gt;=C2=A0 #define dprintk(x...) printk(&quot;IndyCam: &quot; x);<br>
<br>
</span>You could consider whether you could get rid of dprintk, and replace=
 it by<br>
the use of standard Linux debug logging functions, such as dev_dbg.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; @@ -324,7 +324,7 @@ static int indycam_probe(struct i2c_client *client=
,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0indycam_regdump(sd);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0// initialize<br>
&gt; +=C2=A0 =C2=A0 =C2=A0/* initialize */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D indycam_write_block(sd, 0, sizeof(in=
itseq), (u8 *)&amp;initseq);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (err) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_ERR =
&quot;IndyCam initialization failed\n&quot;);<br>
&gt; @@ -334,7 +334,7 @@ static int indycam_probe(struct i2c_client *client=
,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0indycam_regdump(sd);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0// white balance<br>
&gt; +=C2=A0 =C2=A0 =C2=A0/* white balance */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D indycam_write_reg(sd, INDYCAM_REG_CO=
NTROL,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0INDYCAM_CONTROL_AGCENA | INDYCAM_CONTROL_AWBCTL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (err) {<br>
&gt; --<br>
&gt; 1.9.1<br>
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
gle.com/d/msgid/outreachy-kernel/1424377421-20388-1-git-send-email-ksenija.=
stanojevic%40gmail.com" target=3D"_blank">https://groups.google.com/d/msgid=
/outreachy-kernel/1424377421-20388-1-git-send-email-ksenija.stanojevic%40gm=
ail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 target=3D"_blank">https://groups.google.com/d/optout</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--089e014941664e6fa8050f76debc--

