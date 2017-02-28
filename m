X-GM-THRID: 6391984177458184192
Date: Tue, 28 Feb 2017 02:38:58 -0800 (PST)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com
Message-Id: <68311bc4-09a6-4baf-ab04-b0ce5916c4c9@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1702280747380.2078@hadrien>
References: <97a8b35a-3899-436b-8455-6fdd5d3a6ccd@googlegroups.com> <c2f9d539-fe98-4541-b86c-f71555d44020@googlegroups.com>
 <alpine.DEB.2.20.1702280747380.2078@hadrien>
Subject: Re: [Outreachy kernel] Re: Problem with coccinelle.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_8164_1681943591.1488278338973"
X-Google-Token: EMKm1cUFjzbR0NLQYPA0
X-Google-IP: 118.151.209.30

------=_Part_8164_1681943591.1488278338973
Content-Type: multipart/alternative; 
	boundary="----=_Part_8165_717265697.1488278338973"

------=_Part_8165_717265697.1488278338973
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



> This seems likely fine.  How did you get to this situation?  Did you 
> install it from your package manager or did you compile it on your 
> machine.  When you run spatch, does it work? 
>
>    I have installed using package manager.
   when I run spatch, it gives following errors:
        
   spatch --sp-file ret.cocci --no-includes 
~/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c  > ret.out

  init_defs_builtins: /usr/lib64/coccinelle/standard.h
  minus: parse error: 
  File "ret.cocci", line 10, column 0, charpos = 80
  around = '',
  whole content = 

 [varsha@varsha coccinelle]$ spatch --sp-file ret.cocci --no-includes 
~/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c  > ret.out
 init_defs_builtins: /usr/lib64/coccinelle/standard.h 
 HANDLING: 
/home/varsha/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c

 Thanks,
 Varsha


------=_Part_8165_717265697.1488278338973
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">This seem=
s likely fine. =C2=A0How did you get to this situation? =C2=A0Did you
<br>install it from your package manager or did you compile it on your
<br>machine. =C2=A0When you run spatch, does it work?
<br>
<br></blockquote><div>=C2=A0=C2=A0 I have installed using package manager.<=
br>=C2=A0=C2=A0 when I run spatch, it gives following errors:<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0=C2=A0 spatch --sp-file ret.coc=
ci --no-includes ~/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_s=
ysfs.c=C2=A0 &gt; ret.out<br><br>=C2=A0 init_defs_builtins: /usr/lib64/cocc=
inelle/standard.h<br>=C2=A0 minus: parse error: <br>=C2=A0 File &quot;ret.c=
occi&quot;, line 10, column 0, charpos =3D 80<br>=C2=A0 around =3D &#39;&#3=
9;,<br>=C2=A0 whole content =3D <br><br>=C2=A0[varsha@varsha coccinelle]$ s=
patch --sp-file ret.cocci --no-includes ~/git/kernels/staging/drivers/stagi=
ng/most/hdm-dim2/dim2_sysfs.c=C2=A0 &gt; ret.out<br>=C2=A0init_defs_builtin=
s: /usr/lib64/coccinelle/standard.h <br>=C2=A0HANDLING: /home/varsha/git/ke=
rnels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c<br><br>=C2=A0Thank=
s,<br>=C2=A0Varsha<br><br></div></div>
------=_Part_8165_717265697.1488278338973--

------=_Part_8164_1681943591.1488278338973--

