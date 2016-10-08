X-GM-THRID: 6339053517033963520
Date: Sat, 8 Oct 2016 13:10:50 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Message-Id: <d15336f4-5027-4b19-b3fd-52f4fac150c0@googlegroups.com>
In-Reply-To: <a1961e47-6b73-4943-aac5-f2b5593bfc32@googlegroups.com>
References: <20161008112506.GA12694@euri>
 <alpine.DEB.2.10.1610081940270.3259@hadrien>
 <a1961e47-6b73-4943-aac5-f2b5593bfc32@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Replace BBvClearFOE
 by bbvclearfoe
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_823_554107149.1475957450253"
X-Google-Token: EMql5b8FupXy_fijk0E0
X-Google-IP: 103.62.68.129

------=_Part_823_554107149.1475957450253
Content-Type: multipart/alternative; 
	boundary="----=_Part_824_856099804.1475957450253"

------=_Part_824_856099804.1475957450253
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Saturday, October 8, 2016 at 11:39:12 PM UTC+5:30, Varsha Rao wrote:
>
>
> Is the macro never used?  It is strange to change a definition without at 
>> least one use.  If there is no use, then the macro can be dropped. 
>>
>
>     No,it is not used anywhere else.I have checked it using grep command .
>     I will remove it.
>

     On executing make command ,after it's removal  gives error.

      In file included from drivers/staging/vt6655/device_main.c:53:0:
     drivers/staging/vt6655/baseband.h:62:34: error: "0xB1" may not appear 
in 
      macro parameter list
      #define BBbWriteEmbedded(iobase, 0xB1, 0)


------=_Part_824_856099804.1475957450253
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Saturday, October 8, 2016 at 11:39:12 PM UTC+5:=
30, Varsha Rao wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=
=3D"ltr"><br><blockquote class=3D"gmail_quote" style=3D"margin:0;margin-lef=
t:0.8ex;border-left:1px #ccc solid;padding-left:1ex">Is the macro never use=
d? =C2=A0It is strange to change a definition without at
<br>least one use. =C2=A0If there is no use, then the macro can be dropped.
<br></blockquote><div><br>=C2=A0 =C2=A0 No,it is not used anywhere else.I h=
ave checked it using grep command .<br>=C2=A0=C2=A0=C2=A0 I will remove it.=
<br></div></div></blockquote><div><br>=C2=A0 =C2=A0=C2=A0 On executing make=
 command ,after it&#39;s removal=C2=A0 gives error.<br><br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 In file included from drivers/staging/vt6655/device_main.c:=
53:0:<br>=C2=A0=C2=A0=C2=A0=C2=A0 drivers/staging/vt6655/baseband.h:62:34: =
error: &quot;0xB1&quot; may not appear in <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 macro parameter list<br>=C2=A0 =C2=A0 =C2=A0 #define BBbWriteEmbedded(i=
obase, 0xB1, 0)<br><br></div></div>
------=_Part_824_856099804.1475957450253--

------=_Part_823_554107149.1475957450253--

