X-GM-THRID: 6670322768033087488
Date: Wed, 20 Mar 2019 00:10:40 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <12df173f-5339-493c-873b-5de0c28dde43@googlegroups.com>
In-Reply-To: <20190320051128.GA16864@kroah.com>
References: <20190320041854.3829-1-etsai042@gmail.com>
 <20190320051128.GA16864@kroah.com>
Subject: Re: [PATCH] Staging: mt7621-dma: Add blank line after declarations
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2430_1408647073.1553065840178"
X-Google-Token: EPDOx-QF5VgzMR57r980
X-Google-IP: 128.199.125.193

------=_Part_2430_1408647073.1553065840178
Content-Type: multipart/alternative; 
	boundary="----=_Part_2431_548327335.1553065840178"

------=_Part_2431_548327335.1553065840178
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On Tuesday, March 19, 2019 at 10:11:33 PM UTC-7, gregkh wrote:
>
> On Tue, Mar 19, 2019 at 09:18:54PM -0700, Wentao Cai wrote: 
> > Add a blank line after declaration to mute checkpatch.pl warning: 
> > WARNING: Missing a blank line after declarations 
> > 
> > Signed-off-by: Wentao Cai <etsa...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/mt7621-dma/mtk-hsdma.c | 1 + 
> >  1 file changed, 1 insertion(+) 
> > 
> > diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c 
> b/drivers/staging/mt7621-dma/mtk-hsdma.c 
> > index 97571f1d697b..beeff4258b19 100644 
> > --- a/drivers/staging/mt7621-dma/mtk-hsdma.c 
> > +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c 
> > @@ -157,6 +157,7 @@ struct mtk_hsdam_engine { 
> >          struct device_dma_parameters dma_parms; 
> >          void __iomem *base; 
> >          struct tasklet_struct task; 
> > + 
> >          volatile unsigned long chan_issued; 
>
> Please look at what you did here and compare it to what the checkpatch 
> warning said it was doing.  Hint, checkpatch is wrong here... 
>
> Always use your brain when dealing with checkpatch as it is just a dumb 
> perl script :) 
>
>  
Sorry, I'll be more careful next time.

Wentao
  

> thanks, 
>
> greg k-h 
>

------=_Part_2431_548327335.1553065840178
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tuesday, March 19, 2019 at 10:11:33 PM UTC-7, gregkh wr=
ote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex=
;border-left: 1px #ccc solid;padding-left: 1ex;">On Tue, Mar 19, 2019 at 09=
:18:54PM -0700, Wentao Cai wrote:
<br>&gt; Add a blank line after declaration to mute <a href=3D"http://check=
patch.pl" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#3=
9;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26s=
ntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;" on=
click=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheck=
patch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mF=
ug&#39;;return true;">checkpatch.pl</a> warning:
<br>&gt; WARNING: Missing a blank line after declarations
<br>&gt;=20
<br>&gt; Signed-off-by: Wentao Cai &lt;<a href=3D"javascript:" target=3D"_b=
lank" gdf-obfuscated-mailto=3D"B8j5vh6xAwAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">etsa...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/mt7621-dma/<wbr>mtk-hsdma.c | 1 +
<br>&gt; =C2=A01 file changed, 1 insertion(+)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/mt7621-dma/<wbr>mtk-hsdma.c b/drivers=
/staging/mt7621-dma/<wbr>mtk-hsdma.c
<br>&gt; index 97571f1d697b..beeff4258b19 100644
<br>&gt; --- a/drivers/staging/mt7621-dma/<wbr>mtk-hsdma.c
<br>&gt; +++ b/drivers/staging/mt7621-dma/<wbr>mtk-hsdma.c
<br>&gt; @@ -157,6 +157,7 @@ struct mtk_hsdam_engine {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct devic=
e_dma_parameters dma_parms;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void __iomem=
 *base;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct taskl=
et_struct task;
<br>&gt; +
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0volatile uns=
igned long chan_issued;
<br>
<br>Please look at what you did here and compare it to what the checkpatch
<br>warning said it was doing. =C2=A0Hint, checkpatch is wrong here...
<br>
<br>Always use your brain when dealing with checkpatch as it is just a dumb
<br>perl script :)
<br>
<br></blockquote><div>=C2=A0</div><div>Sorry, I&#39;ll be more careful next=
 time.</div><div><br></div><div>Wentao</div><div>=C2=A0=C2=A0</div><blockqu=
ote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left=
: 1px #ccc solid;padding-left: 1ex;">thanks,
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_2431_548327335.1553065840178--

------=_Part_2430_1408647073.1553065840178--

