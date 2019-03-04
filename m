X-GM-THRID: 6664645719610097664
Date: Mon, 4 Mar 2019 13:39:39 -0800 (PST)
From: Dana Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <ba227e82-6a25-4767-8358-26f2a1a17f13@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903042232270.2591@hadrien>
References: <20190304210909.GA4408@pthm>
 <alpine.DEB.2.21.1903042232270.2591@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtft: Lines over 80
 characters
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_626_397396593.1551735579319"
X-Google-Token: EJu29uMFe7a3-qzHFh00
X-Google-IP: 5.12.179.61

------=_Part_626_397396593.1551735579319
Content-Type: multipart/alternative; 
	boundary="----=_Part_627_18359769.1551735579319"

------=_Part_627_18359769.1551735579319
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

ok, I understand, thank you
should I correct the string issue and mail this patch again?

On Monday, March 4, 2019 at 11:34:00 PM UTC+2, Julia Lawall wrote:
>
>
>
> On Mon, 4 Mar 2019, Daniela Mormocea wrote: 
>
> > Fix lines with over 80 characters 
> > 
> > Signed-off-by: Daniela Mormocea <daniela....@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/fbtft/flexfb.c | 9 +++++++-- 
> >  1 file changed, 7 insertions(+), 2 deletions(-) 
> > 
> > diff --git a/drivers/staging/fbtft/flexfb.c 
> b/drivers/staging/fbtft/flexfb.c 
> > index c5fa591..0759d93 100644 
> > --- a/drivers/staging/fbtft/flexfb.c 
> > +++ b/drivers/staging/fbtft/flexfb.c 
> > @@ -671,7 +671,10 @@ static int flexfb_probe_common(struct spi_device 
> *sdev, 
> >                          break; 
> >                  case 9: 
> >                          if (regwidth == 16) { 
> > -                                dev_err(dev, "argument 'regwidth': %d 
> is not supported with buswidth=%d and SPI.\n", regwidth, buswidth); 
> > +                                dev_err(dev, 
> > +                                        "argument 'regwidth': %d is not 
> > +                                        supported with buswidth=%d and 
> SPI.\n", 
>
> Don't break the string in this way.  Strings are allowed to drift over 80 
> characters, so that it is possible to grep for the string that one sees at 
> runtime. 
>
> julia 
>
> > +                                        regwidth, buswidth); 
> >                                  return -EINVAL; 
> >                          } 
> >                          par->fbtftops.write_register = 
> fbtft_write_reg8_bus9; 
> > @@ -718,7 +721,9 @@ static int flexfb_probe_common(struct spi_device 
> *sdev, 
> >                          par->fbtftops.write_vmem = 
> fbtft_write_vmem16_bus16; 
> >                          break; 
> >                  default: 
> > -                        dev_err(dev, "argument 'buswidth': %d is not 
> supported with parallel.\n", buswidth); 
> > +                        dev_err(dev, 
> > +                                "argument 'buswidth': %d is not 
> supported with parallel.\n", 
> > +                                buswidth); 
> >                          return -EINVAL; 
> >                  } 
> >          } 
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
> https://groups.google.com/d/msgid/outreachy-kernel/20190304210909.GA4408%40pthm. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_627_18359769.1551735579319
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>ok, I understand, thank you<br></div><div>should I co=
rrect the string issue and mail this patch again?<br></div><br>On Monday, M=
arch 4, 2019 at 11:34:00 PM UTC+2, Julia Lawall wrote:<blockquote class=3D"=
gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc so=
lid;padding-left: 1ex;">
<br>
<br>On Mon, 4 Mar 2019, Daniela Mormocea wrote:
<br>
<br>&gt; Fix lines with over 80 characters
<br>&gt;
<br>&gt; Signed-off-by: Daniela Mormocea &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"M0u8upW0CQAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">daniela....@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/fbtft/flexfb.<wbr>c | 9 +++++++--
<br>&gt; =C2=A01 file changed, 7 insertions(+), 2 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/fbtft/<wbr>flexfb.c b/drivers/staging=
/fbtft/<wbr>flexfb.c
<br>&gt; index c5fa591..0759d93 100644
<br>&gt; --- a/drivers/staging/fbtft/<wbr>flexfb.c
<br>&gt; +++ b/drivers/staging/fbtft/<wbr>flexfb.c
<br>&gt; @@ -671,7 +671,10 @@ static int flexfb_probe_common(struct spi_dev=
ice *sdev,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case 9:
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0if (regwidth =3D=3D 16) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0dev_err(dev, &qu=
ot;argument &#39;regwidth&#39;: %d is not supported with buswidth=3D%d and =
SPI.\n&quot;, regwidth, buswidth);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0dev_err(dev,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&quot;argument &#39;regwidth&#39;: %d is n=
ot
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0supported with buswidth=3D%d and SPI.\n&qu=
ot;,
<br>
<br>Don&#39;t break the string in this way. =C2=A0Strings are allowed to dr=
ift over 80
<br>characters, so that it is possible to grep for the string that one sees=
 at
<br>runtime.
<br>
<br>julia
<br>
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0regwidth, buswidth);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0return -EINVA=
L;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0par-&gt;<wbr>fbtftops.write_register =3D fbtft_write_reg8_bus9;
<br>&gt; @@ -718,7 +721,9 @@ static int flexfb_probe_common(struct spi_devi=
ce *sdev,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0par-&gt;<wbr>fbtftops.write_vmem =3D fbtft_write_vmem16_bus16;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0default:
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0dev_<wbr>err(dev, &quot;argument &#39;buswidth&#39;: %d is not suppor=
ted with parallel.\n&quot;, buswidth);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0dev_<wbr>err(dev,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0&quot;argument &=
#39;buswidth&#39;: %d is not supported with parallel.\n&quot;,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0buswidth);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>return -EINVAL;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; --
<br>&gt; 2.7.4
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"M0u8upW0CQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"M0u8upW0CQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20190304210909.GA4408%40pthm" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https://groups=
.google.com/d/msgid/outreachy-kernel/20190304210909.GA4408%40pthm&#39;;retu=
rn true;" onclick=3D"this.href=3D&#39;https://groups.google.com/d/msgid/out=
reachy-kernel/20190304210909.GA4408%40pthm&#39;;return true;">https://group=
s.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20190304210909.GA4408%40pth=
m</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_627_18359769.1551735579319--

------=_Part_626_397396593.1551735579319--

