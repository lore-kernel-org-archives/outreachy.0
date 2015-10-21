X-GM-THRID: 6208125602285748224
Date: Wed, 21 Oct 2015 10:00:04 -0700 (PDT)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: navyasri.tech@gmail.com
Message-Id: <dc6ae6b3-9f12-4ec3-a6b8-016f91a81c8e@googlegroups.com>
In-Reply-To: <20151021160754.GA24814@kroah.com>
References: <20151021153800.GA3140@navya>
 <20151021160754.GA24814@kroah.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: xgifb: Replace udelay
 function with usleep_range
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_6184_1137459990.1445446804371"
X-Google-Token: EJSJn7EFsP9O-pF5jXo0
X-Google-IP: 27.6.33.173

------=_Part_6184_1137459990.1445446804371
Content-Type: multipart/alternative; 
	boundary="----=_Part_6185_1796018505.1445446804371"

------=_Part_6185_1796018505.1445446804371
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Wednesday, October 21, 2015 at 9:37:55 PM UTC+5:30, gregkh wrote:
>
> On Wed, Oct 21, 2015 at 09:08:00PM +0530, Navya Sri Nizamkari wrote: 
> > This patch fixes the checkpatch.pl check: 
> > 
> > CHECK: usleep_range is preferred over udelay 
> > 
> > Signed-off-by: Navya Sri Nizamkari <navyas...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/xgifb/vb_init.c | 78 
> ++++++++++++++++++++--------------------- 
> >  1 file changed, 39 insertions(+), 39 deletions(-) 
> > 
> > diff --git a/drivers/staging/xgifb/vb_init.c 
> b/drivers/staging/xgifb/vb_init.c 
> > index 2b233af..ea358a0 100644 
> > --- a/drivers/staging/xgifb/vb_init.c 
> > +++ b/drivers/staging/xgifb/vb_init.c 
> > @@ -10,7 +10,7 @@ static const unsigned short 
> XGINew_DDRDRAM_TYPE340[4][2] = { 
> >          { 16, 0x45}, 
> >          {  8, 0x35}, 
> >          {  4, 0x31}, 
> > -        {  2, 0x21} }; 
> > +        {  2, 0x21} };e 
>
> I don't think you build this patch :( 
>

I'm sorry about that. I'll update and send in a new version of the patch 
which doesn't break the build. 

------=_Part_6185_1796018505.1445446804371
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Wednesday, October 21, 2015 at 9:37:55 PM UTC+5:30, gregkh wrote=
:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;bo=
rder-left: 1px #ccc solid;padding-left: 1ex;">On Wed, Oct 21, 2015 at 09:08=
:00PM +0530, Navya Sri Nizamkari wrote:
<br>&gt; This patch fixes the <a href=3D"http://checkpatch.pl" target=3D"_b=
lank" rel=3D"nofollow">checkpatch.pl</a> check:
<br>&gt;=20
<br>&gt; CHECK: usleep_range is preferred over udelay
<br>&gt;=20
<br>&gt; Signed-off-by: Navya Sri Nizamkari &lt;<a href=3D"javascript:" tar=
get=3D"_blank" gdf-obfuscated-mailto=3D"HBkOknjRDQAJ" rel=3D"nofollow">navy=
as...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/xgifb/vb_<wbr>init.c | 78 ++++++++++++++++++=
++----------<wbr>-----------
<br>&gt; =C2=A01 file changed, 39 insertions(+), 39 deletions(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/xgifb/vb_<wbr>init.c b/drivers/stagin=
g/xgifb/vb_<wbr>init.c
<br>&gt; index 2b233af..ea358a0 100644
<br>&gt; --- a/drivers/staging/xgifb/vb_<wbr>init.c
<br>&gt; +++ b/drivers/staging/xgifb/vb_<wbr>init.c
<br>&gt; @@ -10,7 +10,7 @@ static const unsigned short XGINew_DDRDRAM_TYPE3=
40[4][2] =3D {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{ 16, 0x45},
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{ =C2=A08, 0=
x35},
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{ =C2=A04, 0=
x31},
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{ =C2=A02, 0x21} =
};
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{ =C2=A02, 0x21} =
};e
<br>
<br>I don&#39;t think you build this patch :(
<br></blockquote><div><br>I&#39;m sorry about that. I&#39;ll update and sen=
d in a new version of the patch which doesn&#39;t break the build. <br></di=
v>
------=_Part_6185_1796018505.1445446804371--

------=_Part_6184_1137459990.1445446804371--

