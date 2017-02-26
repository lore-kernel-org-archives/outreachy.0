X-GM-THRID: 6391116518625640448
Date: Sat, 25 Feb 2017 21:22:03 -0800 (PST)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org
Message-Id: <73088bd3-373c-42cd-b64b-312050b97f5d@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1702252151090.2179@hadrien>
References: <cover.1488045682.git.varshar186@gmail.com> <58b1ce9b.19c2620a.af7bc.d941@mx.google.com>
 <alpine.DEB.2.20.1702252151090.2179@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 7/7] staging: sm750fb: Remove blank
 lines after { and before } braces.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1852_212774755.1488086523345"
X-Google-Token: EPvLycUFFZS_fbthXNs0
X-Google-IP: 117.192.144.60

------=_Part_1852_212774755.1488086523345
Content-Type: multipart/alternative; 
	boundary="----=_Part_1853_2118740261.1488086523346"

------=_Part_1853_2118740261.1488086523346
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



> > 
> > diff --git a/drivers/staging/sm750fb/sm750_accel.c 
> b/drivers/staging/sm750fb/sm750_accel.c 
> > index 57ae743..a842831 100644 
> > --- a/drivers/staging/sm750fb/sm750_accel.c 
> > +++ b/drivers/staging/sm750fb/sm750_accel.c 
> > @@ -260,7 +260,6 @@ unsigned int rop2)   /* ROP value */ 
> >                  return -1; 
> > 
> >          { 
> > - 
>
> I wonder why this brace is here anyway?  There is no if, etc branch, and 
> not even any variables being declared. 
>
>     Yeah it is not required. I will send a new patch for this and new 
version patch for the current one.
    
     Varsha

------=_Part_1853_2118740261.1488086523346
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">&gt;
<br>&gt; diff --git a/drivers/staging/sm750fb/<wbr>sm750_accel.c b/drivers/=
staging/sm750fb/<wbr>sm750_accel.c
<br>&gt; index 57ae743..a842831 100644
<br>&gt; --- a/drivers/staging/sm750fb/<wbr>sm750_accel.c
<br>&gt; +++ b/drivers/staging/sm750fb/<wbr>sm750_accel.c
<br>&gt; @@ -260,7 +260,6 @@ unsigned int rop2) =C2=A0 /* ROP value */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -1;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{
<br>&gt; -
<br>
<br>I wonder why this brace is here anyway? =C2=A0There is no if, etc branc=
h, and
<br>not even any variables being declared.
<br>
<br></blockquote><div>=C2=A0 =C2=A0 Yeah it is not required. I will send a =
new patch for this and new version patch for the current one.<br>=C2=A0=C2=
=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0=C2=A0 Varsha<br></div></div>
------=_Part_1853_2118740261.1488086523346--

------=_Part_1852_212774755.1488086523345--

