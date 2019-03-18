X-GM-THRID: 6669413684549255168
Date: Sun, 17 Mar 2019 19:26:05 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <04d7ca49-fff6-4a63-839f-1a36a17f1c40@googlegroups.com>
In-Reply-To: <20190317181825.GA3482@kroah.com>
References: <20190317173107.3814-1-sanjana99reddy99@gmail.com>
 <20190317181825.GA3482@kroah.com>
Subject: Re: [PATCH] Staging: gasket: gasket_interuppt.c: Fix string split
 issue.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_307_592910170.1552875965276"
X-Google-Token: EL2DvOQFXrpbyOy2JS80
X-Google-IP: 123.201.165.0

------=_Part_307_592910170.1552875965276
Content-Type: multipart/alternative; 
	boundary="----=_Part_308_2134187674.1552875965277"

------=_Part_308_2134187674.1552875965277
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, March 17, 2019 at 11:48:29 PM UTC+5:30, gregkh wrote:
>
> On Sun, Mar 17, 2019 at 11:01:07PM +0530, Sanjana Sanikommu wrote: 
> > Remove string " across the line. 
> > Issue found by checkpatch.pl semantic patch results for rtw_ap.c 
> > 
> > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/gasket/gasket_interrupt.c | 8 ++++---- 
> >  1 file changed, 4 insertions(+), 4 deletions(-) 
> > 
> > diff --git a/drivers/staging/gasket/gasket_interrupt.c 
> b/drivers/staging/gasket/gasket_interrupt.c 
> > index ff61b782df30..da517c2990ea 100644 
> > --- a/drivers/staging/gasket/gasket_interrupt.c 
> > +++ b/drivers/staging/gasket/gasket_interrupt.c 
> > @@ -97,8 +97,8 @@ static void gasket_interrupt_setup(struct gasket_dev 
> *gasket_dev) 
> >                   * modify-write and shift based on the packing index. 
> >                   */ 
> >                  dev_dbg(gasket_dev->dev, 
> > -                        "Setting up interrupt index %d with index 
> 0x%llx and " 
> > -                        "packing %d\n", 
> > +                        "Setting up interrupt index %d with index 
> 0x%llx and 
> > +                        packing %d\n", 
>
> That did not do what you think it did :( 
>
> Are you familiar with how C treats strings? 
>
 
    1. Yes, I am familiar how strings are treated in C. In this case I was 
confused 
      by also considering the warning. I thought not raise new bugs by 
fixing the present ones.
 
    2. I corrected them v2 but has few typo. I would send them in v3.

     Thank you

     Sanjana

>
> thanks, 
>
> greg k-h 
>

------=_Part_308_2134187674.1552875965277
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sunday, March 17, 2019 at 11:48:29 PM UTC+5:30,=
 gregkh wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-l=
eft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Sun, Mar 17, =
2019 at 11:01:07PM +0530, Sanjana Sanikommu wrote:
<br>&gt; Remove string &quot; across the line.
<br>&gt; Issue found by <a href=3D"http://checkpatch.pl" target=3D"_blank" =
rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?=
q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoR=
gUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=3D&#39;ht=
tp://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\=
x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">checkp=
atch.pl</a> semantic patch results for rtw_ap.c
<br>&gt;=20
<br>&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"iKrAuar0CwAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">sanjana9...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/gasket/<wbr>gasket_interrupt.c | 8 ++++----
<br>&gt; =C2=A01 file changed, 4 insertions(+), 4 deletions(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/gasket/<wbr>gasket_interrupt.c b/driv=
ers/staging/gasket/<wbr>gasket_interrupt.c
<br>&gt; index ff61b782df30..da517c2990ea 100644
<br>&gt; --- a/drivers/staging/gasket/<wbr>gasket_interrupt.c
<br>&gt; +++ b/drivers/staging/gasket/<wbr>gasket_interrupt.c
<br>&gt; @@ -97,8 +97,8 @@ static void gasket_interrupt_setup(struct gasket=
_dev *gasket_dev)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * modify-write and shift based on the =
packing index.
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_dbg(<wbr>gasket_dev-&gt;dev,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0&quot;<wbr>Setting up interrupt index %d with index 0x%llx and &quot;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0&quot;<wbr>packing %d\n&quot;,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0&quot;<wbr>Setting up interrupt index %d with index 0x%llx and
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>packing %d\n&quot;,
<br>
<br>That did not do what you think it did :(
<br>
<br>Are you familiar with how C treats strings?
<br></blockquote><div>=C2=A0</div><div>=C2=A0 =C2=A0 1. Yes, I am familiar =
how strings are treated in C. In this case I was confused=C2=A0</div><div>=
=C2=A0 =C2=A0 =C2=A0 by also considering the warning. I thought not raise n=
ew bugs by fixing the present ones.</div><div>=C2=A0</div><div>=C2=A0=C2=A0=
 =C2=A02. I corrected them v2 but has few typo. I would send them in v3.</d=
iv><div><br></div><div>=C2=A0 =C2=A0 =C2=A0Thank you</div><div><br></div><d=
iv>=C2=A0 =C2=A0 =C2=A0Sanjana</div><blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;">
<br>thanks,
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_308_2134187674.1552875965277--

------=_Part_307_592910170.1552875965276--

