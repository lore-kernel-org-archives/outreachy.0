X-GM-THRID: 6249498218591158272
Date: Tue, 9 Feb 2016 23:45:44 -0800 (PST)
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: janani.rvchndrn@gmail.com
Message-Id: <207e6b2c-07b0-48a8-a414-37c59ed7a3e6@googlegroups.com>
In-Reply-To: <alpine.DEB.2.02.1602100825150.2050@localhost6.localdomain6>
References: <20160210082412.GA2645@janani-Inspiron-3521>
 <alpine.DEB.2.02.1602100825150.2050@localhost6.localdomain6>
Subject: Re: [Outreachy kernel] [PATCH] staging: unisys: Modify boolean
 assignment
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1731_887352260.1455090344930"
X-Google-Token: EKjV67UF2Pcd1EcYMFE0
X-Google-IP: 72.231.208.13

------=_Part_1731_887352260.1455090344930
Content-Type: multipart/alternative; 
	boundary="----=_Part_1732_2121869743.1455090344930"

------=_Part_1732_2121869743.1455090344930
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Wednesday, 10 February 2016 02:26:38 UTC-5, Julia Lawall wrote:
>
> On Wed, 10 Feb 2016, Janani Ravichandran wrote: 
>
> > Boolean variables should be assigned true/false rather than 1/0. 
> > This patch makes such a correction. 
>
> A change like this should be made consistently, so it is a little 
> surprising to see only one such change.  Is this the only place where the 
> variable is initialized?  

Within this file, this is the only instance of initialization of the 
variable where 1 is
 used instead of true. All others use true/false. I sent this to resolve 
that 
inconsistency :) 

> If so, you could say that.  if not, then you 
> could explain that all of the other initialization places already have 
> boolean values, in some way or another. 
>
Do I send a v2 explaining this? 

>
> julia 
>
> > 
> > Signed-off-by: Janani Ravichandran <janani....@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/unisys/visorhba/visorhba_main.c | 2 +- 
> >  1 file changed, 1 insertion(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/unisys/visorhba/visorhba_main.c 
> b/drivers/staging/unisys/visorhba/visorhba_main.c 
> > index 5a78409..e93bb1d 100644 
> > --- a/drivers/staging/unisys/visorhba/visorhba_main.c 
> > +++ b/drivers/staging/unisys/visorhba/visorhba_main.c 
> > @@ -1062,7 +1062,7 @@ static int visorhba_resume(struct visor_device 
> *dev, 
> >                  return -EINVAL; 
> >   
> >          if (devdata->serverdown && !devdata->serverchangingstate) 
> > -                devdata->serverchangingstate = 1; 
> > +                devdata->serverchangingstate = true; 
> >   
> >          visor_thread_start(&devdata->threadinfo, process_incoming_rsps, 
> >                             devdata, "vhba_incming"); 
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
> https://groups.google.com/d/msgid/outreachy-kernel/20160210082412.GA2645%40janani-Inspiron-3521. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_1732_2121869743.1455090344930
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Wednesday, 10 February 2016 02:26:38 UTC-5, Jul=
ia Lawall  wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margi=
n-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Wed, 10 Fe=
b 2016, Janani Ravichandran wrote:
<br>
<br>&gt; Boolean variables should be assigned true/false rather than 1/0.
<br>&gt; This patch makes such a correction.
<br>
<br>A change like this should be made consistently, so it is a little=20
<br>surprising to see only one such change. =C2=A0Is this the only place wh=
ere the=20
<br>variable is initialized? =C2=A0</blockquote><div>Within this file, this=
 is the only instance of initialization of the variable where 1 is<br>=C2=
=A0used instead of true. All others use true/false. I sent this to resolve =
that <br>inconsistency :) <br></div><blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;">If so, you could say that. =C2=A0if not, then you=20
<br>could explain that all of the other initialization places already have=
=20
<br>boolean values, in some way or another.
<br></blockquote><div>Do I send a v2 explaining this? <br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1=
px #ccc solid;padding-left: 1ex;">
<br>julia
<br>
<br>&gt;=20
<br>&gt; Signed-off-by: Janani Ravichandran &lt;<a href=3D"javascript:" tar=
get=3D"_blank" gdf-obfuscated-mailto=3D"M7Re9FEUAQAJ" rel=3D"nofollow" onmo=
usedown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.=
href=3D&#39;javascript:&#39;;return true;">janani....@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/unisys/<wbr>visorhba/visorhba_main.c | 2 +-
<br>&gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/unisys/<wbr>visorhba/visorhba_main.c =
b/drivers/staging/unisys/<wbr>visorhba/visorhba_main.c
<br>&gt; index 5a78409..e93bb1d 100644
<br>&gt; --- a/drivers/staging/unisys/<wbr>visorhba/visorhba_main.c
<br>&gt; +++ b/drivers/staging/unisys/<wbr>visorhba/visorhba_main.c
<br>&gt; @@ -1062,7 +1062,7 @@ static int visorhba_resume(struct visor_devi=
ce *dev,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -EINVAL;
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (devdata-=
&gt;serverdown &amp;&amp; !devdata-&gt;serverchangingstate)
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0devdata-&gt;<wbr>serverchangingstate =3D 1=
;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0devdata-&gt;<wbr>serverchangingstate =3D t=
rue;
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0visor_thread=
_start(&amp;<wbr>devdata-&gt;threadinfo, process_incoming_rsps,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0 devdata, &quot;vhba_incming&quot;);
<br>&gt; --=20
<br>&gt; 2.5.0
<br>&gt;=20
<br>&gt; --=20
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"M7Re9FEUAQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"M7Re9FEUAQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20160210082412.GA2645%40janani-Inspiro=
n-3521" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;=
https://groups.google.com/d/msgid/outreachy-kernel/20160210082412.GA2645%40=
janani-Inspiron-3521&#39;;return true;" onclick=3D"this.href=3D&#39;https:/=
/groups.google.com/d/msgid/outreachy-kernel/20160210082412.GA2645%40janani-=
Inspiron-3521&#39;;return true;">https://groups.google.com/d/<wbr>msgid/out=
reachy-kernel/<wbr>20160210082412.GA2645%<wbr>40janani-Inspiron-3521</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;=20
<br></blockquote></div>
------=_Part_1732_2121869743.1455090344930--

------=_Part_1731_887352260.1455090344930--

