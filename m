X-GM-THRID: 6396588867730800640
Date: Sun, 12 Mar 2017 06:53:20 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, abbotti@mev.co.uk, hsweeten@visionengravers.com,
	gregkh@linuxfoundation.org
Message-Id: <5b53f6ce-7587-4fd9-8ae9-dbc83277625c@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1703121334310.2174@hadrien>
References: <58c53fae.4737620a.4ce3e.692c@mx.google.com>
 <alpine.DEB.2.20.1703121334310.2174@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Compress return
 logic into one line.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_7823_1745246275.1489326800375"
X-Google-Token: ENCllcYFDdob-47aoFo0
X-Google-IP: 117.194.58.130

------=_Part_7823_1745246275.1489326800375
Content-Type: multipart/alternative; 
	boundary="----=_Part_7824_250977559.1489326800375"

------=_Part_7824_250977559.1489326800375
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, March 12, 2017 at 6:05:52 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sun, 12 Mar 2017, Varsha Rao wrote: 
>
> > Simplify function return by merging assignment and return into a single 
> > line. The following coccinelle script is used to fix this issue. 
> > 
> > @@ 
> > expression e,ret; 
> > @@ 
> > 
> > -ret = e; 
> > -return ret; 
> > +return e; 
>
> This is too general.  For example, in your first example, you remove the 
> initialization of dev->private.  It's fine to remove the initialization of 
> a local variable that is about to go out of scope, but not to remove the 
> initialization of a field of a structure that can be accessed after the 
> end of the function. 
>
>  
     Yes, you are right. Sorry for it. I will send a new patch.
      
      Thanks,
      Varsha

------=_Part_7824_250977559.1489326800375
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sunday, March 12, 2017 at 6:05:52 PM UTC+5:30, =
Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;mar=
gin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sun, 12 Mar 2017, Varsha Rao wrote:
<br>
<br>&gt; Simplify function return by merging assignment and return into a s=
ingle
<br>&gt; line. The following coccinelle script is used to fix this issue.
<br>&gt;
<br>&gt; @@
<br>&gt; expression e,ret;
<br>&gt; @@
<br>&gt;
<br>&gt; -ret =3D e;
<br>&gt; -return ret;
<br>&gt; +return e;
<br>
<br>This is too general. =C2=A0For example, in your first example, you remo=
ve the
<br>initialization of dev-&gt;private. =C2=A0It&#39;s fine to remove the in=
itialization of
<br>a local variable that is about to go out of scope, but not to remove th=
e
<br>initialization of a field of a structure that can be accessed after the
<br>end of the function.
<br>
<br></blockquote><div>=C2=A0<br>=C2=A0=C2=A0=C2=A0=C2=A0 Yes, you are right=
. Sorry for it. I will send a new patch.<br></div><div>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Thanks,<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 Varsha<br></div></div>
------=_Part_7824_250977559.1489326800375--

------=_Part_7823_1745246275.1489326800375--

