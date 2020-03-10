X-GM-THRID: 6802508842899865600
Date: Tue, 10 Mar 2020 04:04:48 -0700 (PDT)
From: Deepak Varma <mh12gx2825@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <02081ae5-284b-401d-85df-dc1e6911e1f1@googlegroups.com>
In-Reply-To: <20200310094630.GA2514761@kroah.com>
References: <20200310092819.GA20959@deeUbuntu>
 <20200310094630.GA2514761@kroah.com>
Subject: Re: [PATCH] wilc1000 : rearrange line exceeding 80 characters
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_746_975922302.1583838288268"
X-Google-Token: ENDonfMFGarsJeICFtc0
X-Google-IP: 103.240.207.69

------=_Part_746_975922302.1583838288268
Content-Type: multipart/alternative; 
	boundary="----=_Part_747_649704574.1583838288269"

------=_Part_747_649704574.1583838288269
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Thank you Greg. What you commented makes sense.

Deepak.

On Tuesday, 10 March 2020 15:16:35 UTC+5:30, gregkh wrote:
>
> On Tue, Mar 10, 2020 at 02:58:24PM +0530, Deepak R Varma wrote: 
> > A long if condition exceeding 80 characters that makes evaluation 
> > appear confusing. Rearranging the condition makes it easier to 
> understand. 
> > 
> > Signed-off-by: Deepak R Varma <mh12g...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/wilc1000/netdev.c | 6 ++++-- 
> >  1 file changed, 4 insertions(+), 2 deletions(-) 
>
> You forgot "staging:" in your subject line. 
>
> > 
> > diff --git a/drivers/staging/wilc1000/netdev.c 
> b/drivers/staging/wilc1000/netdev.c 
> > index 045f5cdfdca0..d7a632c92a76 100644 
> > --- a/drivers/staging/wilc1000/netdev.c 
> > +++ b/drivers/staging/wilc1000/netdev.c 
> > @@ -802,8 +802,10 @@ void wilc_wfi_mgmt_rx(struct wilc *wilc, u8 *buff, 
> u32 size) 
> >                  u16 type = le16_to_cpup((__le16 *)buff); 
> >   
> >                  if (vif->priv.p2p_listen_state && 
> > -                    ((type == vif->frame_reg[0].type && 
> vif->frame_reg[0].reg) || 
> > -                     (type == vif->frame_reg[1].type && 
> vif->frame_reg[1].reg))) 
> > +                    ((type == vif->frame_reg[0].type && 
> > +                        vif->frame_reg[0].reg) || 
> > +                     (type == vif->frame_reg[1].type && 
> > +                        vif->frame_reg[1].reg))) 
>
> The original code is really easier to follow than your change, so I 
> would just leave it as-is please. 
>
> thanks, 
>
> greg k-h 
>

------=_Part_747_649704574.1583838288269
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you Greg. What you commented makes sense.</div>=
<div><br></div><div>Deepak.<br></div><br>On Tuesday, 10 March 2020 15:16:35=
 UTC+5:30, gregkh  wrote:<blockquote class=3D"gmail_quote" style=3D"margin:=
 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Tu=
e, Mar 10, 2020 at 02:58:24PM +0530, Deepak R Varma wrote:
<br>&gt; A long if condition exceeding 80 characters that makes evaluation
<br>&gt; appear confusing. Rearranging the condition makes it easier to und=
erstand.
<br>&gt;=20
<br>&gt; Signed-off-by: Deepak R Varma &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"fYR967i7AQAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">mh12g...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/wilc1000/<wbr>netdev.c | 6 ++++--
<br>&gt; =C2=A01 file changed, 4 insertions(+), 2 deletions(-)
<br>
<br>You forgot &quot;staging:&quot; in your subject line.
<br>
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/wilc1000/<wbr>netdev.c b/drivers/stag=
ing/wilc1000/<wbr>netdev.c
<br>&gt; index 045f5cdfdca0..d7a632c92a76 100644
<br>&gt; --- a/drivers/staging/wilc1000/<wbr>netdev.c
<br>&gt; +++ b/drivers/staging/wilc1000/<wbr>netdev.c
<br>&gt; @@ -802,8 +802,10 @@ void wilc_wfi_mgmt_rx(struct wilc *wilc, u8 *=
buff, u32 size)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u16 type =3D le16_to_cpup((__le16 *)buf=
f);
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (vif-&gt;priv.p2p_listen_state &amp;=
&amp;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0((type =3D=3D vif-&gt;frame_=
reg[0].type &amp;&amp; vif-&gt;frame_reg[0].reg) ||
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 (type =3D=3D vif-&gt;frame_=
reg[1].type &amp;&amp; vif-&gt;frame_reg[1].reg)))
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0((type =3D=3D vif-&gt;frame_=
reg[0].type &amp;&amp;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0vif-&gt;<wbr>frame_reg[0].reg) ||
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 (type =3D=3D vif-&gt;frame_=
reg[1].type &amp;&amp;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0vif-&gt;<wbr>frame_reg[1].reg)))
<br>
<br>The original code is really easier to follow than your change, so I
<br>would just leave it as-is please.
<br>
<br>thanks,
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_747_649704574.1583838288269--

------=_Part_746_975922302.1583838288268--

