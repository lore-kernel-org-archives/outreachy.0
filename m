X-GM-THRID: 6675168703727796224
Date: Mon, 1 Apr 2019 22:54:10 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <4549f14b-e6f1-43c8-a095-0ae3709ae62f@googlegroups.com>
In-Reply-To: <20190402054956.GB14075@kroah.com>
References: <20190402054333.7354-1-sanjana99reddy99@gmail.com>
 <20190402054956.GB14075@kroah.com>
Subject: Re: [PATCH] staging: sm750fb: Add SPDX GPL-2.0 license identifier
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_177_441486200.1554184451029"
X-Google-Token: EILyi-UFefh2rjg3wNA0
X-Google-IP: 123.201.165.14

------=_Part_177_441486200.1554184451029
Content-Type: multipart/alternative; 
	boundary="----=_Part_178_643078081.1554184451029"

------=_Part_178_643078081.1554184451029
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Tuesday, April 2, 2019 at 11:20:03 AM UTC+5:30, gregkh wrote:
>
> On Tue, Apr 02, 2019 at 11:13:33AM +0530, Sanjana Sanikommu wrote: 
> > Add the SPDX GPL-2.0 license identifier to fix checkpatch.pl warning 
> > Issue found by checkpatch.pl warning: 
> > "WARNING: Missing or malformed SPDX-License-Identifier tag in line 1" 
> > 
> > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/sm750fb/sm750.c | 1 + 
> >  1 file changed, 1 insertion(+) 
> > 
> > diff --git a/drivers/staging/sm750fb/sm750.c 
> b/drivers/staging/sm750fb/sm750.c 
> > index e1a892e3b3ad..105089b97bf5 100644 
> > --- a/drivers/staging/sm750fb/sm750.c 
> > +++ b/drivers/staging/sm750fb/sm750.c 
> > @@ -1,3 +1,4 @@ 
> > +// SPDX-License-Identifier: GPL-2.0 
> >  #include <linux/kernel.h> 
> >  #include <linux/module.h> 
> >  #include <linux/errno.h> 
>
> Why did you pick this license for this file? 
>
> You need to be explicit about why you did what you did here, as this is 
> a legal-type thing you are claiming.  As a hint, look at the huge commit 
> that I made to the whole kernel tree that did much this same thing just 
> over a year ago. 
>

   I will drop the license. I would look to the change. Thank you for 
letting me 
   know.
   Sanjana 

>
> thanks, 
>
> greg k-h 
>

------=_Part_178_643078081.1554184451029
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tuesday, April 2, 2019 at 11:20:03 AM UTC+5:30,=
 gregkh wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-l=
eft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Tue, Apr 02, =
2019 at 11:13:33AM +0530, Sanjana Sanikommu wrote:
<br>&gt; Add the SPDX GPL-2.0 license identifier to fix <a href=3D"http://c=
heckpatch.pl" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3d=
D\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return tru=
e;" onclick=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2=
Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974=
NI3_mFug&#39;;return true;">checkpatch.pl</a> warning
<br>&gt; Issue found by <a href=3D"http://checkpatch.pl" target=3D"_blank" =
rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?=
q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoR=
gUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=3D&#39;ht=
tp://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\=
x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">checkp=
atch.pl</a> warning:
<br>&gt; &quot;WARNING: Missing or malformed SPDX-License-Identifier tag in=
 line 1&quot;
<br>&gt;=20
<br>&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"3j1SwGZCBwAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">sanjana9...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/sm750fb/<wbr>sm750.c | 1 +
<br>&gt; =C2=A01 file changed, 1 insertion(+)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/sm750fb/<wbr>sm750.c b/drivers/stagin=
g/sm750fb/<wbr>sm750.c
<br>&gt; index e1a892e3b3ad..105089b97bf5 100644
<br>&gt; --- a/drivers/staging/sm750fb/<wbr>sm750.c
<br>&gt; +++ b/drivers/staging/sm750fb/<wbr>sm750.c
<br>&gt; @@ -1,3 +1,4 @@
<br>&gt; +// SPDX-License-Identifier: GPL-2.0
<br>&gt; =C2=A0#include &lt;linux/kernel.h&gt;
<br>&gt; =C2=A0#include &lt;linux/module.h&gt;
<br>&gt; =C2=A0#include &lt;linux/errno.h&gt;
<br>
<br>Why did you pick this license for this file?
<br>
<br>You need to be explicit about why you did what you did here, as this is
<br>a legal-type thing you are claiming. =C2=A0As a hint, look at the huge =
commit
<br>that I made to the whole kernel tree that did much this same thing just
<br>over a year ago.
<br></blockquote><div><br></div><div>=C2=A0 =C2=A0I will drop the license. =
I would look to the change. Thank you for letting me=C2=A0</div><div>=C2=A0=
 =C2=A0know.</div><div>=C2=A0 =C2=A0Sanjana=C2=A0</div><blockquote class=3D=
"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc s=
olid;padding-left: 1ex;">
<br>thanks,
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_178_643078081.1554184451029--

------=_Part_177_441486200.1554184451029--

