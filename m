X-GM-THRID: 6392907056098050048
Date: Thu, 2 Mar 2017 07:28:05 -0800 (PST)
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: singhalsimran0@gmail.com, linux-tegra@vger.kernel.org,
	gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, marvin24@gmx.de
Message-Id: <e9064a94-2c73-4b43-afd7-74685693d19b@googlegroups.com>
In-Reply-To: <1935856.5rv8sDmiv7@fb07-iapwap2>
References: <20170302142418.GA16773@singhal-Inspiron-5558> <alpine.DEB.2.20.1703021535500.3414@hadrien> <b90bc602-cf06-4abb-bea2-6386d4976864@googlegroups.com>
 <1935856.5rv8sDmiv7@fb07-iapwap2>
Subject: Re: [Outreachy kernel] [PATCH] staging: nvec: cleanup
 USLEEP_RANGEcheckpatch checks
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_458_1999039915.1488468485235"
X-Google-Token: EIX04MUFZnzruVQR3lc0
X-Google-IP: 14.139.82.6

------=_Part_458_1999039915.1488468485235
Content-Type: multipart/alternative; 
	boundary="----=_Part_459_1037260970.1488468485236"

------=_Part_459_1037260970.1488468485236
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On Thursday, March 2, 2017 at 8:31:53 PM UTC+5:30, Marc Dietrich wrote:
>
> Hi Simran,=20
>
> Am Donnerstag, 2. M=C3=A4rz 2017, 15:48:13 CET schrieb SIMRAN SINGHAL:=20
> > On Thursday, March 2, 2017 at 8:06:40 PM UTC+5:30, Julia Lawall wrote:=
=20
> > > On Thu, 2 Mar 2017, simran singhal wrote:=20
> > > > Resolve strict checkpatch USLEEP_RANGE checks by converting delays=
=20
> and=20
> > > > sleeps as described in ./Documentation/timers/timers-howto.txt.=20
> > > >=20
> > > > CHECK: usleep_range is preferred over udelay; see Documentation/=20
> > > > timers/timers-howto.txt=20
> > > >=20
> > > > Signed-off-by: simran singhal <singhal...@gmail.com <javascript:>>=
=20
>
> I prefer not to change this. The whole interrupt routine is very wonky,=
=20
> and=20
> changing some delays might break the communication with the i2c master.=
=20
> Also=20
> this is in interrupt context, so a change to usleep_range may not by=20
> justified.=20
>
> Thanks, for the explination.

Simran
=20

> Marc=20
>
>
>
> > > > ---=20
> > > >=20
> > > >  drivers/staging/nvec/nvec.c | 4 ++--=20
> > > >  1 file changed, 2 insertions(+), 2 deletions(-)=20
> > > >=20
> > > > diff --git a/drivers/staging/nvec/nvec.c=20
> b/drivers/staging/nvec/nvec.c=20
> > > > index c1feccf..cd35e64 100644=20
> > > > --- a/drivers/staging/nvec/nvec.c=20
> > > > +++ b/drivers/staging/nvec/nvec.c=20
> > > > @@ -631,7 +631,7 @@ static irqreturn_t nvec_interrupt(int irq, void=
=20
> > >=20
> > > *dev)=20
> > >=20
> > > >                  break;=20
> > > >          =20
> > > >          case 2:                /* first byte after command */=20
> > > >          =20
> > > >                  if (status =3D=3D (I2C_SL_IRQ | RNW | RCVD)) {=20
> > > >=20
> > > > -                        udelay(33);=20
> > > > +                        usleep_range(33, 100);=20
> > >=20
> > > How did you choose the upper limit.=20
> > >=20
> > > I believe that Greg previously suggested not to make these changes if=
=20
> you=20
> > > have no way to test them.=20
> > >=20
> > > Julia, After going through the reply given by Nicholas Mc Guire=20
> >=20
> >=20
> https://www.mail-archive.com/kernelnewbies@kernelnewbies.org/msg16464.htm=
l=20
> > in this reply he has mentioned that even the range of 10 microsecond is=
=20
> > enough,=20
> > so I prefer to take 100 as upper limit.=20
> >=20
> > Simran=20
> >=20
> > julia=20
> >=20
> > > >                          if (nvec->rx->data[0] !=3D 0x01) {=20
> > > >                          =20
> > > >                                  dev_err(nvec->dev,=20
> > > >                                  =20
> > > >                                          "Read without prior read=
=20
> > >=20
> > > command\n");=20
> > >=20
> > > > @@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(int irq, void=
=20
> > >=20
> > > *dev)=20
> > >=20
> > > >           * We experience less incomplete messages with this delay=
=20
> than=20
> > >=20
> > > without=20
> > >=20
> > > >           * it, but we don't know why. Help is appreciated.=20
> > > >           */=20
> > > >=20
> > > > -        udelay(100);=20
> > > > +        usleep_range(100, 200);=20
> > > >=20
> > > >          return IRQ_HANDLED;=20
> > > >  =20
> > > >  }=20
> > >=20
> > > Groups "outreachy-kernel" group.=20
> > >=20
> > > > To unsubscribe from this group and stop receiving emails from it,=
=20
> send=20
> > >=20
> > > an email to outreachy-kern...@googlegroups.com <javascript:>.=20
> > >=20
> > > > To post to this group, send email to outreach...@googlegroups.com=
=20
> > >=20
> > > <javascript:>.=20
> > >=20
> > > > To view this discussion on the web visit=20
> > >=20
> > >=20
> https://groups.google.com/d/msgid/outreachy-kernel/20170302142418.GA16773=
%=20
> > > 40singhal-Inspiron-5558.>=20
> > > > For more options, visit https://groups.google.com/d/optout.=20
>
>
------=_Part_459_1037260970.1488468485236
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Thursday, March 2, 2017 at 8:31:53 PM UTC+5:30,=
 Marc Dietrich wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Hi Simran=
,
<br>
<br>Am Donnerstag, 2. M=C3=A4rz 2017, 15:48:13 CET schrieb SIMRAN SINGHAL:
<br>&gt; On Thursday, March 2, 2017 at 8:06:40 PM UTC+5:30, Julia Lawall wr=
ote:
<br>&gt; &gt; On Thu, 2 Mar 2017, simran singhal wrote:
<br>&gt; &gt; &gt; Resolve strict checkpatch USLEEP_RANGE checks by convert=
ing delays and
<br>&gt; &gt; &gt; sleeps as described in ./Documentation/timers/timers-<wb=
r>howto.txt.
<br>&gt; &gt; &gt;=20
<br>&gt; &gt; &gt; CHECK: usleep_range is preferred over udelay; see Docume=
ntation/
<br>&gt; &gt; &gt; timers/timers-howto.txt
<br>&gt; &gt; &gt;=20
<br>&gt; &gt; &gt; Signed-off-by: simran singhal &lt;<a>singhal...@gmail.co=
m</a> &lt;javascript:&gt;&gt;
<br>
<br>I prefer not to change this. The whole interrupt routine is very wonky,=
 and=20
<br>changing some delays might break the communication with the i2c master.=
 Also=20
<br>this is in interrupt context, so a change to usleep_range may not by=20
<br>justified.
<br>
<br></blockquote><div>Thanks, for the explination.</div><div><br></div><div=
>Simran</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">=
Marc
<br>
<br>
<br>
<br>&gt; &gt; &gt; ---
<br>&gt; &gt; &gt;=20
<br>&gt; &gt; &gt; =C2=A0drivers/staging/nvec/nvec.c | 4 ++--
<br>&gt; &gt; &gt; =C2=A01 file changed, 2 insertions(+), 2 deletions(-)
<br>&gt; &gt; &gt;=20
<br>&gt; &gt; &gt; diff --git a/drivers/staging/nvec/nvec.c b/drivers/stagi=
ng/nvec/nvec.c
<br>&gt; &gt; &gt; index c1feccf..cd35e64 100644
<br>&gt; &gt; &gt; --- a/drivers/staging/nvec/nvec.c
<br>&gt; &gt; &gt; +++ b/drivers/staging/nvec/nvec.c
<br>&gt; &gt; &gt; @@ -631,7 +631,7 @@ static irqreturn_t nvec_interrupt(in=
t irq, void
<br>&gt; &gt;=20
<br>&gt; &gt; *dev)
<br>&gt; &gt;=20
<br>&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0break;
<br>&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0case 2: =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* first byte after command */
<br>&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0if (status =3D=3D (I2C_SL_IRQ | RNW | RCVD)) {
<br>&gt; &gt; &gt;=20
<br>&gt; &gt; &gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0udelay(33);
<br>&gt; &gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0usleep_range(33, 100);
<br>&gt; &gt;=20
<br>&gt; &gt; How did you choose the upper limit.
<br>&gt; &gt;=20
<br>&gt; &gt; I believe that Greg previously suggested not to make these ch=
anges if you
<br>&gt; &gt; have no way to test them.
<br>&gt; &gt;=20
<br>&gt; &gt; Julia, After going through the reply given by Nicholas Mc Gui=
re
<br>&gt;=20
<br>&gt; <a href=3D"https://www.mail-archive.com/kernelnewbies@kernelnewbie=
s.org/msg16464.html" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this=
.href=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fwww.mail-archive=
.com%2Fkernelnewbies%40kernelnewbies.org%2Fmsg16464.html\x26sa\x3dD\x26sntz=
\x3d1\x26usg\x3dAFQjCNG9H-EMtN_1PfHelUYGcbw5YglPBw&#39;;return true;" oncli=
ck=3D"this.href=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fwww.ma=
il-archive.com%2Fkernelnewbies%40kernelnewbies.org%2Fmsg16464.html\x26sa\x3=
dD\x26sntz\x3d1\x26usg\x3dAFQjCNG9H-EMtN_1PfHelUYGcbw5YglPBw&#39;;return tr=
ue;">https://www.mail-archive.com/<wbr>kernelnewbies@kernelnewbies.<wbr>org=
/msg16464.html</a>
<br>&gt; in this reply he has mentioned that even the range of 10 microseco=
nd is
<br>&gt; enough,
<br>&gt; so I prefer to take 100 as upper limit.
<br>&gt;=20
<br>&gt; Simran
<br>&gt;=20
<br>&gt; julia
<br>&gt;=20
<br>&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (nvec-&gt;rx-&gt;data[0] !=3D 0x01) {
<br>&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(nvec-=
&gt;dev,
<br>&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0&quot;Read without prior read
<br>&gt; &gt;=20
<br>&gt; &gt; command\n&quot;);
<br>&gt; &gt;=20
<br>&gt; &gt; &gt; @@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(in=
t irq, void
<br>&gt; &gt;=20
<br>&gt; &gt; *dev)
<br>&gt; &gt;=20
<br>&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * We experience less =
incomplete messages with this delay than
<br>&gt; &gt;=20
<br>&gt; &gt; without
<br>&gt; &gt;=20
<br>&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * it, but we don&#39;=
t know why. Help is appreciated.
<br>&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */
<br>&gt; &gt; &gt;=20
<br>&gt; &gt; &gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0udelay(100);
<br>&gt; &gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0usleep_range(100, 200);
<br>&gt; &gt; &gt;=20
<br>&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return IRQ_HANDLED;
<br>&gt; &gt; &gt; =C2=A0
<br>&gt; &gt; &gt; =C2=A0}
<br>&gt; &gt;=20
<br>&gt; &gt; Groups &quot;outreachy-kernel&quot; group.
<br>&gt; &gt;=20
<br>&gt; &gt; &gt; To unsubscribe from this group and stop receiving emails=
 from it, send
<br>&gt; &gt;=20
<br>&gt; &gt; an email to <a>outreachy-kern...@<wbr>googlegroups.com</a> &l=
t;javascript:&gt;.
<br>&gt; &gt;=20
<br>&gt; &gt; &gt; To post to this group, send email to <a>outreach...@goog=
legroups.com</a>
<br>&gt; &gt;=20
<br>&gt; &gt; &lt;javascript:&gt;.
<br>&gt; &gt;=20
<br>&gt; &gt; &gt; To view this discussion on the web visit
<br>&gt; &gt;=20
<br>&gt; &gt; <a href=3D"https://groups.google.com/d/msgid/outreachy-kernel=
/20170302142418.GA16773%" target=3D"_blank" rel=3D"nofollow" onmousedown=3D=
"this.href=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/201703=
02142418.GA16773%&#39;;return true;" onclick=3D"this.href=3D&#39;https://gr=
oups.google.com/d/msgid/outreachy-kernel/20170302142418.GA16773%&#39;;retur=
n true;">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20170=
302142418.GA16773%</a>
<br>&gt; &gt; 40singhal-Inspiron-5558.&gt;=20
<br>&gt; &gt; &gt; For more options, visit <a href=3D"https://groups.google=
.com/d/optout" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;https://groups.google.com/d/optout&#39;;return true;" onclick=3D"th=
is.href=3D&#39;https://groups.google.com/d/optout&#39;;return true;">https:=
//groups.google.com/d/<wbr>optout</a>.
<br>
<br></blockquote></div>
------=_Part_459_1037260970.1488468485236--

------=_Part_458_1999039915.1488468485235--

