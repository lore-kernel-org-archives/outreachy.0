X-GM-THRID: 6339053517033963520
Date: Sat, 8 Oct 2016 11:09:12 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Message-Id: <a1961e47-6b73-4943-aac5-f2b5593bfc32@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1610081940270.3259@hadrien>
References: <20161008112506.GA12694@euri>
 <alpine.DEB.2.10.1610081940270.3259@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Replace BBvClearFOE
 by bbvclearfoe
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2400_1843332233.1475950152120"
X-Google-Token: EMjs5L8F153k1BaxkdI0
X-Google-IP: 103.62.68.129

------=_Part_2400_1843332233.1475950152120
Content-Type: multipart/alternative; 
	boundary="----=_Part_2401_1527753397.1475950152120"

------=_Part_2401_1527753397.1475950152120
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



> Is the macro never used?  It is strange to change a definition without at 
> least one use.  If there is no use, then the macro can be dropped. 
>

    No,it is not used anywhere else.I have checked it using grep command .
    I will remove it.

------=_Part_2401_1527753397.1475950152120
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Is the ma=
cro never used? =C2=A0It is strange to change a definition without at
<br>least one use. =C2=A0If there is no use, then the macro can be dropped.
<br></blockquote><div><br>=C2=A0 =C2=A0 No,it is not used anywhere else.I h=
ave checked it using grep command .<br>=C2=A0=C2=A0=C2=A0 I will remove it.=
<br></div></div>
------=_Part_2401_1527753397.1475950152120--

------=_Part_2400_1843332233.1475950152120--

