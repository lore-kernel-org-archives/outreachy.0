X-GM-THRID: 6669413684549255168
Date: Sun, 17 Mar 2019 11:05:30 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <b763765e-352e-485c-99e4-13c0ae631e6e@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903171842400.2434@hadrien>
References: <20190317173107.3814-1-sanjana99reddy99@gmail.com>
 <alpine.DEB.2.21.1903171842400.2434@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging: gasket: gasket_interuppt.c:
 Fix string split issue.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1314_1969941118.1552845930429"
X-Google-Token: EOqYuuQFKaeJxIdLx_w0
X-Google-IP: 219.91.183.8

------=_Part_1314_1969941118.1552845930429
Content-Type: multipart/alternative; 
	boundary="----=_Part_1315_847490439.1552845930429"

------=_Part_1315_847490439.1552845930429
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, March 17, 2019 at 11:13:47 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sun, 17 Mar 2019, Sanjana Sanikommu wrote: 
>
> > Remove string " across the line. 
> > Issue found by checkpatch.pl semantic patch results for rtw_ap.c 
>
> You should put the whole string on a single line, even if it goes over 80 
> characters.  Then if someone sees the string in debugging output, they can 
> use grep to find where the issue occurred, without worrying about line 
> breaks. 
>
Sure I would be putting whole string in single lline.
Thank you
Sanjana. 

>
> julia 
>
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
> >                          interrupt_data->interrupts[i].index, 
> >                          interrupt_data->interrupts[i].reg, 
> >                          interrupt_data->interrupts[i].packing); 
> > @@ -120,8 +120,8 @@ static void gasket_interrupt_setup(struct gasket_dev 
> *gasket_dev) 
> >                                  break; 
> >                          default: 
> >                                  dev_dbg(gasket_dev->dev, 
> > -                                        "Found interrupt description 
> with " 
> > -                                        "unknown enum %d\n", 
> > +                                        "Found interrupt description 
> with 
> > +                                        unknown enum %d\n", 
> > 
>                                          interrupt_data->interrupts[i].packing); 
>
> >                                  return; 
> >                          } 
> > -- 
> > 2.17.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20190317173107.3814-1-sanjana99reddy99%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_1315_847490439.1552845930429
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sunday, March 17, 2019 at 11:13:47 PM UTC+5:30,=
 Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;ma=
rgin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sun, 17 Mar 2019, Sanjana Sanikommu wrote:
<br>
<br>&gt; Remove string &quot; across the line.
<br>&gt; Issue found by <a href=3D"http://checkpatch.pl" target=3D"_blank" =
rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?=
q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoR=
gUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=3D&#39;ht=
tp://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\=
x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">checkp=
atch.pl</a> semantic patch results for rtw_ap.c
<br>
<br>You should put the whole string on a single line, even if it goes over =
80
<br>characters. =C2=A0Then if someone sees the string in debugging output, =
they can
<br>use grep to find where the issue occurred, without worrying about line
<br>breaks.
<br></blockquote><div>Sure I would be putting whole string in single lline.=
</div><div>Thank you</div><div>Sanjana.=C2=A0</div><blockquote class=3D"gma=
il_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid=
;padding-left: 1ex;"><br>julia
<br>
<br>&gt;
<br>&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"qyFV28XyCwAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">sanjana9...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/gasket/<wbr>gasket_interrupt.c | 8 ++++----
<br>&gt; =C2=A01 file changed, 4 insertions(+), 4 deletions(-)
<br>&gt;
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
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>interrupt_data-&gt;interrupts[i].<wbr>index,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>interrupt_data-&gt;interrupts[i].<wbr>reg,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>interrupt_data-&gt;interrupts[i].<wbr>packing);
<br>&gt; @@ -120,8 +120,8 @@ static void gasket_interrupt_setup(struct gask=
et_dev *gasket_dev)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>default:
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0dev_dbg(gaske=
t_dev-&gt;dev,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&quot;Found interrupt description with &qu=
ot;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&quot;unknown enum %d\n&quot;,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&quot;Found interrupt description with
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unknown enum %d\n&quot;,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0interrupt_data-&gt;<wbr>interrupts[i].p=
acking);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0return;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0}
<br>&gt; --
<br>&gt; 2.17.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"qyFV28XyCwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"qyFV28XyCwAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20190317173107.3814-1-sanjana99reddy99=
%40gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190317173107.3=
814-1-sanjana99reddy99%40gmail.com&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190317173107.3=
814-1-sanjana99reddy99%40gmail.com&#39;;return true;">https://groups.google=
.com/d/<wbr>msgid/outreachy-kernel/<wbr>20190317173107.3814-1-<wbr>sanjana9=
9reddy99%40gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_1315_847490439.1552845930429--

------=_Part_1314_1969941118.1552845930429--

