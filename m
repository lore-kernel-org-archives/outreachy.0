X-GM-THRID: 6198081352243347456
Date: Fri, 25 Sep 2015 02:09:44 -0700 (PDT)
From: Supriya Srivatsa <sup0508@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: sup0508@gmail.com
Message-Id: <15b6bd46-8210-4d6e-9f3f-02b93425b737@googlegroups.com>
In-Reply-To: <CAEnQRZC99j+NDZe=dgfPhg3y+vfEwVq0eP2TCrEXokf6dXd0ng@mail.gmail.com>
References: <979eb3fd-be55-4cad-8c74-8bb99fa095c9@googlegroups.com>
 <CAEnQRZC99j+NDZe=dgfPhg3y+vfEwVq0eP2TCrEXokf6dXd0ng@mail.gmail.com>
Subject: Re: [Outreachy kernel] Problem with building the kernel
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2294_1787929157.1443172184207"
X-Google-Token: ENielLAFIc4Jw-crDEw0
X-Google-IP: 59.89.87.78

------=_Part_2294_1787929157.1443172184207
Content-Type: multipart/alternative; 
	boundary="----=_Part_2295_1652895266.1443172184207"

------=_Part_2295_1652895266.1443172184207
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

That fixed it. Thank you Daniel.  :)

On Thursday, September 24, 2015 at 7:39:05 PM UTC+5:30, Daniel Baluta wrote:
>
> On Thu, Sep 24, 2015 at 5:01 PM, Supriya Srivatsa <sup...@gmail.com 
> <javascript:>> wrote: 
> > Hello. 
> > I am trying to build the kernel code. I am following instructions from 
> the 
> > tutorial page. 
> > However, I have run into a problem. 
> > When I run the 'make' command, I land at the following errors and 
> > compilation is terminated. 
> > 
> > 
> >   CHK     include/config/kernel.release 
> >   CHK     include/generated/uapi/linux/version.h 
> >   CHK     include/generated/utsrelease.h 
> >   CHK     include/generated/bounds.h 
> >   CHK     include/generated/timeconst.h 
> >   CHK     include/generated/asm-offsets.h 
> >   CALL    scripts/checksyscalls.sh 
> >   HOSTCC  scripts/sign-file 
> > scripts/sign-file.c:20:25: fatal error: openssl/bio.h: No such file or 
> > directory 
> >  #include <openssl/bio.h> 
> >                          ^ 
> > compilation terminated. 
> > make[1]: *** [scripts/sign-file] Error 1 
> > make: *** [scripts] Error 2 
> > 
> > 
> > I am not able to proceed and will be really grateful for guidance. 
> > Thank you. :) 
>
>
> You are missing the package that brings openssl/bio.h file. On a debian 
> based distribution, running: 
>
> $ apt get install libssl-dev 
>
> should fix the problem. 
>
> thanks, 
> Daniel. 
>

------=_Part_2295_1652895266.1443172184207
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That fixed it. Thank you Daniel.=C2=A0 :)<br><br>On Thursd=
ay, September 24, 2015 at 7:39:05 PM UTC+5:30, Daniel Baluta wrote:<blockqu=
ote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left=
: 1px #ccc solid;padding-left: 1ex;">On Thu, Sep 24, 2015 at 5:01 PM, Supri=
ya Srivatsa &lt;<a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-ma=
ilto=3D"vMluSRz6BQAJ" rel=3D"nofollow">sup...@gmail.com</a>&gt; wrote:
<br>&gt; Hello.
<br>&gt; I am trying to build the kernel code. I am following instructions =
from the
<br>&gt; tutorial page.
<br>&gt; However, I have run into a problem.
<br>&gt; When I run the &#39;make&#39; command, I land at the following err=
ors and
<br>&gt; compilation is terminated.
<br>&gt;
<br>&gt;
<br>&gt; =C2=A0 CHK =C2=A0 =C2=A0 include/config/kernel.release
<br>&gt; =C2=A0 CHK =C2=A0 =C2=A0 include/generated/uapi/linux/<wbr>version=
.h
<br>&gt; =C2=A0 CHK =C2=A0 =C2=A0 include/generated/utsrelease.h
<br>&gt; =C2=A0 CHK =C2=A0 =C2=A0 include/generated/bounds.h
<br>&gt; =C2=A0 CHK =C2=A0 =C2=A0 include/generated/timeconst.h
<br>&gt; =C2=A0 CHK =C2=A0 =C2=A0 include/generated/asm-offsets.<wbr>h
<br>&gt; =C2=A0 CALL =C2=A0 =C2=A0scripts/checksyscalls.sh
<br>&gt; =C2=A0 HOSTCC =C2=A0scripts/sign-file
<br>&gt; scripts/sign-file.c:20:25: fatal error: openssl/bio.h: No such fil=
e or
<br>&gt; directory
<br>&gt; =C2=A0#include &lt;openssl/bio.h&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0^
<br>&gt; compilation terminated.
<br>&gt; make[1]: *** [scripts/sign-file] Error 1
<br>&gt; make: *** [scripts] Error 2
<br>&gt;
<br>&gt;
<br>&gt; I am not able to proceed and will be really grateful for guidance.
<br>&gt; Thank you. :)
<br>
<br>
<br>You are missing the package that brings openssl/bio.h file. On a debian
<br>based distribution, running:
<br>
<br>$ apt get install libssl-dev
<br>
<br>should fix the problem.
<br>
<br>thanks,
<br>Daniel.
<br></blockquote></div>
------=_Part_2295_1652895266.1443172184207--

------=_Part_2294_1787929157.1443172184207--

