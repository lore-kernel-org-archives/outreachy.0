X-GM-THRID: 6208143559134019584
Date: Thu, 22 Oct 2015 03:30:57 -0700 (PDT)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: navyasri.tech@gmail.com
Message-Id: <ed5e219a-8d33-4c11-a003-211d9da23960@googlegroups.com>
In-Reply-To: <CAEnQRZBqVWVHtc_pRUemU-6qZMmbD90TzuGsWe-5Xuh63mXG2A@mail.gmail.com>
References: <cover.1445445320.git.navyasri.tech@gmail.com>
 <b2831ecccc09c2e69d330c453f911d8a0ae61e0f.1445445320.git.navyasri.tech@gmail.com>
 <CAEnQRZBqVWVHtc_pRUemU-6qZMmbD90TzuGsWe-5Xuh63mXG2A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/5] Staging: xgifb: Add space
 between ; and variable name
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_787_1161446475.1445509857665"
X-Google-Token: EOH1orEF-RDEoTQi8Yw0
X-Google-IP: 27.6.34.222

------=_Part_787_1161446475.1445509857665
Content-Type: multipart/alternative; 
	boundary="----=_Part_788_1149586504.1445509857665"

------=_Part_788_1149586504.1445509857665
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Thursday, October 22, 2015 at 2:08:02 PM UTC+5:30, Daniel Baluta wrote:
>
> On Wed, Oct 21, 2015 at 7:48 PM, Navya Sri Nizamkari 
> <navyas...@gmail.com <javascript:>> wrote: 
> > This patch fixes the checkpatch.pl error: 
> > 
> > ERROR: space required after that ';' 
> > 
> > Signed-off-by: Navya Sri Nizamkari <navyas...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/xgifb/vb_init.c | 2 +- 
> >  1 file changed, 1 insertion(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/xgifb/vb_init.c 
> b/drivers/staging/xgifb/vb_init.c 
> > index ea358a0..6204a98 100644 
> > --- a/drivers/staging/xgifb/vb_init.c 
> > +++ b/drivers/staging/xgifb/vb_init.c 
> > @@ -10,7 +10,7 @@ static const unsigned short 
> XGINew_DDRDRAM_TYPE340[4][2] = { 
> >         { 16, 0x45}, 
> >         {  8, 0x35}, 
> >         {  4, 0x31}, 
> > -       {  2, 0x21} };e 
> > +       {  2, 0x21} }; e 
>
> Hmm, something went wrong here :) 
>
> Please edit the file and remove 'e' after ';'. Otherwise, your code 
> wouldn't even compile. 
>
> thanks, 
> Daniel. 
>

This 'e' seems the typo introduced by me. Sorry. Thanks for the correction. 

------=_Part_788_1149586504.1445509857665
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Thursday, October 22, 2015 at 2:08:02 PM UTC+5:30, Daniel Baluta=
 wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.=
8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Wed, Oct 21, 2015 at=
 7:48 PM, Navya Sri Nizamkari
<br>&lt;<a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-mailto=3D"=
jEXXWoAHDgAJ" rel=3D"nofollow">navyas...@gmail.com</a>&gt; wrote:
<br>&gt; This patch fixes the <a href=3D"http://checkpatch.pl" target=3D"_b=
lank" rel=3D"nofollow">checkpatch.pl</a> error:
<br>&gt;
<br>&gt; ERROR: space required after that &#39;;&#39;
<br>&gt;
<br>&gt; Signed-off-by: Navya Sri Nizamkari &lt;<a href=3D"javascript:" tar=
get=3D"_blank" gdf-obfuscated-mailto=3D"jEXXWoAHDgAJ" rel=3D"nofollow">navy=
as...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/xgifb/vb_<wbr>init.c | 2 +-
<br>&gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/xgifb/vb_<wbr>init.c b/drivers/stagin=
g/xgifb/vb_<wbr>init.c
<br>&gt; index ea358a0..6204a98 100644
<br>&gt; --- a/drivers/staging/xgifb/vb_<wbr>init.c
<br>&gt; +++ b/drivers/staging/xgifb/vb_<wbr>init.c
<br>&gt; @@ -10,7 +10,7 @@ static const unsigned short XGINew_DDRDRAM_TYPE3=
40[4][2] =3D {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 { 16, 0x45},
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 { =C2=A08, 0x35},
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 { =C2=A04, 0x31},
<br>&gt; - =C2=A0 =C2=A0 =C2=A0 { =C2=A02, 0x21} };e
<br>&gt; + =C2=A0 =C2=A0 =C2=A0 { =C2=A02, 0x21} }; e
<br>
<br>Hmm, something went wrong here :)
<br>
<br>Please edit the file and remove &#39;e&#39; after &#39;;&#39;. Otherwis=
e, your code
<br>wouldn&#39;t even compile.
<br>
<br>thanks,
<br>Daniel.
<br></blockquote><div><br>This &#39;e&#39; seems the typo introduced by me.=
 Sorry. Thanks for the correction. <br></div>
------=_Part_788_1149586504.1445509857665--

------=_Part_787_1161446475.1445509857665--

