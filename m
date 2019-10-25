X-GM-THRID: 6749323707377778688
Date: Thu, 24 Oct 2019 22:49:06 -0700 (PDT)
From: Javier Arias <jarias.linux@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <aebb6e6e-5415-4e97-95f5-f882ee01f88c@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1910190832180.2701@hadrien>
References: <cover.1571448899.git.jarias.linux@gmail.com> <eaa22be21885d04e47f1be2ad7be007182bf22bc.1571448899.git.jarias.linux@gmail.com>
 <alpine.DEB.2.21.1910190832180.2701@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: rtl8723bs: Fix line
 over 80 characters
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_123_292713386.1571982546638"
X-Google-Token: ENKZyu0F_LkfbqRNgUU0
X-Google-IP: 190.27.30.48

------=_Part_123_292713386.1571982546638
Content-Type: multipart/alternative; 
	boundary="----=_Part_124_1120112838.1571982546638"

------=_Part_124_1120112838.1571982546638
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello again Julia,

I updated the patch but I didn't receive any feedback nor acceptance by 
Greg. Is there something I'm doing wrong?

Thanks

On Saturday, 19 October 2019 01:34:08 UTC-5, Julia Lawall wrote:
>
>
>
> On Fri, 18 Oct 2019, Javier F. Arias wrote: 
>
> > Fix line over 80 characters by wrapping arguments in function call. 
> > Fix suggested by Julia Lawall <julia...@lip6.fr <javascript:>>. 
>
> There is a Suggested-by: tag that would be better to use than the second 
> line.  That would limit the log message to what you are doing and why. 
>
> julia 
>
> > 
> > Signed-off-by: Javier F. Arias <jaria...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 4 +++- 
> >  1 file changed, 3 insertions(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c 
> b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c 
> > index c514cb735afd..0c2f3b2d4326 100644 
> > --- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c 
> > +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c 
> > @@ -188,7 +188,9 @@ void rtl8723b_HalDmWatchDog(struct adapter *Adapter) 
> > 
> >                  bBtDisabled = hal_btcoex_IsBtDisabled(Adapter); 
> > 
> > -                ODM_CmnInfoUpdate(&pHalData->odmpriv, 
> ODM_CMNINFO_BT_ENABLED, ((bBtDisabled == true)?false:true)); 
> > +                ODM_CmnInfoUpdate(&pHalData->odmpriv, 
> > +                                  ODM_CMNINFO_BT_ENABLED, 
> > +                                  ((bBtDisabled == true)?false:true)); 
> > 
> >                  ODM_DMWatchdog(&pHalData->odmpriv); 
> >          } 
> > -- 
> > 2.20.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreach...@googlegroups.com <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/eaa22be21885d04e47f1be2ad7be007182bf22bc.1571448899.git.jarias.linux%40gmail.com. 
>
> > 
>

------=_Part_124_1120112838.1571982546638
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello again Julia,</div><div><br></div><div>I updated=
 the patch but I didn&#39;t receive any feedback nor acceptance by Greg. Is=
 there something I&#39;m doing wrong?</div><div><br></div><div>Thanks<br></=
div><br>On Saturday, 19 October 2019 01:34:08 UTC-5, Julia Lawall  wrote:<b=
lockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;borde=
r-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Fri, 18 Oct 2019, Javier F. Arias wrote:
<br>
<br>&gt; Fix line over 80 characters by wrapping arguments in function call=
.
<br>&gt; Fix suggested by Julia Lawall &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"8aIlVPPCCwAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">julia...@lip6.fr</a>&gt;.
<br>
<br>There is a Suggested-by: tag that would be better to use than the secon=
d
<br>line. =C2=A0That would limit the log message to what you are doing and =
why.
<br>
<br>julia
<br>
<br>&gt;
<br>&gt; Signed-off-by: Javier F. Arias &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"8aIlVPPCCwAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">jaria...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/rtl8723bs/<wbr>hal/rtl8723b_dm.c | 4 +++-
<br>&gt; =C2=A01 file changed, 3 insertions(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rtl8723bs/<wbr>hal/rtl8723b_dm.c b/dr=
ivers/staging/rtl8723bs/<wbr>hal/rtl8723b_dm.c
<br>&gt; index c514cb735afd..0c2f3b2d4326 100644
<br>&gt; --- a/drivers/staging/rtl8723bs/<wbr>hal/rtl8723b_dm.c
<br>&gt; +++ b/drivers/staging/rtl8723bs/<wbr>hal/rtl8723b_dm.c
<br>&gt; @@ -188,7 +188,9 @@ void rtl8723b_HalDmWatchDog(struct adapter *Ad=
apter)
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bBtDisabled =3D hal_btcoex_IsBtDisabled=
(<wbr>Adapter);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ODM_<wbr>CmnInfoUpdate(&amp;pHalData-&gt;<=
wbr>odmpriv, ODM_CMNINFO_BT_ENABLED, ((bBtDisabled =3D=3D true)?false:true)=
);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ODM_<wbr>CmnInfoUpdate(&amp;pHalData-&gt;<=
wbr>odmpriv,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0ODM_CMNIN=
FO_BT_ENABLED,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0((bBtDisa=
bled =3D=3D true)?false:true));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ODM_<wbr>DMWatchdog(&amp;pHalData-&gt;o=
dmpriv)<wbr>;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; --
<br>&gt; 2.20.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"8aIlVPPCCwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreach...@<wbr>googlegroups.com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/eaa22be21885d04e47f1be2ad7be007182bf22=
bc.1571448899.git.jarias.linux%40gmail.com" target=3D"_blank" rel=3D"nofoll=
ow" onmousedown=3D"this.href=3D&#39;https://groups.google.com/d/msgid/outre=
achy-kernel/eaa22be21885d04e47f1be2ad7be007182bf22bc.1571448899.git.jarias.=
linux%40gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;https://gr=
oups.google.com/d/msgid/outreachy-kernel/eaa22be21885d04e47f1be2ad7be007182=
bf22bc.1571448899.git.jarias.linux%40gmail.com&#39;;return true;">https://g=
roups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>eaa22be21885d04e47f1be2=
ad7be00<wbr>7182bf22bc.1571448899.git.<wbr>jarias.linux%40gmail.com</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_124_1120112838.1571982546638--

------=_Part_123_292713386.1571982546638--

