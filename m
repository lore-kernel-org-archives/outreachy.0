X-GM-THRID: 6402003753150447616
Date: Mon, 27 Mar 2017 00:54:10 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, mawilcox@microsoft.com
Message-Id: <6874a8e7-7574-487b-9423-89bad7e1145a@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1703270729300.2488@hadrien>
References: <cover.1490581288.git.rvarsha016@gmail.com> <58d87c7c.c240630a.d8622.c768@mx.google.com>
 <alpine.DEB.2.20.1703270729300.2488@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v2 2/3] kernel: pid: Change function
 return value to bool.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4051_1355681641.1490601250290"
X-Google-Token: EKKK48YFBVH-J7IrXwQ0
X-Google-IP: 45.125.141.197

------=_Part_4051_1355681641.1490601250290
Content-Type: multipart/alternative; 
	boundary="----=_Part_4052_1259628954.1490601250290"

------=_Part_4052_1259628954.1490601250290
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



> On Mon, 27 Mar 2017, Varsha Rao wrote: 
>
> > Remove unsign cast and add bool as return type for pid_before() 
> > function. 
>
> unsign -> unsigned.  But are you sure that the change is correct?  For 
> example -1 < 1 but (unsigned) -1 > (unsigned) 1. 
>
>
   The change is incorrect. I will make both the differences as absolute 
   value, I guess then the change will be correct. 
    
   Regards,
   Varsha Rao
    

------=_Part_4052_1259628954.1490601250290
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Mon, 2=
7 Mar 2017, Varsha Rao wrote:
<br>
<br>&gt; Remove unsign cast and add bool as return type for pid_before()
<br>&gt; function.
<br>
<br>unsign -&gt; unsigned. =C2=A0But are you sure that the change is correc=
t? =C2=A0For
<br>example -1 &lt; 1 but (unsigned) -1 &gt; (unsigned) 1.
<br>
<br></blockquote><div><br>=C2=A0=C2=A0 The change is incorrect. I will make=
 both the differences as absolute <br>=C2=A0=C2=A0 value, I guess then the =
change will be correct. <br>=C2=A0=C2=A0=C2=A0 <br>=C2=A0=C2=A0 Regards,<br=
>=C2=A0=C2=A0 Varsha Rao<br>=C2=A0 =C2=A0 <br></div></div>
------=_Part_4052_1259628954.1490601250290--

------=_Part_4051_1355681641.1490601250290--

