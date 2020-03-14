X-GM-THRID: 6804107396790616064
Date: Sat, 14 Mar 2020 10:28:22 -0700 (PDT)
From: Deepak Varma <mh12gx2825@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <7731265e-42a7-4c67-a0f5-245cecbecc0b@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.2003141808100.3026@hadrien>
References: <20200314165130.GA18939@deeUbuntu> <alpine.DEB.2.21.2003141756000.3026@hadrien> <7842c46c-710b-4a2a-bf46-396ed319e2a6@googlegroups.com>
 <alpine.DEB.2.21.2003141808100.3026@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: ni_atmio16d: remove
 commented code blocks
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3993_1423343737.1584206902201"
X-Google-Token: ELaotPMFnZ7gfic_JGY0
X-Google-IP: 103.228.147.139

------=_Part_3993_1423343737.1584206902201
Content-Type: multipart/alternative; 
	boundary="----=_Part_3994_1996935846.1584206902201"

------=_Part_3994_1996935846.1584206902201
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Saturday, 14 March 2020 22:41:02 UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sat, 14 Mar 2020, Deepak Varma wrote: 
>
> > 
> > 
> > On Saturday, 14 March 2020 22:27:15 UTC+5:30, Julia Lawall wrote: 
> > 
> > 
> >       On Sat, 14 Mar 2020, Deepak R Varma wrote: 
> > 
> >       > Remove two if# 0 directive code blocks. The first commented 
> >       code block 
> > 
> >       #if 
> > 
> >       > is redundant too; whereas the other code block is never used. 
> >       Problem 
> > 
> >       Why do you say that the first one is redundant? 
> > 
> >       julia 
> > 
> > 
> > The instructions in if and else block are exactly the same. so, if or 
> else, 
> > you are going to run the same instruction. Let me know if I 
> misunderstood or 
> > misquoted. 
>
> Since one of them is under an #if 0, the current effect is quite 
> different.  Only the statement in the then branch will be executed. 
>
> Redundant would be eg: 
>
> x = 0; 
> x = 0; 
>
> There is no point in having the second line, because x is already 0. 
>
> Even without the #if 0, if you have: 
>
> if (x) 
>   y = 0; 
> else y = 0; 
>
> It doesn't seem reasonable to say that the second y = 0 is redundant. It 
> is the if that is is not necessary.  But once you have the if, you need 
> both the then and else branches. 
>
> julia 
>

Agreed. if(x) becomes redundant when #if 0 becomes #if 1. I was trying to 
make the same point that even if the #if 0 block is turned on, it will 
still have the same behavior with the if(x) .. else in place. But, I though 
the else part will be redundant, but it was wrong. The if part would be 
redundant. I got your point. Well explained. Thank you!

Would you suggest I reword the patch description and send in v2? Is the 
rest looking good to you?

Deepak.


> > 
> > Thank you. 
> > 
> > 
> >       > detected by checkpatch script. 
> >       > 
> >       > Signed-off-by: Deepak R Varma <mh12g...@gmail.com> 
> >       > --- 
> >       >  drivers/staging/comedi/drivers/ni_atmio16d.c | 10 ---------- 
> >       >  1 file changed, 10 deletions(-) 
> >       > 
> >       > diff --git a/drivers/staging/comedi/drivers/ni_atmio16d.c 
> >       b/drivers/staging/comedi/drivers/ni_atmio16d.c 
> >       > index 68ad9676f962..0bca7d752015 100644 
> >       > --- a/drivers/staging/comedi/drivers/ni_atmio16d.c 
> >       > +++ b/drivers/staging/comedi/drivers/ni_atmio16d.c 
> >       > @@ -266,19 +266,9 @@ static int atmio16d_ai_cmdtest(struct 
> >       comedi_device *dev, 
> >       >          if (cmd->scan_begin_src == TRIG_FOLLOW) { 
> >       >                  /* internal trigger */ 
> >       >                  err |= 
> >       comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0); 
> >       > -        } else { 
> >       > -#if 0 
> >       > -                /* external trigger */ 
> >       > -                /* should be level/edge, hi/lo specification 
> >       here */ 
> >       > -                err |= 
> >       comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0); 
> >       > -#endif 
> >       >          } 
> >       > 
> >       >          err |= 
> >       comedi_check_trigger_arg_min(&cmd->convert_arg, 10000); 
> >       > -#if 0 
> >       > -        err |= 
> >       comedi_check_trigger_arg_max(&cmd->convert_arg, SLOWEST_TIMER); 
> >       > -#endif 
> >       > - 
> >       >          err |= 
> >       comedi_check_trigger_arg_is(&cmd->scan_end_arg, 
> >       >                                             
> >       cmd->chanlist_len); 
> >       > 
> >       > -- 
> >       > 2.17.1 
> >       > 
> >       > -- 
> >       > You received this message because you are subscribed to the 
> >       Google Groups "outreachy-kernel" group. 
> >       > To unsubscribe from this group and stop receiving emails from 
> >       it, send an email to outreach...@googlegroups.com. 
> >       > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/20200314165130.GA18939%4 
> >       0deeUbuntu. 
> >       > 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups 
> > "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an 
> > email to outreach...@googlegroups.com <javascript:>. 
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/7842c46c-710b-4a2a-bf46- 
> > 396ed319e2a6%40googlegroups.com. 
> > 
> >


------=_Part_3994_1996935846.1584206902201
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Saturday, 14 March 2020 22:41:02 UTC+5:30, Juli=
a Lawall  wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin=
-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sat, 14 Mar 2020, Deepak Varma wrote:
<br>
<br>&gt;
<br>&gt;
<br>&gt; On Saturday, 14 March 2020 22:27:15 UTC+5:30, Julia Lawall wrote:
<br>&gt;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 On Sat, 14 Mar 2020, Deepak R Varma wrote:
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Remove two if# 0 directive code blocks. =
The first commented
<br>&gt; =C2=A0 =C2=A0 =C2=A0 code block
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 #if
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; is redundant too; whereas the other code=
 block is never used.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Problem
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Why do you say that the first one is redundan=
t?
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 julia
<br>&gt;
<br>&gt;
<br>&gt; The instructions in if and else block are exactly the same. so, if=
 or else,
<br>&gt; you are going to run the same instruction. Let me know if I misund=
erstood or
<br>&gt; misquoted.
<br>
<br>Since one of them is under an #if 0, the current effect is quite
<br>different. =C2=A0Only the statement in the then branch will be executed=
.
<br>
<br>Redundant would be eg:
<br>
<br>x =3D 0;
<br>x =3D 0;
<br>
<br>There is no point in having the second line, because x is already 0.
<br>
<br>Even without the #if 0, if you have:
<br>
<br>if (x)
<br>=C2=A0 y =3D 0;
<br>else y =3D 0;
<br>
<br>It doesn&#39;t seem reasonable to say that the second y =3D 0 is redund=
ant. It
<br>is the if that is is not necessary. =C2=A0But once you have the if, you=
 need
<br>both the then and else branches.
<br>
<br>julia
<br></blockquote><div><br></div><div>Agreed. if(x) becomes redundant when #=
if 0 becomes #if 1. I was trying to make the same point that even if the #i=
f 0 block is turned on, it will still have the same behavior with the if(x)=
 .. else in place. But, I though the else part will be redundant, but it wa=
s wrong. The if part would be redundant. I got your point. Well explained. =
Thank you!<br></div><div><br></div><div>Would you suggest I reword the patc=
h description and send in v2? Is the rest looking good to you?<br></div><di=
v><br></div><div>Deepak.<br></div><div> <br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;=
padding-left: 1ex;">
<br>&gt;
<br>&gt; Thank you.
<br>&gt;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; detected by checkpatch script.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Signed-off-by: Deepak R Varma &lt;<a>mh1=
2g...@gmail.com</a>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; ---
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/comedi/<wbr>driver=
s/ni_atmio16d.c | 10 ----------
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A01 file changed, 10 deletions(-)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/comedi/<wbr=
>drivers/ni_atmio16d.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/comedi/<wbr>drivers/ni_atmi=
o16d.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index 68ad9676f962..0bca7d752015 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/comedi/<wbr>driver=
s/ni_atmio16d.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/comedi/<wbr>driver=
s/ni_atmio16d.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -266,19 +266,9 @@ static int atmio16d=
_ai_cmdtest(struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 comedi_device *dev,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0if (cmd-&gt;scan_begin_src =3D=3D TRIG_FOLLOW) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* internal =
trigger */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err |=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 comedi_check_trigger_arg_is(&amp;<wbr>cmd-&gt=
;scan_begin_arg, 0);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0} else {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -#if 0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* external trigge=
r */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* should be level=
/edge, hi/lo specification
<br>&gt; =C2=A0 =C2=A0 =C2=A0 here */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err |=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 comedi_check_trigger_arg_is(&amp;<wbr>cmd-&gt=
;scan_begin_arg, 0);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -#endif
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0err |=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 comedi_check_trigger_arg_min(&amp;<wbr>cmd-&g=
t;convert_arg, 10000);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -#if 0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0err |=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 comedi_check_trigger_arg_max(&amp;<wbr>cmd-&g=
t;convert_arg, SLOWEST_TIMER);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -#endif
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0err |=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 comedi_check_trigger_arg_is(&amp;<wbr>cmd-&gt=
;scan_end_arg,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 cmd-&gt;chanlist_len);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; 2.17.1
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; You received this message because you ar=
e subscribed to the
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Google Groups &quot;outreachy-kernel&quot; gr=
oup.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To unsubscribe from this group and stop =
receiving emails from
<br>&gt; =C2=A0 =C2=A0 =C2=A0 it, send an email to <a>outreach...@googlegro=
ups.com</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To view this discussion on the web visit=
https://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/202003=
14165130.GA18939%4" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.=
href=3D&#39;http://groups.google.com/d/msgid/outreachy-kernel/2020031416513=
0.GA18939%4&#39;;return true;" onclick=3D"this.href=3D&#39;http://groups.go=
ogle.com/d/msgid/outreachy-kernel/20200314165130.GA18939%4&#39;;return true=
;">groups.google.<wbr>com/d/msgid/outreachy-kernel/<wbr>20200314165130.GA18=
939%4</a>
<br>&gt; =C2=A0 =C2=A0 =C2=A0 0deeUbuntu.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups
<br>&gt; &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an
<br>&gt; email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-=
mailto=3D"OT_TD0wOAwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;ja=
vascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;r=
eturn true;">outreach...@<wbr>googlegroups.com</a>.
<br>&gt; To view this discussion on the web visithttps://<a href=3D"http://=
groups.google.com/d/msgid/outreachy-kernel/7842c46c-710b-4a2a-bf46-" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://groups.=
google.com/d/msgid/outreachy-kernel/7842c46c-710b-4a2a-bf46-&#39;;return tr=
ue;" onclick=3D"this.href=3D&#39;http://groups.google.com/d/msgid/outreachy=
-kernel/7842c46c-710b-4a2a-bf46-&#39;;return true;">groups.google.<wbr>com/=
d/msgid/outreachy-kernel/<wbr>7842c46c-710b-4a2a-bf46-</a>
<br>&gt; 396ed319e2a6%<a href=3D"http://40googlegroups.com" target=3D"_blan=
k" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/u=
rl?q\x3dhttp%3A%2F%2F40googlegroups.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dA=
FQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;return true;" onclick=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F40googlegroups.com\x26s=
a\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;retur=
n true;">40googlegroups.<wbr>com</a>.
<br>&gt;
<br>&gt;</blockquote></div>
------=_Part_3994_1996935846.1584206902201--

------=_Part_3993_1423343737.1584206902201--

