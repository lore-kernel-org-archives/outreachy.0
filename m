X-GM-THRID: 6391984177458184192
Date: Tue, 28 Feb 2017 02:41:13 -0800 (PST)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com
Message-Id: <6203873c-2c0f-4c32-93b7-f968b9312fda@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1702280749480.2078@hadrien>
References: <97a8b35a-3899-436b-8455-6fdd5d3a6ccd@googlegroups.com>
 <alpine.DEB.2.20.1702280749480.2078@hadrien>
Subject: Re: [Outreachy kernel] Problem with coccinelle.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_8002_2104113363.1488278473958"
X-Google-Token: EMmn1cUFgpEUWY9fWgQ0
X-Google-IP: 118.151.209.30

------=_Part_8002_2104113363.1488278473958
Content-Type: multipart/alternative; 
	boundary="----=_Part_8003_667345007.1488278473958"

------=_Part_8003_667345007.1488278473958
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Contents of ret.cocci

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;


------=_Part_8003_667345007.1488278473958
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Contents of ret.cocci<br><br>@@<br>local idexpression ret;=
<br>expression e;<br>@@<br><br>-ret =3D<br>+return<br>=C2=A0=C2=A0=C2=A0=C2=
=A0 e;<br>-return ret;<br><br></div>
------=_Part_8003_667345007.1488278473958--

------=_Part_8002_2104113363.1488278473958--

