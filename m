X-GM-THRID: 6664067951305424896
Date: Sun, 3 Mar 2019 00:40:11 -0800 (PST)
From: idebleenasen@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <8bc1b671-996a-45eb-b78f-5b322a23d7a5@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903030853110.3207@hadrien>
References: <1551599208-3301-1-git-send-email-idebleenasen@gmail.com>
 <alpine.DEB.2.21.1903030853110.3207@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: pi433: Fix line over 80
 characters issue
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_63_1806841408.1551602411553"
X-Google-Token: EOul7uMFwOIy2X-55T80
X-Google-IP: 114.29.227.48

------=_Part_63_1806841408.1551602411553
Content-Type: multipart/alternative; 
	boundary="----=_Part_64_1787301071.1551602411554"

------=_Part_64_1787301071.1551602411554
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On Sunday, March 3, 2019 at 1:26:33 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sat, 2 Mar 2019, Debleena Sen wrote: 
>
> > This patch re-formats the code to remove the checkpatch.pl warning(on 
> > line no. 566): 
> > WARNING: line over 80 characters 
>
> The log message should be in the imperative.  So it should start with 
> Reformat.  However, reformat is again quite vague.  Something like "Add a 
> newline" would be better. 
>
> You don't need to give the line number.  That is not an information that 
> is immediately meaningful, ie no one remembers what is on line 156.  To 
> find out what is on that line, they will have to look at the change, and 
> at that time they can see the line number as well. 
>
> On the other hand, if you ever feel obliged to put something in 
> parentheses, please put a space in front of the (.  Otherwise it looks 
> like a function call. 
>
> julia 
>
> > 
> > Signed-off-by: Debleena Sen <ideble...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/pi433/rf69.c | 3 ++- 
> >  1 file changed, 2 insertions(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/rf69.c 
> > index e19b9ce..0c189a7 100644 
> > --- a/drivers/staging/pi433/rf69.c 
> > +++ b/drivers/staging/pi433/rf69.c 
> > @@ -563,7 +563,8 @@ bool rf69_get_flag(struct spi_device *spi, enum flag 
> flag) 
> >  { 
> >          switch (flag) { 
> >          case mode_switch_completed: 
> > -                return (rf69_read_reg(spi, REG_IRQFLAGS1) & 
> MASK_IRQFLAGS1_MODE_READY); 
> > +                return (rf69_read_reg(spi, REG_IRQFLAGS1) & 
> > +                        MASK_IRQFLAGS1_MODE_READY); 
> >          case ready_to_receive: 
> >                  return (rf69_read_reg(spi, REG_IRQFLAGS1) & 
> MASK_IRQFLAGS1_RX_READY); 
> >          case ready_to_send: 
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
> https://groups.google.com/d/msgid/outreachy-kernel/1551599208-3301-1-git-send-email-idebleenasen%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>
"Add a newline to remove the checkpatch.pl warning:"  or "Break the line 
and match the indentation to remove the checkpatch.pl warning:"
Can you please advise me which log message should I use? 
I've just tweaked the coding style to remove the warning. I've broken the 
long line and then matched the indentation with '(' of the return statement 
so that it conforms to the Linux Coding Style. 

------=_Part_64_1787301071.1551602411554
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Sunday, March 3, 2019 at 1:26:33 PM UTC+5:30, Julia Law=
all wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left:=
 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sat, 2 Mar 2019, Debleena Sen wrote:
<br>
<br>&gt; This patch re-formats the code to remove the <a href=3D"http://che=
ckpatch.pl" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&=
#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x2=
6sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;" =
onclick=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fche=
ckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_=
mFug&#39;;return true;">checkpatch.pl</a> warning(on
<br>&gt; line no. 566):
<br>&gt; WARNING: line over 80 characters
<br>
<br>The log message should be in the imperative. =C2=A0So it should start w=
ith
<br>Reformat. =C2=A0However, reformat is again quite vague. =C2=A0Something=
 like &quot;Add a
<br>newline&quot; would be better.
<br>
<br>You don&#39;t need to give the line number. =C2=A0That is not an inform=
ation that
<br>is immediately meaningful, ie no one remembers what is on line 156. =C2=
=A0To
<br>find out what is on that line, they will have to look at the change, an=
d
<br>at that time they can see the line number as well.
<br>
<br>On the other hand, if you ever feel obliged to put something in
<br>parentheses, please put a space in front of the (. =C2=A0Otherwise it l=
ooks
<br>like a function call.
<br>
<br>julia
<br>
<br>&gt;
<br>&gt; Signed-off-by: Debleena Sen &lt;<a href=3D"javascript:" target=3D"=
_blank" gdf-obfuscated-mailto=3D"TNt-nWU5CQAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">ideble...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/pi433/rf69.c | 3 ++-
<br>&gt; =C2=A01 file changed, 2 insertions(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/=
rf69.c
<br>&gt; index e19b9ce..0c189a7 100644
<br>&gt; --- a/drivers/staging/pi433/rf69.c
<br>&gt; +++ b/drivers/staging/pi433/rf69.c
<br>&gt; @@ -563,7 +563,8 @@ bool rf69_get_flag(struct spi_device *spi, enu=
m flag flag)
<br>&gt; =C2=A0{
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0switch (flag=
) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case mode_sw=
itch_completed:
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return (rf69_read_reg(spi, REG_IRQFLAGS1) =
&amp; MASK_IRQFLAGS1_MODE_READY);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return (rf69_read_reg(spi, REG_IRQFLAGS1) =
&amp;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0MASK_<wbr>IRQFLAGS1_MODE_READY);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case ready_t=
o_receive:
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return (rf69_read_reg(spi, REG_IRQFLAGS=
1) &amp; MASK_IRQFLAGS1_RX_READY);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case ready_t=
o_send:
<br>&gt; --
<br>&gt; 2.7.4
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"TNt-nWU5CQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"TNt-nWU5CQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/1551599208-3301-1-git-send-email-idebl=
eenasen%40gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this=
.href=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/1551599208-=
3301-1-git-send-email-idebleenasen%40gmail.com&#39;;return true;" onclick=
=3D"this.href=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/155=
1599208-3301-1-git-send-email-idebleenasen%40gmail.com&#39;;return true;">h=
ttps://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>1551599208-3301=
-1-git-send-<wbr>email-idebleenasen%40gmail.com</a><wbr>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote><div>&quot;Add a newline to remove the checkpatch.pl warni=
ng:&quot;=C2=A0 or &quot;Break the line and match the indentation to remove=
 the checkpatch.pl warning:&quot;</div><div>Can you please advise me which =
log message should I use?=C2=A0</div><div>I&#39;ve just tweaked the coding =
style to remove the warning. I&#39;ve broken the long line and then matched=
 the indentation with &#39;(&#39; of the return statement so that it confor=
ms to the Linux Coding Style.=C2=A0</div></div>
------=_Part_64_1787301071.1551602411554--

------=_Part_63_1806841408.1551602411553--

