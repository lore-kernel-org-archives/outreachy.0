X-GM-THRID: 6392907056098050048
Date: Thu, 2 Mar 2017 07:17:07 -0800 (PST)
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: singhalsimran0@gmail.com, marvin24@gmx.de, gregkh@linuxfoundation.org,
	ac100@lists.launchpad.net, linux-tegra@vger.kernel.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Message-Id: <4958c8a8-4b50-4567-91d8-9554e9bdf7f6@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1703021557230.3414@hadrien>
References: <20170302142418.GA16773@singhal-Inspiron-5558> <alpine.DEB.2.20.1703021535500.3414@hadrien> <b90bc602-cf06-4abb-bea2-6386d4976864@googlegroups.com>
 <alpine.DEB.2.20.1703021557230.3414@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: nvec: cleanup USLEEP_RANGE
 checkpatch checks
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_970_585911967.1488467827387"
X-Google-Token: EPPu4MUFh-n8rPTgdAw0
X-Google-IP: 14.139.82.6

------=_Part_970_585911967.1488467827387
Content-Type: multipart/alternative; 
	boundary="----=_Part_971_825758182.1488467827387"

------=_Part_971_825758182.1488467827387
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Thursday, March 2, 2017 at 8:31:23 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Thu, 2 Mar 2017, SIMRAN SINGHAL wrote: 
>
> > 
> > 
> > On Thursday, March 2, 2017 at 8:06:40 PM UTC+5:30, Julia Lawall wrote: 
> > 
> > 
> >       On Thu, 2 Mar 2017, simran singhal wrote: 
> > 
> >       > Resolve strict checkpatch USLEEP_RANGE checks by converting 
> >       delays and 
> >       > sleeps as described in 
> >       ./Documentation/timers/timers-howto.txt. 
> >       > 
> >       > CHECK: usleep_range is preferred over udelay; see 
> >       Documentation/ 
> >       > timers/timers-howto.txt 
> >       > 
> >       > Signed-off-by: simran singhal <singhal...@gmail.com> 
> >       > --- 
> >       >  drivers/staging/nvec/nvec.c | 4 ++-- 
> >       >  1 file changed, 2 insertions(+), 2 deletions(-) 
> >       > 
> >       > diff --git a/drivers/staging/nvec/nvec.c 
> >       b/drivers/staging/nvec/nvec.c 
> >       > index c1feccf..cd35e64 100644 
> >       > --- a/drivers/staging/nvec/nvec.c 
> >       > +++ b/drivers/staging/nvec/nvec.c 
> >       > @@ -631,7 +631,7 @@ static irqreturn_t nvec_interrupt(int irq, 
> >       void *dev) 
> >       >                  break; 
> >       >          case 2:                /* first byte after command */ 
> >       >                  if (status == (I2C_SL_IRQ | RNW | RCVD)) { 
> >       > -                        udelay(33); 
> >       > +                        usleep_range(33, 100); 
> > 
> >       How did you choose the upper limit. 
> > 
> >       I believe that Greg previously suggested not to make these 
> >       changes if you 
> >       have no way to test them. 
> > 
> > Julia, After going through the reply given by Nicholas Mc Guire  
> > 
> https://www.mail-archive.com/kernelnewbies@kernelnewbies.org/msg16464.html 
> > in this reply he has mentioned that even the range of 10 microsecond is 
> > enough, 
> > so I prefer to take 100 as upper limit.   
>
> Than you for the link. 
>
> It looks like he suggests to change 33 to 30-40, not to 33-100.  In any 
> case, you have three choices for this kind of issue: 
> 1. Don't make the change, because you can't test the result 
> 2. Make the change, and explain the commit log what your rationale is 
> 3. Make the change, and explain below the --- that you have no idea what 
> you are doing, and you are just proposing the patch as something concrete 
> to start a discussion. 
>
> But your preference is not a suitable justification.  The hardware does 
> something, and the choice can only really be made by the person who knows 
> what it does. 
>
>  
Thanks, 
Julia I'll keep this in mind from next time.

I choose the range from 33 to 100 for being on more safer side.
Should I make it 30-40 and send v2.

julia 
>
> >   
> > Simran 
> > 
> >       julia 
> > 
> > 
> >       >                          if (nvec->rx->data[0] != 0x01) { 
> >       >                                  dev_err(nvec->dev, 
> >       >                                          "Read without prior 
> >       read command\n"); 
> >       > @@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(int irq, 
> >       void *dev) 
> >       >           * We experience less incomplete messages with this 
> >       delay than without 
> >       >           * it, but we don't know why. Help is appreciated. 
> >       >           */ 
> >       > -        udelay(100); 
> >       > +        usleep_range(100, 200); 
> >       > 
> >       >          return IRQ_HANDLED; 
> >       >  } 
> >       > -- 
> >       > 2.7.4 
> >       > 
> >       > -- 
> >       > You received this message because you are subscribed to the 
> >       Google Groups "outreachy-kernel" group. 
> >       > To unsubscribe from this group and stop receiving emails from 
> >       it, send an email to outreachy-kern...@googlegroups.com. 
> >       > To post to this group, send email to 
> >       outreach...@googlegroups.com. 
> >       > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/20170302142418.GA16773%4 
> >       0singhal-Inspiron-5558. 
> >       > For more options, visit https://groups.google.com/d/optout. 
> >       > 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups 
> > "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an 
> > email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/b90bc602-cf06-4abb-bea2- 
> > 6386d4976864%40googlegroups.com. 
> > For more options, visit https://groups.google.com/d/optout. 
> > 
> >


------=_Part_971_825758182.1488467827387
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Thursday, March 2, 2017 at 8:31:23 PM UTC+5:30,=
 Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;ma=
rgin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Thu, 2 Mar 2017, SIMRAN SINGHAL wrote:
<br>
<br>&gt;
<br>&gt;
<br>&gt; On Thursday, March 2, 2017 at 8:06:40 PM UTC+5:30, Julia Lawall wr=
ote:
<br>&gt;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 On Thu, 2 Mar 2017, simran singhal wrote:
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Resolve strict checkpatch USLEEP_RANGE c=
hecks by converting
<br>&gt; =C2=A0 =C2=A0 =C2=A0 delays and
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; sleeps as described in
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ./Documentation/timers/timers-<wbr>howto.txt.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; CHECK: usleep_range is preferred over ud=
elay; see
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Documentation/
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; timers/timers-howto.txt
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Signed-off-by: simran singhal &lt;<a>sin=
ghal...@gmail.com</a>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; ---
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/nvec/nvec.c | 4 ++=
--
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A01 file changed, 2 insertions(+), 2=
 deletions(-)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/nvec/nvec.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/nvec/nvec.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index c1feccf..cd35e64 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/nvec/nvec.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/nvec/nvec.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -631,7 +631,7 @@ static irqreturn_t n=
vec_interrupt(int irq,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 void *dev)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0break;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0case 2:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* first byte after command */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (status =
=3D=3D (I2C_SL_IRQ | RNW | RCVD)) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>udelay(33);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>usleep_range(33, 100);
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 How did you choose the upper limit.
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 I believe that Greg previously suggested not =
to make these
<br>&gt; =C2=A0 =C2=A0 =C2=A0 changes if you
<br>&gt; =C2=A0 =C2=A0 =C2=A0 have no way to test them.
<br>&gt;
<br>&gt; Julia, After going through the reply given by=C2=A0Nicholas Mc Gui=
re=C2=A0
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
<br>&gt; so I prefer to take 100 as upper limit. =C2=A0
<br>
<br>Than you for the link.
<br>
<br>It looks like he suggests to change 33 to 30-40, not to 33-100. =C2=A0I=
n any
<br>case, you have three choices for this kind of issue:
<br>1. Don&#39;t make the change, because you can&#39;t test the result
<br>2. Make the change, and explain the commit log what your rationale is
<br>3. Make the change, and explain below the --- that you have no idea wha=
t
<br>you are doing, and you are just proposing the patch as something concre=
te
<br>to start a discussion.
<br>
<br>But your preference is not a suitable justification. =C2=A0The hardware=
 does
<br>something, and the choice can only really be made by the person who kno=
ws
<br>what it does.
<br>
<br></blockquote><div>=C2=A0</div><div>Thanks,=C2=A0</div><div>Julia I&#39;=
ll keep this in mind from next time.</div><div><br></div><div>I choose the =
range from 33 to 100 for being on more safer side.</div><div>Should I make =
it 30-40 and send v2.</div><div><br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-=
left: 1ex;">julia
<br>
<br>&gt; =C2=A0
<br>&gt; Simran
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 julia
<br>&gt;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (nvec-&gt;rx-&gt;data[0] !=3D 0x01) =
{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=
=A0=C2=A0=C2=A0dev_err(nvec-&gt;dev,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&quot;Read w=
ithout prior
<br>&gt; =C2=A0 =C2=A0 =C2=A0 read command\n&quot;);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -718,7 +718,7 @@ static irqreturn_t n=
vec_interrupt(int irq,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 void *dev)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 * We experience less incomplete messages with this
<br>&gt; =C2=A0 =C2=A0 =C2=A0 delay than without
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 * it, but we don&#39;t know why. Help is appreciated.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0udelay(100);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0usleep_range(100, 200);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0return IRQ_HANDLED;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; 2.7.4
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; You received this message because you ar=
e subscribed to the
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Google Groups &quot;outreachy-kernel&quot; gr=
oup.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To unsubscribe from this group and stop =
receiving emails from
<br>&gt; =C2=A0 =C2=A0 =C2=A0 it, send an email to <a>outreachy-kern...@<wb=
r>googlegroups.com</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To post to this group, send email to
<br>&gt; =C2=A0 =C2=A0 =C2=A0 <a>outreach...@googlegroups.com</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To view this discussion on the web visit=
https://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/201703=
02142418.GA16773%4" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.=
href=3D&#39;http://groups.google.com/d/msgid/outreachy-kernel/2017030214241=
8.GA16773%4&#39;;return true;" onclick=3D"this.href=3D&#39;http://groups.go=
ogle.com/d/msgid/outreachy-kernel/20170302142418.GA16773%4&#39;;return true=
;">groups.google.<wbr>com/d/msgid/outreachy-kernel/<wbr>20170302142418.GA16=
773%4</a>
<br>&gt; =C2=A0 =C2=A0 =C2=A0 0singhal-Inspiron-5558.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; For more options, visit <a href=3D"https=
://groups.google.com/d/optout" target=3D"_blank" rel=3D"nofollow" onmousedo=
wn=3D"this.href=3D&#39;https://groups.google.com/d/optout&#39;;return true;=
" onclick=3D"this.href=3D&#39;https://groups.google.com/d/optout&#39;;retur=
n true;">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups
<br>&gt; &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an
<br>&gt; email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-=
mailto=3D"xh2uubLSAwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;ja=
vascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;r=
eturn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"xh2uubLSAwAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visithttps://<a href=3D"http://=
groups.google.com/d/msgid/outreachy-kernel/b90bc602-cf06-4abb-bea2-" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://groups.=
google.com/d/msgid/outreachy-kernel/b90bc602-cf06-4abb-bea2-&#39;;return tr=
ue;" onclick=3D"this.href=3D&#39;http://groups.google.com/d/msgid/outreachy=
-kernel/b90bc602-cf06-4abb-bea2-&#39;;return true;">groups.google.<wbr>com/=
d/msgid/outreachy-kernel/<wbr>b90bc602-cf06-4abb-bea2-</a>
<br>&gt; 6386d4976864%<a href=3D"http://40googlegroups.com" target=3D"_blan=
k" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/u=
rl?q\x3dhttp%3A%2F%2F40googlegroups.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dA=
FQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;return true;" onclick=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F40googlegroups.com\x26s=
a\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;retur=
n true;">40googlegroups.<wbr>com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br>&gt;</blockquote></div>
------=_Part_971_825758182.1488467827387--

------=_Part_970_585911967.1488467827387--

