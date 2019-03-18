X-GM-THRID: 6669720602377453568
Date: Mon, 18 Mar 2019 07:22:47 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <6b36d840-0c3f-43f5-a5d2-839de55694aa@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1903181431040.3832@hadrien>
References: <20190318132203.13505-1-sanjana99reddy99@gmail.com>
 <alpine.DEB.2.20.1903181431040.3832@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core:
 rtw_mlme.c: Replace NULL comparision.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1606_1657002384.1552918967179"
X-Google-Token: ELfTvuQFIX2DpVPdtjM0
X-Google-IP: 203.109.108.32

------=_Part_1606_1657002384.1552918967179
Content-Type: multipart/alternative; 
	boundary="----=_Part_1607_1609483121.1552918967179"

------=_Part_1607_1609483121.1552918967179
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Monday, March 18, 2019 at 7:01:21 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Mon, 18 Mar 2019, Sanjana Sanikommu wrote: 
>
> > Replace NULL comparison with '!' in the file rtw_mlme.c 
> > Issue found by checkpatch.pl semantic patch results for rtw_mlme.c 
>
> You don't need to add the parentheses. 
>
I would remove them in next version.
Thank you.
Sanjana 

>
> julia 
>
> > 
> > CHECK:Comparision to NULL could be written "!candidate" 
> > 
> > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/rtl8188eu/core/rtw_mlme.c | 2 +- 
> >  1 file changed, 1 insertion(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c 
> b/drivers/staging/rtl8188eu/core/rtw_mlme.c 
> > index cbee02a86d22..ecac6b428154 100644 
> > --- a/drivers/staging/rtl8188eu/core/rtw_mlme.c 
> > +++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c 
> > @@ -1438,7 +1438,7 @@ static int rtw_check_join_candidate(struct 
> mlme_priv *pmlmepriv 
> >                          goto exit; 
> >          } 
> > 
> > -        if (*candidate == NULL || (*candidate)->network.Rssi < 
> competitor->network.Rssi) { 
> > +        if (!(*candidate) || (*candidate)->network.Rssi < 
> competitor->network.Rssi) { 
> >                  *candidate = competitor; 
> >                  updated = true; 
> >          } 
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
> https://groups.google.com/d/msgid/outreachy-kernel/20190318132203.13505-1-sanjana99reddy99%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_1607_1609483121.1552918967179
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Monday, March 18, 2019 at 7:01:21 PM UTC+5:30, =
Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;mar=
gin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Mon, 18 Mar 2019, Sanjana Sanikommu wrote:
<br>
<br>&gt; Replace NULL comparison with &#39;!&#39; in the file rtw_mlme.c
<br>&gt; Issue found by <a href=3D"http://checkpatch.pl" target=3D"_blank" =
rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?=
q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoR=
gUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=3D&#39;ht=
tp://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\=
x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">checkp=
atch.pl</a> semantic patch results for rtw_mlme.c
<br>
<br>You don&#39;t need to add the parentheses.
<br></blockquote><div>I would remove them in next version.</div><div>Thank =
you.</div><div>Sanjana=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;">
<br>julia
<br>
<br>&gt;
<br>&gt; CHECK:Comparision to NULL could be written &quot;!candidate&quot;
<br>&gt;
<br>&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"w62E5JMzDAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">sanjana9...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/rtl8188eu/<wbr>core/rtw_mlme.c | 2 +-
<br>&gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rtl8188eu/<wbr>core/rtw_mlme.c b/driv=
ers/staging/rtl8188eu/<wbr>core/rtw_mlme.c
<br>&gt; index cbee02a86d22..ecac6b428154 100644
<br>&gt; --- a/drivers/staging/rtl8188eu/<wbr>core/rtw_mlme.c
<br>&gt; +++ b/drivers/staging/rtl8188eu/<wbr>core/rtw_mlme.c
<br>&gt; @@ -1438,7 +1438,7 @@ static int rtw_check_join_candidate(<wbr>str=
uct mlme_priv *pmlmepriv
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0goto exit;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (*candidate =
=3D=3D NULL || (*candidate)-&gt;network.Rssi &lt; competitor-&gt;network.Rs=
si) {
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!(*candidate)=
 || (*candidate)-&gt;network.Rssi &lt; competitor-&gt;network.Rssi) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0*candidate =3D competitor;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0updated =3D true;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; --
<br>&gt; 2.17.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"w62E5JMzDAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"w62E5JMzDAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20190318132203.13505-1-sanjana99reddy9=
9%40gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190318132203.1=
3505-1-sanjana99reddy99%40gmail.com&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190318132203.1=
3505-1-sanjana99reddy99%40gmail.com&#39;;return true;">https://groups.googl=
e.com/d/<wbr>msgid/outreachy-kernel/<wbr>20190318132203.13505-1-<wbr>sanjan=
a99reddy99%40gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_1607_1609483121.1552918967179--

------=_Part_1606_1657002384.1552918967179--

