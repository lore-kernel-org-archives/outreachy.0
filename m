X-GM-THRID: 6251014829496074240
Date: Sun, 14 Feb 2016 04:21:23 -0800 (PST)
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: bhumirks@gmail.com
Message-Id: <31a999e2-93a3-48b0-950b-b8ec533158e3@googlegroups.com>
In-Reply-To: <alpine.DEB.2.02.1602140819530.2039@localhost6.localdomain6>
References: <cover.1455427132.git.bhumirks@gmail.com>
 <alpine.DEB.2.02.1602140819530.2039@localhost6.localdomain6>
Subject: Re: [Outreachy kernel] [PATCH 0/2] Remove unused macros
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2588_1418288798.1455452483751"
X-Google-Token: EMPigbYFbqbncLDQpn80
X-Google-IP: 14.139.242.195

------=_Part_2588_1418288798.1455452483751
Content-Type: multipart/alternative; 
	boundary="----=_Part_2589_79017004.1455452483751"

------=_Part_2589_79017004.1455452483751
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, February 14, 2016 at 12:50:08 PM UTC+5:30, Julia Lawall wrote:
>
> On Sun, 14 Feb 2016, Bhumika Goyal wrote: 
>
> > This patchset remove PlatformAcquireSpinLock and PlatformReleaseSpinLock 
> > macros as they are not used anywhere. Also remove the commented places 
> > where these macros were used. Used grep to find occurences. 
>
> Isn't this a v2?
>
   
     Actually I broke v1 in two patches so I thought it should be a new 
patchset. v1 had just one patch so can v2 for the same  be a patchset? 
     Thanks,
     Bhumika

julia 
>
> > Bhumika Goyal (2): 
> >   Staging: rtl8723au: Remove unused macros 
> >   Staging: rtl8192u: Remove useless comments 
> > 
> >  drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 5 ----- 
> >  drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c | 2 -- 
> >  2 files changed, 7 deletions(-) 
> > 
> > -- 
> > 1.9.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/cover.1455427132.git.bhumirks%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_2589_79017004.1455452483751
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sunday, February 14, 2016 at 12:50:08 PM UTC+5:=
30, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0=
;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Sun,=
 14 Feb 2016, Bhumika Goyal wrote:
<br>
<br>&gt; This patchset remove PlatformAcquireSpinLock and PlatformReleaseSp=
inLock=20
<br>&gt; macros as they are not used anywhere. Also remove the commented pl=
aces=20
<br>&gt; where these macros were used. Used grep to find occurences.
<br>
<br>Isn&#39;t this a v2?<br></blockquote><div>=C2=A0=C2=A0 <br>=C2=A0 =C2=
=A0=C2=A0 Actually I broke v1 in two patches so I thought it should be a ne=
w patchset. v1 had just one patch so can v2 for the same=C2=A0 be a patchse=
t? <br>=C2=A0=C2=A0=C2=A0=C2=A0 Thanks,<br>=C2=A0=C2=A0=C2=A0=C2=A0 Bhumika=
<br><br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-l=
eft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">julia
<br>
<br>&gt; Bhumika Goyal (2):
<br>&gt; =C2=A0 Staging: rtl8723au: Remove unused macros
<br>&gt; =C2=A0 Staging: rtl8192u: Remove useless comments
<br>&gt;=20
<br>&gt; =C2=A0drivers/staging/rtl8192u/<wbr>ieee80211/rtl819x_TSProc.c | 5=
 -----
<br>&gt; =C2=A0drivers/staging/rtl8723au/<wbr>hal/rtl8723a_bt-coexist.c | 2=
 --
<br>&gt; =C2=A02 files changed, 7 deletions(-)
<br>&gt;=20
<br>&gt; --=20
<br>&gt; 1.9.1
<br>&gt;=20
<br>&gt; --=20
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"Cm3kbUlOAgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"Cm3kbUlOAgAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/cover.1455427132.git.bhumirks%40gmail.=
com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/msgid/outreachy-kernel/cover.1455427132.git.bhumir=
ks%40gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;https://group=
s.google.com/d/msgid/outreachy-kernel/cover.1455427132.git.bhumirks%40gmail=
.com&#39;;return true;">https://groups.google.com/d/<wbr>msgid/outreachy-ke=
rnel/cover.<wbr>1455427132.git.bhumirks%<wbr>40gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;=20
<br></blockquote></div>
------=_Part_2589_79017004.1455452483751--

------=_Part_2588_1418288798.1455452483751--

