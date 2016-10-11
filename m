X-GM-THRID: 6339138687062769664
Date: Tue, 11 Oct 2016 04:35:57 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, forest@alittletooquiet.net
Message-Id: <683fdf22-dfef-4082-9420-93ceb32b9b3a@googlegroups.com>
In-Reply-To: <20161010082502.GA19439@kroah.com>
References: <CAAFX7JT4acPoN+yGojG6jrfXB5y=73rFhRP46t+pTZv==tj=nQ@mail.gmail.com>
 <20161010082502.GA19439@kroah.com>
Subject: Re: [Patch v2] Staging: vt6655: Replace dwIoBase by iobase
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3417_1024614125.1476185757986"
X-Google-Token: EJ2d878FHHdatneOZGg0
X-Google-IP: 117.246.134.217

------=_Part_3417_1024614125.1476185757986
Content-Type: multipart/alternative; 
	boundary="----=_Part_3418_330330610.1476185757986"

------=_Part_3418_330330610.1476185757986
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Monday, October 10, 2016 at 1:54:54 PM UTC+5:30, gregkh wrote:
>
> On Mon, Oct 10, 2016 at 12:45:17AM +0530, Varsha Rao wrote: 
> > In this patch dwIoBase is renamed as iobase.This is done to fix the 
> > checkpatch issue of the CamelCase. 
>
> Please put a space after a . in a sentance. 
>

     Sorry I will add it. 

>
> > 
> > Signed-off-by: Varsha Rao <rvars...@gmail.com <javascript:>> 
> > --- 
> >  Changes in v2: 
> >  -Limited commit message line to 70 characters. 
> >  -Proper alignment of different comments. 
> > 
> >  drivers/staging/vt6655/baseband.c |  52 +++--- 
> >  drivers/staging/vt6655/baseband.h |   8 +- 
> >  drivers/staging/vt6655/card.c     |  30 ++-- 
> >  drivers/staging/vt6655/mac.h      | 322 
> +++++++++++++++++++------------------- 
> >  drivers/staging/vt6655/rf.c       |  64 ++++---- 
> >  drivers/staging/vt6655/srom.c     |  32 ++-- 
> >  drivers/staging/vt6655/srom.h     |   6 +- 
> >  7 files changed, 257 insertions(+), 257 deletions(-) 
> > 
> > diff --git a/drivers/staging/vt6655/baseband.c 
> > b/drivers/staging/vt6655/baseband.c 
> > index ba051ff..1ab91f9 100644 
> > --- a/drivers/staging/vt6655/baseband.c 
> > +++ b/drivers/staging/vt6655/baseband.c 
> > @@ -1914,7 +1914,7 @@ void vnt_get_phy_field(struct vnt_private *priv, 
> > u32 frame_length, 
>
> Your patch is line-wrapped and can not be applied :( 
>
> How did that happen?  Are you using 'git send-email' or something else? 
>

    I am using mutt  and I have added this line in mutt config for 72 
characters.
     set editor ="vi -c 'set tw=72'"

 

------=_Part_3418_330330610.1476185757986
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Monday, October 10, 2016 at 1:54:54 PM UTC+5:30=
, gregkh wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-=
left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Mon, Oct 10,=
 2016 at 12:45:17AM +0530, Varsha Rao wrote:
<br>&gt; In this patch dwIoBase is renamed as iobase.This is done to fix th=
e
<br>&gt; checkpatch issue of the CamelCase.
<br>
<br>Please put a space after a . in a sentance.
<br></blockquote><div><br>=C2=A0 =C2=A0=C2=A0 Sorry I will add it. <br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;b=
order-left: 1px #ccc solid;padding-left: 1ex;">
<br>&gt;=20
<br>&gt; Signed-off-by: Varsha Rao &lt;<a href=3D"javascript:" target=3D"_b=
lank" gdf-obfuscated-mailto=3D"rw1OjoDmAAAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">rvars...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0Changes in v2:
<br>&gt; =C2=A0-Limited commit message line to 70 characters.
<br>&gt; =C2=A0-Proper alignment of different comments.
<br>&gt;=20
<br>&gt; =C2=A0drivers/staging/vt6655/<wbr>baseband.c | =C2=A052 +++---
<br>&gt; =C2=A0drivers/staging/vt6655/<wbr>baseband.h | =C2=A0 8 +-
<br>&gt; =C2=A0drivers/staging/vt6655/card.c =C2=A0 =C2=A0 | =C2=A030 ++--
<br>&gt; =C2=A0drivers/staging/vt6655/mac.h =C2=A0 =C2=A0 =C2=A0| 322 +++++=
++++++++++++++-----------<wbr>--------
<br>&gt; =C2=A0drivers/staging/vt6655/rf.c =C2=A0 =C2=A0 =C2=A0 | =C2=A064 =
++++----
<br>&gt; =C2=A0drivers/staging/vt6655/srom.c =C2=A0 =C2=A0 | =C2=A032 ++--
<br>&gt; =C2=A0drivers/staging/vt6655/srom.h =C2=A0 =C2=A0 | =C2=A0 6 +-
<br>&gt; =C2=A07 files changed, 257 insertions(+), 257 deletions(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/vt6655/<wbr>baseband.c
<br>&gt; b/drivers/staging/vt6655/<wbr>baseband.c
<br>&gt; index ba051ff..1ab91f9 100644
<br>&gt; --- a/drivers/staging/vt6655/<wbr>baseband.c
<br>&gt; +++ b/drivers/staging/vt6655/<wbr>baseband.c
<br>&gt; @@ -1914,7 +1914,7 @@ void vnt_get_phy_field(struct vnt_private *p=
riv,
<br>&gt; u32 frame_length,
<br>
<br>Your patch is line-wrapped and can not be applied :(
<br>
<br>How did that happen? =C2=A0Are you using &#39;git send-email&#39; or so=
mething else?
<br></blockquote><div><br>=C2=A0 =C2=A0 I am using mutt=C2=A0 and I have ad=
ded this line in mutt config for 72 characters.<br>=C2=A0=C2=A0=C2=A0=C2=A0=
 set editor =3D&quot;vi -c &#39;set tw=3D72&#39;&quot;<br><br></div><div>=
=C2=A0</div></div>
------=_Part_3418_330330610.1476185757986--

------=_Part_3417_1024614125.1476185757986--

