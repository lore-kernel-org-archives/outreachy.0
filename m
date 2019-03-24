X-GM-THRID: 6671548221790093312
Date: Sun, 24 Mar 2019 02:02:01 -0700 (PDT)
From: anushkacharu9@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <ab824102-840f-4212-9d06-c0cb65aaf793@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903231436220.2566@hadrien>
References: <anushkacharu9@gmail.com> <20190323113413.8040-1-anushkacharu9@gmail.com>
 <alpine.DEB.2.21.1903231436220.2566@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: sd.c: fix line
 over 80 characters
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1224_234779895.1553418121089"
X-Google-Token: EImP3eQFeIr_nNua3Cc0
X-Google-IP: 42.110.155.238

------=_Part_1224_234779895.1553418121089
Content-Type: multipart/alternative; 
	boundary="----=_Part_1225_669396584.1553418121089"

------=_Part_1225_669396584.1553418121089
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Okay i will do it.
Thanks.

On Saturday, 23 March 2019 19:07:51 UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sat, 23 Mar 2019, anushk...@gmail.com <javascript:> wrote: 
>
> > From: Anushka Shukla <anushk...@gmail.com <javascript:>> 
> > 
> > Rearrange code to fix line over 80 characters 
> > 
> > Signed-off-by: Anushka Shukla <anushk...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/rts5208/sd.c | 3 ++- 
> >  1 file changed, 2 insertions(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c 
> > index c256a2398651..7853ef9ca372 100644 
> > --- a/drivers/staging/rts5208/sd.c 
> > +++ b/drivers/staging/rts5208/sd.c 
> > @@ -4513,7 +4513,8 @@ int sd_execute_write_data(struct scsi_cmnd *srb, 
> struct rtsx_chip *chip) 
> >                  if (sd_lock_state ^ (sd_card->sd_lock_status & 
> SD_LOCKED)) { 
> >                          sd_card->sd_lock_notify = 1; 
> >                          if (sd_lock_state) { 
> > -                                if (sd_card->sd_lock_status & 
> SD_LOCK_1BIT_MODE) { 
> > +                                if (sd_card->sd_lock_status & 
> > +                                    SD_LOCK_1BIT_MODE) { 
> >                                          sd_card->sd_lock_status |= ( 
> >                                                  SD_UNLOCK_POW_ON | 
> SD_SDR_RST); 
>
> The change is ok, but there is another improvement opportunity here on the 
> next line.  The open paren should be move to the next line, or the 
> parentheses around the expression should just be dropped. 
>
> julia 
>
> >                                          if (CHK_SD(sd_card)) { 
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
> https://groups.google.com/d/msgid/outreachy-kernel/20190323113413.8040-1-anushkacharu9%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_1225_669396584.1553418121089
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Okay i will do it.</div><div>Thanks.<br></div><br>On =
Saturday, 23 March 2019 19:07:51 UTC+5:30, Julia Lawall  wrote:<blockquote =
class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1p=
x #ccc solid;padding-left: 1ex;">
<br>
<br>On Sat, 23 Mar 2019, <a href=3D"javascript:" target=3D"_blank" gdf-obfu=
scated-mailto=3D"AztvyjBKBAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D=
&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:=
&#39;;return true;">anushk...@gmail.com</a> wrote:
<br>
<br>&gt; From: Anushka Shukla &lt;<a href=3D"javascript:" target=3D"_blank"=
 gdf-obfuscated-mailto=3D"AztvyjBKBAAJ" rel=3D"nofollow" onmousedown=3D"thi=
s.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;ja=
vascript:&#39;;return true;">anushk...@gmail.com</a>&gt;
<br>&gt;
<br>&gt; Rearrange code to fix line over 80 characters
<br>&gt;
<br>&gt; Signed-off-by: Anushka Shukla &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"AztvyjBKBAAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">anushk...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/rts5208/sd.c | 3 ++-
<br>&gt; =C2=A01 file changed, 2 insertions(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts520=
8/sd.c
<br>&gt; index c256a2398651..7853ef9ca372 100644
<br>&gt; --- a/drivers/staging/rts5208/sd.c
<br>&gt; +++ b/drivers/staging/rts5208/sd.c
<br>&gt; @@ -4513,7 +4513,8 @@ int sd_execute_write_data(struct scsi_cmnd *=
srb, struct rtsx_chip *chip)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (sd_lock_state ^ (sd_card-&gt;sd_loc=
k_status &amp; SD_LOCKED)) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0sd_<wbr>card-&gt;sd_lock_notify =3D 1;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0if (sd_lock_state) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0if (sd_card-&gt;=
sd_lock_status &amp; SD_LOCK_1BIT_MODE) {
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0if (sd_card-&gt;=
sd_lock_status &amp;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0SD=
_LOCK_1BIT_MODE) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0sd_card-&gt;sd_lock_<wbr>status |=3D (
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0SD_UNLOCK_<wbr>POW_ON | SD_SDR_RST);
<br>
<br>The change is ok, but there is another improvement opportunity here on =
the
<br>next line. =C2=A0The open paren should be move to the next line, or the
<br>parentheses around the expression should just be dropped.
<br>
<br>julia
<br>
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (CHK_SD(sd_card)) {
<br>&gt; --
<br>&gt; 2.17.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"AztvyjBKBAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"AztvyjBKBAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20190323113413.8040-1-anushkacharu9%40=
gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#=
39;https://groups.google.com/d/msgid/outreachy-kernel/20190323113413.8040-1=
-anushkacharu9%40gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;h=
ttps://groups.google.com/d/msgid/outreachy-kernel/20190323113413.8040-1-anu=
shkacharu9%40gmail.com&#39;;return true;">https://groups.google.com/d/<wbr>=
msgid/outreachy-kernel/<wbr>20190323113413.8040-1-<wbr>anushkacharu9%40gmai=
l.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_1225_669396584.1553418121089--

------=_Part_1224_234779895.1553418121089--

