X-GM-THRID: 6669714716866117632
Date: Mon, 18 Mar 2019 07:18:22 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <ae7735c2-447b-4f77-bf07-c62722772c8e@googlegroups.com>
In-Reply-To: <20190318135521.GA7342@kroah.com>
References: <20190318125918.13149-1-sanjana99reddy99@gmail.com>
 <20190318135521.GA7342@kroah.com>
Subject: Re: [PATCH] Staging: rtl8188eu: core: rtw_mlme.c: Fix unbalanced
 braces around else.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1591_1997322923.1552918702595"
X-Google-Token: EK7RvuQF8CSOfxmFYgk0
X-Google-IP: 203.109.108.32

------=_Part_1591_1997322923.1552918702595
Content-Type: multipart/alternative; 
	boundary="----=_Part_1592_1837841024.1552918702595"

------=_Part_1592_1837841024.1552918702595
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Monday, March 18, 2019 at 7:25:25 PM UTC+5:30, gregkh wrote:
>
> On Mon, Mar 18, 2019 at 06:29:18PM +0530, Sanjana Sanikommu wrote: 
> > Fix unbalanced braces after else statement. 
> > Issue found by checkpatch.pl semantic patch results for rtw_mlme.c 
> > 
> > CHECK: Unbalanced braces around else statement. 
> > 
> > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/rtl8188eu/core/rtw_mlme.c | 4 ++-- 
> >  1 file changed, 2 insertions(+), 2 deletions(-) 
> > 
> > diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c 
> b/drivers/staging/rtl8188eu/core/rtw_mlme.c 
> > index ca0cf8a86671..cbee02a86d22 100644 
> > --- a/drivers/staging/rtl8188eu/core/rtw_mlme.c 
> > +++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c 
> > @@ -1111,9 +1111,9 @@ static u8 search_max_mac_id(struct adapter 
> *padapter) 
> >                                  break; 
> >                  } 
> >                  mac_id = aid + 1; 
> > -        } else 
> > +        } else { 
> >  #endif 
> > -        {/* adhoc  id =  31~2 */ 
> > +/* adhoc  id =  31~2 */ 
>
> Never put anything in the first column within a function, unless it is a 
> jump label.  This isn't ok, but most importantly, I think you broke the 
> build.  The { is in that location for a reason, due to the #endif above 
> it, and can not be changed. 
>
> Please always think about the checkpatch changes you are making and do 
> not just blindly do them. 
>

Thanks for letting me know. I would drop them :)

Sanjana

>
> thanks, 
>
> greg k-h 
>

------=_Part_1592_1837841024.1552918702595
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Monday, March 18, 2019 at 7:25:25 PM UTC+5:30, =
gregkh wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-le=
ft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Mon, Mar 18, 2=
019 at 06:29:18PM +0530, Sanjana Sanikommu wrote:
<br>&gt; Fix unbalanced braces after else statement.
<br>&gt; Issue found by <a href=3D"http://checkpatch.pl" target=3D"_blank" =
rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?=
q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoR=
gUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=3D&#39;ht=
tp://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\=
x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">checkp=
atch.pl</a> semantic patch results for rtw_mlme.c
<br>&gt;=20
<br>&gt; CHECK: Unbalanced braces around else statement.
<br>&gt;=20
<br>&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"nniVVOQ0DAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">sanjana9...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/rtl8188eu/<wbr>core/rtw_mlme.c | 4 ++--
<br>&gt; =C2=A01 file changed, 2 insertions(+), 2 deletions(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/rtl8188eu/<wbr>core/rtw_mlme.c b/driv=
ers/staging/rtl8188eu/<wbr>core/rtw_mlme.c
<br>&gt; index ca0cf8a86671..cbee02a86d22 100644
<br>&gt; --- a/drivers/staging/rtl8188eu/<wbr>core/rtw_mlme.c
<br>&gt; +++ b/drivers/staging/rtl8188eu/<wbr>core/rtw_mlme.c
<br>&gt; @@ -1111,9 +1111,9 @@ static u8 search_max_mac_id(struct adapter *=
padapter)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mac_id =3D aid + 1;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
<br>&gt; =C2=A0#endif
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{/* adhoc =C2=A0i=
d =3D =C2=A031~2 */
<br>&gt; +/* adhoc =C2=A0id =3D =C2=A031~2 */
<br>
<br>Never put anything in the first column within a function, unless it is =
a
<br>jump label. =C2=A0This isn&#39;t ok, but most importantly, I think you =
broke the
<br>build. =C2=A0The { is in that location for a reason, due to the #endif =
above
<br>it, and can not be changed.
<br>
<br>Please always think about the checkpatch changes you are making and do
<br>not just blindly do them.
<br></blockquote><div><br></div><div>Thanks for letting me know. I would dr=
op them :)</div><div><br></div><div>Sanjana</div><blockquote class=3D"gmail=
_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;p=
adding-left: 1ex;"><br>thanks,
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_1592_1837841024.1552918702595--

------=_Part_1591_1997322923.1552918702595--

