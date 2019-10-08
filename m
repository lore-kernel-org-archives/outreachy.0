X-GM-THRID: 6745542225820647424
Date: Tue, 8 Oct 2019 14:19:14 -0700 (PDT)
From: Javier Arias <felipe.ariasf@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <c9163826-7e60-4668-8ccc-04ce37106e4f@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1910082313180.2704@hadrien>
References: <20191008210850.ldgx5n3sahpdauvu@gmail.com>
 <alpine.DEB.2.21.1910082313180.2704@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Fix line over 80
 characters
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2052_1160086354.1570569554620"
X-Google-Token: ENL68-wF2E7iVOa3zuI0
X-Google-IP: 190.27.96.102

------=_Part_2052_1160086354.1570569554620
Content-Type: multipart/alternative; 
	boundary="----=_Part_2053_426819423.1570569554621"

------=_Part_2053_426819423.1570569554621
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello Julia,

Thanks for the feedback. The first line was originally like this so I just 
split the last argument. Should I fix that issue in this commit too or 
create a new one?

On Tuesday, 8 October 2019 16:13:45 UTC-5, Julia Lawall wrote:
>
>
>
> On Tue, 8 Oct 2019, Javier F. Arias wrote: 
>
> > Break last two function call arguments into two separate lines. 
> > Issue found by checkpatch. 
> > 
> > Signed-off-by: Javier F. Arias <jaria...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/rtl8723bs/core/rtw_ap.c | 3 ++- 
> >  1 file changed, 2 insertions(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c 
> b/drivers/staging/rtl8723bs/core/rtw_ap.c 
> > index 6d18d23acdc0..43af76b9fa49 100644 
> > --- a/drivers/staging/rtl8723bs/core/rtw_ap.c 
> > +++ b/drivers/staging/rtl8723bs/core/rtw_ap.c 
> > @@ -217,7 +217,8 @@ void expire_timeout_chk(struct adapter *padapter) 
> >          #ifdef DBG_EXPIRATION_CHK 
> >          if (phead != plist) { 
> >                  DBG_871X(FUNC_NDEV_FMT" auth_list, cnt:%u\n" 
> > -                        , FUNC_NDEV_ARG(padapter->pnetdev), 
> pstapriv->auth_list_cnt); 
> > +                        , FUNC_NDEV_ARG(padapter->pnetdev) 
> > +                        , pstapriv->auth_list_cnt); 
>
> It's not normal in the kernel to put the commas at the beginning of the 
> line like that. 
>
> julia 
>
> >          } 
> >          #endif 
> >          while (phead != plist) { 
> > -- 
> > 2.20.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreach...@googlegroups.com <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20191008210850.ldgx5n3sahpdauvu%40gmail.com. 
>
> > 
>

------=_Part_2053_426819423.1570569554621
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Julia,</div><div><br></div><div>Thanks for the =
feedback. The first line was originally like this so I just split the last =
argument. Should I fix that issue in this commit too or create a new one?<b=
r></div><br>On Tuesday, 8 October 2019 16:13:45 UTC-5, Julia Lawall  wrote:=
<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;bor=
der-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Tue, 8 Oct 2019, Javier F. Arias wrote:
<br>
<br>&gt; Break last two function call arguments into two separate lines.
<br>&gt; Issue found by checkpatch.
<br>&gt;
<br>&gt; Signed-off-by: Javier F. Arias &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"rsHcOzpLCgAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">jaria...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/rtl8723bs/<wbr>core/rtw_ap.c | 3 ++-
<br>&gt; =C2=A01 file changed, 2 insertions(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rtl8723bs/<wbr>core/rtw_ap.c b/driver=
s/staging/rtl8723bs/<wbr>core/rtw_ap.c
<br>&gt; index 6d18d23acdc0..43af76b9fa49 100644
<br>&gt; --- a/drivers/staging/rtl8723bs/<wbr>core/rtw_ap.c
<br>&gt; +++ b/drivers/staging/rtl8723bs/<wbr>core/rtw_ap.c
<br>&gt; @@ -217,7 +217,8 @@ void expire_timeout_chk(struct adapter *padapt=
er)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0#ifdef DBG_E=
XPIRATION_CHK
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (phead !=
=3D plist) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(<wbr>FUNC_NDEV_FMT&quot; auth_=
list, cnt:%u\n&quot;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0, FUNC_NDEV_ARG(padapter-&gt;<wbr>pnetdev), pstapriv-&gt;auth_list_cn=
t);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0, FUNC_NDEV_ARG(padapter-&gt;<wbr>pnetdev)
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0, pstapriv-&gt;auth_list_cnt);
<br>
<br>It&#39;s not normal in the kernel to put the commas at the beginning of=
 the
<br>line like that.
<br>
<br>julia
<br>
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0#endif
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0while (phead=
 !=3D plist) {
<br>&gt; --
<br>&gt; 2.20.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"rsHcOzpLCgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreach...@<wbr>googlegroups.com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20191008210850.ldgx5n3sahpdauvu%40gmai=
l.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;h=
ttps://groups.google.com/d/msgid/outreachy-kernel/20191008210850.ldgx5n3sah=
pdauvu%40gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;https://g=
roups.google.com/d/msgid/outreachy-kernel/20191008210850.ldgx5n3sahpdauvu%4=
0gmail.com&#39;;return true;">https://groups.google.com/d/<wbr>msgid/outrea=
chy-kernel/<wbr>20191008210850.<wbr>ldgx5n3sahpdauvu%40gmail.com</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_2053_426819423.1570569554621--

------=_Part_2052_1160086354.1570569554620--

