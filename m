X-GM-THRID: 6394738986789634048
Date: Tue, 7 Mar 2017 13:21:52 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: sreyamittal5@gmail.com, gregkh@linuxfoundation.org, julia.lawall@lip6.fr,
	marvin24@gmx.de
Message-Id: <9c43c46e-93b5-46fd-ba6f-ccdf5929d380@googlegroups.com>
In-Reply-To: <2611658.WmW6x0yd6b@fb07-iapwap2>
References: <20170307125256.3998-1-sreyamittal5@gmail.com> <alpine.DEB.2.20.1703071651160.3150@hadrien> <fb43e9c5-9aa2-4a6b-8201-7879d791c71f@googlegroups.com>
 <2611658.WmW6x0yd6b@fb07-iapwap2>
Subject: Re: [Outreachy kernel] [PATCH] staging: nvec: Replace udelay
 byusleep_range
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_594_653020089.1488921722139"
X-Google-Token: EPDI_MUFsXMaSGE48Uw0
X-Google-IP: 14.139.82.6

------=_Part_594_653020089.1488921722139
Content-Type: multipart/alternative; 
	boundary="----=_Part_595_1268590362.1488921722140"

------=_Part_595_1268590362.1488921722140
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On Wednesday, March 8, 2017 at 2:17:36 AM UTC+5:30, Marc Dietrich wrote:
>
> Am Dienstag, 7. M=C3=A4rz 2017, 20:14:06 CET schrieb Sreya Mittal:
>
> > On Tuesday, March 7, 2017 at 9:22:16 PM UTC+5:30, Julia Lawall wrote:
>
> > > On Tue, 7 Mar 2017, Sreya Mittal wrote:
>
> > > > Replace udelay by usleep_range.
>
> > > > Fixes the checkpatch issue:
>
> > > > usleep_range is preferred over udelay
>
> > > >=20
>
> > > > In Documentation/timers/timers-howto.txt,
>
> > > > it is mentioned that udelay should be used
>
> > > > for a few microseconds(less than 10), and
>
> > > > usleep_range should be preferred for 10
>
> > > > microseconds to 20 milliseconds.
>
> > > >=20
>
> > > > Signed-off-by: Sreya Mittal <sreyam...@gmail.com <javascript:>>
>
> > > > ---
>
> > > >=20
>
> > > > drivers/staging/nvec/nvec.c | 4 ++--
>
> > > > 1 file changed, 2 insertions(+), 2 deletions(-)
>
> > > >=20
>
> > > > diff --git a/drivers/staging/nvec/nvec.c=20
> b/drivers/staging/nvec/nvec.c
>
> > > > index c1feccf..5fab241 100644
>
> > > > --- a/drivers/staging/nvec/nvec.c
>
> > > > +++ b/drivers/staging/nvec/nvec.c
>
> > > > @@ -631,7 +631,7 @@ static irqreturn_t nvec_interrupt(int irq, void
>
> > >=20
>
> > > *dev)
>
> > >=20
>
> > > > break;
>
> > > >=20
>
> > > > case 2: /* first byte after command */
>
> > > >=20
>
> > > > if (status =3D=3D (I2C_SL_IRQ | RNW | RCVD)) {
>
> > > >=20
>
> > > > - udelay(33);
>
> > > > + usleep_range(33, 43);
>
> > >=20
>
> > > The key point is how do you choose the upper bound. If you don't have=
 a
>
> > > good rationale for your choice, it would be better not to make the=20
> change.
>
> >=20
>
> > Could you please give some hint(s) regarding the choice of upper bound=
=20
> and
>
> > what possibly can be a good rationale for it?
>
> =20
>
> I n'acked a similar patch a few days ago. See=20
> https://lkml.org/lkml/2017/3/2/293.
>
> =20
>
> Maybe it would be good to add a hint to the relevant tutorials to first=
=20
> check if a similar patch has been submitted before.
>
> =20
>
> Marc
>

Hi,

Thank you for the link. My bad that I didn't check whether a similar patch=
=20
has been submitted before.

Sreya
=20

> =20
>
> Sreya
>
> =20
>
> >=20
>
> > > julia
>
> > >=20
>
> > > > if (nvec->rx->data[0] !=3D 0x01) {
>
> > > >=20
>
> > > > dev_err(nvec->dev,
>
> > > >=20
>
> > > > "Read without prior read
>
> > >=20
>
> > > command\n");
>
> > >=20
>
> > > > @@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(int irq, void
>
> > >=20
>
> > > *dev)
>
> > >=20
>
> > > > * We experience less incomplete messages with this delay than
>
> > >=20
>
> > > without
>
> > >=20
>
> > > > * it, but we don't know why. Help is appreciated.
>
> > > > */
>
> > > >=20
>
> > > > - udelay(100);
>
> > > > + usleep_range(100,200);
>
> > > >=20
>
> > > > return IRQ_HANDLED;
>
> > > >=20
>
> > > > }
>
> > >=20
>
> > > Groups "outreachy-kernel" group.
>
> > >=20
>
> > > > To unsubscribe from this group and stop receiving emails from it,=
=20
> send
>
> > >=20
>
> > > an email to outreachy-kern...@googlegroups.com <javascript:>.
>
> > >=20
>
> > > > To post to this group, send email to outreach...@googlegroups.com
>
> > >=20
>
> > > <javascript:>.
>
> > >=20
>
> > > > To view this discussion on the web visit
>
> > >=20
>
> > >=20
> https://groups.google.com/d/msgid/outreachy-kernel/20170307125256.3998-1-=
s
>
> > > reyamittal5%40gmail.com.>=20
>
> > > > For more options, visit https://groups.google.com/d/optout.
>
> =20
>
> =20
>

------=_Part_595_1268590362.1488921722140
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Wednesday, March 8, 2017 at 2:17:36 AM UTC+5:30=
, Marc Dietrich wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;=
margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<div style=3D"font-family:&#39;Hack&#39;;font-size:9pt;font-weight:400;font=
-style:normal">
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">Am Dienstag, 7. M=C3=A4rz 2017, 20:14:06 CET schrieb Sr=
eya Mittal:</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; On Tuesday, March 7, 2017 at 9:22:16 PM UTC+5:30, =
Julia Lawall wrote:</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; On Tue, 7 Mar 2017, Sreya Mittal wrote:</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; Replace udelay by usleep_range.</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; Fixes the checkpatch issue:</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; usleep_range is preferred over udelay</p=
>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; In Documentation/timers/timers-<wbr>howt=
o.txt,</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; it is mentioned that udelay should be us=
ed</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; for a few microseconds(less than 10), an=
d</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; usleep_range should be preferred for 10<=
/p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; microseconds to 20 milliseconds.</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; Signed-off-by: Sreya Mittal &lt;<a>sreya=
m...@gmail.com</a> &lt;javascript:&gt;&gt;</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; ---</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt;  drivers/staging/nvec/nvec.c | 4 ++--</p=
>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt;  1 file changed, 2 insertions(+), 2 dele=
tions(-)</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; diff --git a/drivers/staging/nvec/nvec.c=
 b/drivers/staging/nvec/nvec.c</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; index c1feccf..5fab241 100644</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; --- a/drivers/staging/nvec/nvec.c</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; +++ b/drivers/staging/nvec/nvec.c</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; @@ -631,7 +631,7 @@ static irqreturn_t n=
vec_interrupt(int irq, void</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; *dev)</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt;                  break;</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt;          </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt;          case 2:                /* first=
 byte after command */</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt;          </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt;                  if (status =3D=3D (I2C_=
SL_IRQ | RNW | RCVD)) {</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; -                        udelay(33);</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; +                        usleep_range(33=
, 43);</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; The key point is how do you choose the upper =
bound.  If you don&#39;t have a</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; good rationale for your choice, it would be b=
etter not to make the change.</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; Could you please give some hint(s) regarding the c=
hoice of upper bound and</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; what possibly can be a good rationale for it?</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">=C2=A0</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">I n&#39;acked a similar patch a few days ago. See <a hr=
ef=3D"https://lkml.org/lkml/2017/3/2/293" target=3D"_blank" rel=3D"nofollow=
" onmousedown=3D"this.href=3D&#39;https://www.google.com/url?q\x3dhttps%3A%=
2F%2Flkml.org%2Flkml%2F2017%2F3%2F2%2F293\x26sa\x3dD\x26sntz\x3d1\x26usg\x3=
dAFQjCNFUXiZq53p0SLH1CY_GZxcHBsMurA&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Flkml.org%2Flkml%2F201=
7%2F3%2F2%2F293\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNFUXiZq53p0SLH1CY_GZ=
xcHBsMurA&#39;;return true;">https://lkml.org/lkml/2017/3/<wbr>2/293</a>.</=
p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">=C2=A0</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">Maybe it would be good to add a hint to the relevant tu=
torials to first check if a similar patch has been submitted before.</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">=C2=A0</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">Marc</p></div></blockquote><div><br>Hi,<br><br>Thank yo=
u for the link. My bad that I didn&#39;t check whether a similar patch has =
been submitted before.<br><br>Sreya<br>=C2=A0</div><blockquote class=3D"gma=
il_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid=
;padding-left: 1ex;"><div style=3D"font-family:&#39;Hack&#39;;font-size:9pt=
;font-weight:400;font-style:normal">
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">=C2=A0</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">Sreya</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">=C2=A0</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; julia</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt;                          if (nvec-&gt;rx=
-&gt;data[0] !=3D 0x01) {</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt;                          </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt;                                  dev_err=
(nvec-&gt;dev,</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt;                                  </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt;                                         =
 &quot;Read without prior read</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; command\n&quot;);</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; @@ -718,7 +718,7 @@ static irqreturn_t n=
vec_interrupt(int irq, void</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; *dev)</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt;           * We experience less incomplet=
e messages with this delay than</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; without</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt;           * it, but we don&#39;t know wh=
y. Help is appreciated.</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt;           */</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; -        udelay(100);</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; +        usleep_range(100,200);</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt;          return IRQ_HANDLED;</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt;  </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt;  }</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; Groups &quot;outreachy-kernel&quot; group.</p=
>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; To unsubscribe from this group and stop =
receiving emails from it, send</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; an email to <a>outreachy-kern...@<wbr>googleg=
roups.com</a> &lt;javascript:&gt;.</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; To post to this group, send email to <a>=
outreach...@googlegroups.com</a></p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &lt;javascript:&gt;.</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; To view this discussion on the web visit=
</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; <a href=3D"https://groups.google.com/d/msgid/=
outreachy-kernel/20170307125256.3998-1-s" target=3D"_blank" rel=3D"nofollow=
" onmousedown=3D"this.href=3D&#39;https://groups.google.com/d/msgid/outreac=
hy-kernel/20170307125256.3998-1-s&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20170307125256.3=
998-1-s&#39;;return true;">https://groups.google.com/d/<wbr>msgid/outreachy=
-kernel/<wbr>20170307125256.3998-1-s</a></p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; reyamittal5%<a href=3D"http://40gmail.com" ta=
rget=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www=
.google.com/url?q\x3dhttp%3A%2F%2F40gmail.com\x26sa\x3dD\x26sntz\x3d1\x26us=
g\x3dAFQjCNF6SYGO6IiAPhbk3gMhjWdyIU0BdA&#39;;return true;" onclick=3D"this.=
href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F40gmail.com\x26sa\x=
3dD\x26sntz\x3d1\x26usg\x3dAFQjCNF6SYGO6IiAPhbk3gMhjWdyIU0BdA&#39;;return t=
rue;">40gmail.com</a>.&gt; </p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">&gt; &gt; &gt; For more options, visit <a href=3D"https=
://groups.google.com/d/optout" target=3D"_blank" rel=3D"nofollow" onmousedo=
wn=3D"this.href=3D&#39;https://groups.google.com/d/optout&#39;;return true;=
" onclick=3D"this.href=3D&#39;https://groups.google.com/d/optout&#39;;retur=
n true;">https://groups.google.com/d/<wbr>optout</a>.</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">=C2=A0</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">=C2=A0</p></div></blockquote></div>
------=_Part_595_1268590362.1488921722140--

------=_Part_594_653020089.1488921722139--

