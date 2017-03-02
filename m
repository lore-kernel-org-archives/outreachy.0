X-GM-THRID: 6392907056098050048
Date: Thu, 2 Mar 2017 06:48:13 -0800 (PST)
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: singhalsimran0@gmail.com, marvin24@gmx.de, gregkh@linuxfoundation.org,
	ac100@lists.launchpad.net, linux-tegra@vger.kernel.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Message-Id: <b90bc602-cf06-4abb-bea2-6386d4976864@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1703021535500.3414@hadrien>
References: <20170302142418.GA16773@singhal-Inspiron-5558>
 <alpine.DEB.2.20.1703021535500.3414@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: nvec: cleanup USLEEP_RANGE
 checkpatch checks
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_905_1933106270.1488466093680"
X-Google-Token: EK3h4MUF0aGjAX5xXUQ0
X-Google-IP: 14.139.82.6

------=_Part_905_1933106270.1488466093680
Content-Type: multipart/alternative; 
	boundary="----=_Part_906_963170190.1488466093680"

------=_Part_906_963170190.1488466093680
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Thursday, March 2, 2017 at 8:06:40 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Thu, 2 Mar 2017, simran singhal wrote: 
>
> > Resolve strict checkpatch USLEEP_RANGE checks by converting delays and 
> > sleeps as described in ./Documentation/timers/timers-howto.txt. 
> > 
> > CHECK: usleep_range is preferred over udelay; see Documentation/ 
> > timers/timers-howto.txt 
> > 
> > Signed-off-by: simran singhal <singhal...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/nvec/nvec.c | 4 ++-- 
> >  1 file changed, 2 insertions(+), 2 deletions(-) 
> > 
> > diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c 
> > index c1feccf..cd35e64 100644 
> > --- a/drivers/staging/nvec/nvec.c 
> > +++ b/drivers/staging/nvec/nvec.c 
> > @@ -631,7 +631,7 @@ static irqreturn_t nvec_interrupt(int irq, void 
> *dev) 
> >                  break; 
> >          case 2:                /* first byte after command */ 
> >                  if (status == (I2C_SL_IRQ | RNW | RCVD)) { 
> > -                        udelay(33); 
> > +                        usleep_range(33, 100); 
>
> How did you choose the upper limit. 
>
> I believe that Greg previously suggested not to make these changes if you 
> have no way to test them. 
>
> Julia, After going through the reply given by Nicholas Mc Guire 
https://www.mail-archive.com/kernelnewbies@kernelnewbies.org/msg16464.html
in this reply he has mentioned that even the range of 10 microsecond is 
enough,
so I prefer to take 100 as upper limit.  
 
Simran

julia 
>
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
> > +        usleep_range(100, 200); 
> > 
> >          return IRQ_HANDLED; 
> >  } 
> > -- 
> > 2.7.4 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20170302142418.GA16773%40singhal-Inspiron-5558. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_906_963170190.1488466093680
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Thursday, March 2, 2017 at 8:06:40 PM UTC+5:30,=
 Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;ma=
rgin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Thu, 2 Mar 2017, simran singhal wrote:
<br>
<br>&gt; Resolve strict checkpatch USLEEP_RANGE checks by converting delays=
 and
<br>&gt; sleeps as described in ./Documentation/timers/timers-<wbr>howto.tx=
t.
<br>&gt;
<br>&gt; CHECK: usleep_range is preferred over udelay; see Documentation/
<br>&gt; timers/timers-howto.txt
<br>&gt;
<br>&gt; Signed-off-by: simran singhal &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"iXf8VFnRAwAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">singhal...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/nvec/nvec.c | 4 ++--
<br>&gt; =C2=A01 file changed, 2 insertions(+), 2 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nv=
ec.c
<br>&gt; index c1feccf..cd35e64 100644
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
=C2=A0<wbr>usleep_range(33, 100);
<br>
<br>How did you choose the upper limit.
<br>
<br>I believe that Greg previously suggested not to make these changes if y=
ou
<br>have no way to test them.
<br>
<br></blockquote><div>Julia, After going through the reply given by=C2=A0Ni=
cholas Mc Guire=C2=A0</div><div>https://www.mail-archive.com/kernelnewbies@=
kernelnewbies.org/msg16464.html<br></div><div>in this reply he has mentione=
d that even the range of 10 microsecond is enough,<br></div><div>so I prefe=
r to take 100 as upper limit. =C2=A0</div><div>=C2=A0</div><div>Simran</div=
><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin=
-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">julia
<br>
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
 200);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return IRQ_H=
ANDLED;
<br>&gt; =C2=A0}
<br>&gt; --
<br>&gt; 2.7.4
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"iXf8VFnRAwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"iXf8VFnRAwAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20170302142418.GA16773%40singhal-Inspi=
ron-5558" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#3=
9;https://groups.google.com/d/msgid/outreachy-kernel/20170302142418.GA16773=
%40singhal-Inspiron-5558&#39;;return true;" onclick=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/msgid/outreachy-kernel/20170302142418.GA16773%40si=
nghal-Inspiron-5558&#39;;return true;">https://groups.google.com/d/<wbr>msg=
id/outreachy-kernel/<wbr>20170302142418.GA16773%<wbr>40singhal-Inspiron-555=
8</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_906_963170190.1488466093680--

------=_Part_905_1933106270.1488466093680--

