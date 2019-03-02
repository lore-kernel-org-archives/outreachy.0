X-GM-THRID: 6663862445889552384
Date: Sat, 2 Mar 2019 11:14:48 -0800 (PST)
From: idebleenasen@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <1bf62906-43a2-4233-90c4-0bc8cc53f0eb@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903021937500.11898@hadrien>
References: <1551551350-111229-1-git-send-email-idebleenasen@gmail.com>
 <alpine.DEB.2.21.1903021937500.11898@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Fixed Warning: line over 80
 characters
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_758_1676941475.1551554088609"
X-Google-Token: EKis6-MFNKdV9Joz9ZA0
X-Google-IP: 114.29.227.48

------=_Part_758_1676941475.1551554088609
Content-Type: multipart/alternative; 
	boundary="----=_Part_759_472290354.1551554088609"

------=_Part_759_472290354.1551554088609
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On Sunday, March 3, 2019 at 12:10:55 AM UTC+5:30, Julia Lawall wrote:
>
> You need a log message.  Even if everything seems obvious from the subject 
> line.  The subject line and the log message should be in the imperative. 
> So that would be Fix, rather than Fixed. 
>
> The log message should say what you have done and why.  Fix doesn't really 
> do either.  You have fixed something, but one doesn't know what change you 
> have made nor why you chose to make that change. 
>
> Presumably you found this issue using checkpatch.  So you could say "Issue 
> found using checkpatch" to make that clear. 
>
> julia 
>
> On Sat, 2 Mar 2019, Debleena Sen wrote: 
>
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
> https://groups.google.com/d/msgid/outreachy-kernel/1551551350-111229-1-git-send-email-idebleenasen%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>
I'm sorry for not adding the log message. This was my first patch and I was 
a bit confused about the process. I'll keep this in mind for future.

Yes I did find the issue after running checkpatch.pl on pi433/rf69.c

The checkpatch.pl warning was: [WARNING]: line over 80 charaters #566

So I reformatted the line to remove the warning. Is this a valid patch?

 

------=_Part_759_472290354.1551554088609
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Sunday, March 3, 2019 at 12:10:55 AM UTC+5:30, Julia La=
wall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left=
: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">You need a log mess=
age. =C2=A0Even if everything seems obvious from the subject
<br>line. =C2=A0The subject line and the log message should be in the imper=
ative.
<br>So that would be Fix, rather than Fixed.
<br>
<br>The log message should say what you have done and why. =C2=A0Fix doesn&=
#39;t really
<br>do either. =C2=A0You have fixed something, but one doesn&#39;t know wha=
t change you
<br>have made nor why you chose to make that change.
<br>
<br>Presumably you found this issue using checkpatch. =C2=A0So you could sa=
y &quot;Issue
<br>found using checkpatch&quot; to make that clear.
<br>
<br>julia
<br>
<br>On Sat, 2 Mar 2019, Debleena Sen wrote:
<br>
<br>&gt; Signed-off-by: Debleena Sen &lt;<a href=3D"javascript:" target=3D"=
_blank" gdf-obfuscated-mailto=3D"S1SDpvoNCQAJ" rel=3D"nofollow" onmousedown=
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
ailto=3D"S1SDpvoNCQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"S1SDpvoNCQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/1551551350-111229-1-git-send-email-ide=
bleenasen%40gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"th=
is.href=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/155155135=
0-111229-1-git-send-email-idebleenasen%40gmail.com&#39;;return true;" oncli=
ck=3D"this.href=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/1=
551551350-111229-1-git-send-email-idebleenasen%40gmail.com&#39;;return true=
;">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>1551551350-=
111229-1-git-send-<wbr>email-idebleenasen%40gmail.com</a><wbr>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote><div>I&#39;m sorry for not adding the log message. This wa=
s my first patch and I was a bit confused about the process. I&#39;ll keep =
this in mind for future.</div><div><br></div><div>Yes I did find the issue =
after running checkpatch.pl on pi433/rf69.c</div><div><br></div><div>The ch=
eckpatch.pl warning was: [WARNING]: line over 80 charaters #566</div><div><=
br></div><div>So I reformatted the line to remove the warning. Is this a va=
lid patch?<br></div><div><br></div><div>=C2=A0</div></div>
------=_Part_759_472290354.1551554088609--

------=_Part_758_1676941475.1551554088609--

