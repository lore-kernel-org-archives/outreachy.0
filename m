X-GM-THRID: 6254179536245620736
X-Received: by 10.140.31.73 with SMTP id e67mr5311589qge.27.1456249651370;
        Tue, 23 Feb 2016 09:47:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.30.101 with SMTP id r5ls957848igh.40.gmail; Tue, 23 Feb
 2016 09:47:30 -0800 (PST)
X-Received: by 10.50.164.137 with SMTP id yq9mr9151698igb.0.1456249650519;
        Tue, 23 Feb 2016 09:47:30 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-oi0-x22f.google.com (mail-oi0-x22f.google.com. [2607:f8b0:4003:c06::22f])
        by gmr-mx.google.com with ESMTPS id xh11si1929238igb.0.2016.02.23.09.47.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 09:47:30 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c06::22f as permitted sender) client-ip=2607:f8b0:4003:c06::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c06::22f as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x22f.google.com with SMTP id w5so83282187oie.3
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 09:47:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:date:message-id
         :subject:from:to:content-type;
        bh=A64aJc01TlPZgCLSm10RvnppH/b1ZtvuAweXOUQAuyc=;
        b=SVuMR1JV28WlDLzrxwXcjr46Yo2jNLlzKBtsnb8YFX/ctq1leZDi9bv3XYtGETZ6Ib
         sk7EBaXOXs0GO2KpLC8fxrX2nnUq6nyaGkTu/N/ToDK51DDSEIP685lw6Pa0J8jgAJIk
         HkhO93jboPj0nfM9YzjQHi4P3+O+foOneYbZ5qdVsOoBo6XiqsbnwORI0Pzz8nPzAYtR
         EuG7oOCOluBVGRubXkFrnav8eoI7NIK6G8o/9cUyiQ4eCKMFoAcKN4Z72U5pvoVFX98Q
         6bKjLq0bWx8na2iPYtFcft4vxYUzvxYmKhCoh2kt87M29oTQYcZ/QErygze185+wRSne
         kY0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :date:message-id:subject:from:to:content-type;
        bh=A64aJc01TlPZgCLSm10RvnppH/b1ZtvuAweXOUQAuyc=;
        b=OkIIsR5anm1sqLBGJKAG/iDeLhWlIwfK4HWSPnr38LDaC2Df6GuJ82dg2PTt5CGIb0
         kBDDhby/rnbor0GTqeOmRV7RoaONlQ9VoJYK3+D4p5yFcYgaA5XBbTTeYI09ljs+1VpK
         xGy7vNRltYZ3nhFLePlC6Q/9/3PhaA71BYrsqRnrjQNxUc61kxImSRYwExkRc9nQLxzQ
         gNp/g2zZrPEBODfwIYhTeODfU2nYDVsCOHZy//tW56VpChzRNT19jO0/iEOVpf08qpmw
         JXPBERQonmFlSETOkgb669uCn7Sr2yyiozrcbVuAh2S+SNJ7yGxi3ZdsgC5pXam9Aim/
         5AUw==
X-Gm-Message-State: AG10YOQtmEOh3b3Ru/AawWUOAR4wRrZixg0aqSiZM5GxUrHgBGIsK19WEgiBN96b4ai3/RETpqBPPMQbCXns1Q==
MIME-Version: 1.0
X-Received: by 10.202.230.15 with SMTP id d15mr24771525oih.104.1456249650351;
 Tue, 23 Feb 2016 09:47:30 -0800 (PST)
Received: by 10.157.47.212 with HTTP; Tue, 23 Feb 2016 09:47:30 -0800 (PST)
Reply-To: bankarsandhya512@gmail.com
In-Reply-To: <alpine.DEB.2.02.1602231655120.2040@localhost6.localdomain6>
References: <20160222100856.GA5026@sandhya>
	<alpine.DEB.2.02.1602231655120.2040@localhost6.localdomain6>
Date: Tue, 23 Feb 2016 23:17:30 +0530
Message-ID: <CAA3ASznHPssgmGEy0wkaOEfTsOo7qCjRr0ZyDMh22WBj0rrMNA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: Remove trailing whitespace.
From: sandhya bankar <bankarsandhya512@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1141775c1d1c2c052c738bd0

--001a1141775c1d1c2c052c738bd0
Content-Type: text/plain; charset=UTF-8

hello,
thanks for  suggestions..i will resend patch v2..

Thanks
sandhya bankar

On Tue, Feb 23, 2016 at 9:25 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Mon, 22 Feb 2016, Sandhya Bankar wrote:
>
> > Remove trailing whitespace.This error is detected by checkpatch.pl
> script.
> >
> > Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> > ---
> >  drivers/staging/sm750fb/ddk750_power.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/sm750fb/ddk750_power.c
> b/drivers/staging/sm750fb/ddk750_power.c
> > index 33e092e..f34b15d 100644
> > --- a/drivers/staging/sm750fb/ddk750_power.c
> > +++ b/drivers/staging/sm750fb/ddk750_power.c
> > @@ -106,9 +106,9 @@ void enable2DEngine(unsigned int enable)
> >       u32 gate;
> >
> >       gate = PEEK32(CURRENT_GATE);
> > -     if (enable)
> > +     if (enable)
> >               gate |= (CURRENT_GATE_DE | CURRENT_GATE_CSC);
> > -      else
> > +      else
>
> There is also an unneeded space in front of the else.  Maybe you could fix
> up all of the whitespace problems in this if at once.
>
> julia
>
> >               gate &= ~(CURRENT_GATE_DE | CURRENT_GATE_CSC);
> >
> >       setCurrentGate(gate);
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
> https://groups.google.com/d/msgid/outreachy-kernel/20160222100856.GA5026%40sandhya
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a1141775c1d1c2c052c738bd0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>hello,<br></div>thanks for=C2=A0 suggestion=
s..i will resend patch v2..<br><br></div>Thanks<br></div>sandhya bankar<br>=
</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Feb=
 23, 2016 at 9:25 PM, Julia Lawall <span dir=3D"ltr">&lt;<a href=3D"mailto:=
julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><span class=3D""><br>
<br>
On Mon, 22 Feb 2016, Sandhya Bankar wrote:<br>
<br>
&gt; Remove trailing whitespace.This error is detected by <a href=3D"http:/=
/checkpatch.pl" rel=3D"noreferrer" target=3D"_blank">checkpatch.pl</a> scri=
pt.<br>
&gt;<br>
&gt; Signed-off-by: Sandhya Bankar &lt;<a href=3D"mailto:bankarsandhya512@g=
mail.com">bankarsandhya512@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/sm750fb/ddk750_power.c | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/sm750fb/ddk750_power.c b/drivers/staging/=
sm750fb/ddk750_power.c<br>
&gt; index 33e092e..f34b15d 100644<br>
&gt; --- a/drivers/staging/sm750fb/ddk750_power.c<br>
&gt; +++ b/drivers/staging/sm750fb/ddk750_power.c<br>
&gt; @@ -106,9 +106,9 @@ void enable2DEngine(unsigned int enable)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 gate;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0gate =3D PEEK32(CURRENT_GATE);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (enable)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (enable)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gate |=3D (CURRE=
NT_GATE_DE | CURRENT_GATE_CSC);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 else<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 else<br>
<br>
</span>There is also an unneeded space in front of the else.=C2=A0 Maybe yo=
u could fix<br>
up all of the whitespace problems in this if at once.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gate &amp;=3D ~(=
CURRENT_GATE_DE | CURRENT_GATE_CSC);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0setCurrentGate(gate);<br>
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
gle.com/d/msgid/outreachy-kernel/20160222100856.GA5026%40sandhya" rel=3D"no=
referrer" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-ker=
nel/20160222100856.GA5026%40sandhya</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a1141775c1d1c2c052c738bd0--

