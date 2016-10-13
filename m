X-GM-THRID: 6339053517033963520
Date: Thu, 13 Oct 2016 05:37:55 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Message-Id: <a2bc99d4-a161-429c-a7d6-4e9ba3a8b33b@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1610131418560.3086@hadrien>
References: <20161008112506.GA12694@euri> <alpine.DEB.2.10.1610081940270.3259@hadrien> <a1961e47-6b73-4943-aac5-f2b5593bfc32@googlegroups.com> <d15336f4-5027-4b19-b3fd-52f4fac150c0@googlegroups.com> <alpine.DEB.2.10.1610091553500.5891@hadrien>
 <fd933dbe-c8ef-4f38-ae1c-7f75a8bab6c7@googlegroups.com> <alpine.DEB.2.10.1610112221080.3192@hadrien> <5a2e45cf-903e-41c4-91d8-37d45aea9ce7@googlegroups.com> <alpine.DEB.2.10.1610120710390.3282@hadrien>
 <21e853d5-b5bb-4b00-b1b5-7ec1a38145f6@googlegroups.com>
 <alpine.DEB.2.10.1610131418560.3086@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Replace BBvClearFOE
 by bbvclearfoe
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_6_1960635708.1476362275678"
X-Google-Token: EKOA_r8Fc4R0gCurkqY0
X-Google-IP: 117.246.90.206

------=_Part_6_1960635708.1476362275678
Content-Type: multipart/alternative; 
	boundary="----=_Part_7_673834525.1476362275678"

------=_Part_7_673834525.1476362275678
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



> I think this is what you sent before, and that the macro is never used?


     Yes, this is the same.  

>
> I have the impression that what you did wrong is to just remove 
> BBvClearFOE(dwIoBase) and not the entire macro definition (both lines). 
>
>    
     I made a mistake there but my question remains the same like how to 
find in what file a macro is stored if it cannot be found by grep or gcc 
-dN -E?  

------=_Part_7_673834525.1476362275678
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">I think t=
his is what you sent before, and that the macro is never used?</blockquote>=
<div><br>=C2=A0 =C2=A0=C2=A0 Yes, this is the same.=C2=A0 <br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-lef=
t: 1px #ccc solid;padding-left: 1ex;">
<br>I have the impression that what you did wrong is to just remove
<br>BBvClearFOE(dwIoBase) and not the entire macro definition (both lines).
<br>
<br></blockquote><div>=C2=A0=C2=A0 <br>=C2=A0 =C2=A0=C2=A0 I made a mistake=
 there but my question remains the same like how to find in what file a mac=
ro is stored if it cannot be found by grep or gcc -dN -E?=C2=A0 <br></div><=
/div>
------=_Part_7_673834525.1476362275678--

------=_Part_6_1960635708.1476362275678--

