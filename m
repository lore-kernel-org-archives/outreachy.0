X-GM-THRID: 6664067951305424896
Date: Mon, 4 Mar 2019 06:25:30 -0800 (PST)
From: idebleenasen@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <68af47ab-3e88-48bb-a3e7-0bdd25fa20f2@googlegroups.com>
In-Reply-To: <20190304074650.GC22711@kroah.com>
References: <1551679530-2635-1-git-send-email-idebleenasen@gmail.com>
 <20190304074650.GC22711@kroah.com>
Subject: Re: [PATCH] Staging: pi433: Fix line over 80 characters issue
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_421_2097758489.1551709530392"
X-Google-Token: ENrq9OMFG71AYO67Txc0
X-Google-IP: 117.211.86.109

------=_Part_421_2097758489.1551709530392
Content-Type: multipart/alternative; 
	boundary="----=_Part_422_181616333.1551709530392"

------=_Part_422_181616333.1551709530392
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On Monday, March 4, 2019 at 1:16:54 PM UTC+5:30, gregkh wrote:
>
> On Sun, Mar 03, 2019 at 10:05:30PM -0800, Debleena Sen wrote: 
> > Delete extra whitespace and tab space to remove 
> > checkpatch.pl warning: 
> > WARNING: line over 80 characters 
> > 
> > Signed-off-by: Debleena Sen <ideble...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/pi433/pi433_if.c | 8 ++++---- 
> >  1 file changed, 4 insertions(+), 4 deletions(-) 
> > 
> > diff --git a/drivers/staging/pi433/pi433_if.c 
> b/drivers/staging/pi433/pi433_if.c 
> > index b231463..53928af 100644 
> > --- a/drivers/staging/pi433/pi433_if.c 
> > +++ b/drivers/staging/pi433/pi433_if.c 
> > @@ -45,10 +45,10 @@ 
> >  #include "pi433_if.h" 
> >  #include "rf69.h" 
> >   
> > -#define N_PI433_MINORS                        BIT(MINORBITS) 
> /*32*/        /* ... up to 256 */ 
> > -#define MAX_MSG_SIZE                        900        /* min: 
> FIFO_SIZE! */ 
> > -#define MSG_FIFO_SIZE                        65536   /* 65536 = 2^16 
>  */ 
> > -#define NUM_DIO                                2 
> > +#define N_PI433_MINORS                BIT(MINORBITS) /*32*/        /* 
> ... up to 256 */ 
> > +#define MAX_MSG_SIZE                900        /* min: FIFO_SIZE! */ 
> > +#define MSG_FIFO_SIZE                65536   /* 65536 = 2^16  */ 
>
> The comment above should also use a tab, right? 
>
> thanks, 
>
> greg k-h 
>

Yes. Should I resend it ?

------=_Part_422_181616333.1551709530392
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Monday, March 4, 2019 at 1:16:54 PM UTC+5:30, gregkh wr=
ote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex=
;border-left: 1px #ccc solid;padding-left: 1ex;">On Sun, Mar 03, 2019 at 10=
:05:30PM -0800, Debleena Sen wrote:
<br>&gt; Delete extra whitespace and tab space to remove
<br>&gt; <a href=3D"http://checkpatch.pl" target=3D"_blank" rel=3D"nofollow=
" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F=
%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L9=
74NI3_mFug&#39;;return true;" onclick=3D"this.href=3D&#39;http://www.google=
.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3d=
AFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">checkpatch.pl</a> war=
ning:
<br>&gt; WARNING: line over 80 characters
<br>&gt;=20
<br>&gt; Signed-off-by: Debleena Sen &lt;<a href=3D"javascript:" target=3D"=
_blank" gdf-obfuscated-mailto=3D"_ziWe3OHCQAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">ideble...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/pi433/pi433_<wbr>if.c | 8 ++++----
<br>&gt; =C2=A01 file changed, 4 insertions(+), 4 deletions(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/pi433/pi433_<wbr>if.c b/drivers/stagi=
ng/pi433/pi433_<wbr>if.c
<br>&gt; index b231463..53928af 100644
<br>&gt; --- a/drivers/staging/pi433/pi433_<wbr>if.c
<br>&gt; +++ b/drivers/staging/pi433/pi433_<wbr>if.c
<br>&gt; @@ -45,10 +45,10 @@
<br>&gt; =C2=A0#include &quot;pi433_if.h&quot;
<br>&gt; =C2=A0#include &quot;rf69.h&quot;
<br>&gt; =C2=A0
<br>&gt; -#define N_PI433_MINORS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BIT(MINORBITS) /*32*/=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0/* ... up to 256 */
<br>&gt; -#define MAX_MSG_SIZE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0900=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0/* min: FIFO_SIZE! */
<br>&gt; -#define MSG_FIFO_SIZE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A065536 =C2=A0 /* 65536 =3D 2^16 =C2=A0*/
<br>&gt; -#define NUM_DIO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A02
<br>&gt; +#define N_PI433_MINORS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>BIT(MINORBITS) /=
*32*/=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* ... up to 256 */
<br>&gt; +#define MAX_MSG_SIZE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>900=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* min: FIFO_SIZE! */
<br>&gt; +#define MSG_FIFO_SIZE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>65536 =C2=A0 /* =
65536 =3D 2^16 =C2=A0*/
<br>
<br>The comment above should also use a tab, right?
<br>
<br>thanks,
<br>
<br>greg k-h
<br></blockquote><div><br></div><div>Yes. Should I resend it ?</div></div>
------=_Part_422_181616333.1551709530392--

------=_Part_421_2097758489.1551709530392--

