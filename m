X-GM-THRID: 6252664504577949696
Date: Sun, 21 Feb 2016 06:54:31 -0800 (PST)
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: janani.rvchndrn@gmail.com
Message-Id: <da7a4daa-3454-4c70-875f-cf2dc2fdcc33@googlegroups.com>
In-Reply-To: <20160220224501.GA21624@kroah.com>
References: <20160218211055.GA6343@janani-Inspiron-3521>
 <20160220224501.GA21624@kroah.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Remove else after
 return in if statements
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1540_1707967719.1456066471150"
X-Google-Token: EKefp7YFdLXHdl4hXJA0
X-Google-IP: 72.231.208.13

------=_Part_1540_1707967719.1456066471150
Content-Type: multipart/alternative; 
	boundary="----=_Part_1541_340063907.1456066471151"

------=_Part_1541_340063907.1456066471151
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Saturday, 20 February 2016 17:45:03 UTC-5, gregkh wrote:
>
> On Thu, Feb 18, 2016 at 04:10:55PM -0500, Janani Ravichandran wrote: 
> > This patch fixes the checkpatch warning that else is not generally 
> > useful after a break or return. 
> > Coccinelle patch used: 
> > 
> > @rule1@ 
> > expression e1; 
> > @@ 
> >         if(e1) { ... return ...; } 
> > -        else{ 
> >                 ... 
> > -        } 
> > 
> > @rule2@ 
> > expression e2; 
> > statement S1; 
> > @@ 
> > 
> >         if(e2) { ... return ...; } 
> > -        else 
> >                 S1 
> > 
> > Signed-off-by: Janani Ravichandran <janani....@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/iio/adc/ad7816.c    | 12 ++++++++---- 
> >  drivers/staging/iio/adc/spear_adc.c |  5 ++--- 
> >  2 files changed, 10 insertions(+), 7 deletions(-) 
>
> This patch conflicts with a patch someone else sent in 2 days prior for 
> one of these files. Can you please refresh your tree and rebase it and 
> resend? 
>
Sure, will send a v2.

Thanks!
Janani. 

>
> thanks, 
>
> greg k-h 
>

------=_Part_1541_340063907.1456066471151
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Saturday, 20 February 2016 17:45:03 UTC-5, greg=
kh  wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left:=
 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Thu, Feb 18, 2016=
 at 04:10:55PM -0500, Janani Ravichandran wrote:
<br>&gt; This patch fixes the checkpatch warning that else is not generally
<br>&gt; useful after a break or return.
<br>&gt; Coccinelle patch used:
<br>&gt;=20
<br>&gt; @rule1@
<br>&gt; expression e1;
<br>&gt; @@
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if(e1) { ... retur=
n ...; }
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else{
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0...
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;=20
<br>&gt; @rule2@
<br>&gt; expression e2;
<br>&gt; statement S1;
<br>&gt; @@
<br>&gt;=20
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if(e2) { ... retur=
n ...; }
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0S1
<br>&gt;=20
<br>&gt; Signed-off-by: Janani Ravichandran &lt;<a href=3D"javascript:" tar=
get=3D"_blank" gdf-obfuscated-mailto=3D"zhTjtT1YBAAJ" rel=3D"nofollow" onmo=
usedown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.=
href=3D&#39;javascript:&#39;;return true;">janani....@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/iio/adc/<wbr>ad7816.c =C2=A0 =C2=A0| 12 ++++=
++++----
<br>&gt; =C2=A0drivers/staging/iio/adc/<wbr>spear_adc.c | =C2=A05 ++---
<br>&gt; =C2=A02 files changed, 10 insertions(+), 7 deletions(-)
<br>
<br>This patch conflicts with a patch someone else sent in 2 days prior for
<br>one of these files. Can you please refresh your tree and rebase it and
<br>resend?
<br></blockquote><div>Sure, will send a v2.</div><div><br></div><div>Thanks=
!</div><div>Janani.=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"m=
argin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"=
>
<br>thanks,
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_1541_340063907.1456066471151--

------=_Part_1540_1707967719.1456066471150--

