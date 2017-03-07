X-GM-THRID: 6394738986789634048
Date: Tue, 7 Mar 2017 11:14:06 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: sreyamittal5@gmail.com, marvin24@gmx.de, gregkh@linuxfoundation.org
Message-Id: <fb43e9c5-9aa2-4a6b-8201-7879d791c71f@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1703071651160.3150@hadrien>
References: <20170307125256.3998-1-sreyamittal5@gmail.com>
 <alpine.DEB.2.20.1703071651160.3150@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: nvec: Replace udelay by
 usleep_range
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3404_1757841423.1488914046528"
X-Google-Token: EP6M_MUFMCX0kJrur1Q0
X-Google-IP: 14.139.82.6

------=_Part_3404_1757841423.1488914046528
Content-Type: multipart/alternative; 
	boundary="----=_Part_3405_1714798810.1488914046529"

------=_Part_3405_1714798810.1488914046529
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Tuesday, March 7, 2017 at 9:22:16 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Tue, 7 Mar 2017, Sreya Mittal wrote: 
>
> > Replace udelay by usleep_range. 
> > Fixes the checkpatch issue: 
> > usleep_range is preferred over udelay 
> > 
> > In Documentation/timers/timers-howto.txt, 
> > it is mentioned that udelay should be used 
> > for a few microseconds(less than 10), and 
> > usleep_range should be preferred for 10 
> > microseconds to 20 milliseconds. 
> > 
> > Signed-off-by: Sreya Mittal <sreyam...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/nvec/nvec.c | 4 ++-- 
> >  1 file changed, 2 insertions(+), 2 deletions(-) 
> > 
> > diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c 
> > index c1feccf..5fab241 100644 
> > --- a/drivers/staging/nvec/nvec.c 
> > +++ b/drivers/staging/nvec/nvec.c 
> > @@ -631,7 +631,7 @@ static irqreturn_t nvec_interrupt(int irq, void 
> *dev) 
> >                  break; 
> >          case 2:                /* first byte after command */ 
> >                  if (status == (I2C_SL_IRQ | RNW | RCVD)) { 
> > -                        udelay(33); 
> > +                        usleep_range(33, 43); 
>
> The key point is how do you choose the upper bound.  If you don't have a 
> good rationale for your choice, it would be better not to make the change. 
>

Could you please give some hint(s) regarding the choice of upper bound and
what possibly can be a good rationale for it?

Sreya 
 

>
> julia 
>
> >                          if (nvec->rx->data[0] != 0x01) { 
> >                                  dev_err(nvec->dev, 
> >                                          "Read without prior read 
> command\n"); 
> > @@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(int irq, void 
> *dev) 
> >           * We experience less incomplete messages with this delay than 
> without 
> >           * it, but we don't know why. Help is appreciated. 
> >           */ 
> > -        udelay(100); 
> > +        usleep_range(100,200); 
> > 
> >          return IRQ_HANDLED; 
> >  } 
> > -- 
> > 2.9.3 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20170307125256.3998-1-sreyamittal5%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_3405_1714798810.1488914046529
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tuesday, March 7, 2017 at 9:22:16 PM UTC+5:30, =
Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;mar=
gin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Tue, 7 Mar 2017, Sreya Mittal wrote:
<br>
<br>&gt; Replace udelay by usleep_range.
<br>&gt; Fixes the checkpatch issue:
<br>&gt; usleep_range is preferred over udelay
<br>&gt;
<br>&gt; In Documentation/timers/timers-<wbr>howto.txt,
<br>&gt; it is mentioned that udelay should be used
<br>&gt; for a few microseconds(less than 10), and
<br>&gt; usleep_range should be preferred for 10
<br>&gt; microseconds to 20 milliseconds.
<br>&gt;
<br>&gt; Signed-off-by: Sreya Mittal &lt;<a href=3D"javascript:" target=3D"=
_blank" gdf-obfuscated-mailto=3D"Ay1jfUqtAQAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">sreyam...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/nvec/nvec.c | 4 ++--
<br>&gt; =C2=A01 file changed, 2 insertions(+), 2 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nv=
ec.c
<br>&gt; index c1feccf..5fab241 100644
<br>&gt; --- a/drivers/staging/nvec/nvec.c
<br>&gt; +++ b/drivers/staging/nvec/nvec.c
<br>&gt; @@ -631,7 +631,7 @@ static irqreturn_t nvec_interrupt(int irq, voi=
d *dev)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case 2:=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0/* first byte after command */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (status =3D=3D (I2C_SL_IRQ | RNW | R=
CVD)) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>udelay(33);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>usleep_range(33, 43);
<br>
<br>The key point is how do you choose the upper bound. =C2=A0If you don&#3=
9;t have a
<br>good rationale for your choice, it would be better not to make the chan=
ge.
<br></blockquote><div><br>Could you please give some hint(s) regarding the =
choice of upper bound and<br>what possibly can be a good rationale for it?<=
br><br>Sreya <br>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex=
;">
<br>julia
<br>
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0if (nvec-&gt;rx-&gt;data[0] !=3D 0x01) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0dev_err(nvec-=
&gt;dev,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&quot;Read without prior read command\n=
&quot;);
<br>&gt; @@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(int irq, voi=
d *dev)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * We experi=
ence less incomplete messages with this delay than without
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * it, but w=
e don&#39;t know why. Help is appreciated.
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0udelay(100);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0usleep_range(100,=
200)<wbr>;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return IRQ_H=
ANDLED;
<br>&gt; =C2=A0}
<br>&gt; --
<br>&gt; 2.9.3
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"Ay1jfUqtAQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"Ay1jfUqtAQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20170307125256.3998-1-sreyamittal5%40g=
mail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#3=
9;https://groups.google.com/d/msgid/outreachy-kernel/20170307125256.3998-1-=
sreyamittal5%40gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/msgid/outreachy-kernel/20170307125256.3998-1-sreya=
mittal5%40gmail.com&#39;;return true;">https://groups.google.com/d/<wbr>msg=
id/outreachy-kernel/<wbr>20170307125256.3998-1-<wbr>sreyamittal5%40gmail.co=
m</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_3405_1714798810.1488914046529--

------=_Part_3404_1757841423.1488914046528--

