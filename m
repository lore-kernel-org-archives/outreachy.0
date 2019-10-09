X-GM-THRID: 6745542225820647424
Date: Wed, 9 Oct 2019 16:31:31 -0700 (PDT)
From: Javier Arias <jarias.linux@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <f6b92908-b8c7-43d7-bee2-8068c3ae36de@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1910082323210.2704@hadrien>
References: <20191008210850.ldgx5n3sahpdauvu@gmail.com> <alpine.DEB.2.21.1910082313180.2704@hadrien> <c9163826-7e60-4668-8ccc-04ce37106e4f@googlegroups.com>
 <alpine.DEB.2.21.1910082323210.2704@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Fix line over 80
 characters
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3117_2055300802.1570663892080"
X-Google-Token: ENPb-ewFU5WCpZkNYAw0
X-Google-IP: 185.229.59.77

------=_Part_3117_2055300802.1570663892080
Content-Type: multipart/alternative; 
	boundary="----=_Part_3118_804376306.1570663892080"

------=_Part_3118_804376306.1570663892080
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Ok. I sent a patchset to deal with this issue.

Thanks

On Tuesday, 8 October 2019 16:24:13 UTC-5, Julia Lawall wrote:
>
>
>
> On Tue, 8 Oct 2019, Javier Arias wrote: 
>
> > Hello Julia, 
> > 
> > Thanks for the feedback. The first line was originally like this so I 
> just 
> > split the last argument. Should I fix that issue in this commit too or 
> > create a new one? 
>
> You could make a series of the two kinds of changes. 
>
> If you send two independent patches on the same file, Greg will be unsure 
> of the order in which to apply them. 
>
> julia 
>
> > 
> > On Tuesday, 8 October 2019 16:13:45 UTC-5, Julia Lawall wrote: 
> > 
> > 
> >       On Tue, 8 Oct 2019, Javier F. Arias wrote: 
> > 
> >       > Break last two function call arguments into two separate 
> >       lines. 
> >       > Issue found by checkpatch. 
> >       > 
> >       > Signed-off-by: Javier F. Arias <jaria...@gmail.com> 
> >       > --- 
> >       >  drivers/staging/rtl8723bs/core/rtw_ap.c | 3 ++- 
> >       >  1 file changed, 2 insertions(+), 1 deletion(-) 
> >       > 
> >       > diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c 
> >       b/drivers/staging/rtl8723bs/core/rtw_ap.c 
> >       > index 6d18d23acdc0..43af76b9fa49 100644 
> >       > --- a/drivers/staging/rtl8723bs/core/rtw_ap.c 
> >       > +++ b/drivers/staging/rtl8723bs/core/rtw_ap.c 
> >       > @@ -217,7 +217,8 @@ void expire_timeout_chk(struct adapter 
> >       *padapter) 
> >       >          #ifdef DBG_EXPIRATION_CHK 
> >       >          if (phead != plist) { 
> >       >                  DBG_871X(FUNC_NDEV_FMT" auth_list, cnt:%u\n" 
> >       > -                        , FUNC_NDEV_ARG(padapter->pnetdev), 
> >       pstapriv->auth_list_cnt); 
> >       > +                        , FUNC_NDEV_ARG(padapter->pnetdev) 
> >       > +                        , pstapriv->auth_list_cnt); 
> > 
> >       It's not normal in the kernel to put the commas at the beginning 
> >       of the 
> >       line like that. 
> > 
> >       julia 
> > 
> >       >          } 
> >       >          #endif 
> >       >          while (phead != plist) { 
> >       > -- 
> >       > 2.20.1 
> >       > 
> >       > -- 
> >       > You received this message because you are subscribed to the 
> >       Google Groups "outreachy-kernel" group. 
> >       > To unsubscribe from this group and stop receiving emails from 
> >       it, send an email to outreach...@googlegroups.com. 
> >       > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/20191008210850.ldgx5n3sa 
> >       hpdauvu%40gmail.com. 
> >       > 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups 
> > "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an 
> > email to outreach...@googlegroups.com <javascript:>. 
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/c9163826-7e60-4668-8ccc- 
> > 04ce37106e4f%40googlegroups.com. 
> > 
> >


------=_Part_3118_804376306.1570663892080
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Ok. I sent a patchset to deal with this issue.</div><=
div><br></div><div>Thanks<br></div><br>On Tuesday, 8 October 2019 16:24:13 =
UTC-5, Julia Lawall  wrote:<blockquote class=3D"gmail_quote" style=3D"margi=
n: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Tue, 8 Oct 2019, Javier Arias wrote:
<br>
<br>&gt; Hello Julia,
<br>&gt;
<br>&gt; Thanks for the feedback. The first line was originally like this s=
o I just
<br>&gt; split the last argument. Should I fix that issue in this commit to=
o or
<br>&gt; create a new one?
<br>
<br>You could make a series of the two kinds of changes.
<br>
<br>If you send two independent patches on the same file, Greg will be unsu=
re
<br>of the order in which to apply them.
<br>
<br>julia
<br>
<br>&gt;
<br>&gt; On Tuesday, 8 October 2019 16:13:45 UTC-5, Julia Lawall wrote:
<br>&gt;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 On Tue, 8 Oct 2019, Javier F. Arias wrote:
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Break last two function call arguments i=
nto two separate
<br>&gt; =C2=A0 =C2=A0 =C2=A0 lines.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Issue found by checkpatch.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Signed-off-by: Javier F. Arias &lt;<a>ja=
ria...@gmail.com</a>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; ---
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/rtl8723bs/<wbr>cor=
e/rtw_ap.c | 3 ++-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A01 file changed, 2 insertions(+), 1=
 deletion(-)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/rtl8723bs/<=
wbr>core/rtw_ap.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/rtl8723bs/<wbr>core/rtw_ap.=
c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index 6d18d23acdc0..43af76b9fa49 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/rtl8723bs/<wbr>cor=
e/rtw_ap.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/rtl8723bs/<wbr>cor=
e/rtw_ap.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -217,7 +217,8 @@ void expire_timeout_=
chk(struct adapter
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *padapter)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0#ifdef DBG_EXPIRATION_CHK
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0if (phead !=3D plist) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DBG_871X(<wb=
r>FUNC_NDEV_FMT&quot; auth_list, cnt:%u\n&quot;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0, FUNC_NDEV_ARG(padapter-&gt;<wbr>pnetdev),
<br>&gt; =C2=A0 =C2=A0 =C2=A0 pstapriv-&gt;auth_list_cnt);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0, FUNC_NDEV_ARG(padapter-&gt;<wbr>pnetdev)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0, pstapriv-&gt;auth_list_cnt);
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 It&#39;s not normal in the kernel to put the =
commas at the beginning
<br>&gt; =C2=A0 =C2=A0 =C2=A0 of the
<br>&gt; =C2=A0 =C2=A0 =C2=A0 line like that.
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 julia
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0#endif
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0while (phead !=3D plist) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; 2.20.1
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; You received this message because you ar=
e subscribed to the
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Google Groups &quot;outreachy-kernel&quot; gr=
oup.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To unsubscribe from this group and stop =
receiving emails from
<br>&gt; =C2=A0 =C2=A0 =C2=A0 it, send an email to <a>outreach...@googlegro=
ups.com</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To view this discussion on the web visit=
https://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/201910=
08210850.ldgx5n3sa" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.=
href=3D&#39;http://groups.google.com/d/msgid/outreachy-kernel/2019100821085=
0.ldgx5n3sa&#39;;return true;" onclick=3D"this.href=3D&#39;http://groups.go=
ogle.com/d/msgid/outreachy-kernel/20191008210850.ldgx5n3sa&#39;;return true=
;">groups.google.<wbr>com/d/msgid/outreachy-kernel/<wbr>20191008210850.ldgx=
5n3sa</a>
<br>&gt; =C2=A0 =C2=A0 =C2=A0 hpdauvu%<a href=3D"http://40gmail.com" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.goo=
gle.com/url?q\x3dhttp%3A%2F%2F40gmail.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3=
dAFQjCNF6SYGO6IiAPhbk3gMhjWdyIU0BdA&#39;;return true;" onclick=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F40gmail.com\x26sa\x3dD\=
x26sntz\x3d1\x26usg\x3dAFQjCNF6SYGO6IiAPhbk3gMhjWdyIU0BdA&#39;;return true;=
">40gmail.com</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups
<br>&gt; &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an
<br>&gt; email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-=
mailto=3D"5yaQdsxLCgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;ja=
vascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;r=
eturn true;">outreach...@<wbr>googlegroups.com</a>.
<br>&gt; To view this discussion on the web visithttps://<a href=3D"http://=
groups.google.com/d/msgid/outreachy-kernel/c9163826-7e60-4668-8ccc-" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://groups.=
google.com/d/msgid/outreachy-kernel/c9163826-7e60-4668-8ccc-&#39;;return tr=
ue;" onclick=3D"this.href=3D&#39;http://groups.google.com/d/msgid/outreachy=
-kernel/c9163826-7e60-4668-8ccc-&#39;;return true;">groups.google.<wbr>com/=
d/msgid/outreachy-kernel/<wbr>c9163826-7e60-4668-8ccc-</a>
<br>&gt; 04ce37106e4f%<a href=3D"http://40googlegroups.com" target=3D"_blan=
k" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/u=
rl?q\x3dhttp%3A%2F%2F40googlegroups.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dA=
FQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;return true;" onclick=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F40googlegroups.com\x26s=
a\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;retur=
n true;">40googlegroups.<wbr>com</a>.
<br>&gt;
<br>&gt;</blockquote></div>
------=_Part_3118_804376306.1570663892080--

------=_Part_3117_2055300802.1570663892080--

