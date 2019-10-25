X-GM-THRID: 6746399399110246400
Date: Thu, 24 Oct 2019 22:53:47 -0700 (PDT)
From: Javier Arias <jarias.linux@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <65f741fa-e387-4bda-ad44-9d7914952fb9@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1910160710100.2732@hadrien>
References: <cover.1570768179.git.jarias.linux@gmail.com> <8dd3e932f49df42d598113f29c5e5e7a7c25ae52.1570768179.git.jarias.linux@gmail.com> <alpine.DEB.2.21.1910110804200.2662@hadrien> <0b4bb686-4380-44db-a19e-7924a45f1e3f@googlegroups.com>
 <alpine.DEB.2.21.1910160710100.2732@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 6/6] staging: rtl8723bs: Fix function
 call format
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_95_989908464.1571982827977"
X-Google-Token: EOubyu0FFlMCHNTsZ2w0
X-Google-IP: 190.27.30.48

------=_Part_95_989908464.1571982827977
Content-Type: multipart/alternative; 
	boundary="----=_Part_96_1225534996.1571982827978"

------=_Part_96_1225534996.1571982827978
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello Julia,

I didn't receive feedback nor acceptance in this patchset either.

On Wednesday, 16 October 2019 00:11:11 UTC-5, Julia Lawall wrote:
>
>
>
> On Tue, 15 Oct 2019, Javier Arias wrote: 
>
> > Hello Julia, 
> > 
> > Thanks for your feedback. I rebased so the i+1 is now addressed by a 
> previous patch, but I'm afraid that changing the order of the "80 character 
> issue" commit as the first one would affect the line number for the other 
> commits. 
> > 
> > Should I resend the patch with the fix only or should I drop this/start 
> again? 
> > 
> > On Friday, 11 October 2019 01:05:22 UTC-5, Julia Lawall wrote: 
> > 
> > 
> >       On Thu, 10 Oct 2019, Javier F. Arias wrote: 
> > 
> >       > Fix function call format by following the coding style 
> guidelines 
> >       > for argument wrapping in function calls. 
> >       > Issue found by checkpatch. 
> >       > 
> >       > Signed-off-by: Javier F. Arias <jaria...@gmail.com> 
> >       > --- 
> >       >  drivers/staging/rtl8723bs/core/rtw_security.c | 17 
> ++++++++--------- 
> >       >  1 file changed, 8 insertions(+), 9 deletions(-) 
> >       > 
> >       > diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c 
> b/drivers/staging/rtl8723bs/core/rtw_security.c 
> >       > index 08570e78d5e2..a809521da53d 100644 
> >       > --- a/drivers/staging/rtl8723bs/core/rtw_security.c 
> >       > +++ b/drivers/staging/rtl8723bs/core/rtw_security.c 
> >       > @@ -1625,15 +1625,14 @@ static sint aes_decipher(u8 *key, 
> uint        hdrlen, 
>
> Actually, while you are on this file, there seems to be something weird 
> about the hdrlen parameter in the line above.  There is a lot of space 
> between it and its type.  Maybe there is a tab that should be a space? 
>
> julia 
>
>
> >       >          payload_index = hdrlen + 8; /*  8 is for extiv */ 
> >       > 
> >       >          for (i = 0; i < num_blocks; i++) { 
> >       > -                construct_ctr_preload( 
> >       > -                                ctr_preload, 
> >       > -                                a4_exists, 
> >       > -                                qc_exists, 
> >       > -                                pframe, 
> >       > -                                pn_vector, 
> >       > -                                i+1, 
> >       > -                                frtype /*  add for 
> CONFIG_IEEE80211W, none 11w also can use */ 
> >       > -                        ); 
> >       > +                construct_ctr_preload(ctr_preload, 
> >       > +                                      a4_exists, 
> >       > +                                      qc_exists, 
> >       > +                                      pframe, 
> >       > +                                      pn_vector, 
> >       > +                                      i+1, 
> >       > +                                      frtype); /*  add for 
> CONFIG_IEEE80211W, none 11w also can use */ 
> >       > + 
> > 
> >       It could be more readable with more arguments on one line. 
> > 
> >       Also, the i+1 seems like it should have been fixed in a previous 
> patch in 
> >       the series? 
> > 
> >       julia 
> > 
> >       > 
> >       >                          aes128k128d(key, ctr_preload, aes_out); 
> >       >                          bitwise_xor(aes_out, 
> &pframe[payload_index], chain_buffer); 
> >       > -- 
> >       > 2.20.1 
> >       > 
> >       > -- 
> >       > You received this message because you are subscribed to the 
> Google Groups "outreachy-kernel" group. 
> >       > To unsubscribe from this group and stop receiving emails from 
> it, send an email to outreach...@googlegroups.com. 
> >       > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/8dd3e932f49df42d598113f29c5e5e7a7c25ae52.1570768179.git.jarias.linux%40gmail.com. 
>
> >       > 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreach...@googlegroups.com <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/0b4bb686-4380-44db-a19e-7924a45f1e3f%40googlegroups.com. 
>
> > 
> >


------=_Part_96_1225534996.1571982827978
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Julia,</div><div><br></div><div>I didn&#39;t re=
ceive feedback nor acceptance in this patchset either.<br></div><br>On Wedn=
esday, 16 October 2019 00:11:11 UTC-5, Julia Lawall  wrote:<blockquote clas=
s=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #c=
cc solid;padding-left: 1ex;">
<br>
<br>On Tue, 15 Oct 2019, Javier Arias wrote:
<br>
<br>&gt; Hello Julia,
<br>&gt;
<br>&gt; Thanks for your feedback. I rebased so the i+1 is now addressed by=
 a previous patch, but I&#39;m afraid that changing the order of the &quot;=
80 character issue&quot; commit as the first one would affect the line numb=
er for the other commits.
<br>&gt;
<br>&gt; Should I resend the patch with the fix only or should I drop this/=
start again?
<br>&gt;
<br>&gt; On Friday, 11 October 2019 01:05:22 UTC-5, Julia Lawall wrote:
<br>&gt;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 On Thu, 10 Oct 2019, Javier F. Arias wrote:
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Fix function call format by following th=
e coding style guidelines
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; for argument wrapping in function calls.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Issue found by checkpatch.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Signed-off-by: Javier F. Arias &lt;<a>ja=
ria...@gmail.com</a>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; ---
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/rtl8723bs/<wbr>cor=
e/rtw_security.c | 17 ++++++++---------
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A01 file changed, 8 insertions(+), 9=
 deletions(-)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/rtl8723bs/<=
wbr>core/rtw_security.c b/drivers/staging/rtl8723bs/<wbr>core/rtw_security.=
c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index 08570e78d5e2..a809521da53d 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/rtl8723bs/<wbr>cor=
e/rtw_security.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/rtl8723bs/<wbr>cor=
e/rtw_security.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -1625,15 +1625,14 @@ static sint aes_=
decipher(u8 *key, uint=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0hdrle=
n,
<br>
<br>Actually, while you are on this file, there seems to be something weird
<br>about the hdrlen parameter in the line above. =C2=A0There is a lot of s=
pace
<br>between it and its type. =C2=A0Maybe there is a tab that should be a sp=
ace?
<br>
<br>julia
<br>
<br>
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0payload_index =3D hdrlen + 8; /* =C2=A08 is for extiv */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0for (i =3D 0; i &lt; num_blocks; i++) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0construct_<wbr>ctr=
_preload(
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0ctr_preload,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0a4_exists,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0qc_exists,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0pframe,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0pn_vector,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0i+1,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0frtype /* =C2=A0add for CONFIG_IEEE80211W, none 11w also can use *=
/
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0construct_<wbr>ctr=
_preload(ctr_preload,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0a4_exists,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0qc_exists,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0pframe,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0pn_vector,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0i+1,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0frtype); /* =C2=A0add for CONFIG_IEEE80211W, =
none 11w also can use */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 It could be more readable with more arguments=
 on one line.
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Also, the i+1 seems like it should have been =
fixed in a previous patch in
<br>&gt; =C2=A0 =C2=A0 =C2=A0 the series?
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 julia
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>aes128k128d(key, ctr_preload, aes_=
out);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>bitwise_xor(aes_out, &amp;pframe[p=
ayload_index], chain_buffer);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; 2.20.1
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; You received this message because you ar=
e subscribed to the Google Groups &quot;outreachy-kernel&quot; group.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To unsubscribe from this group and stop =
receiving emails from it, send an email to <a>outreach...@googlegroups.com<=
/a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To view this discussion on the web visit=
 <a href=3D"https://groups.google.com/d/msgid/outreachy-kernel/8dd3e932f49d=
f42d598113f29c5e5e7a7c25ae52.1570768179.git.jarias.linux%40gmail.com" targe=
t=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https://group=
s.google.com/d/msgid/outreachy-kernel/8dd3e932f49df42d598113f29c5e5e7a7c25a=
e52.1570768179.git.jarias.linux%40gmail.com&#39;;return true;" onclick=3D"t=
his.href=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/8dd3e932=
f49df42d598113f29c5e5e7a7c25ae52.1570768179.git.jarias.linux%40gmail.com&#3=
9;;return true;">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<w=
br>8dd3e932f49df42d598113f29c5e5e<wbr>7a7c25ae52.1570768179.git.<wbr>jarias=
.linux%40gmail.com</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"gUU3GytqCQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreach...@<wbr>googlegroups.com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/0b4bb686-4380-44db-a19e-7924a45f1e3f%4=
0googlegroups.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.h=
ref=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/0b4bb686-4380=
-44db-a19e-7924a45f1e3f%40googlegroups.com&#39;;return true;" onclick=3D"th=
is.href=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/0b4bb686-=
4380-44db-a19e-7924a45f1e3f%40googlegroups.com&#39;;return true;">https://g=
roups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>0b4bb686-4380-44db-a19e=
-<wbr>7924a45f1e3f%40googlegroups.<wbr>com</a>.
<br>&gt;
<br>&gt;</blockquote></div>
------=_Part_96_1225534996.1571982827978--

------=_Part_95_989908464.1571982827977--

