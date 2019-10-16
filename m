X-GM-THRID: 6746399399110246400
Date: Tue, 15 Oct 2019 20:27:57 -0700 (PDT)
From: Javier Arias <jarias.linux@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <0b4bb686-4380-44db-a19e-7924a45f1e3f@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1910110804200.2662@hadrien>
References: <cover.1570768179.git.jarias.linux@gmail.com> <8dd3e932f49df42d598113f29c5e5e7a7c25ae52.1570768179.git.jarias.linux@gmail.com>
 <alpine.DEB.2.21.1910110804200.2662@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 6/6] staging: rtl8723bs: Fix function
 call format
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_7363_431470466.1571196477319"
X-Google-Token: EL2cmu0F_SgKg6Wh0zY0
X-Google-IP: 186.29.16.135

------=_Part_7363_431470466.1571196477319
Content-Type: multipart/alternative; 
	boundary="----=_Part_7364_1924788356.1571196477319"

------=_Part_7364_1924788356.1571196477319
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello Julia,

Thanks for your feedback. I rebased so the i+1 is now addressed by a 
previous patch, but I'm afraid that changing the order of the "80 character 
issue" commit as the first one would affect the line number for the other 
commits.

Should I resend the patch with the fix only or should I drop this/start 
again?

On Friday, 11 October 2019 01:05:22 UTC-5, Julia Lawall wrote:
>
>
>
> On Thu, 10 Oct 2019, Javier F. Arias wrote: 
>
> > Fix function call format by following the coding style guidelines 
> > for argument wrapping in function calls. 
> > Issue found by checkpatch. 
> > 
> > Signed-off-by: Javier F. Arias <jaria...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/rtl8723bs/core/rtw_security.c | 17 ++++++++--------- 
> >  1 file changed, 8 insertions(+), 9 deletions(-) 
> > 
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c 
> b/drivers/staging/rtl8723bs/core/rtw_security.c 
> > index 08570e78d5e2..a809521da53d 100644 
> > --- a/drivers/staging/rtl8723bs/core/rtw_security.c 
> > +++ b/drivers/staging/rtl8723bs/core/rtw_security.c 
> > @@ -1625,15 +1625,14 @@ static sint aes_decipher(u8 *key, 
> uint        hdrlen, 
> >          payload_index = hdrlen + 8; /*  8 is for extiv */ 
> > 
> >          for (i = 0; i < num_blocks; i++) { 
> > -                construct_ctr_preload( 
> > -                                ctr_preload, 
> > -                                a4_exists, 
> > -                                qc_exists, 
> > -                                pframe, 
> > -                                pn_vector, 
> > -                                i+1, 
> > -                                frtype /*  add for CONFIG_IEEE80211W, 
> none 11w also can use */ 
> > -                        ); 
> > +                construct_ctr_preload(ctr_preload, 
> > +                                      a4_exists, 
> > +                                      qc_exists, 
> > +                                      pframe, 
> > +                                      pn_vector, 
> > +                                      i+1, 
> > +                                      frtype); /*  add for 
> CONFIG_IEEE80211W, none 11w also can use */ 
> > + 
>
> It could be more readable with more arguments on one line. 
>
> Also, the i+1 seems like it should have been fixed in a previous patch in 
> the series? 
>
> julia 
>
> > 
> >                          aes128k128d(key, ctr_preload, aes_out); 
> >                          bitwise_xor(aes_out, &pframe[payload_index], 
> chain_buffer); 
> > -- 
> > 2.20.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreach...@googlegroups.com <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/8dd3e932f49df42d598113f29c5e5e7a7c25ae52.1570768179.git.jarias.linux%40gmail.com. 
>
> > 
>

------=_Part_7364_1924788356.1571196477319
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Julia,</div><div><br></div><div>Thanks for your=
 feedback. I rebased so the i+1 is now addressed by a previous patch, but I=
&#39;m afraid that changing the order of the &quot;80 character issue&quot;=
 commit as the first one would affect the line number for the other commits=
.</div><div><br></div><div>Should I resend the patch with the fix only or s=
hould I drop this/start again?<br></div><br>On Friday, 11 October 2019 01:0=
5:22 UTC-5, Julia Lawall  wrote:<blockquote class=3D"gmail_quote" style=3D"=
margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;=
">
<br>
<br>On Thu, 10 Oct 2019, Javier F. Arias wrote:
<br>
<br>&gt; Fix function call format by following the coding style guidelines
<br>&gt; for argument wrapping in function calls.
<br>&gt; Issue found by checkpatch.
<br>&gt;
<br>&gt; Signed-off-by: Javier F. Arias &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"yoHpGjnkBwAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">jaria...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/rtl8723bs/<wbr>core/rtw_security.c | 17 ++++=
++++---------
<br>&gt; =C2=A01 file changed, 8 insertions(+), 9 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rtl8723bs/<wbr>core/rtw_security.c b/=
drivers/staging/rtl8723bs/<wbr>core/rtw_security.c
<br>&gt; index 08570e78d5e2..a809521da53d 100644
<br>&gt; --- a/drivers/staging/rtl8723bs/<wbr>core/rtw_security.c
<br>&gt; +++ b/drivers/staging/rtl8723bs/<wbr>core/rtw_security.c
<br>&gt; @@ -1625,15 +1625,14 @@ static sint aes_decipher(u8 *key, uint=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0hdrlen,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0payload_inde=
x =3D hdrlen + 8; /* =C2=A08 is for extiv */
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0=
; i &lt; num_blocks; i++) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0construct_<wbr>ctr_preload(
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0ctr_preload,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0a4_exists,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0qc_exists,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0pframe,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0pn_vector,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0i+1,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0frtype /* =C2=A0=
add for CONFIG_IEEE80211W, none 11w also can use */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0construct_<wbr>ctr_preload(ctr_preload,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0a4_exists,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0qc_exists,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0pframe,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0pn_vector,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0i+1,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0frtype); /* =C2=A0add for CONFIG_IEEE80211W, none 11w also can use */
<br>&gt; +
<br>
<br>It could be more readable with more arguments on one line.
<br>
<br>Also, the i+1 seems like it should have been fixed in a previous patch =
in
<br>the series?
<br>
<br>julia
<br>
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>aes128k128d(key, ctr_preload, aes_out);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>bitwise_xor(aes_out, &amp;pframe[payload_index], chain_buffer=
);
<br>&gt; --
<br>&gt; 2.20.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"yoHpGjnkBwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreach...@<wbr>googlegroups.com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/8dd3e932f49df42d598113f29c5e5e7a7c25ae=
52.1570768179.git.jarias.linux%40gmail.com" target=3D"_blank" rel=3D"nofoll=
ow" onmousedown=3D"this.href=3D&#39;https://groups.google.com/d/msgid/outre=
achy-kernel/8dd3e932f49df42d598113f29c5e5e7a7c25ae52.1570768179.git.jarias.=
linux%40gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;https://gr=
oups.google.com/d/msgid/outreachy-kernel/8dd3e932f49df42d598113f29c5e5e7a7c=
25ae52.1570768179.git.jarias.linux%40gmail.com&#39;;return true;">https://g=
roups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>8dd3e932f49df42d598113f=
29c5e5e<wbr>7a7c25ae52.1570768179.git.<wbr>jarias.linux%40gmail.com</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_7364_1924788356.1571196477319--

------=_Part_7363_431470466.1571196477319--

