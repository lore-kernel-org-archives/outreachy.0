X-GM-THRID: 6198081352243347456
X-Gmail-Labels: Topic type: DISCUSSION
Date: Fri, 25 Sep 2015 02:10:26 -0700 (PDT)
From: Supriya Srivatsa <sup0508@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: sup0508@gmail.com
Message-Id: <24ded60e-fb94-4d96-92ef-e9c686d284c9@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1509241609050.2370@hadrien>
References: <979eb3fd-be55-4cad-8c74-8bb99fa095c9@googlegroups.com>
 <alpine.DEB.2.10.1509241609050.2370@hadrien>
Subject: Re: [Outreachy kernel] Problem with building the kernel
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2324_140715824.1443172226138"
X-Google-Token: EIKflLAF9dVxfD5LnCc0
X-Google-IP: 59.89.87.78

------=_Part_2324_140715824.1443172226138
Content-Type: multipart/alternative; 
	boundary="----=_Part_2325_1957645515.1443172226139"

------=_Part_2325_1957645515.1443172226139
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Julia. Thankyou, that worked. :)

On Thursday, September 24, 2015 at 7:39:43 PM UTC+5:30, Julia Lawall wrote:
>
> On Thu, 24 Sep 2015, Supriya Srivatsa wrote: 
>
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
>
> An old stack overflow response suggests that you need to install 
> libssl-dev.  Did you try that? 
>
> julia 
>
>
> > Thank you. :) 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups 
> > "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an 
> > email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/979eb3fd-be55-4cad-8c74- 
> > 8bb99fa095c9%40googlegroups.com. 
> > For more options, visit https://groups.google.com/d/optout. 
> > 
> >


------=_Part_2325_1957645515.1443172226139
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Julia. Thankyou, that worked. :)<br><br>On Thursday, Se=
ptember 24, 2015 at 7:39:43 PM UTC+5:30, Julia Lawall wrote:<blockquote cla=
ss=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #=
ccc solid;padding-left: 1ex;">On Thu, 24 Sep 2015, Supriya Srivatsa wrote:
<br>
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
<br>&gt; =C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/config/kernel.release
<br>&gt; =C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/generated/uapi/linux/<w=
br>version.h
<br>&gt; =C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/generated/utsrelease.h
<br>&gt; =C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/generated/bounds.h
<br>&gt; =C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/generated/timeconst.h
<br>&gt; =C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/generated/asm-offsets.<=
wbr>h
<br>&gt; =C2=A0 CALL=C2=A0=C2=A0=C2=A0 scripts/checksyscalls.sh
<br>&gt; =C2=A0 HOSTCC=C2=A0 scripts/sign-file
<br>&gt; scripts/sign-file.c:20:25: fatal error: openssl/bio.h: No such fil=
e or
<br>&gt; directory
<br>&gt; =C2=A0#include &lt;openssl/bio.h&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 ^
<br>&gt; compilation terminated.
<br>&gt; make[1]: *** [scripts/sign-file] Error 1
<br>&gt; make: *** [scripts] Error 2
<br>&gt;
<br>&gt;
<br>&gt; I am not able to proceed and will be really grateful for guidance.
<br>
<br>An old stack overflow response suggests that you need to install
<br>libssl-dev. =C2=A0Did you try that?
<br>
<br>julia
<br>
<br>
<br>&gt; Thank you. :)
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups
<br>&gt; &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an
<br>&gt; email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-=
mailto=3D"hKBuPCX6BQAJ" rel=3D"nofollow">outreachy-kern...@<wbr>googlegroup=
s.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"hKBuPCX6BQAJ" rel=3D"nofollow">outrea=
ch...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visithttps://<a href=3D"http://=
groups.google.com/d/msgid/outreachy-kernel/979eb3fd-be55-4cad-8c74-" target=
=3D"_blank" rel=3D"nofollow">groups.google.<wbr>com/d/msgid/outreachy-kerne=
l/<wbr>979eb3fd-be55-4cad-8c74-</a>
<br>&gt; 8bb99fa095c9%<a href=3D"http://40googlegroups.com" target=3D"_blan=
k" rel=3D"nofollow">40googlegroups.<wbr>com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow">https://groups.google.com/d/<wbr>op=
tout</a>.
<br>&gt;
<br>&gt;</blockquote></div>
------=_Part_2325_1957645515.1443172226139--

------=_Part_2324_140715824.1443172226138--

