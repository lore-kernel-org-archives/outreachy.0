X-GM-THRID: 6804107396790616064
Date: Sat, 14 Mar 2020 10:04:37 -0700 (PDT)
From: Deepak Varma <mh12gx2825@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <7842c46c-710b-4a2a-bf46-396ed319e2a6@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.2003141756000.3026@hadrien>
References: <20200314165130.GA18939@deeUbuntu>
 <alpine.DEB.2.21.2003141756000.3026@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: ni_atmio16d: remove
 commented code blocks
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3802_1369150962.1584205478269"
X-Google-Token: EKWdtPMFbV36yHvpSg40
X-Google-IP: 103.228.147.139

------=_Part_3802_1369150962.1584205478269
Content-Type: multipart/alternative; 
	boundary="----=_Part_3803_1734225593.1584205478269"

------=_Part_3803_1734225593.1584205478269
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Saturday, 14 March 2020 22:27:15 UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sat, 14 Mar 2020, Deepak R Varma wrote: 
>
> > Remove two if# 0 directive code blocks. The first commented code block 
>
> #if 
>
> > is redundant too; whereas the other code block is never used. Problem 
>
> Why do you say that the first one is redundant? 
>
> julia 
>

The instructions in if and else block are exactly the same. so, if or else, 
you are going to run the same instruction. Let me know if I misunderstood 
or misquoted.

Thank you.


> > detected by checkpatch script. 
> > 
> > Signed-off-by: Deepak R Varma <mh12g...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/comedi/drivers/ni_atmio16d.c | 10 ---------- 
> >  1 file changed, 10 deletions(-) 
> > 
> > diff --git a/drivers/staging/comedi/drivers/ni_atmio16d.c 
> b/drivers/staging/comedi/drivers/ni_atmio16d.c 
> > index 68ad9676f962..0bca7d752015 100644 
> > --- a/drivers/staging/comedi/drivers/ni_atmio16d.c 
> > +++ b/drivers/staging/comedi/drivers/ni_atmio16d.c 
> > @@ -266,19 +266,9 @@ static int atmio16d_ai_cmdtest(struct comedi_device 
> *dev, 
> >          if (cmd->scan_begin_src == TRIG_FOLLOW) { 
> >                  /* internal trigger */ 
> >                  err |= 
> comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0); 
> > -        } else { 
> > -#if 0 
> > -                /* external trigger */ 
> > -                /* should be level/edge, hi/lo specification here */ 
> > -                err |= 
> comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0); 
> > -#endif 
> >          } 
> > 
> >          err |= comedi_check_trigger_arg_min(&cmd->convert_arg, 10000); 
> > -#if 0 
> > -        err |= comedi_check_trigger_arg_max(&cmd->convert_arg, 
> SLOWEST_TIMER); 
> > -#endif 
> > - 
> >          err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg, 
> >                                             cmd->chanlist_len); 
> > 
> > -- 
> > 2.17.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreach...@googlegroups.com <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20200314165130.GA18939%40deeUbuntu. 
>
> > 
>

------=_Part_3803_1734225593.1584205478269
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Saturday, 14 March 2020 22:27:15 UTC+5:30, Juli=
a Lawall  wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin=
-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sat, 14 Mar 2020, Deepak R Varma wrote:
<br>
<br>&gt; Remove two if# 0 directive code blocks. The first commented code b=
lock
<br>
<br>#if
<br>
<br>&gt; is redundant too; whereas the other code block is never used. Prob=
lem
<br>
<br>Why do you say that the first one is redundant?
<br>
<br>julia
<br></blockquote><div><br></div><div>The instructions in if and else block =
are exactly the same. so, if or else, you are going to run the same instruc=
tion. Let me know if I misunderstood or misquoted.</div><div><br></div><div=
>Thank you.<br></div><div> <br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left:=
 1ex;">
<br>&gt; detected by checkpatch script.
<br>&gt;
<br>&gt; Signed-off-by: Deepak R Varma &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"eLL4oIsNAwAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">mh12g...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/comedi/<wbr>drivers/ni_atmio16d.c | 10 -----=
-----
<br>&gt; =C2=A01 file changed, 10 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/comedi/<wbr>drivers/ni_atmio16d.c b/d=
rivers/staging/comedi/<wbr>drivers/ni_atmio16d.c
<br>&gt; index 68ad9676f962..0bca7d752015 100644
<br>&gt; --- a/drivers/staging/comedi/<wbr>drivers/ni_atmio16d.c
<br>&gt; +++ b/drivers/staging/comedi/<wbr>drivers/ni_atmio16d.c
<br>&gt; @@ -266,19 +266,9 @@ static int atmio16d_ai_cmdtest(struct comedi_=
device *dev,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (cmd-&gt;=
scan_begin_src =3D=3D TRIG_FOLLOW) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* internal trigger */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err |=3D comedi_check_trigger_arg_is(&a=
mp;<wbr>cmd-&gt;scan_begin_arg, 0);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
<br>&gt; -#if 0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* external trigger */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* should be level/edge, hi/lo specificati=
on here */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err |=3D comedi_check_trigger_arg_is(&amp;=
<wbr>cmd-&gt;scan_begin_arg, 0);
<br>&gt; -#endif
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err |=3D com=
edi_check_trigger_arg_min(&amp;<wbr>cmd-&gt;convert_arg, 10000);
<br>&gt; -#if 0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err |=3D comedi_c=
heck_trigger_arg_max(&amp;<wbr>cmd-&gt;convert_arg, SLOWEST_TIMER);
<br>&gt; -#endif
<br>&gt; -
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err |=3D com=
edi_check_trigger_arg_is(&amp;<wbr>cmd-&gt;scan_end_arg,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 cmd-&gt;chanlist_len);
<br>&gt;
<br>&gt; --
<br>&gt; 2.17.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"eLL4oIsNAwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreach...@<wbr>googlegroups.com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20200314165130.GA18939%40deeUbuntu" ta=
rget=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https://gr=
oups.google.com/d/msgid/outreachy-kernel/20200314165130.GA18939%40deeUbuntu=
&#39;;return true;" onclick=3D"this.href=3D&#39;https://groups.google.com/d=
/msgid/outreachy-kernel/20200314165130.GA18939%40deeUbuntu&#39;;return true=
;">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20200314165=
130.GA18939%<wbr>40deeUbuntu</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_3803_1734225593.1584205478269--

------=_Part_3802_1369150962.1584205478269--

