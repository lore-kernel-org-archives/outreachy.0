X-GM-THRID: 6744681878871080960
Date: Sun, 6 Oct 2019 14:15:44 -0700 (PDT)
From: Javier Arias <jarias.linux@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <42d53c83-8aea-43c3-8095-e46577a1fcb4@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1910061557170.2515@hadrien>
References: <20191006133016.GA22297@gmail.com>
 <alpine.DEB.2.21.1910061557170.2515@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove
 unnecessary braces
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_860_1270208420.1570396544272"
X-Google-Token: EICz6ewFFuR-G5rJLKc0
X-Google-IP: 67.21.32.110

------=_Part_860_1270208420.1570396544272
Content-Type: multipart/alternative; 
	boundary="----=_Part_861_439925684.1570396544272"

------=_Part_861_439925684.1570396544272
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Sorry seems like I answered with a direct email instead of the mail list, 
so here it goes again:

Hello Julia,

Thanks for your feedback. I'm checking the return values and it seems like 
the Realtek driver files would use them internally throughout the code, and 
not returned to the system. They are defined in the following header file:

drivers/staging/rtl8723bs/include/osdep_service.h
>
 

>  11 #define _FAIL           0
>  12 #define _SUCCESS        1
>  13 #define RTW_RX_HANDLED 2
>

Should I do something with them?

On Sunday, 6 October 2019 08:58:26 UTC-5, Julia Lawall wrote:
>
>
>
> On Sun, 6 Oct 2019, Javier F. Arias wrote: 
>
> > Remove unnecessary braces for single statement block. 
> > Issue found by checkpatch. 
> > 
> > Signed-off-by: Javier F. Arias <jaria...@gmail.com <javascript:>> 
>
> Acked-by: Julia Lawall <julia...@lip6.fr <javascript:>> 
>
> The patch looks fine.  To go further with this code, you could see whether 
> the function can return more standdard kernel return values: typically 0 
> for succes and -ENOMEM etc for various kinds of failure. 
>
> julia 
>
> > --- 
> >  drivers/staging/rtl8723bs/core/rtw_xmit.c | 3 +-- 
> >  1 file changed, 1 insertion(+), 2 deletions(-) 
> > 
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c 
> b/drivers/staging/rtl8723bs/core/rtw_xmit.c 
> > index b5dcb78fb4f4..29acbb1ee869 100644 
> > --- a/drivers/staging/rtl8723bs/core/rtw_xmit.c 
> > +++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c 
> > @@ -3022,9 +3022,8 @@ int rtw_sctx_wait(struct submit_ctx *sctx, const 
> char *msg) 
> >                  status = sctx->status; 
> >          } 
> > 
> > -        if (status == RTW_SCTX_DONE_SUCCESS) { 
> > +        if (status == RTW_SCTX_DONE_SUCCESS) 
> >                  ret = _SUCCESS; 
> > -        } 
> > 
> >          return ret; 
> >  } 
> > -- 
> > 2.20.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreach...@googlegroups.com <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20191006133016.GA22297%40gmail.com. 
>
> > 
>

------=_Part_861_439925684.1570396544272
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sorry seems like I answered with a direct email inste=
ad of the mail list, so here it goes again:<br></div><div><br></div><div>He=
llo Julia,</div><div><br></div><div>Thanks for your feedback. I&#39;m
 checking the return values and it seems like the Realtek driver files=20
would use them internally throughout the code, and not returned to the=20
system. They are defined in the following header file:</div><div><br></div>=
<blockquote class=3D"gmail_quote" style=3D"border-left: 1px solid rgb(204, =
204, 204); padding-left: 1ex;"><div>drivers/staging/rtl8723bs/<wbr>include/=
osdep_service.h</div></blockquote><div>=C2=A0</div><blockquote class=3D"gma=
il_quote" style=3D"border-left: 1px solid rgb(204, 204, 204); padding-left:=
 1ex;"><div>=C2=A011 #define _FAIL =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0<br>=
=C2=A012 #define _SUCCESS =C2=A0 =C2=A0 =C2=A0 =C2=A01<br>=C2=A013 #define =
RTW_RX_HANDLED 2</div></blockquote><div><br></div>Should I do something wit=
h them?<br><br>On Sunday, 6 October 2019 08:58:26 UTC-5, Julia Lawall  wrot=
e:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;b=
order-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sun, 6 Oct 2019, Javier F. Arias wrote:
<br>
<br>&gt; Remove unnecessary braces for single statement block.
<br>&gt; Issue found by checkpatch.
<br>&gt;
<br>&gt; Signed-off-by: Javier F. Arias &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"l7_LzE-WCQAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">jaria...@gmail.com</a>&gt;
<br>
<br>Acked-by: Julia Lawall &lt;<a href=3D"javascript:" target=3D"_blank" gd=
f-obfuscated-mailto=3D"l7_LzE-WCQAJ" rel=3D"nofollow" onmousedown=3D"this.h=
ref=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javas=
cript:&#39;;return true;">julia...@lip6.fr</a>&gt;
<br>
<br>The patch looks fine. =C2=A0To go further with this code, you could see=
 whether
<br>the function can return more standdard kernel return values: typically =
0
<br>for succes and -ENOMEM etc for various kinds of failure.
<br>
<br>julia
<br>
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/rtl8723bs/<wbr>core/rtw_xmit.c | 3 +--
<br>&gt; =C2=A01 file changed, 1 insertion(+), 2 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rtl8723bs/<wbr>core/rtw_xmit.c b/driv=
ers/staging/rtl8723bs/<wbr>core/rtw_xmit.c
<br>&gt; index b5dcb78fb4f4..29acbb1ee869 100644
<br>&gt; --- a/drivers/staging/rtl8723bs/<wbr>core/rtw_xmit.c
<br>&gt; +++ b/drivers/staging/rtl8723bs/<wbr>core/rtw_xmit.c
<br>&gt; @@ -3022,9 +3022,8 @@ int rtw_sctx_wait(struct submit_ctx *sctx, c=
onst char *msg)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3D sctx-&gt;status;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (status =3D=3D=
 RTW_SCTX_DONE_SUCCESS) {
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (status =3D=3D=
 RTW_SCTX_DONE_SUCCESS)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D _SUCCESS;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
<br>&gt; =C2=A0}
<br>&gt; --
<br>&gt; 2.20.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"l7_LzE-WCQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreach...@<wbr>googlegroups.com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20191006133016.GA22297%40gmail.com" ta=
rget=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https://gr=
oups.google.com/d/msgid/outreachy-kernel/20191006133016.GA22297%40gmail.com=
&#39;;return true;" onclick=3D"this.href=3D&#39;https://groups.google.com/d=
/msgid/outreachy-kernel/20191006133016.GA22297%40gmail.com&#39;;return true=
;">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20191006133=
016.GA22297%<wbr>40gmail.com</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_861_439925684.1570396544272--

------=_Part_860_1270208420.1570396544272--

