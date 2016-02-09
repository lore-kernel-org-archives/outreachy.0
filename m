X-GM-THRID: 6249397284630429696
Date: Tue, 9 Feb 2016 14:21:58 -0800 (PST)
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: janani.rvchndrn@gmail.com
Message-Id: <14b3e344-151e-439e-b909-acddc7f02875@googlegroups.com>
In-Reply-To: <alpine.DEB.2.02.1602092258480.2066@localhost6.localdomain6>
References: <20160210015234.GA12338@janani-Inspiron-3521>
 <alpine.DEB.2.02.1602092258480.2066@localhost6.localdomain6>
Subject: Re: [Outreachy kernel] [PATCH] staging: xgifb: Rename local
 variable
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_735_320984719.1455056518884"
X-Google-Token: EIbN6bUFm0o5hYbRjRQ0
X-Google-IP: 72.231.208.13

------=_Part_735_320984719.1455056518884
Content-Type: multipart/alternative; 
	boundary="----=_Part_736_592748901.1455056518884"

------=_Part_736_592748901.1455056518884
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Tuesday, 9 February 2016 16:59:26 UTC-5, Julia Lawall wrote:
>
> On Tue, 9 Feb 2016, Janani Ravichandran wrote: 
>
> > As one of the global variables and a local variable share the same name, 
> > change the name of the local variable to avoid confusion. 
>
> Maybe local_refresh_rate might be better?  I'm not sure that ref is so 
> obvious as an abbreviation for refresh. 
>

I will send a version 2 for this making that correction.

Janani. 

>
> julia 
>
> > 
> > Signed-off-by: Janani Ravichandran <janani....@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/xgifb/XGI_main_26.c | 4 ++-- 
> >  1 file changed, 2 insertions(+), 2 deletions(-) 
> > 
> > diff --git a/drivers/staging/xgifb/XGI_main_26.c 
> b/drivers/staging/xgifb/XGI_main_26.c 
> > index f11cea1..ad8aaa2 100644 
> > --- a/drivers/staging/xgifb/XGI_main_26.c 
> > +++ b/drivers/staging/xgifb/XGI_main_26.c 
> > @@ -1230,7 +1230,7 @@ static int XGIfb_check_var(struct 
> fb_var_screeninfo *var, struct fb_info *info) 
> >          unsigned int vtotal = 0; 
> >          unsigned int drate = 0, hrate = 0; 
> >          int found_mode = 0; 
> > -        int refresh_rate, search_idx; 
> > +        int ref_rate, search_idx; 
> >   
> >          if ((var->vmode & FB_VMODE_MASK) == FB_VMODE_NONINTERLACED) { 
> >                  vtotal = var->upper_margin + var->yres + 
> var->lower_margin 
> > @@ -1268,7 +1268,7 @@ static int XGIfb_check_var(struct 
> fb_var_screeninfo *var, struct fb_info *info) 
> >   
> >          /* Calculation wrong for 1024x600 - force it to 60Hz */ 
> >          if ((var->xres == 1024) && (var->yres == 600)) 
> > -                refresh_rate = 60; 
> > +                ref_rate = 60; 
> >   
> >          search_idx = 0; 
> >          while ((XGIbios_mode[search_idx].mode_no != 0) && 
> > -- 
> > 2.5.0 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20160210015234.GA12338%40janani-Inspiron-3521. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_736_592748901.1455056518884
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tuesday, 9 February 2016 16:59:26 UTC-5, Julia =
Lawall  wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-l=
eft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Tue, 9 Feb 20=
16, Janani Ravichandran wrote:
<br>
<br>&gt; As one of the global variables and a local variable share the same=
 name,
<br>&gt; change the name of the local variable to avoid confusion.
<br>
<br>Maybe local_refresh_rate might be better? =C2=A0I&#39;m not sure that r=
ef is so=20
<br>obvious as an abbreviation for refresh.
<br></blockquote><div><br>I will send a version 2 for this making that corr=
ection.<br><br>Janani. <br></div><blockquote class=3D"gmail_quote" style=3D=
"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex=
;">
<br>julia
<br>
<br>&gt;=20
<br>&gt; Signed-off-by: Janani Ravichandran &lt;<a href=3D"javascript:" tar=
get=3D"_blank" gdf-obfuscated-mailto=3D"9juZKV71AAAJ" rel=3D"nofollow" onmo=
usedown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.=
href=3D&#39;javascript:&#39;;return true;">janani....@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/xgifb/XGI_<wbr>main_26.c | 4 ++--
<br>&gt; =C2=A01 file changed, 2 insertions(+), 2 deletions(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/xgifb/XGI_<wbr>main_26.c b/drivers/st=
aging/xgifb/XGI_<wbr>main_26.c
<br>&gt; index f11cea1..ad8aaa2 100644
<br>&gt; --- a/drivers/staging/xgifb/XGI_<wbr>main_26.c
<br>&gt; +++ b/drivers/staging/xgifb/XGI_<wbr>main_26.c
<br>&gt; @@ -1230,7 +1230,7 @@ static int XGIfb_check_var(struct fb_var_scr=
eeninfo *var, struct fb_info *info)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned int=
 vtotal =3D 0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned int=
 drate =3D 0, hrate =3D 0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int found_mo=
de =3D 0;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int refresh_rate,=
 search_idx;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int ref_rate, sea=
rch_idx;
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((var-&gt=
;vmode &amp; FB_VMODE_MASK) =3D=3D FB_VMODE_NONINTERLACED) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0vtotal =3D var-&gt;upper_margin + var-&=
gt;yres + var-&gt;lower_margin
<br>&gt; @@ -1268,7 +1268,7 @@ static int XGIfb_check_var(struct fb_var_scr=
eeninfo *var, struct fb_info *info)
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Calculati=
on wrong for 1024x600 - force it to 60Hz */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((var-&gt=
;xres =3D=3D 1024) &amp;&amp; (var-&gt;yres =3D=3D 600))
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0refresh_rate =3D 60;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ref_rate =3D 60;
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0search_idx =
=3D 0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0while ((XGIb=
ios_mode[search_idx].<wbr>mode_no !=3D 0) &amp;&amp;
<br>&gt; --=20
<br>&gt; 2.5.0
<br>&gt;=20
<br>&gt; --=20
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"9juZKV71AAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"9juZKV71AAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20160210015234.GA12338%40janani-Inspir=
on-3521" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39=
;https://groups.google.com/d/msgid/outreachy-kernel/20160210015234.GA12338%=
40janani-Inspiron-3521&#39;;return true;" onclick=3D"this.href=3D&#39;https=
://groups.google.com/d/msgid/outreachy-kernel/20160210015234.GA12338%40jana=
ni-Inspiron-3521&#39;;return true;">https://groups.google.com/d/<wbr>msgid/=
outreachy-kernel/<wbr>20160210015234.GA12338%<wbr>40janani-Inspiron-3521</a=
>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;=20
<br></blockquote></div>
------=_Part_736_592748901.1455056518884--

------=_Part_735_320984719.1455056518884--

