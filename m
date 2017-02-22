X-GM-THRID: 6389636871256801280
Date: Wed, 22 Feb 2017 03:31:23 -0800 (PST)
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: singhalsimran0@gmail.com, gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Message-Id: <d1716b00-a408-4f3c-8c17-04a70acca4dd@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1702221025550.3145@hadrien>
References: <20170222091015.GA11058@singhal-Inspiron-5558>
 <alpine.DEB.2.20.1702221025550.3145@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v2 2/7] staging: most: Using macro
 DIV_ROUND_UP
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_9241_782957138.1487763083804"
X-Google-Token: EIvttcUFembqy3kmM1o0
X-Google-IP: 14.139.82.6

------=_Part_9241_782957138.1487763083804
Content-Type: multipart/alternative; 
	boundary="----=_Part_9242_999805588.1487763083804"

------=_Part_9242_999805588.1487763083804
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Wednesday, February 22, 2017 at 2:57:17 PM UTC+5:30, Julia Lawall wrote:
>
> > @@ -117,7 +118,7 @@ static int alloc_dbr(u16 size) 
> >                  return DBR_SIZE; /* out of memory */ 
> > 
> >          for (i = 0; i < DBR_MAP_SIZE; i++) { 
> > -                u32 const blocks = (size + DBR_BLOCK_SIZE - 1) / 
> DBR_BLOCK_SIZE; 
> > +                u32 const blocks = DIV_ROUND_UP(size, DBR_BLOCK_SIZE); 
> >                  u32 mask = ~((~(u32)0) << blocks); 
>
> Totally unrelated to DIV_ROUND_UP, would this code be a candidate for 
> GENMASK? 
>
 

> Not sure, what you are trying to say.
>
 

julia 
>
> > 
> >                  do { 
> > @@ -137,7 +138,7 @@ static int alloc_dbr(u16 size) 
> >  static void free_dbr(int offs, int size) 
> >  { 
> >          int block_idx = offs / DBR_BLOCK_SIZE; 
> > -        u32 const blocks = (size + DBR_BLOCK_SIZE - 1) / 
> DBR_BLOCK_SIZE; 
> > +        u32 const blocks = DIV_ROUND_UP(size, DBR_BLOCK_SIZE); 
> >          u32 mask = ~((~(u32)0) << blocks); 
> > 
> >          mask <<= block_idx % 32; 
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
> https://groups.google.com/d/msgid/outreachy-kernel/20170222091015.GA11058%40singhal-Inspiron-5558. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_9242_999805588.1487763083804
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Wednesday, February 22, 2017 at 2:57:17 PM UTC+=
5:30, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin:=
 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; =
@@ -117,7 +118,7 @@ static int alloc_dbr(u16 size)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return DBR_SIZE; /* out of memory */
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0=
; i &lt; DBR_MAP_SIZE; i++) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 const blocks =3D (size + DBR_BLOCK_SIZ=
E - 1) / DBR_BLOCK_SIZE;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 const blocks =3D DIV_ROUND_UP(size, DB=
R_BLOCK_SIZE);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 mask =3D ~((~(u32)0) &lt;&lt; block=
s);
<br>
<br>Totally unrelated to DIV_ROUND_UP, would this code be a candidate for
<br>GENMASK?
<br>
</blockquote><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">=
Not sure, what you are trying to say.<br></blockquote><div>=C2=A0</div><div=
><br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left=
: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">julia
<br>
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0do {
<br>&gt; @@ -137,7 +138,7 @@ static int alloc_dbr(u16 size)
<br>&gt; =C2=A0static void free_dbr(int offs, int size)
<br>&gt; =C2=A0{
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int block_id=
x =3D offs / DBR_BLOCK_SIZE;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 const blocks =
=3D (size + DBR_BLOCK_SIZE - 1) / DBR_BLOCK_SIZE;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 const blocks =
=3D DIV_ROUND_UP(size, DBR_BLOCK_SIZE);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 mask =3D=
 ~((~(u32)0) &lt;&lt; blocks);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mask &lt;&lt=
;=3D block_idx % 32;
<br>&gt; --
<br>&gt; 2.7.4
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"avc0sbtYAQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"avc0sbtYAQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20170222091015.GA11058%40singhal-Inspi=
ron-5558" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#3=
9;https://groups.google.com/d/msgid/outreachy-kernel/20170222091015.GA11058=
%40singhal-Inspiron-5558&#39;;return true;" onclick=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/msgid/outreachy-kernel/20170222091015.GA11058%40si=
nghal-Inspiron-5558&#39;;return true;">https://groups.google.com/d/<wbr>msg=
id/outreachy-kernel/<wbr>20170222091015.GA11058%<wbr>40singhal-Inspiron-555=
8</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_9242_999805588.1487763083804--

------=_Part_9241_782957138.1487763083804--

