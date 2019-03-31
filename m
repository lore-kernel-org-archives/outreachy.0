X-GM-THRID: 6674500883205586944
Date: Sun, 31 Mar 2019 03:38:54 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <263b7625-d681-4962-b453-6870478d52a4@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903311234110.2578@hadrien>
References: <20190331103204.21358-1-sanjana99reddy99@gmail.com>
 <alpine.DEB.2.21.1903311234110.2578@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 0/6] staging: comedi: Prefer using
 BIT macro in various files.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_494_74057293.1554028734787"
X-Google-Token: EL6xguUFc2ot2KP2juc0
X-Google-IP: 123.201.105.95

------=_Part_494_74057293.1554028734787
Content-Type: multipart/alternative; 
	boundary="----=_Part_495_1589822322.1554028734787"

------=_Part_495_1589822322.1554028734787
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, March 31, 2019 at 4:04:57 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sun, 31 Mar 2019, Sanjana Sanikommu wrote: 
>
> > This patchset does the following. 
> > 1. Replace bit assignment with macro 
> > 
> > Sanjana Sanikommu (6): 
> >   staging: comedi: das08: Prefer using the BIT macro 
> >   staging: comedi: Prefer using the BIT macro 
> >   staging: comedi: Prefer using the BIT macro 
> >   staging: comedi: Prefer using the BIT macro 
> >   staging: comedi: Prefer using the BIT macro 
> >   staging: comedi: Prefer using the BIT macro 
>
> Each patch needs to have a different subject line. 
>
> Since the changes seem to be fairly small, maybe it can just be one patch. 
>

   Sure, I would remove series and make a single patch.
   Thank you
   Sanjana
   

>
> julia 
>
> > 
> >  drivers/staging/comedi/drivers/amplc_pci230.c  | 2 +- 
> >  drivers/staging/comedi/drivers/das08.c         | 4 ++-- 
> >  drivers/staging/comedi/drivers/dyna_pci10xx.c  | 2 +- 
> >  drivers/staging/comedi/drivers/ni_at_ao.c      | 2 +- 
> >  drivers/staging/comedi/drivers/ni_daq_700.c    | 2 +- 
> >  drivers/staging/comedi/drivers/ni_mio_common.c | 4 ++-- 
> >  6 files changed, 8 insertions(+), 8 deletions(-) 
> > 
> > -- 
> > 2.17.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreach...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20190331103204.21358-1-sanjana99reddy99%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_495_1589822322.1554028734787
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sunday, March 31, 2019 at 4:04:57 PM UTC+5:30, =
Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;mar=
gin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sun, 31 Mar 2019, Sanjana Sanikommu wrote:
<br>
<br>&gt; This patchset does the following.
<br>&gt; 1. Replace bit assignment with macro
<br>&gt;
<br>&gt; Sanjana Sanikommu (6):
<br>&gt; =C2=A0 staging: comedi: das08: Prefer using the BIT macro
<br>&gt; =C2=A0 staging: comedi: Prefer using the BIT macro
<br>&gt; =C2=A0 staging: comedi: Prefer using the BIT macro
<br>&gt; =C2=A0 staging: comedi: Prefer using the BIT macro
<br>&gt; =C2=A0 staging: comedi: Prefer using the BIT macro
<br>&gt; =C2=A0 staging: comedi: Prefer using the BIT macro
<br>
<br>Each patch needs to have a different subject line.
<br>
<br>Since the changes seem to be fairly small, maybe it can just be one pat=
ch.
<br></blockquote><div><br></div><div>=C2=A0 =C2=A0Sure, I would remove seri=
es and make a single patch.</div><div>=C2=A0 =C2=A0Thank you</div><div>=C2=
=A0 =C2=A0Sanjana</div><div>=C2=A0 =C2=A0</div><blockquote class=3D"gmail_q=
uote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;pad=
ding-left: 1ex;">
<br>julia
<br>
<br>&gt;
<br>&gt; =C2=A0drivers/staging/comedi/<wbr>drivers/amplc_pci230.c =C2=A0| 2=
 +-
<br>&gt; =C2=A0drivers/staging/comedi/<wbr>drivers/das08.c =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 | 4 ++--
<br>&gt; =C2=A0drivers/staging/comedi/<wbr>drivers/dyna_pci10xx.c =C2=A0| 2=
 +-
<br>&gt; =C2=A0drivers/staging/comedi/<wbr>drivers/ni_at_ao.c =C2=A0 =C2=A0=
 =C2=A0| 2 +-
<br>&gt; =C2=A0drivers/staging/comedi/<wbr>drivers/ni_daq_700.c =C2=A0 =C2=
=A0| 2 +-
<br>&gt; =C2=A0drivers/staging/comedi/<wbr>drivers/ni_mio_common.c | 4 ++--
<br>&gt; =C2=A06 files changed, 8 insertions(+), 8 deletions(-)
<br>&gt;
<br>&gt; --
<br>&gt; 2.17.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"gCsYl8m0BgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreach...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"gCsYl8m0BgAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20190331103204.21358-1-sanjana99reddy9=
9%40gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190331103204.2=
1358-1-sanjana99reddy99%40gmail.com&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190331103204.2=
1358-1-sanjana99reddy99%40gmail.com&#39;;return true;">https://groups.googl=
e.com/d/<wbr>msgid/outreachy-kernel/<wbr>20190331103204.21358-1-<wbr>sanjan=
a99reddy99%40gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_495_1589822322.1554028734787--

------=_Part_494_74057293.1554028734787--

