X-GM-THRID: 6669707520918945792
Date: Mon, 18 Mar 2019 05:48:05 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <684fd43f-048f-48b8-809d-b62922350a7c@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1903181332560.3832@hadrien>
References: <20190318123121.11548-1-sanjana99reddy99@gmail.com>
 <alpine.DEB.2.20.1903181332560.3832@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core:
 rtw_pwrctrl.c: Fix a comparision warning.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1591_1687067630.1552913285796"
X-Google-Token: EIWnvuQFrLNNzuap1oI0
X-Google-IP: 203.109.108.32

------=_Part_1591_1687067630.1552913285796
Content-Type: multipart/alternative; 
	boundary="----=_Part_1592_1673341822.1552913285796"

------=_Part_1592_1673341822.1552913285796
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Monday, March 18, 2019 at 6:03:57 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Mon, 18 Mar 2019, Sanjana Sanikommu wrote: 
>
> > Replace the constant at the right side of comparision. 
>
> Replace suggests that there was one cnstant, and now you want to use a 
> different one.  What you did would be better described as "move the 
> constant to the right side...". 
>
>   I would change the log message. Thank you for correcting me.
  Sanjana
 

> julia 
>
> > Issue found by checkpatch.pl semantic patch results for rtw_ap.c 
> > 
> > WARNING:Comparision should place the constant on the right side of the 
> > test. 
> > 
> > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/rtl8188eu/core/rtw_pwrctrl.c | 2 +- 
> >  1 file changed, 1 insertion(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c 
> b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c 
> > index 6a846d08d449..7b16632048b7 100644 
> > --- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c 
> > +++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c 
> > @@ -374,7 +374,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 
> ps_mode, u8 smart_ps, u8 bcn_a 
> >          } 
> > 
> >          if (pwrpriv->pwr_mode == ps_mode) { 
> > -                if (PS_MODE_ACTIVE == ps_mode) 
> > +                if (ps_mode == PS_MODE_ACTIVE) 
> >                          return; 
> > 
> >                  if ((pwrpriv->smart_ps == smart_ps) && 
> > -- 
> > 2.17.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20190318123121.11548-1-sanjana99reddy99%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_1592_1673341822.1552913285796
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Monday, March 18, 2019 at 6:03:57 PM UTC+5:30, =
Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;mar=
gin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Mon, 18 Mar 2019, Sanjana Sanikommu wrote:
<br>
<br>&gt; Replace the constant at the right side of comparision.
<br>
<br>Replace suggests that there was one cnstant, and now you want to use a
<br>different one. =C2=A0What you did would be better described as &quot;mo=
ve the
<br>constant to the right side...&quot;.
<br>
<br></blockquote><div>=C2=A0 I would change the log message. Thank you for =
correcting me.</div><div>=C2=A0 Sanjana</div><div>=C2=A0</div><blockquote c=
lass=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px=
 #ccc solid;padding-left: 1ex;">julia
<br>
<br>&gt; Issue found by <a href=3D"http://checkpatch.pl" target=3D"_blank" =
rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?=
q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoR=
gUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=3D&#39;ht=
tp://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\=
x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">checkp=
atch.pl</a> semantic patch results for rtw_ap.c
<br>&gt;
<br>&gt; WARNING:Comparision should place the constant on the right side of=
 the
<br>&gt; test.
<br>&gt;
<br>&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"RvqPV3IwDAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">sanjana9...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/rtl8188eu/<wbr>core/rtw_pwrctrl.c | 2 +-
<br>&gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rtl8188eu/<wbr>core/rtw_pwrctrl.c b/d=
rivers/staging/rtl8188eu/<wbr>core/rtw_pwrctrl.c
<br>&gt; index 6a846d08d449..7b16632048b7 100644
<br>&gt; --- a/drivers/staging/rtl8188eu/<wbr>core/rtw_pwrctrl.c
<br>&gt; +++ b/drivers/staging/rtl8188eu/<wbr>core/rtw_pwrctrl.c
<br>&gt; @@ -374,7 +374,7 @@ void rtw_set_ps_mode(struct adapter *padapter,=
 u8 ps_mode, u8 smart_ps, u8 bcn_a
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (pwrpriv-=
&gt;pwr_mode =3D=3D ps_mode) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (PS_MODE_ACTIVE =3D=3D ps_mode)
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ps_mode =3D=3D PS_MODE_ACTIVE)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>return;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((pwrpriv-&gt;smart_ps =3D=3D smart_=
ps) &amp;&amp;
<br>&gt; --
<br>&gt; 2.17.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"RvqPV3IwDAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"RvqPV3IwDAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20190318123121.11548-1-sanjana99reddy9=
9%40gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190318123121.1=
1548-1-sanjana99reddy99%40gmail.com&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190318123121.1=
1548-1-sanjana99reddy99%40gmail.com&#39;;return true;">https://groups.googl=
e.com/d/<wbr>msgid/outreachy-kernel/<wbr>20190318123121.11548-1-<wbr>sanjan=
a99reddy99%40gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_1592_1673341822.1552913285796--

------=_Part_1591_1687067630.1552913285796--

