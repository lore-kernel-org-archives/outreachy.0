X-GM-THRID: 6672221168538222592
Date: Mon, 25 Mar 2019 00:24:39 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <89a0de65-9f08-46a2-b806-ba153b07ffec@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903250810200.2742@hadrien>
References: <20190325070536.5463-1-sanjana99reddy99@gmail.com>
 <alpine.DEB.2.21.1903250810200.2742@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: ddk750_chip.c:
 Prefer using the BIT macro
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1457_692574114.1553498679327"
X-Google-Token: ELeE4uQFcQF88tU6sI40
X-Google-IP: 123.201.105.41

------=_Part_1457_692574114.1553498679327
Content-Type: multipart/alternative; 
	boundary="----=_Part_1458_1875913356.1553498679328"

------=_Part_1458_1875913356.1553498679328
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Monday, March 25, 2019 at 12:41:16 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Mon, 25 Mar 2019, Sanjana Sanikommu wrote: 
>
> > Challenge suggested by coccinelle. 
> > 
> > Replace bit shifting on 1 with the BIT(x) macro. 
> > Coccinelle script: 
> > 
> > @@ 
> > constant c; 
> > @@ 
> > 
> > -1 << c 
> > +BIT(c) 
> > 
> > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/sm750fb/ddk750_chip.c | 2 +- 
> >  1 file changed, 1 insertion(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/sm750fb/ddk750_chip.c 
> b/drivers/staging/sm750fb/ddk750_chip.c 
> > index 4c1f00f551da..5690fb46e095 100644 
> > --- a/drivers/staging/sm750fb/ddk750_chip.c 
> > +++ b/drivers/staging/sm750fb/ddk750_chip.c 
> > @@ -45,7 +45,7 @@ static unsigned int get_mxclk_freq(void) 
> >          OD = (pll_reg & PLL_CTRL_OD_MASK) >> PLL_CTRL_OD_SHIFT; 
> >          POD = (pll_reg & PLL_CTRL_POD_MASK) >> PLL_CTRL_POD_SHIFT; 
> > 
> > -        return DEFAULT_INPUT_CLOCK * M / N / (1 << OD) / (1 << POD); 
> > +        return DEFAULT_INPUT_CLOCK * M / N / (BIT(OD)) / (BIT(POD)); 
>
> You don't need the parentheses around the call to BIT.  BIT will take care 
> of it. 
>
 
   Sure I would change it :)
  Sanjana 

>
> julia 
>
> >  } 
> > 
> >  /* 
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
> https://groups.google.com/d/msgid/outreachy-kernel/20190325070536.5463-1-sanjana99reddy99%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_1458_1875913356.1553498679328
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Monday, March 25, 2019 at 12:41:16 PM UTC+5:30,=
 Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;ma=
rgin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Mon, 25 Mar 2019, Sanjana Sanikommu wrote:
<br>
<br>&gt; Challenge suggested by coccinelle.
<br>&gt;
<br>&gt; Replace bit shifting on 1 with the BIT(x) macro.
<br>&gt; Coccinelle script:
<br>&gt;
<br>&gt; @@
<br>&gt; constant c;
<br>&gt; @@
<br>&gt;
<br>&gt; -1 &lt;&lt; c
<br>&gt; +BIT(c)
<br>&gt;
<br>&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"4rWSgUHSBAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">sanjana9...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/sm750fb/<wbr>ddk750_chip.c | 2 +-
<br>&gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/sm750fb/<wbr>ddk750_chip.c b/drivers/=
staging/sm750fb/<wbr>ddk750_chip.c
<br>&gt; index 4c1f00f551da..5690fb46e095 100644
<br>&gt; --- a/drivers/staging/sm750fb/<wbr>ddk750_chip.c
<br>&gt; +++ b/drivers/staging/sm750fb/<wbr>ddk750_chip.c
<br>&gt; @@ -45,7 +45,7 @@ static unsigned int get_mxclk_freq(void)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0OD =3D (pll_=
reg &amp; PLL_CTRL_OD_MASK) &gt;&gt; PLL_CTRL_OD_SHIFT;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0POD =3D (pll=
_reg &amp; PLL_CTRL_POD_MASK) &gt;&gt; PLL_CTRL_POD_SHIFT;
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return DEFAULT_IN=
PUT_CLOCK * M / N / (1 &lt;&lt; OD) / (1 &lt;&lt; POD);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return DEFAULT_IN=
PUT_CLOCK * M / N / (BIT(OD)) / (BIT(POD));
<br>
<br>You don&#39;t need the parentheses around the call to BIT. =C2=A0BIT wi=
ll take care
<br>of it.
<br></blockquote><div>=C2=A0</div><div>=C2=A0 =C2=A0Sure I would change it =
:)</div><div>=C2=A0 Sanjana=C2=A0</div><blockquote class=3D"gmail_quote" st=
yle=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-lef=
t: 1ex;">
<br>julia
<br>
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; =C2=A0/*
<br>&gt; --
<br>&gt; 2.17.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"4rWSgUHSBAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"4rWSgUHSBAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20190325070536.5463-1-sanjana99reddy99=
%40gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190325070536.5=
463-1-sanjana99reddy99%40gmail.com&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190325070536.5=
463-1-sanjana99reddy99%40gmail.com&#39;;return true;">https://groups.google=
.com/d/<wbr>msgid/outreachy-kernel/<wbr>20190325070536.5463-1-<wbr>sanjana9=
9reddy99%40gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_1458_1875913356.1553498679328--

------=_Part_1457_692574114.1553498679327--

