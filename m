X-GM-THRID: 10268360835072
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,498ca749cf5f5c42
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.31.97 with SMTP id l61mr31904333yha.10.1427621849675;
        Sun, 29 Mar 2015 02:37:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.178 with SMTP id g18ls718302igt.41.gmail; Sun, 29 Mar
 2015 02:37:29 -0700 (PDT)
X-Received: by 10.68.100.67 with SMTP id ew3mr31799305pbb.4.1427621849465;
        Sun, 29 Mar 2015 02:37:29 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22b.google.com (mail-qg0-x22b.google.com. [2607:f8b0:400d:c04::22b])
        by gmr-mx.google.com with ESMTPS id kt5si1168809qcb.3.2015.03.29.02.37.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 02:37:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) client-ip=2607:f8b0:400d:c04::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22b.google.com with SMTP id a8so159012700qgf.0
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 02:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=l3KIFYTIaRXELKzj2HGGuEueFLZsOX9V3drC4rsjlEU=;
        b=wVTtKXQF/J7pa4TOJHcRargNAOwMWWbrFgyN3e+Z9TwdyHj+7aktUDNeSvw9cseMTJ
         mnyUe/CIDkWhrVb1Mq5xOS7TFROR4ITdY9Y2E9URUz/ksxcxYYJS3OlxhvIF2GqSG9Lr
         l2cScrLFk1gWGhvIP5lNWKuB5GR4FOsbJvHR41mBBU8lrwWRjGRnn7K4sdpBt/Pb9a+p
         xMWz0iHG/hpq2ICc2yol45y9PEl+OkQ0Q4Lz+FbW94U4J6gwRW7JCX+/D5ihsL52MyTg
         kE0nivZsWWKcwEz3NpAh2IHjYSgul2t2RPHRRCH4w0ZtABJaFOqOw4uO70U3Q+51BK1N
         THCw==
MIME-Version: 1.0
X-Received: by 10.140.235.73 with SMTP id g70mr8343302qhc.73.1427621849289;
 Sun, 29 Mar 2015 02:37:29 -0700 (PDT)
Received: by 10.140.29.102 with HTTP; Sun, 29 Mar 2015 02:37:29 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1503291128130.2644@hadrien>
References: <20150329091836.GA19941@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1503291128130.2644@hadrien>
Date: Sun, 29 Mar 2015 15:07:29 +0530
Message-ID: <CA+5yK5H4uga+y3TWThR0kYRB32ryZWR+y2Ga7Xm+0Nj-ViZt1A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/4] Staging: sm750fb: Insert spaces in
 for statement
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1137561033bd0c05126a1d6c

--001a1137561033bd0c05126a1d6c
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 29, 2015 at 2:58 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> On Sun, 29 Mar 2015, Amitoj Kaur Chawla wrote:
>
> > Insert required spaces in for statements after operators and ';'.
> > Problem found using checkpatch.pl
> > ERROR: spaces required around that '=' (ctx:VxV)
> >
> > Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> > ---
> >  drivers/staging/sm750fb/ddk750_chip.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/sm750fb/ddk750_chip.c
> b/drivers/staging/sm750fb/ddk750_chip.c
> > index 5f2f424..e11b8c5 100644
> > --- a/drivers/staging/sm750fb/ddk750_chip.c
> > +++ b/drivers/staging/sm750fb/ddk750_chip.c
> > @@ -41,7 +41,7 @@ inline unsigned int twoToPowerOfx(unsigned long x)
> >       unsigned long i;
> >       unsigned long result = 1;
> >
> > -     for (i=1; i<=x; i++)
> > +     for ( i = 1; i <= x; i++)
>
> There should be no space after the (.  Checkpatch should have complained
> about that.
>
> julia
>
>
The space after ( is a frequent error in the file so I thought I could send
a different patch for that, after fixing all of them. Or would you prefer
me to send a second version of this patch with only this correction?

-- 
*Regards,*


*Amitoj Kaur Chawla*

--001a1137561033bd0c05126a1d6c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te"><font color=3D"#741b47">On Sun, Mar 29, 2015 at 2:58 PM, Julia Lawall <=
span dir=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_bla=
nk">julia.lawall@lip6.fr</a>&gt;</span> wrote:<br></font><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><font color=3D"#741b47"><span class=3D"">On Sun, 29 Mar 2015,=
 Amitoj Kaur Chawla wrote:<br>
<br>
&gt; Insert required spaces in for statements after operators and &#39;;&#3=
9;.<br>
&gt; Problem found using <a href=3D"http://checkpatch.pl" target=3D"_blank"=
>checkpatch.pl</a><br>
&gt; ERROR: spaces required around that &#39;=3D&#39; (ctx:VxV)<br>
&gt;<br>
&gt; Signed-off-by: Amitoj Kaur Chawla &lt;<a href=3D"mailto:amitoj1606@gma=
il.com">amitoj1606@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/sm750fb/ddk750_chip.c | 12 ++++++------<br>
&gt;=C2=A0 1 file changed, 6 insertions(+), 6 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/s=
m750fb/ddk750_chip.c<br>
&gt; index 5f2f424..e11b8c5 100644<br>
&gt; --- a/drivers/staging/sm750fb/ddk750_chip.c<br>
&gt; +++ b/drivers/staging/sm750fb/ddk750_chip.c<br>
&gt; @@ -41,7 +41,7 @@ inline unsigned int twoToPowerOfx(unsigned long x)<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned long i;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned long result =3D 1;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0for (i=3D1; i&lt;=3Dx; i++)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0for ( i =3D 1; i &lt;=3D x; i++)<br>
<br>
</span>There should be no space after the (.=C2=A0 Checkpatch should have c=
omplained<br>
about that.<br>
<br>
julia<br>
</font><div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote=
><div><br></div><div>The space after ( is a frequent error in the file so I=
 thought I could send a different patch for that, after fixing all of them.=
 Or would you prefer me to send a second version of this patch with only th=
is correction?</div><div>=C2=A0</div></div>-- <br><div class=3D"gmail_signa=
ture"><div dir=3D"ltr"><div dir=3D"ltr"><div><b>Regards,</b></div><div><b><=
br></b></div><div dir=3D"ltr"><b><br></b></div><div dir=3D"ltr"><b>Amitoj K=
aur Chawla</b><div><br></div></div></div></div></div>
</div></div>

--001a1137561033bd0c05126a1d6c--

