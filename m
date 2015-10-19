X-GM-THRID: 6207218463763595264
Date: Mon, 19 Oct 2015 06:58:15 -0700 (PDT)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: navyasri.tech@gmail.com
Message-Id: <569d96a3-7bc7-40db-a1e3-f999fc6b9335@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1510190928430.2438@hadrien>
References: <20151019065438.GA5680@navya>
 <alpine.DEB.2.10.1510190928430.2438@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: emxx_udc: Add space
 around operator.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2822_948456967.1445263095856"
X-Google-Token: EPftk7EFOLs1BBAUcUM0
X-Google-IP: 111.93.5.194

------=_Part_2822_948456967.1445263095856
Content-Type: multipart/alternative; 
	boundary="----=_Part_2823_240671881.1445263095856"

------=_Part_2823_240671881.1445263095856
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Monday, October 19, 2015 at 12:59:14 PM UTC+5:30, Julia Lawall wrote:
>
> On Mon, 19 Oct 2015, Navya Sri Nizamkari wrote: 
>
> > Add a space around '>>' operator. 
> > Problem found using checkpatch. 
>
> Looks better, thanks. 
>
> Reviewed-by: Julia Lawall <julia....@lip6.fr <javascript:>> 
>
> Thanks for reviewing. 

> > 
> > Signed-off-by: Navya Sri Nizamkari <navyas...@gmail.com <javascript:>> 
> > --- 
> > Changes in v2: 
> >     -Make commit message better. 
> > 
> >  drivers/staging/emxx_udc/emxx_udc.c | 2 +- 
> >  1 file changed, 1 insertion(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/emxx_udc/emxx_udc.c 
> b/drivers/staging/emxx_udc/emxx_udc.c 
> > index 0492747..60604c8 100644 
> > --- a/drivers/staging/emxx_udc/emxx_udc.c 
> > +++ b/drivers/staging/emxx_udc/emxx_udc.c 
> > @@ -211,7 +211,7 @@ static u32 _nbu2ss_get_begin_ram_address(struct 
> nbu2ss_udc *udc) 
> >                  } 
> > 
> >                  if ((data >> 16) > last_ram_adr) 
> > -                        last_ram_adr = data>>16; 
> > +                        last_ram_adr = data >> 16; 
> >          } 
> > 
> >          return last_ram_adr + use_ram_size; 
> > -- 
> > 1.9.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20151019065438.GA5680%40navya. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_2823_240671881.1445263095856
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Monday, October 19, 2015 at 12:59:14 PM UTC+5:3=
0, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;=
margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Mon, =
19 Oct 2015, Navya Sri Nizamkari wrote:
<br>
<br>&gt; Add a space around &#39;&gt;&gt;&#39; operator.
<br>&gt; Problem found using checkpatch.
<br>
<br>Looks better, thanks.
<br>
<br>Reviewed-by: Julia Lawall &lt;<a href=3D"javascript:" target=3D"_blank"=
 gdf-obfuscated-mailto=3D"jx8eaQEYDQAJ" rel=3D"nofollow">julia....@lip6.fr<=
/a>&gt;
<br>
<br></blockquote><div>Thanks for reviewing. <br></div><blockquote class=3D"=
gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc so=
lid;padding-left: 1ex;">&gt;
<br>&gt; Signed-off-by: Navya Sri Nizamkari &lt;<a href=3D"javascript:" tar=
get=3D"_blank" gdf-obfuscated-mailto=3D"jx8eaQEYDQAJ" rel=3D"nofollow">navy=
as...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; Changes in v2:
<br>&gt; =C2=A0 =C2=A0 -Make commit message better.
<br>&gt;
<br>&gt; =C2=A0drivers/staging/emxx_udc/<wbr>emxx_udc.c | 2 +-
<br>&gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/emxx_udc/<wbr>emxx_udc.c b/drivers/st=
aging/emxx_udc/<wbr>emxx_udc.c
<br>&gt; index 0492747..60604c8 100644
<br>&gt; --- a/drivers/staging/emxx_udc/<wbr>emxx_udc.c
<br>&gt; +++ b/drivers/staging/emxx_udc/<wbr>emxx_udc.c
<br>&gt; @@ -211,7 +211,7 @@ static u32 _nbu2ss_get_begin_ram_address(<wbr>=
struct nbu2ss_udc *udc)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((data &gt;&gt; 16) &gt; last_ram_ad=
r)
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0last_<wbr>ram_adr =3D data&gt;&gt;16;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0last_<wbr>ram_adr =3D data &gt;&gt; 16;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return last_=
ram_adr + use_ram_size;
<br>&gt; --
<br>&gt; 1.9.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"jx8eaQEYDQAJ" rel=3D"nofollow">outreachy-kern...@<wbr>googlegroups=
.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"jx8eaQEYDQAJ" rel=3D"nofollow">outrea=
ch...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20151019065438.GA5680%40navya" target=
=3D"_blank" rel=3D"nofollow">https://groups.google.com/d/<wbr>msgid/outreac=
hy-kernel/<wbr>20151019065438.GA5680%40navya</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow">https://groups.google.com/d/<wbr>op=
tout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_2823_240671881.1445263095856--

------=_Part_2822_948456967.1445263095856--

