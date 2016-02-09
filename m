X-GM-THRID: 6249367928124211200
Date: Tue, 9 Feb 2016 14:20:38 -0800 (PST)
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: janani.rvchndrn@gmail.com
Message-Id: <37a3f0ea-26e5-4d78-8730-81b7ed756644@googlegroups.com>
In-Reply-To: <alpine.DEB.2.02.1602092300180.2066@localhost6.localdomain6>
References: <20160210013122.GA12148@janani-Inspiron-3521>
 <alpine.DEB.2.02.1602092300180.2066@localhost6.localdomain6>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192u: Use
 kmalloc_array instead of kmalloc
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_6724_415573740.1455056438241"
X-Google-Token: ELbM6bUFob52xogB1G40
X-Google-IP: 72.231.208.13

------=_Part_6724_415573740.1455056438241
Content-Type: multipart/alternative; 
	boundary="----=_Part_6725_2139559765.1455056438241"

------=_Part_6725_2139559765.1455056438241
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Tuesday, 9 February 2016 17:01:18 UTC-5, Julia Lawall wrote:
>
>
>
> On Tue, 9 Feb 2016, Janani Ravichandran wrote: 
>
> > Use kmalloc_array instead of kmalloc for arrays. Coccinelle patch used: 
> > 
> > @@ 
> > expression E, F; 
> > constant FLAG; 
> > @@ 
> > 
> > - kmalloc(E*F, FLAG) 
> > + kmalloc_array(E, F, FLAG) 
>
> Actually, your patch doesn't do exactly this.  Your patch (correctly) has 
> E and F switched in the call to kmalloc_array. 
>
I actually used the semantic patch to find instances where the conversion 
could be applied, 
then looked at the declaration of kmalloc_array to determine the correct 
order of 
arguments and did the change manually to make sure the number of elements 
was the 
first argument and the size of the element was the second argument.

Please let me know if I should change anything here. Thank you!

Janani

>
> > 
> > Signed-off-by: Janani Ravichandran <janani....@gmail.com <javascript:>> 
> > --- 
> > Changes since v1: 
> >  * Corrected an error in commit message. 
>
> "an error" is not very explicit. 
>
> julia 
>
> >  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 ++-- 
> >  1 file changed, 2 insertions(+), 2 deletions(-) 
> > 
> > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c 
> b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c 
> > index 28ad63a..fb344d1 100644 
> > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c 
> > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c 
> > @@ -601,8 +601,8 @@ static void RxReorderIndicatePacket(struct 
> ieee80211_device *ieee, 
> >          bool                        bMatchWinStart = false, bPktInBuf = 
> false; 
> >          IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): Seq is 
> %d,pTS->RxIndicateSeq is %d, WinSize is 
> %d\n",__func__,SeqNum,pTS->RxIndicateSeq,WinSize); 
> >   
> > -        prxbIndicateArray = kmalloc(sizeof(struct ieee80211_rxb *) * 
> > -                        REORDER_WIN_SIZE, GFP_KERNEL); 
> > +        prxbIndicateArray = kmalloc_array(RECORDER_WIN_SIZE, 
> > +                        sizeof(struct ieee80211_rxb *), GFP_KERNEL); 
> >          if (!prxbIndicateArray) 
> >                  return; 
> >   
> > -- 
> > 2.5.0 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20160210013122.GA12148%40janani-Inspiron-3521. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_6725_2139559765.1455056438241
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tuesday, 9 February 2016 17:01:18 UTC-5, Julia =
Lawall  wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-l=
eft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Tue, 9 Feb 2016, Janani Ravichandran wrote:
<br>
<br>&gt; Use kmalloc_array instead of kmalloc for arrays. Coccinelle patch =
used:
<br>&gt;=20
<br>&gt; @@
<br>&gt; expression E, F;
<br>&gt; constant FLAG;
<br>&gt; @@
<br>&gt;=20
<br>&gt; - kmalloc(E*F, FLAG)
<br>&gt; + kmalloc_array(E, F, FLAG)
<br>
<br>Actually, your patch doesn&#39;t do exactly this. =C2=A0Your patch (cor=
rectly) has=20
<br>E and F switched in the call to kmalloc_array.
<br></blockquote><div>I actually used the semantic patch to find instances =
where the conversion could be applied, <br>then looked at the declaration o=
f kmalloc_array to determine the correct order of <br>arguments and did the=
 change manually to make sure the number of elements was the <br>first argu=
ment and the size of the element was the second argument.<br><br>Please let=
 me know if I should change anything here. Thank you!<br><br>Janani<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;b=
order-left: 1px #ccc solid;padding-left: 1ex;">
<br>&gt;=20
<br>&gt; Signed-off-by: Janani Ravichandran &lt;<a href=3D"javascript:" tar=
get=3D"_blank" gdf-obfuscated-mailto=3D"WHv_MHj1AAAJ" rel=3D"nofollow" onmo=
usedown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.=
href=3D&#39;javascript:&#39;;return true;">janani....@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; Changes since v1:
<br>&gt; =C2=A0* Corrected an error in commit message.
<br>
<br>&quot;an error&quot; is not very explicit.
<br>
<br>julia
<br>
<br>&gt; =C2=A0drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_rx.c | 4 +=
+--
<br>&gt; =C2=A01 file changed, 2 insertions(+), 2 deletions(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_rx.=
c b/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_rx.c
<br>&gt; index 28ad63a..fb344d1 100644
<br>&gt; --- a/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_rx.c
<br>&gt; +++ b/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_rx.c
<br>&gt; @@ -601,8 +601,8 @@ static void RxReorderIndicatePacket(struct iee=
e80211_device *ieee,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bMatchW=
inStart =3D false, bPktInBuf =3D false;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0IEEE80211_DE=
BUG(<wbr>IEEE80211_DL_REORDER,&quot;%s(): Seq is %d,pTS-&gt;RxIndicateSeq i=
s %d, WinSize is %d\n&quot;,__func__,SeqNum,pTS-&gt;<wbr>RxIndicateSeq,WinS=
ize);
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0prxbIndicateArray=
 =3D kmalloc(sizeof(struct ieee80211_rxb *) *
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>REORDER_WIN_SIZE, GFP_KERNEL);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0prxbIndicateArray=
 =3D kmalloc_array(RECORDER_WIN_<wbr>SIZE,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>sizeof(struct ieee80211_rxb *), GFP_KERNEL);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!prxbInd=
icateArray)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return;
<br>&gt; =C2=A0
<br>&gt; --=20
<br>&gt; 2.5.0
<br>&gt;=20
<br>&gt; --=20
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"WHv_MHj1AAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"WHv_MHj1AAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20160210013122.GA12148%40janani-Inspir=
on-3521" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39=
;https://groups.google.com/d/msgid/outreachy-kernel/20160210013122.GA12148%=
40janani-Inspiron-3521&#39;;return true;" onclick=3D"this.href=3D&#39;https=
://groups.google.com/d/msgid/outreachy-kernel/20160210013122.GA12148%40jana=
ni-Inspiron-3521&#39;;return true;">https://groups.google.com/d/<wbr>msgid/=
outreachy-kernel/<wbr>20160210013122.GA12148%<wbr>40janani-Inspiron-3521</a=
>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;=20
<br></blockquote></div>
------=_Part_6725_2139559765.1455056438241--

------=_Part_6724_415573740.1455056438241--

