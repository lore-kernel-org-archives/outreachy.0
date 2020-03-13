X-GM-THRID: 6803435195586314240
Date: Fri, 13 Mar 2020 05:13:41 -0700 (PDT)
From: Deepak Varma <mh12gx2825@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <2653c0ff-7607-439b-a249-06d90faf0c56@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.2003130753510.2355@hadrien>
References: <cover.1584045569.git.mh12gx2825@gmail.com> <b216292fa529e2586d0a7e17cdd6fbd19cbb9235.1584045569.git.mh12gx2825@gmail.com>
 <alpine.DEB.2.21.2003130753510.2355@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: fbtft: Resolve likely
 precedence issues
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3621_1473622378.1584101621290"
X-Google-Token: EPXxrfMFmcWdMwRCgnA0
X-Google-IP: 103.228.147.139

------=_Part_3621_1473622378.1584101621290
Content-Type: multipart/alternative; 
	boundary="----=_Part_3622_492373795.1584101621291"

------=_Part_3622_492373795.1584101621291
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Friday, 13 March 2020 12:31:36 UTC+5:30, Julia Lawall wrote:
>
>
>
> On Fri, 13 Mar 2020, Deepak R Varma wrote: 
>
> > Macro fbtft_par_dbg uses arguments supplied for dereferencing in the 
> > expanded form. It can become a operator precedence issue if arguments 
> > are used without proper wrapping. Putting arguments within braces and 
> > then dereferencing would avoid operator precedence issues. Issue flagged 
> > by checkpatch script. 
>
> () are parentheses, not braces.  Braces are {}. 
>
> The log message could be more concise, allowing the reader to find the 
> important information more quickly. 
>
> Put parentheses around uses of macro parameters to avoid possible 
> precedence issues.  Problem detected by checkpatch. 
>
> The subject line is also misleading.  If you look at the uses of this 
> macro, it seems that the level argument is always made by calling BIT, 
> which parenthesizes its result, or is a number, or is a bit or that is 
> wrapped in parentheses.  The par argument is always a variable.  So 
> currently there does not appear to be any precedence issue.  So "likely" 
> does not seem appropriate.  Maybe "potential" would be better. 
>
> julia 
>

Hello Julia,
Thank you for the suggestions. Useful comments. I will update the patchset 
accordingly and resend v2.

Deepak.
  

>
>
>
> > 
> > Signed-off-by: Deepak R Varma <mh12g...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/fbtft/fbtft.h | 4 ++-- 
> >  1 file changed, 2 insertions(+), 2 deletions(-) 
> > 
> > diff --git a/drivers/staging/fbtft/fbtft.h 
> b/drivers/staging/fbtft/fbtft.h 
> > index 81da30f4062e..76f8c090a837 100644 
> > --- a/drivers/staging/fbtft/fbtft.h 
> > +++ b/drivers/staging/fbtft/fbtft.h 
> > @@ -406,8 +406,8 @@ do {                                                 
>         \ 
> > 
> >  #define fbtft_par_dbg(level, par, format, arg...)            \ 
> >  do {                                                         \ 
> > -        if (unlikely(par->debug & level))                    \ 
> > -                dev_info(par->info->device, format, ##arg);  \ 
> > +        if (unlikely((par)->debug & (level)))                    \ 
> > +                dev_info((par)->info->device, format, ##arg);  \ 
> >  } while (0) 
> > 
> >  #define fbtft_par_dbg_hex(level, par, dev, type, buf, num, format, 
> arg...) \ 
> > -- 
> > 2.17.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreach...@googlegroups.com <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/b216292fa529e2586d0a7e17cdd6fbd19cbb9235.1584045569.git.mh12gx2825%40gmail.com. 
>
> > 
>

------=_Part_3622_492373795.1584101621291
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Friday, 13 March 2020 12:31:36 UTC+5:30, Julia =
Lawall  wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-l=
eft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Fri, 13 Mar 2020, Deepak R Varma wrote:
<br>
<br>&gt; Macro fbtft_par_dbg uses arguments supplied for dereferencing in t=
he
<br>&gt; expanded form. It can become a operator precedence issue if argume=
nts
<br>&gt; are used without proper wrapping. Putting arguments within braces =
and
<br>&gt; then dereferencing would avoid operator precedence issues. Issue f=
lagged
<br>&gt; by checkpatch script.
<br>
<br>() are parentheses, not braces. =C2=A0Braces are {}.
<br>
<br>The log message could be more concise, allowing the reader to find the
<br>important information more quickly.
<br>
<br>Put parentheses around uses of macro parameters to avoid possible
<br>precedence issues. =C2=A0Problem detected by checkpatch.
<br>
<br>The subject line is also misleading. =C2=A0If you look at the uses of t=
his
<br>macro, it seems that the level argument is always made by calling BIT,
<br>which parenthesizes its result, or is a number, or is a bit or that is
<br>wrapped in parentheses. =C2=A0The par argument is always a variable. =
=C2=A0So
<br>currently there does not appear to be any precedence issue. =C2=A0So &q=
uot;likely&quot;
<br>does not seem appropriate. =C2=A0Maybe &quot;potential&quot; would be b=
etter.
<br>
<br>julia
<br></blockquote><div><br></div><div>Hello Julia,</div><div>Thank you for t=
he suggestions. Useful comments. I will update the patchset accordingly and=
 resend v2.</div><div><br></div><div>Deepak.</div><div>=C2=A0 <br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border=
-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>
<br>&gt;
<br>&gt; Signed-off-by: Deepak R Varma &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"bQ0C3nWeAgAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">mh12g...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/fbtft/fbtft.h | 4 ++--
<br>&gt; =C2=A01 file changed, 2 insertions(+), 2 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/fbtft/fbtft.<wbr>h b/drivers/staging/=
fbtft/fbtft.<wbr>h
<br>&gt; index 81da30f4062e..76f8c090a837 100644
<br>&gt; --- a/drivers/staging/fbtft/fbtft.<wbr>h
<br>&gt; +++ b/drivers/staging/fbtft/fbtft.<wbr>h
<br>&gt; @@ -406,8 +406,8 @@ do { =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \
<br>&gt;
<br>&gt; =C2=A0#define fbtft_par_dbg(level, par, format, arg...) =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\
<br>&gt; =C2=A0do { =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (unlikely(par-=
&gt;debug &amp; level)) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_info(par-<wbr>&gt;info-&gt;device, for=
mat, ##arg); =C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (unlikely((par=
)-&gt;debug &amp; (level))) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_info((<wbr>par)-&gt;info-&gt;device, f=
ormat, ##arg); =C2=A0\
<br>&gt; =C2=A0} while (0)
<br>&gt;
<br>&gt; =C2=A0#define fbtft_par_dbg_hex(level, par, dev, type, buf, num, f=
ormat, arg...) \
<br>&gt; --
<br>&gt; 2.17.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"bQ0C3nWeAgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreach...@<wbr>googlegroups.com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/b216292fa529e2586d0a7e17cdd6fbd19cbb92=
35.1584045569.git.mh12gx2825%40gmail.com" target=3D"_blank" rel=3D"nofollow=
" onmousedown=3D"this.href=3D&#39;https://groups.google.com/d/msgid/outreac=
hy-kernel/b216292fa529e2586d0a7e17cdd6fbd19cbb9235.1584045569.git.mh12gx282=
5%40gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;https://groups=
.google.com/d/msgid/outreachy-kernel/b216292fa529e2586d0a7e17cdd6fbd19cbb92=
35.1584045569.git.mh12gx2825%40gmail.com&#39;;return true;">https://groups.=
google.com/d/<wbr>msgid/outreachy-kernel/<wbr>b216292fa529e2586d0a7e17cdd6f=
b<wbr>d19cbb9235.1584045569.git.<wbr>mh12gx2825%40gmail.com</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_3622_492373795.1584101621291--

------=_Part_3621_1473622378.1584101621290--

