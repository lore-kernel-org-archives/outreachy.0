X-GM-THRID: 6402003753150447616
Date: Mon, 27 Mar 2017 06:47:56 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, mawilcox@microsoft.com
Message-Id: <d9905b6f-434e-4943-8c78-8a35bcddfe24@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1703271003090.3387@hadrien>
References: <cover.1490581288.git.rvarsha016@gmail.com> <58d87c7c.c240630a.d8622.c768@mx.google.com> <alpine.DEB.2.20.1703270729300.2488@hadrien> <6874a8e7-7574-487b-9423-89bad7e1145a@googlegroups.com>
 <alpine.DEB.2.20.1703271003090.3387@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v2 2/3] kernel: pid: Change function
 return value to bool.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3966_1074500454.1490622476486"
X-Google-Token: EIyw5MYFiAR4cJWIHqM0
X-Google-IP: 117.192.145.34

------=_Part_3966_1074500454.1490622476486
Content-Type: multipart/alternative; 
	boundary="----=_Part_3967_1193230191.1490622476486"

------=_Part_3967_1193230191.1490622476486
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Monday, March 27, 2017 at 1:35:06 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Mon, 27 Mar 2017, Varsha Rao wrote: 
>
> > 
> >       On Mon, 27 Mar 2017, Varsha Rao wrote: 
> > 
> >       > Remove unsign cast and add bool as return type for 
> >       pid_before() 
> >       > function. 
> > 
> >       unsign -> unsigned.  But are you sure that the change is 
> >       correct?  For 
> >       example -1 < 1 but (unsigned) -1 > (unsigned) 1. 
> > 
> > 
> >    The change is incorrect. I will make both the differences as absolute 
> >    value, I guess then the change will be correct. 
>
> Not sure.  You would have to provide an argument as to why the change is 
> correct.  Absolute value also requires some computation, while casting 
> requires none. 
>

The usage of unsigned is to increase range and consider positive value.
It would be better to use unsigned int only.

If unsigned int is used, a - base won't exceed MAXUINT value and therefore
there will be no negative result. As a, b and base are of type int. 
(a - base + MAXUINT) % MAXUINT < (b - base + MAXUINT) % MAXUINT

If abs is considered then the range would decrease.

Thanks,
Varsha Rao

------=_Part_3967_1193230191.1490622476486
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Monday, March 27, 2017 at 1:35:06 PM UTC+5:30, =
Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;mar=
gin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Mon, 27 Mar 2017, Varsha Rao wrote:
<br>
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 On Mon, 27 Mar 2017, Varsha Rao wrote:
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Remove unsign cast and add bool as retur=
n type for
<br>&gt; =C2=A0 =C2=A0 =C2=A0 pid_before()
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; function.
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 unsign -&gt; unsigned. =C2=A0But are you sure=
 that the change is
<br>&gt; =C2=A0 =C2=A0 =C2=A0 correct? =C2=A0For
<br>&gt; =C2=A0 =C2=A0 =C2=A0 example -1 &lt; 1 but (unsigned) -1 &gt; (uns=
igned) 1.
<br>&gt;
<br>&gt;
<br>&gt; =C2=A0=C2=A0 The change is incorrect. I will make both the differe=
nces as absolute
<br>&gt; =C2=A0=C2=A0 value, I guess then the change will be correct.
<br>
<br>Not sure. =C2=A0You would have to provide an argument as to why the cha=
nge is
<br>correct. =C2=A0Absolute value also requires some computation, while cas=
ting
<br>requires none.
<br></blockquote><div><br>The usage of unsigned is to increase range and co=
nsider positive value.<br>It would be better to use unsigned int only.<br><=
br>If unsigned int is used, a - base won&#39;t exceed MAXUINT value and the=
refore<br>there will be no negative result. As a, b and base are of type in=
t. <br>(a - base + MAXUINT) % MAXUINT &lt; (b - base + MAXUINT) % MAXUINT<b=
r><br>If abs is considered then the range would decrease.<br><br>Thanks,<br=
>Varsha Rao<br></div></div>
------=_Part_3967_1193230191.1490622476486--

------=_Part_3966_1074500454.1490622476486--

