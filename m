X-GM-THRID: 6250655488927596544
Date: Sat, 13 Feb 2016 00:28:51 -0800 (PST)
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: bhumirks@gmail.com
Message-Id: <8615600f-b029-4b7c-bcdb-aee18a663cc8@googlegroups.com>
In-Reply-To: <alpine.DEB.2.02.1602130729450.2225@localhost6.localdomain6>
References: <cover.1455343091.git.bhumirks@gmail.com>
 <alpine.DEB.2.02.1602130729450.2225@localhost6.localdomain6>
Subject: Re: [Outreachy kernel] [PATCH 0/2] Remove multiple assignments
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1661_1047996849.1455352131529"
X-Google-Token: EMPS-7UFd9MPU5Awv8k0
X-Google-IP: 14.139.242.195

------=_Part_1661_1047996849.1455352131529
Content-Type: multipart/alternative; 
	boundary="----=_Part_1662_944295124.1455352131529"

------=_Part_1662_944295124.1455352131529
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Saturday, February 13, 2016 at 12:01:09 PM UTC+5:30, Julia Lawall wrote:
>
> On Sat, 13 Feb 2016, Bhumika Goyal wrote: 
>
> > This patchset removes multiple assignment by factorizing them. 
> > Made a coccinelle script to match cases: 
> > @@ 
> > identifier a,b; 
> > constant c; 
> > @@ 
> > -a=b=c; 
> > +a=c; 
> > +b=c; 
>
> The double assgnments are actually a bit annoying from a Coccinelle point 
> of view.  But probably from a human developer point of view, the original 
> code is better, because it is more concise, and anyway the assignments are 
> completely trivial. 
>   
>
     Ok will keep that in mind. But then checkpatch warning for double 
assignments is false positive ?

    Thanks
    Bhumika 

> julia 
>
> > 
> > Bhumika Goyal (2): 
> >   Staging: wlan-ng: Remove multiple assignments 
> >   Staging: media: Remove multiple assignments 
> > 
> >  drivers/staging/media/davinci_vpfe/dm365_isif.c | 3 ++- 
> >  drivers/staging/wlan-ng/p80211wep.c             | 6 ++++-- 
> >  2 files changed, 6 insertions(+), 3 deletions(-) 
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
> https://groups.google.com/d/msgid/outreachy-kernel/cover.1455343091.git.bhumirks%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_1662_944295124.1455352131529
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Saturday, February 13, 2016 at 12:01:09 PM UTC+=
5:30, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin:=
 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Sa=
t, 13 Feb 2016, Bhumika Goyal wrote:
<br>
<br>&gt; This patchset removes multiple assignment by factorizing them.
<br>&gt; Made a coccinelle script to match cases:
<br>&gt; @@
<br>&gt; identifier a,b;
<br>&gt; constant c;
<br>&gt; @@
<br>&gt; -a=3Db=3Dc;
<br>&gt; +a=3Dc;
<br>&gt; +b=3Dc;
<br>
<br>The double assgnments are actually a bit annoying from a Coccinelle poi=
nt=20
<br>of view. =C2=A0But probably from a human developer point of view, the o=
riginal=20
<br>code is better, because it is more concise, and anyway the assignments =
are=20
<br>completely trivial.
<br>=C2=A0
<br></blockquote><div>=C2=A0 =C2=A0=C2=A0 Ok will keep that in mind. But th=
en checkpatch warning for double assignments is false positive ?<br><br>=C2=
=A0 =C2=A0 Thanks<br>=C2=A0 =C2=A0 Bhumika <br></div><blockquote class=3D"g=
mail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc sol=
id;padding-left: 1ex;">julia
<br>
<br>&gt;=20
<br>&gt; Bhumika Goyal (2):
<br>&gt; =C2=A0 Staging: wlan-ng: Remove multiple assignments
<br>&gt; =C2=A0 Staging: media: Remove multiple assignments
<br>&gt;=20
<br>&gt; =C2=A0drivers/staging/media/<wbr>davinci_vpfe/dm365_isif.c | 3 ++-
<br>&gt; =C2=A0drivers/staging/wlan-ng/<wbr>p80211wep.c =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 | 6 ++++--
<br>&gt; =C2=A02 files changed, 6 insertions(+), 3 deletions(-)
<br>&gt;=20
<br>&gt; --=20
<br>&gt; 1.9.1
<br>&gt;=20
<br>&gt; --=20
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"bhmXkAj9AQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"bhmXkAj9AQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/cover.1455343091.git.bhumirks%40gmail.=
com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/msgid/outreachy-kernel/cover.1455343091.git.bhumir=
ks%40gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;https://group=
s.google.com/d/msgid/outreachy-kernel/cover.1455343091.git.bhumirks%40gmail=
.com&#39;;return true;">https://groups.google.com/d/<wbr>msgid/outreachy-ke=
rnel/cover.<wbr>1455343091.git.bhumirks%<wbr>40gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;=20
<br></blockquote></div>
------=_Part_1662_944295124.1455352131529--

------=_Part_1661_1047996849.1455352131529--

