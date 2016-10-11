X-GM-THRID: 6339053517033963520
Date: Tue, 11 Oct 2016 13:00:22 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Message-Id: <fd933dbe-c8ef-4f38-ae1c-7f75a8bab6c7@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1610091553500.5891@hadrien>
References: <20161008112506.GA12694@euri> <alpine.DEB.2.10.1610081940270.3259@hadrien> <a1961e47-6b73-4943-aac5-f2b5593bfc32@googlegroups.com> <d15336f4-5027-4b19-b3fd-52f4fac150c0@googlegroups.com>
 <alpine.DEB.2.10.1610091553500.5891@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Replace BBvClearFOE
 by bbvclearfoe
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2058_1262767120.1476216022210"
X-Google-Token: ENaJ9b8FnLklg3uj4lU0
X-Google-IP: 117.211.245.153

------=_Part_2058_1262767120.1476216022210
Content-Type: multipart/alternative; 
	boundary="----=_Part_2059_1536917175.1476216022210"

------=_Part_2059_1536917175.1476216022210
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

: 

> > 
> >             Is the macro never used?  It is strange to change a 
> >             definition without at 
> >             least one use.  If there is no use, then the macro 
> >             can be dropped. 
> > 
> > 
> >           No,it is not used anywhere else.I have checked it using grep 
> >       command . 
> >           I will remove it. 
> > 
> > 
> >      On executing make command ,after it's removal  gives error. 
> > 
> >       In file included from drivers/staging/vt6655/device_main.c:53:0: 
> >      drivers/staging/vt6655/baseband.h:62:34: error: "0xB1" may not 
> appear 
> > in 
> >       macro parameter list 
> >       #define BBbWriteEmbedded(iobase, 0xB1, 0) 
>
> Where did this code come from?  You should remove the whole definition of 
> the macro, not just the header line. 
>
>
   I have tried using grep and gcc -dN -E to find the definition of it.But 
couldn't find through them.

------=_Part_2059_1536917175.1476216022210
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

:
<br><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex=
;border-left: 1px #ccc solid;padding-left: 1ex;">&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Is the macro never used?=
 =C2=A0It is strange to change a
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 definition without at
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 least one use. =C2=A0If =
there is no use, then the macro
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 can be dropped.
<br>&gt;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 No,it is not used anywhere else=
.I have checked it using grep
<br>&gt; =C2=A0 =C2=A0 =C2=A0 command .
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0 I will remove it.
<br>&gt;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0=C2=A0 On executing make command ,after it&#39;s remo=
val=C2=A0 gives error.
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 In file included from drivers/stagi=
ng/vt6655/device_<wbr>main.c:53:0:
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0 drivers/staging/vt6655/<wbr>baseband.h:62=
:34: error: &quot;0xB1&quot; may not appear
<br>&gt; in
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 macro parameter list
<br>&gt; =C2=A0 =C2=A0 =C2=A0 #define BBbWriteEmbedded(iobase, 0xB1, 0)
<br>
<br>Where did this code come from? =C2=A0You should remove the whole defini=
tion of
<br>the macro, not just the header line.
<br>
<br></blockquote><div><br>=C2=A0=C2=A0 I have tried using grep and gcc -dN =
-E to find the definition of it.But couldn&#39;t find through them.<br></di=
v>
------=_Part_2059_1536917175.1476216022210--

------=_Part_2058_1262767120.1476216022210--

