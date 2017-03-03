X-GM-THRID: 6393222666299375616
Date: Fri, 3 Mar 2017 11:41:52 -0800 (PST)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org
Message-Id: <ffffeb0c-caf6-4bcf-9196-a4b480c5f574@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1703031158000.3490@hadrien>
References: <58b94a22.0910620a.79513.e66a@mx.google.com>
 <alpine.DEB.2.20.1703031158000.3490@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Removed
 unnecessary parentheses.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3511_66519645.1488570112243"
X-Google-Token: EICO58UFOVO1YJTPDV80
X-Google-IP: 157.49.5.206

------=_Part_3511_66519645.1488570112243
Content-Type: multipart/alternative; 
	boundary="----=_Part_3512_573970699.1488570112243"

------=_Part_3512_573970699.1488570112243
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



> > -                (x & HWC_LOCATION_X_MASK)); 
> > +        reg = ((y << HWC_LOCATION_Y_SHIFT) & HWC_LOCATION_Y_MASK) | 
> > +                (x & HWC_LOCATION_X_MASK); 
>
> There should be one less space in front of the last line, to line the 
> parnthesis to the left of x with the parenthesis immediately to the left 
> of y.  Otherwise, 
>

    Yes, the alignment is not proper. I will send a new patch for this 
issue.

------=_Part_3512_573970699.1488570112243
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; -=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0(x &amp; HWC_LOCATION_X_MASK));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0reg =3D ((y &lt;&=
lt; HWC_LOCATION_Y_SHIFT) &amp; HWC_LOCATION_Y_MASK) |
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(x &amp; HWC_LOCATION_X_MASK);
<br>
<br>There should be one less space in front of the last line, to line the
<br>parnthesis to the left of x with the parenthesis immediately to the lef=
t
<br>of y. =C2=A0Otherwise,
<br></blockquote><div><br>=C2=A0 =C2=A0 Yes, the alignment is not proper. I=
 will send a new patch for this issue.<br></div></div>
------=_Part_3512_573970699.1488570112243--

------=_Part_3511_66519645.1488570112243--

