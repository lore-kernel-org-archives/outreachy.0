X-GM-THRID: 6672221168538222592
Date: Mon, 25 Mar 2019 00:39:28 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <7582ff81-4f6a-466c-9747-748b225e85ec@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903250833380.2742@hadrien>
References: <20190325072538.6809-1-sanjana99reddy99@gmail.com>
 <alpine.DEB.2.21.1903250833380.2742@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: sm750fb: ddk750_chip.c:
 Prefer using the BIT macro
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1197_992106928.1553499568495"
X-Google-Token: ELCL4uQFM8iqaeKt-240
X-Google-IP: 123.201.105.41

------=_Part_1197_992106928.1553499568495
Content-Type: multipart/alternative; 
	boundary="----=_Part_1198_858952041.1553499568495"

------=_Part_1198_858952041.1553499568495
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Monday, March 25, 2019 at 1:04:24 PM UTC+5:30, Julia Lawall wrote:
>
> The subject line should follow what is mostly done for this driver, which 
> is staging: sm750fb:. 
>

   Sure, I would change the subject line
   Sanjana. 

>
> julia 
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
> > -(1 << c) 
> > +BIT(c) 
> > 
> > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com <javascript:>> 
> > --- 
> > Changes in v2: 
> > Modify script to remove parentheses around BIT. 
> >  drivers/staging/sm750fb/ddk750_chip.c | 2 +- 
> >  1 file changed, 1 insertion(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/sm750fb/ddk750_chip.c 
> b/drivers/staging/sm750fb/ddk750_chip.c 
> > index 4c1f00f551da..eea4c08b8a26 100644 
> > --- a/drivers/staging/sm750fb/ddk750_chip.c 
> > +++ b/drivers/staging/sm750fb/ddk750_chip.c 
> > @@ -45,7 +45,7 @@ static unsigned int get_mxclk_freq(void) 
> >          OD = (pll_reg & PLL_CTRL_OD_MASK) >> PLL_CTRL_OD_SHIFT; 
> >          POD = (pll_reg & PLL_CTRL_POD_MASK) >> PLL_CTRL_POD_SHIFT; 
> > 
> > -        return DEFAULT_INPUT_CLOCK * M / N / (1 << OD) / (1 << POD); 
> > +        return DEFAULT_INPUT_CLOCK * M / N / BIT(OD) / BIT(POD); 
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
> https://groups.google.com/d/msgid/outreachy-kernel/20190325072538.6809-1-sanjana99reddy99%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_1198_858952041.1553499568495
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Monday, March 25, 2019 at 1:04:24 PM UTC+5:30, =
Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;mar=
gin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">The subject=
 line should follow what is mostly done for this driver, which
<br>is staging: sm750fb:.
<br></blockquote><div><br></div><div>=C2=A0 =C2=A0Sure, I would change the =
subject line</div><div>=C2=A0 =C2=A0Sanjana.=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #cc=
c solid;padding-left: 1ex;">
<br>julia
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
<br>&gt; -(1 &lt;&lt; c)
<br>&gt; +BIT(c)
<br>&gt;
<br>&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"OFv4k4TTBAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">sanjana9...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; Changes in v2:
<br>&gt; Modify script to remove parentheses around BIT.
<br>&gt; =C2=A0drivers/staging/sm750fb/<wbr>ddk750_chip.c | 2 +-
<br>&gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/sm750fb/<wbr>ddk750_chip.c b/drivers/=
staging/sm750fb/<wbr>ddk750_chip.c
<br>&gt; index 4c1f00f551da..eea4c08b8a26 100644
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
PUT_CLOCK * M / N / BIT(OD) / BIT(POD);
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
ailto=3D"OFv4k4TTBAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"OFv4k4TTBAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20190325072538.6809-1-sanjana99reddy99=
%40gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190325072538.6=
809-1-sanjana99reddy99%40gmail.com&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190325072538.6=
809-1-sanjana99reddy99%40gmail.com&#39;;return true;">https://groups.google=
.com/d/<wbr>msgid/outreachy-kernel/<wbr>20190325072538.6809-1-<wbr>sanjana9=
9reddy99%40gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_1198_858952041.1553499568495--

------=_Part_1197_992106928.1553499568495--

