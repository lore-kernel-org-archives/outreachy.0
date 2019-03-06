X-GM-THRID: 6664742734726692864
Date: Tue, 5 Mar 2019 18:17:24 -0800 (PST)
From: etsai042@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <5669cebf-38b9-43a2-8175-6584a0603adf@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903050832240.2551@hadrien>
References: <20190305032535.osg6wtrk2v4x6nfo@debian.etsai.site>
 <alpine.DEB.2.21.1903050832240.2551@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging: r8712u: Replace '--help--'
 with 'help'
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_56_1820110359.1551838644909"
X-Google-Token: ELTb_OMFzHnPYGC2r2s0
X-Google-IP: 128.199.125.193

------=_Part_56_1820110359.1551838644909
Content-Type: multipart/alternative; 
	boundary="----=_Part_57_2022764113.1551838644910"

------=_Part_57_2022764113.1551838644910
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Julia, thanks for the advice! Is it better that I resubmit this patch to=
=20
specify indentation change?

Wentao

=E5=9C=A8 2019=E5=B9=B43=E6=9C=884=E6=97=A5=E6=98=9F=E6=9C=9F=E4=B8=80 UTC-=
8=E4=B8=8B=E5=8D=8811:33:33=EF=BC=8CJulia Lawall=E5=86=99=E9=81=93=EF=BC=9A
>
>
>
> On Mon, 4 Mar 2019, Wentao Cai wrote:=20
>
> > This patch replace '--help--' in Kconfig to silence checkpatch.pl=20
> > warning:=20
> > WARNING: prefer 'help' over '---help---' for new help texts=20
>
> Actually, you also indented the subsequent text.  That is what hits the=
=20
> eye first whenone looks at the patch, so it could be good to mention it.=
=20
> I didn't see the help change in the first hunk at first glance, so I=20
> thought you had included some extraneous change in the patch.=20
>
> julia=20
>
> >=20
> > Signed-off-by: Wentao Cai <etsa...@gmail.com <javascript:>>=20
> > ---=20
> >  drivers/staging/rtl8712/Kconfig | 10 +++++-----=20
> >  1 file changed, 5 insertions(+), 5 deletions(-)=20
> >=20
> > diff --git a/drivers/staging/rtl8712/Kconfig=20
> b/drivers/staging/rtl8712/Kconfig=20
> > index f160eee52f09..622ad14f232c 100644=20
> > --- a/drivers/staging/rtl8712/Kconfig=20
> > +++ b/drivers/staging/rtl8712/Kconfig=20
> > @@ -4,14 +4,14 @@ config R8712U=20
> >          select WIRELESS_EXT=20
> >          select WEXT_PRIV=20
> >          select FW_LOADER=20
> > -        ---help---=20
> > -        This option adds the Realtek RTL8712 USB device such as the=20
> D-Link DWA-130.=20
> > -        If built as a module, it will be called r8712u.=20
> > +        help=20
> > +            This option adds the Realtek RTL8712 USB device such as th=
e=20
> D-Link DWA-130.=20
> > +            If built as a module, it will be called r8712u.=20
> >=20
> >  config R8712_TX_AGGR=20
> >          bool "Realtek RTL8712U Transmit Aggregation code"=20
> >          depends on R8712U && BROKEN=20
> > -        ---help---=20
> > -        This option provides transmit aggregation for the Realtek=20
> RTL8712 USB device.=20
> > +        help=20
> > +            This option provides transmit aggregation for the Realtek=
=20
> RTL8712 USB device.=20
> >=20
> >=20
> > --=20
> > 2.11.0=20
> >=20
> > --=20
> > You received this message because you are subscribed to the Google=20
> Groups "outreachy-kernel" group.=20
> > To unsubscribe from this group and stop receiving emails from it, send=
=20
> an email to outreachy-kern...@googlegroups.com <javascript:>.=20
> > To post to this group, send email to outreach...@googlegroups.com=20
> <javascript:>.=20
> > To view this discussion on the web visit=20
> https://groups.google.com/d/msgid/outreachy-kernel/20190305032535.osg6wtr=
k2v4x6nfo%40debian.etsai.site.=20
>
> > For more options, visit https://groups.google.com/d/optout.=20
> >=20
>

------=_Part_57_2022764113.1551838644910
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Julia, thanks for the advice! Is it better that I resub=
mit this patch to specify=C2=A0indentation change?<div><br></div><div>Wenta=
o<br><br>=E5=9C=A8 2019=E5=B9=B43=E6=9C=884=E6=97=A5=E6=98=9F=E6=9C=9F=E4=
=B8=80 UTC-8=E4=B8=8B=E5=8D=8811:33:33=EF=BC=8CJulia Lawall=E5=86=99=E9=81=
=93=EF=BC=9A<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-lef=
t: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Mon, 4 Mar 2019, Wentao Cai wrote:
<br>
<br>&gt; This patch replace &#39;--help--&#39; in Kconfig to silence <a hre=
f=3D"http://checkpatch.pl" target=3D"_blank" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch=
.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#3=
9;;return true;" onclick=3D"this.href=3D&#39;http://www.google.com/url?q\x3=
dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgH=
q29dhmk72L974NI3_mFug&#39;;return true;">checkpatch.pl</a>
<br>&gt; warning:
<br>&gt; WARNING: prefer &#39;help&#39; over &#39;---help---&#39; for new h=
elp texts
<br>
<br>Actually, you also indented the subsequent text. =C2=A0That is what hit=
s the
<br>eye first whenone looks at the patch, so it could be good to mention it=
.
<br>I didn&#39;t see the help change in the first hunk at first glance, so =
I
<br>thought you had included some extraneous change in the patch.
<br>
<br>julia
<br>
<br>&gt;
<br>&gt; Signed-off-by: Wentao Cai &lt;<a href=3D"javascript:" target=3D"_b=
lank" gdf-obfuscated-mailto=3D"zUHgWk3VCQAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">etsa...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/rtl8712/<wbr>Kconfig | 10 +++++-----
<br>&gt; =C2=A01 file changed, 5 insertions(+), 5 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rtl8712/<wbr>Kconfig b/drivers/stagin=
g/rtl8712/<wbr>Kconfig
<br>&gt; index f160eee52f09..622ad14f232c 100644
<br>&gt; --- a/drivers/staging/rtl8712/<wbr>Kconfig
<br>&gt; +++ b/drivers/staging/rtl8712/<wbr>Kconfig
<br>&gt; @@ -4,14 +4,14 @@ config R8712U
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0select WIREL=
ESS_EXT
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0select WEXT_=
PRIV
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0select FW_LO=
ADER
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0---help---
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0This option adds =
the Realtek RTL8712 USB device such as the D-Link DWA-130.
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0If built as a mod=
ule, it will be called r8712u.
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0help
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0Thi=
s option adds the Realtek RTL8712 USB device such as the D-Link DWA-130.
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0If =
built as a module, it will be called r8712u.
<br>&gt;
<br>&gt; =C2=A0config R8712_TX_AGGR
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool &quot;R=
ealtek RTL8712U Transmit Aggregation code&quot;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0depends on R=
8712U &amp;&amp; BROKEN
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0---help---
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0This option provi=
des transmit aggregation for the Realtek RTL8712 USB device.
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0help
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0Thi=
s option provides transmit aggregation for the Realtek RTL8712 USB device.
<br>&gt;
<br>&gt;
<br>&gt; --
<br>&gt; 2.11.0
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"zUHgWk3VCQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"zUHgWk3VCQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20190305032535.osg6wtrk2v4x6nfo%40debi=
an.etsai.site" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190305032535.o=
sg6wtrk2v4x6nfo%40debian.etsai.site&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190305032535.o=
sg6wtrk2v4x6nfo%40debian.etsai.site&#39;;return true;">https://groups.googl=
e.com/d/<wbr>msgid/outreachy-kernel/<wbr>20190305032535.<wbr>osg6wtrk2v4x6n=
fo%40debian.<wbr>etsai.site</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div></div>
------=_Part_57_2022764113.1551838644910--

------=_Part_56_1820110359.1551838644909--

