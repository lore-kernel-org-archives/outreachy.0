X-GM-THRID: 6664067951305424896
Date: Sun, 3 Mar 2019 01:51:44 -0800 (PST)
From: idebleenasen@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <9807aa55-36b5-40d3-9208-e6ce65b2f4d3@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903031044420.3207@hadrien>
References: <1551599208-3301-1-git-send-email-idebleenasen@gmail.com> <alpine.DEB.2.21.1903030853110.3207@hadrien> <8bc1b671-996a-45eb-b78f-5b322a23d7a5@googlegroups.com>
 <alpine.DEB.2.21.1903031044420.3207@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: pi433: Fix line over 80
 characters issue
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_77_1275893838.1551606705060"
X-Google-Token: ELDH7uMFa9nHRP6sBKc0
X-Google-IP: 114.29.227.100

------=_Part_77_1275893838.1551606705060
Content-Type: multipart/alternative; 
	boundary="----=_Part_78_669522377.1551606705060"

------=_Part_78_669522377.1551606705060
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, March 3, 2019 at 3:16:02 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sun, 3 Mar 2019, ideble...@gmail.com <javascript:> wrote: 
>
> > On Sunday, March 3, 2019 at 1:26:33 PM UTC+5:30, Julia Lawall wrote: 
> > 
> > 
> >       On Sat, 2 Mar 2019, Debleena Sen wrote: 
> > 
> >       > This patch re-formats the code to remove the checkpatch.pl 
> >       warning(on 
> >       > line no. 566): 
> >       > WARNING: line over 80 characters 
> > 
> >       The log message should be in the imperative.  So it should start 
> >       with 
> >       Reformat.  However, reformat is again quite vague.  Something 
> >       like "Add a 
> >       newline" would be better. 
> > 
> >       You don't need to give the line number.  That is not an 
> >       information that 
> >       is immediately meaningful, ie no one remembers what is on line 
> >       156.  To 
> >       find out what is on that line, they will have to look at the 
> >       change, and 
> >       at that time they can see the line number as well. 
> > 
> >       On the other hand, if you ever feel obliged to put something in 
> >       parentheses, please put a space in front of the (.  Otherwise it 
> >       looks 
> >       like a function call. 
> > 
> >       julia 
> > 
> >       > 
> >       > Signed-off-by: Debleena Sen <ideble...@gmail.com> 
> >       > --- 
> >       >  drivers/staging/pi433/rf69.c | 3 ++- 
> >       >  1 file changed, 2 insertions(+), 1 deletion(-) 
> >       > 
> >       > diff --git a/drivers/staging/pi433/rf69.c 
> >       b/drivers/staging/pi433/rf69.c 
> >       > index e19b9ce..0c189a7 100644 
> >       > --- a/drivers/staging/pi433/rf69.c 
> >       > +++ b/drivers/staging/pi433/rf69.c 
> >       > @@ -563,7 +563,8 @@ bool rf69_get_flag(struct spi_device *spi, 
> >       enum flag flag) 
> >       >  { 
> >       >          switch (flag) { 
> >       >          case mode_switch_completed: 
> >       > -                return (rf69_read_reg(spi, REG_IRQFLAGS1) & 
> >       MASK_IRQFLAGS1_MODE_READY); 
> >       > +                return (rf69_read_reg(spi, REG_IRQFLAGS1) & 
> >       > +                        MASK_IRQFLAGS1_MODE_READY); 
> >       >          case ready_to_receive: 
> >       >                  return (rf69_read_reg(spi, REG_IRQFLAGS1) & 
> >       MASK_IRQFLAGS1_RX_READY); 
> >       >          case ready_to_send: 
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
> groups.google.com/d/msgid/outreachy-kernel/1551599208-3301-1-git-se 
> >       nd-email-idebleenasen%40gmail.com. 
> >       > For more options, visit https://groups.google.com/d/optout. 
> >       > 
> > 
> > "Add a newline to remove the checkpatch.pl warning:"  or "Break the 
> line and 
> > match the indentation to remove the checkpatch.pl warning:" 
> > Can you please advise me which log message should I use?  
>
> Either is fine.  Your suggestion is probably better. 
>
> > I've just tweaked the coding style to remove the warning. I've broken 
> the 
> > long line and then matched the indentation with '(' of the return 
> statement 
> > so that it conforms to the Linux Coding Style.  
>
> It's true that these changes are quite simple, which somehow makes it hard 
> to know exactly what to say about them, because they seem so obvious.  But 
> it is useful to get into the right mindset about what information to 
> provide. 
>
> julia 
>
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
> groups.google.com/d/msgid/outreachy-kernel/8bc1b671-996a-45eb-b78f- 
> > 5b322a23d7a5%40googlegroups.com. 
> > For more options, visit https://groups.google.com/d/optout. 
> > 
> >


Thank you. I'm editing the log message and sending the patch again. 

------=_Part_78_669522377.1551606705060
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sunday, March 3, 2019 at 3:16:02 PM UTC+5:30, J=
ulia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;marg=
in-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sun, 3 Mar 2019, <a href=3D"javascript:" target=3D"_blank" gdf-obfus=
cated-mailto=3D"4koLP18_CQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&=
#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&=
#39;;return true;">ideble...@gmail.com</a> wrote:
<br>
<br>&gt; On Sunday, March 3, 2019 at 1:26:33 PM UTC+5:30, Julia Lawall wrot=
e:
<br>&gt;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 On Sat, 2 Mar 2019, Debleena Sen wrote:
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; This patch re-formats the code to remove=
 the <a href=3D"http://checkpatch.pl" target=3D"_blank" rel=3D"nofollow" on=
mousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fc=
heckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI=
3_mFug&#39;;return true;" onclick=3D"this.href=3D&#39;http://www.google.com=
/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQj=
CNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">checkpatch.pl</a>
<br>&gt; =C2=A0 =C2=A0 =C2=A0 warning(on
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; line no. 566):
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; WARNING: line over 80 characters
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 The log message should be in the imperative. =
=C2=A0So it should start
<br>&gt; =C2=A0 =C2=A0 =C2=A0 with
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Reformat. =C2=A0However, reformat is again qu=
ite vague. =C2=A0Something
<br>&gt; =C2=A0 =C2=A0 =C2=A0 like &quot;Add a
<br>&gt; =C2=A0 =C2=A0 =C2=A0 newline&quot; would be better.
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 You don&#39;t need to give the line number. =
=C2=A0That is not an
<br>&gt; =C2=A0 =C2=A0 =C2=A0 information that
<br>&gt; =C2=A0 =C2=A0 =C2=A0 is immediately meaningful, ie no one remember=
s what is on line
<br>&gt; =C2=A0 =C2=A0 =C2=A0 156. =C2=A0To
<br>&gt; =C2=A0 =C2=A0 =C2=A0 find out what is on that line, they will have=
 to look at the
<br>&gt; =C2=A0 =C2=A0 =C2=A0 change, and
<br>&gt; =C2=A0 =C2=A0 =C2=A0 at that time they can see the line number as =
well.
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 On the other hand, if you ever feel obliged t=
o put something in
<br>&gt; =C2=A0 =C2=A0 =C2=A0 parentheses, please put a space in front of t=
he (. =C2=A0Otherwise it
<br>&gt; =C2=A0 =C2=A0 =C2=A0 looks
<br>&gt; =C2=A0 =C2=A0 =C2=A0 like a function call.
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 julia
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Signed-off-by: Debleena Sen &lt;<a>idebl=
e...@gmail.com</a>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; ---
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/pi433/rf69.c | 3 +=
+-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A01 file changed, 2 insertions(+), 1=
 deletion(-)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/pi433/rf69.=
c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/pi433/rf69.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index e19b9ce..0c189a7 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/pi433/rf69.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/pi433/rf69.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -563,7 +563,8 @@ bool rf69_get_flag(s=
truct spi_device *spi,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 enum flag flag)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0switch (flag) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0case mode_switch_completed:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return (rf69_read_=
reg(spi, REG_IRQFLAGS1) &amp;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 MASK_IRQFLAGS1_MODE_READY);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return (rf69_read_=
reg(spi, REG_IRQFLAGS1) &amp;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MASK_<wbr>IRQFLAGS1_MODE_READY);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0case ready_to_receive:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return (rf69=
_read_reg(spi, REG_IRQFLAGS1) &amp;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 MASK_IRQFLAGS1_RX_READY);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0case ready_to_send:
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
https://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/155159=
9208-3301-1-git-se" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.=
href=3D&#39;http://groups.google.com/d/msgid/outreachy-kernel/1551599208-33=
01-1-git-se&#39;;return true;" onclick=3D"this.href=3D&#39;http://groups.go=
ogle.com/d/msgid/outreachy-kernel/1551599208-3301-1-git-se&#39;;return true=
;">groups.google.<wbr>com/d/msgid/outreachy-kernel/<wbr>1551599208-3301-1-g=
it-se</a>
<br>&gt; =C2=A0 =C2=A0 =C2=A0 nd-email-idebleenasen%<a href=3D"http://40gma=
il.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;=
http://www.google.com/url?q\x3dhttp%3A%2F%2F40gmail.com\x26sa\x3dD\x26sntz\=
x3d1\x26usg\x3dAFQjCNF6SYGO6IiAPhbk3gMhjWdyIU0BdA&#39;;return true;" onclic=
k=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F40gmail.c=
om\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNF6SYGO6IiAPhbk3gMhjWdyIU0BdA&#39=
;;return true;">40gmail.<wbr>com</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; For more options, visit <a href=3D"https=
://groups.google.com/d/optout" target=3D"_blank" rel=3D"nofollow" onmousedo=
wn=3D"this.href=3D&#39;https://groups.google.com/d/optout&#39;;return true;=
" onclick=3D"this.href=3D&#39;https://groups.google.com/d/optout&#39;;retur=
n true;">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt;
<br>&gt; &quot;Add a newline to remove the <a href=3D"http://checkpatch.pl"=
 target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://=
www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\=
x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"=
this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\=
x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;r=
eturn true;">checkpatch.pl</a> warning:&quot;=C2=A0 or &quot;Break the line=
 and
<br>&gt; match the indentation to remove the <a href=3D"http://checkpatch.p=
l" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http:=
//www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d=
1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=
=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch=
.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#3=
9;;return true;">checkpatch.pl</a> warning:&quot;
<br>&gt; Can you please advise me which log message should I use?=C2=A0
<br>
<br>Either is fine. =C2=A0Your suggestion is probably better.
<br>
<br>&gt; I&#39;ve just tweaked the coding style to remove the warning. I&#3=
9;ve broken the
<br>&gt; long line and then matched the indentation with &#39;(&#39; of the=
 return statement
<br>&gt; so that it conforms to the Linux Coding Style.=C2=A0
<br>
<br>It&#39;s true that these changes are quite simple, which somehow makes =
it hard
<br>to know exactly what to say about them, because they seem so obvious. =
=C2=A0But
<br>it is useful to get into the right mindset about what information to
<br>provide.
<br>
<br>julia
<br>
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups
<br>&gt; &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an
<br>&gt; email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-=
mailto=3D"4koLP18_CQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;ja=
vascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;r=
eturn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"4koLP18_CQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visithttps://<a href=3D"http://=
groups.google.com/d/msgid/outreachy-kernel/8bc1b671-996a-45eb-b78f-" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://groups.=
google.com/d/msgid/outreachy-kernel/8bc1b671-996a-45eb-b78f-&#39;;return tr=
ue;" onclick=3D"this.href=3D&#39;http://groups.google.com/d/msgid/outreachy=
-kernel/8bc1b671-996a-45eb-b78f-&#39;;return true;">groups.google.<wbr>com/=
d/msgid/outreachy-kernel/<wbr>8bc1b671-996a-45eb-b78f-</a>
<br>&gt; 5b322a23d7a5%<a href=3D"http://40googlegroups.com" target=3D"_blan=
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
<br>&gt;</blockquote><div><br></div><div>Thank you. I&#39;m editing the log=
 message and sending the patch again.=C2=A0</div></div>
------=_Part_78_669522377.1551606705060--

------=_Part_77_1275893838.1551606705060--

