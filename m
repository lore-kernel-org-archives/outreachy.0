X-GM-THRID: 6201793060535271424
X-Received: by 10.112.55.69 with SMTP id q5mr4589299lbp.24.1444003198517;
        Sun, 04 Oct 2015 16:59:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.103 with SMTP id jv7ls705897wid.16.gmail; Sun, 04 Oct
 2015 16:59:58 -0700 (PDT)
X-Received: by 10.180.81.165 with SMTP id b5mr1826105wiy.1.1444003198013;
        Sun, 04 Oct 2015 16:59:58 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id o5si255877wib.0.2015.10.04.16.59.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 16:59:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id lk2so92584081wic.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 16:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=qVuPKcgKnqub31YXWJ0+iSWFLGYnNbfx1ILa2m41oPI=;
        b=EMn7ndHP91JsrjqIdap3kDtCKHq1rwsmPEVNkhYwUWmS5SYUsfHg8wPR2KhG9eR7pf
         ShR0QHXSSTp8uDuBU0JAXM8r3Sdb1wvH5PrUq3r2mOsR4mIvnWg7QtORr0+da9XqhACo
         n+x0HR/vvR6bmBRZI+w8UZdPPBw8OYXFI8TqPFNwXHQF1N6Qk4xZ58Xc41w9TceojnRb
         TkeEN0065rWlxQeg3bioUqbN6vz8zWAtW75fW/c8ay1H8hWORkYqsjv95HgXJCalaycC
         k1UXCdW7HEIuBM2nEQhMAPYKkcVhNqkFku7V0DGZckMwQfRYPxBmP4FJUEygm8BKECOc
         29Rg==
MIME-Version: 1.0
X-Received: by 10.194.113.33 with SMTP id iv1mr25934787wjb.65.1444003197909;
 Sun, 04 Oct 2015 16:59:57 -0700 (PDT)
Received: by 10.28.47.210 with HTTP; Sun, 4 Oct 2015 16:59:57 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510041946080.2368@hadrien>
References: <1443967460-14302-1-git-send-email-aybuke.147@gmail.com>
	<1443967460-14302-2-git-send-email-aybuke.147@gmail.com>
	<alpine.DEB.2.10.1510041946080.2368@hadrien>
Date: Mon, 5 Oct 2015 02:59:57 +0300
Message-ID: <CAEAX3JqmA3eW1w+bh0DpWfYDkCQkVXE9_w8jaJ9W=ZxTYhjGsQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: wilc1000: Added
 'function' word.
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1130d23caa87800521503122

--001a1130d23caa87800521503122
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I had to build my operating system from scratch. When cloning repository, t=
he
first part of the set already looks smooth. So I can not edit this patch.
Can I send a separate patch?

Thanks.

2015-10-04 21:46 GMT+03:00 Julia Lawall <julia.lawall@lip6.fr>:

> Something like "fix spelling mistake" would be better.  Because the workd
> is not really added.
>
> julia
>
> On Sun, 4 Oct 2015, Aybuke Ozdemir wrote:
>
> > This patch organizing missing written word missing.
> > Found by checkpatch.pl:
> > CHECK: 'funcion' may be misspelled - perhaps 'function'?
> >
> > Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
> > ---
> >  drivers/staging/wilc1000/coreconfigurator.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/wilc1000/coreconfigurator.c
> b/drivers/staging/wilc1000/coreconfigurator.c
> > index 439c828..08f5675 100644
> > --- a/drivers/staging/wilc1000/coreconfigurator.c
> > +++ b/drivers/staging/wilc1000/coreconfigurator.c
> > @@ -296,7 +296,7 @@ static inline u16 get_assoc_resp_cap_info(u8 *data)
> >       return cap_info;
> >  }
> >
> > -/* This funcion extracts the association status code from the incoming
>      */
> > +/* This function extracts the association status code from the
> incoming       */
> >  /* association response frame and returns association status code
>       */
> >  static inline u16 get_asoc_status(u8 *data)
> >  {
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
> https://groups.google.com/d/msgid/outreachy-kernel/1443967460-14302-2-git=
-send-email-aybuke.147%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>



--=20
Ayb=C3=BCke =C3=96zdemir
https://about.me/aybukeozdemir

--001a1130d23caa87800521503122
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, <br><br><span id=3D"result_box" class=3D"" lang=
=3D"en"><span class=3D"">I had to</span> <span class=3D"">build</span> <spa=
n class=3D"">my</span> <span class=3D"">operating system</span> <span class=
=3D"">from scratch. When cloning repository, </span></span><span id=3D"resu=
lt_box" class=3D"" lang=3D"en"><span class=3D"">the first part of</span> <s=
pan class=3D"">the set</span> <span class=3D"">already looks</span> <span c=
lass=3D"">smooth</span><span class=3D"">. </span></span><span id=3D"result_=
box" class=3D"" lang=3D"en"><span class=3D"">So</span> <span class=3D"">I c=
an not edit</span> <span class=3D"">this</span> <span class=3D"">patch.</sp=
an><span class=3D""> Can I send</span> <span class=3D"">a separate</span> <=
span class=3D"">patch?<br><br></span></span></div><span id=3D"result_box" c=
lass=3D"" lang=3D"en"><span class=3D"">Thanks.<br></span></span></div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-10-04 21:46 GMT+0=
3:00 Julia Lawall <span dir=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@lip6=
.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt;</span>:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">Something like &quot;fix spelling mistake&quot; would be=
 better.=C2=A0 Because the workd<br>
is not really added.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Sun, 4 Oct 2015, Aybuke Ozdemir wrote:<br>
<br>
&gt; This patch organizing missing written word missing.<br>
&gt; Found by <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D=
"_blank">checkpatch.pl</a>:<br>
&gt; CHECK: &#39;funcion&#39; may be misspelled - perhaps &#39;function&#39=
;?<br>
&gt;<br>
&gt; Signed-off-by: Aybuke Ozdemir &lt;<a href=3D"mailto:aybuke.147@gmail.c=
om">aybuke.147@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/wilc1000/coreconfigurator.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/sta=
ging/wilc1000/coreconfigurator.c<br>
&gt; index 439c828..08f5675 100644<br>
&gt; --- a/drivers/staging/wilc1000/coreconfigurator.c<br>
&gt; +++ b/drivers/staging/wilc1000/coreconfigurator.c<br>
&gt; @@ -296,7 +296,7 @@ static inline u16 get_assoc_resp_cap_info(u8 *data=
)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return cap_info;<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt; -/* This funcion extracts the association status code from the incomin=
g=C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
&gt; +/* This function extracts the association status code from the incomi=
ng=C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
&gt;=C2=A0 /* association response frame and returns association status cod=
e=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt;=C2=A0 static inline u16 get_asoc_status(u8 *data)<br>
&gt;=C2=A0 {<br>
&gt; --<br>
&gt; 2.1.4<br>
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
gle.com/d/msgid/outreachy-kernel/1443967460-14302-2-git-send-email-aybuke.1=
47%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.google.=
com/d/msgid/outreachy-kernel/1443967460-14302-2-git-send-email-aybuke.147%4=
0gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Ayb=C3=BC=
ke =C3=96zdemir<br></div><a href=3D"https://about.me/aybukeozdemir" target=
=3D"_blank">https://about.me/aybukeozdemir</a> <br></div></div></div></div>
</div>

--001a1130d23caa87800521503122--

