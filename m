X-GM-THRID: 6669762778998243328
Date: Mon, 18 Mar 2019 10:50:24 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <7fcca53d-c6b3-4724-b224-c80ba30c6a8a@googlegroups.com>
In-Reply-To: <20190318174007.GA22001@kroah.com>
References: <20190318160542.2803-1-sanjana99reddy99@gmail.com>
 <20190318174007.GA22001@kroah.com>
Subject: Re: [PATCH] Staging: rtl8188eu: core: rtw_efuse.c: Line over 80
 characters.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1594_1442922460.1552931440749"
X-Google-Token: EOC0v-QFadIAnl0nR5A0
X-Google-IP: 203.109.108.32

------=_Part_1594_1442922460.1552931440749
Content-Type: multipart/alternative; 
	boundary="----=_Part_1595_1659717600.1552931440750"

------=_Part_1595_1659717600.1552931440750
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Monday, March 18, 2019 at 11:10:10 PM UTC+5:30, gregkh wrote:
>
> On Mon, Mar 18, 2019 at 09:35:42PM +0530, Sanjana Sanikommu wrote: 
> > Fix coding style issues, which solves checkpatch.pl warning: 
> > "WARNING: line over 80 characters". 
> > 
> > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/rtl8188eu/core/rtw_efuse.c | 9 ++++++--- 
> >  1 file changed, 6 insertions(+), 3 deletions(-) 
> > 
> > diff --git a/drivers/staging/rtl8188eu/core/rtw_efuse.c 
> b/drivers/staging/rtl8188eu/core/rtw_efuse.c 
> > index 51c3dd6d7ffb..a5d34b85d9c5 100644 
> > --- a/drivers/staging/rtl8188eu/core/rtw_efuse.c 
> > +++ b/drivers/staging/rtl8188eu/core/rtw_efuse.c 
> > @@ -794,13 +794,16 @@ bool Efuse_PgPacketWrite(struct adapter *pAdapter, 
> u8 offset, u8 word_en, u8 *pD 
> >   
> >          hal_EfuseConstructPGPkt(offset, word_en, pData, &targetPkt); 
> >   
> > -        if (!hal_EfusePartialWriteCheck(pAdapter, efuseType, 
> &startAddr, &targetPkt)) 
> > +        if (!hal_EfusePartialWriteCheck(pAdapter, efuseType, 
> > +                                        &startAddr, &targetPkt)) 
>
> Why not use the full line: 
>
To fix coding style issue I thought of splitting the line over 80 chars.

        if (!hal_EfusePartialWriteCheck(pAdapter, efuseType, &startAddr, 
>                                         &targetPkt)) 
>
> Only wrap where you _have_ to wrap, don't make lines shorter than they 
> have to unless it makes a lot of sense to.


Fine I would put them in single line.
Thank you
Sanjana 

>
>
> thanks, 
>
> greg k-h 
>

------=_Part_1595_1659717600.1552931440750
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Monday, March 18, 2019 at 11:10:10 PM UTC+5:30,=
 gregkh wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-l=
eft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Mon, Mar 18, =
2019 at 09:35:42PM +0530, Sanjana Sanikommu wrote:
<br>&gt; Fix coding style issues, which solves <a href=3D"http://checkpatch=
.pl" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
p://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x=
3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=
=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch=
.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#3=
9;;return true;">checkpatch.pl</a> warning:
<br>&gt; &quot;WARNING: line over 80 characters&quot;.
<br>&gt;=20
<br>&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"5y0uCyhBDAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">sanjana9...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/rtl8188eu/<wbr>core/rtw_efuse.c | 9 ++++++--=
-
<br>&gt; =C2=A01 file changed, 6 insertions(+), 3 deletions(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/rtl8188eu/<wbr>core/rtw_efuse.c b/dri=
vers/staging/rtl8188eu/<wbr>core/rtw_efuse.c
<br>&gt; index 51c3dd6d7ffb..a5d34b85d9c5 100644
<br>&gt; --- a/drivers/staging/rtl8188eu/<wbr>core/rtw_efuse.c
<br>&gt; +++ b/drivers/staging/rtl8188eu/<wbr>core/rtw_efuse.c
<br>&gt; @@ -794,13 +794,16 @@ bool Efuse_PgPacketWrite(struct adapter *pAd=
apter, u8 offset, u8 word_en, u8 *pD
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0hal_<wbr>Efu=
seConstructPGPkt(offset, word_en, pData, &amp;targetPkt);
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!hal_EfusePar=
tialWriteCheck(<wbr>pAdapter, efuseType, &amp;startAddr, &amp;targetPkt))
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!hal_EfusePar=
tialWriteCheck(<wbr>pAdapter, efuseType,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&amp;startAddr, &amp;targetPkt))
<br>
<br>Why not use the full line:
<br></blockquote><div>To fix coding style issue I thought of splitting the =
line over 80 chars.</div><div><br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-le=
ft: 1ex;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!hal_EfusePar=
tialWriteCheck(<wbr>pAdapter, efuseType, &amp;startAddr,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0&amp;targetPkt))
<br>
<br>Only wrap where you _have_ to wrap, don&#39;t make lines shorter than t=
hey
<br>have to unless it makes a lot of sense to.</blockquote><div><br></div><=
div>Fine I would put them in single line.</div><div>Thank you</div><div>San=
jana=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin=
-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>thanks,
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_1595_1659717600.1552931440750--

------=_Part_1594_1442922460.1552931440749--

