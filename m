X-GM-THRID: 6331740910266613760
Date: Sun, 18 Sep 2016 12:02:57 -0700 (PDT)
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: bankarsandhya512@gmail.com, oleg.drokin@intel.com,
	andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Message-Id: <d3e0cc6a-f949-4d69-988f-59a44f96197f@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1609182042160.3350@hadrien>
References: <20160918182821.GA4646@sandhya>
 <alpine.DEB.2.10.1609182042160.3350@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Use x instead of x
 != NULL.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4593_1473373823.1474225377977"
X-Google-Token: EOHJ-74F7m78j1g0AJI0
X-Google-IP: 182.77.93.227

------=_Part_4593_1473373823.1474225377977
Content-Type: multipart/alternative; 
	boundary="----=_Part_4594_765260078.1474225377977"

------=_Part_4594_765260078.1474225377977
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Monday, September 19, 2016 at 12:13:49 AM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sun, 18 Sep 2016, Sandhya Bankar wrote: 
>
> > This patch was found by checkpatch. 
> > 
> > Signed-off-by: Sandhya Bankar <bankarsa...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/lustre/lustre/llite/llite_lib.c |    2 +- 
> >  1 files changed, 1 insertions(+), 1 deletions(-) 
> > 
> > diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c 
> b/drivers/staging/lustre/lustre/llite/llite_lib.c 
> > index 1ff788e..b078959 100644 
> > --- a/drivers/staging/lustre/lustre/llite/llite_lib.c 
> > +++ b/drivers/staging/lustre/lustre/llite/llite_lib.c 
> > @@ -1701,7 +1701,7 @@ int ll_update_inode(struct inode *inode, struct 
> lustre_md *md) 
> >          struct lov_stripe_md *lsm = md->lsm; 
> >          struct ll_sb_info *sbi = ll_i2sbi(inode); 
> > 
> > -        LASSERT((lsm != NULL) == ((body->mbo_valid & OBD_MD_FLEASIZE) 
> != 0)); 
> > +        LASSERT(lsm == ((body->mbo_valid & OBD_MD_FLEASIZE) != 0)); 
>
> This is not correct.  I'll let you figure out why.  Think about the types 
> of the various expressions involved. 
>
> julia 
>

Thanks ! I understood the mistake.
 

>
> >          if (lsm) { 
> >                  if (!lli->lli_has_smd && 
> >                      !(sbi->ll_flags & LL_SBI_LAYOUT_LOCK)) 
> > -- 
> > 1.7.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20160918182821.GA4646%40sandhya. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_4594_765260078.1474225377977
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Monday, September 19, 2016 at 12:13:49 AM UTC+5=
:30, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: =
0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sun, 18 Sep 2016, Sandhya Bankar wrote:
<br>
<br>&gt; This patch was found by checkpatch.
<br>&gt;
<br>&gt; Signed-off-by: Sandhya Bankar &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"YazV-vPnCAAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">bankarsa...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/lustre/<wbr>lustre/llite/llite_lib.c | =C2=
=A0 =C2=A02 +-
<br>&gt; =C2=A01 files changed, 1 insertions(+), 1 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/lustre/<wbr>lustre/llite/llite_lib.c =
b/drivers/staging/lustre/<wbr>lustre/llite/llite_lib.c
<br>&gt; index 1ff788e..b078959 100644
<br>&gt; --- a/drivers/staging/lustre/<wbr>lustre/llite/llite_lib.c
<br>&gt; +++ b/drivers/staging/lustre/<wbr>lustre/llite/llite_lib.c
<br>&gt; @@ -1701,7 +1701,7 @@ int ll_update_inode(struct inode *inode, str=
uct lustre_md *md)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct lov_s=
tripe_md *lsm =3D md-&gt;lsm;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ll_sb=
_info *sbi =3D ll_i2sbi(inode);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0LASSERT((lsm !=3D=
 NULL) =3D=3D ((body-&gt;mbo_valid &amp; OBD_MD_FLEASIZE) !=3D 0));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0LASSERT(lsm =3D=
=3D ((body-&gt;mbo_valid &amp; OBD_MD_FLEASIZE) !=3D 0));
<br>
<br>This is not correct. =C2=A0I&#39;ll let you figure out why. =C2=A0Think=
 about the types
<br>of the various expressions involved.
<br>
<br>julia
<br></blockquote><div><br>Thanks ! I understood the mistake.<br>=C2=A0</div=
><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;bo=
rder-left: 1px #ccc solid;padding-left: 1ex;">
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (lsm) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!lli-&gt;lli_has_smd &amp;&amp;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0!(sbi-&gt;ll_flags &amp; =
LL_SBI_LAYOUT_LOCK))
<br>&gt; --
<br>&gt; 1.7.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"YazV-vPnCAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"YazV-vPnCAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20160918182821.GA4646%40sandhya" targe=
t=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https://group=
s.google.com/d/msgid/outreachy-kernel/20160918182821.GA4646%40sandhya&#39;;=
return true;" onclick=3D"this.href=3D&#39;https://groups.google.com/d/msgid=
/outreachy-kernel/20160918182821.GA4646%40sandhya&#39;;return true;">https:=
//groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20160918182821.GA464=
6%<wbr>40sandhya</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_4594_765260078.1474225377977--

------=_Part_4593_1473373823.1474225377977--

