X-GM-THRID: 6664868733855465472
Date: Tue, 5 Mar 2019 03:48:07 -0800 (PST)
From: Dana Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <7ffe1ae9-0b5e-4093-b6fe-385274a87a13@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1903051236200.3701@hadrien>
References: <20190305113433.GA16894@pthm>
 <alpine.DEB.2.20.1903051236200.3701@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: ralink-gdma: Avoid
 unnecessary line continuations
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_913_2133295196.1551786487961"
X-Google-Token: EPfD-eMFPmv-SQ2cfvE0
X-Google-IP: 5.12.179.61

------=_Part_913_2133295196.1551786487961
Content-Type: multipart/alternative; 
	boundary="----=_Part_914_464174994.1551786487962"

------=_Part_914_464174994.1551786487962
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Tuesday, March 5, 2019 at 1:37:22 PM UTC+2, Julia Lawall wrote:
>
>
>
> On Tue, 5 Mar 2019, Daniela Mormocea wrote: 
>
> > Get rid of unnecessary line continuations in 
> > boolean expressions, warning detected by checkpatch 
>
> Hi, 
>
> They should be in different patches, but they need to be in the same 
> series, so Greg knows in what order to apply them. 
>
> When you send the second version, please also add v2 and describe the 
> change since the first version under the --- 
>
> julia 
>
> > 
> > Signed-off-by: Daniela Mormocea <daniela....@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/ralink-gdma/ralink-gdma.c | 30 
> +++++++++++++++--------------- 
> >  1 file changed, 15 insertions(+), 15 deletions(-) 
> > 
>
> > 
> > -- 
> > 2.7.4 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20190305113433.GA16894%40pthm. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>


Ok, got it, I will resend them within the same patch with the appropriate 
tag

Thank you

------=_Part_914_464174994.1551786487962
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tuesday, March 5, 2019 at 1:37:22 PM UTC+2, Jul=
ia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin=
-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Tue, 5 Mar 2019, Daniela Mormocea wrote:
<br>
<br>&gt; Get rid of unnecessary line continuations in
<br>&gt; boolean expressions, warning detected by checkpatch
<br>
<br>Hi,
<br>
<br>They should be in different patches, but they need to be in the same
<br>series, so Greg knows in what order to apply them.
<br>
<br>When you send the second version, please also add v2 and describe the
<br>change since the first version under the ---
<br>
<br>julia
<br>
<br>&gt;
<br>&gt; Signed-off-by: Daniela Mormocea &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"8mKkoZviCQAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">daniela....@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/ralink-gdma/<wbr>ralink-gdma.c | 30 ++++++++=
+++++++---------------
<br>&gt; =C2=A01 file changed, 15 insertions(+), 15 deletions(-)
<br>&gt;
<br><br>&gt;
<br>&gt; --
<br>&gt; 2.7.4
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"8mKkoZviCQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"8mKkoZviCQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20190305113433.GA16894%40pthm" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https://groups=
.google.com/d/msgid/outreachy-kernel/20190305113433.GA16894%40pthm&#39;;ret=
urn true;" onclick=3D"this.href=3D&#39;https://groups.google.com/d/msgid/ou=
treachy-kernel/20190305113433.GA16894%40pthm&#39;;return true;">https://gro=
ups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20190305113433.GA16894%40=
pthm</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote><div><br></div><div><br></div><div>Ok, got it, I will rese=
nd them within the same patch with the appropriate tag</div><div><br></div>=
<div>Thank you<br></div></div>
------=_Part_914_464174994.1551786487962--

------=_Part_913_2133295196.1551786487961--

