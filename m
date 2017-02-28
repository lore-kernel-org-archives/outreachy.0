X-GM-THRID: 6391984177458184192
Date: Mon, 27 Feb 2017 18:43:10 -0800 (PST)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <97a8b35a-3899-436b-8455-6fdd5d3a6ccd@googlegroups.com>
Subject: Problem with coccinelle.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_7580_1050510376.1488249790659"
X-Google-Token: EL7H08UFzGlPKXPQUa40
X-Google-IP: 118.151.209.30

------=_Part_7580_1050510376.1488249790659
Content-Type: multipart/alternative; 
	boundary="----=_Part_7581_419549362.1488249790660"

------=_Part_7581_419549362.1488249790660
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


Hello,

I am getting errors when I run the following command

spatch --sp-file coccinelle/ret.cocci --no-includes --dir 
git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c  > ret.out

and the error which i got is:

init_defs_builtins: /usr/lib64/coccinelle/standard.h
Fatal error: exception Failure("unexpected code before the first rule: [0; 
(68, (\"\", [0], [0]))]\n")

I have installed coccinelle successfully.

Packages which were installed,
coccinelle                   1.0.5-2.fc25 
 ocaml                        4.02.3-3.fc25 
 ocaml-compiler-libs     4.02.3-3.fc25  
 ocaml-findlib               1.6.2-1.fc25      
 ocaml-pcre                 7.1.5-3.fc24         
 ocaml-runtime            4.02.3-3.fc25       

I am using fedora 25 and kernel release is 4.9.11-200.fc25.x86_64.

Thanks,
Varsha

------=_Part_7581_419549362.1488249790660
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Hello,<br><br>I am getting errors when I run the follo=
wing command<br><br>spatch --sp-file coccinelle/ret.cocci --no-includes --d=
ir git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c=C2=A0 &gt=
; ret.out<br><br>and the error which i got is:<br><br>init_defs_builtins: /=
usr/lib64/coccinelle/standard.h<br>Fatal error: exception Failure(&quot;une=
xpected code before the first rule: [0; (68, (\&quot;\&quot;, [0], [0]))]\n=
&quot;)<br><br>I have installed coccinelle successfully.<br><br>Packages wh=
ich were installed,<br>coccinelle=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1.0.5-2.=
fc25 <br>=C2=A0ocaml=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 4.02.3-3.fc25 <br>=C2=A0ocaml-compiler-libs=C2=A0=C2=A0=C2=A0=C2=
=A0 4.02.3-3.fc25=C2=A0 <br>=C2=A0ocaml-findlib=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1.6.2-1.fc25=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0ocaml-pcre=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 7.1.5-3.fc24=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0ocaml-runtime=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4.02.3-3.fc25=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br><br>I am using fedora 25 and kernel r=
elease is 4.9.11-200.fc25.x86_64.<br><br>Thanks,<br>Varsha<br></div>
------=_Part_7581_419549362.1488249790660--

------=_Part_7580_1050510376.1488249790659--

