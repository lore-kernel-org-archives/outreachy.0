X-GM-THRID: 6198081352243347456
Date: Thu, 24 Sep 2015 07:01:10 -0700 (PDT)
From: Supriya Srivatsa <sup0508@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <979eb3fd-be55-4cad-8c74-8bb99fa095c9@googlegroups.com>
Subject: Problem with building the kernel
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1074_1209682092.1443103270526"
X-Google-Token: EKaEkLAFVdt0lP332ws0
X-Google-IP: 59.89.87.78

------=_Part_1074_1209682092.1443103270526
Content-Type: multipart/alternative; 
	boundary="----=_Part_1075_869701773.1443103270526"

------=_Part_1075_869701773.1443103270526
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello.
I am trying to build the kernel code. I am following instructions from the 
tutorial page.
However, I have run into a problem.
When I run the 'make' command, I land at the following errors and 
compilation is terminated.


  CHK     include/config/kernel.release
  CHK     include/generated/uapi/linux/version.h
  CHK     include/generated/utsrelease.h
  CHK     include/generated/bounds.h
  CHK     include/generated/timeconst.h
  CHK     include/generated/asm-offsets.h
  CALL    scripts/checksyscalls.sh
  HOSTCC  scripts/sign-file
scripts/sign-file.c:20:25: fatal error: openssl/bio.h: No such file or 
directory
 #include <openssl/bio.h>
                         ^
compilation terminated.
make[1]: *** [scripts/sign-file] Error 1
make: *** [scripts] Error 2


I am not able to proceed and will be really grateful for guidance.
Thank you. :)


------=_Part_1075_869701773.1443103270526
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello.<br>I am trying to build the kernel code. I am follo=
wing instructions from the tutorial page.<br>However, I have run into a pro=
blem.<br>When I run the &#39;make&#39; command, I land at the following err=
ors and compilation is terminated.<br><br><br>=C2=A0 CHK=C2=A0=C2=A0=C2=A0=
=C2=A0 include/config/kernel.release<br>=C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 =
include/generated/uapi/linux/version.h<br>=C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=
=A0 include/generated/utsrelease.h<br>=C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 in=
clude/generated/bounds.h<br>=C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/gene=
rated/timeconst.h<br>=C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/generated/a=
sm-offsets.h<br>=C2=A0 CALL=C2=A0=C2=A0=C2=A0 scripts/checksyscalls.sh<br>=
=C2=A0 HOSTCC=C2=A0 scripts/sign-file<br>scripts/sign-file.c:20:25: fatal e=
rror: openssl/bio.h: No such file or directory<br>=C2=A0#include &lt;openss=
l/bio.h&gt;<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 ^<br>compilation terminated.<br>make[1]: *** [scripts/sign-file] =
Error 1<br>make: *** [scripts] Error 2<br><br><br>I am not able to proceed =
and will be really grateful for guidance.<br>Thank you. :)<br><br></div>
------=_Part_1075_869701773.1443103270526--

------=_Part_1074_1209682092.1443103270526--

