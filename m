X-GM-THRID: 6389636871256801280
Date: Tue, 21 Feb 2017 18:40:07 -0800 (PST)
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: singhalsimran0@gmail.com, gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Message-Id: <e9a638db-16fe-4e85-a132-c45c39307df1@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1702212058040.2117@hadrien>
References: <20170221185615.GA25627@singhal-Inspiron-5558>
 <alpine.DEB.2.20.1702212058040.2117@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 2/7] staging: most: Using macro
 DIV_ROUND_UP
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_8444_2091222266.1487731207167"
X-Google-Token: EIf0s8UFMbDjppTammM0
X-Google-IP: 14.139.82.6

------=_Part_8444_2091222266.1487731207167
Content-Type: multipart/alternative; 
	boundary="----=_Part_8445_719055857.1487731207167"

------=_Part_8445_719055857.1487731207167
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Wednesday, February 22, 2017 at 1:28:52 AM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Wed, 22 Feb 2017, simran singhal wrote: 
>
> > The macro DIV_ROUND_UP performs the computation (((n) + (d) - 1) /(d)). 
> > It clarifies the divisor calculations. This occurence was detected using 
> > the coccinelle script: 
> > 
> > @@ 
> > expression e1; 
> > expression e2; 
> > @@ 
> > ( 
> > - ((e1) + e2 - 1) / (e2) 
> > + DIV_ROUND_UP(e1,e2) 
> > | 
> > - ((e1) + (e2 - 1)) / (e2) 
> > + DIV_ROUND_UP(e1,e2) 
> > ) 
>
>
> DIV_ROUND_UP is defined in kernel.h, which defines some other generally 
> useful things.  Maybe there is an opportunity for making rules from some 
> of them also. 
>

yes, for sure I will make other rules also, but do I have to include other 
rules in
this patch only and resend v2.   


> julia 
>
> > 
> > Signed-off-by: simran singhal <singhal...@gmail.com> 
> > --- 
> >  drivers/staging/most/hdm-dim2/dim2_hal.c | 6 +++--- 
> >  1 file changed, 3 insertions(+), 3 deletions(-) 
> > 
> > diff --git a/drivers/staging/most/hdm-dim2/dim2_hal.c 
> b/drivers/staging/most/hdm-dim2/dim2_hal.c 
> > index 0b9816c..6824826 100644 
> > --- a/drivers/staging/most/hdm-dim2/dim2_hal.c 
> > +++ b/drivers/staging/most/hdm-dim2/dim2_hal.c 
> > @@ -49,7 +49,7 @@ 
> >  #define DBR_SIZE  (16 * 1024) /* specified by IP */ 
> >  #define DBR_BLOCK_SIZE  (DBR_SIZE / 32 / DBR_MAP_SIZE) 
> > 
> > -#define ROUND_UP_TO(x, d)  (((x) + (d) - 1) / (d) * (d)) 
> > +#define ROUND_UP_TO(x, d)  (DIV_ROUND_UP(x, (d)) * (d)) 
> > 
> >  /* 
> -------------------------------------------------------------------------- 
> */ 
> >  /* generic helper functions and macros */ 
> > @@ -117,7 +117,7 @@ static int alloc_dbr(u16 size) 
> >                  return DBR_SIZE; /* out of memory */ 
> > 
> >          for (i = 0; i < DBR_MAP_SIZE; i++) { 
> > -                u32 const blocks = (size + DBR_BLOCK_SIZE - 1) / 
> DBR_BLOCK_SIZE; 
> > +                u32 const blocks = DIV_ROUND_UP(size, DBR_BLOCK_SIZE); 
> >                  u32 mask = ~((~(u32)0) << blocks); 
> > 
> >                  do { 
> > @@ -137,7 +137,7 @@ static int alloc_dbr(u16 size) 
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
> an email to outreachy-kern...@googlegroups.com. 
> > To post to this group, send email to outreach...@googlegroups.com. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20170221185615.GA25627%40singhal-Inspiron-5558. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_8445_719055857.1487731207167
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Wednesday, February 22, 2017 at 1:28:52 AM UTC+=
5:30, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin:=
 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Wed, 22 Feb 2017, simran singhal wrote:
<br>
<br>&gt; The macro DIV_ROUND_UP performs the computation (((n) + (d) - 1) /=
(d)).
<br>&gt; It clarifies the divisor calculations. This occurence was detected=
 using
<br>&gt; the coccinelle script:
<br>&gt;
<br>&gt; @@
<br>&gt; expression e1;
<br>&gt; expression e2;
<br>&gt; @@
<br>&gt; (
<br>&gt; - ((e1) + e2 - 1) / (e2)
<br>&gt; + DIV_ROUND_UP(e1,e2)
<br>&gt; |
<br>&gt; - ((e1) + (e2 - 1)) / (e2)
<br>&gt; + DIV_ROUND_UP(e1,e2)
<br>&gt; )
<br>
<br>
<br>DIV_ROUND_UP is defined in kernel.h, which defines some other generally
<br>useful things. =C2=A0Maybe there is an opportunity for making rules fro=
m some
<br>of them also.
<br></blockquote><div><br>yes, for sure I will make other rules also, but d=
o I have to include other rules in<br>this patch only and resend v2. =C2=A0=
 <br><br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-=
left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>julia
<br>
<br>&gt;
<br>&gt; Signed-off-by: simran singhal &lt;<a rel=3D"nofollow">singhal...@g=
mail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/most/hdm-<wbr>dim2/dim2_hal.c | 6 +++---
<br>&gt; =C2=A01 file changed, 3 insertions(+), 3 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/most/hdm-<wbr>dim2/dim2_hal.c b/drive=
rs/staging/most/hdm-<wbr>dim2/dim2_hal.c
<br>&gt; index 0b9816c..6824826 100644
<br>&gt; --- a/drivers/staging/most/hdm-<wbr>dim2/dim2_hal.c
<br>&gt; +++ b/drivers/staging/most/hdm-<wbr>dim2/dim2_hal.c
<br>&gt; @@ -49,7 +49,7 @@
<br>&gt; =C2=A0#define DBR_SIZE =C2=A0(16 * 1024) /* specified by IP */
<br>&gt; =C2=A0#define DBR_BLOCK_SIZE =C2=A0(DBR_SIZE / 32 / DBR_MAP_SIZE)
<br>&gt;
<br>&gt; -#define ROUND_UP_TO(x, d) =C2=A0(((x) + (d) - 1) / (d) * (d))
<br>&gt; +#define ROUND_UP_TO(x, d) =C2=A0(DIV_ROUND_UP(x, (d)) * (d))
<br>&gt;
<br>&gt; =C2=A0/* ------------------------------<wbr>----------------------=
--------<wbr>-------------- */
<br>&gt; =C2=A0/* generic helper functions and macros */
<br>&gt; @@ -117,7 +117,7 @@ static int alloc_dbr(u16 size)
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
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0do {
<br>&gt; @@ -137,7 +137,7 @@ static int alloc_dbr(u16 size)
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
send an email to <a rel=3D"nofollow">outreachy-kern...@<wbr>googlegroups.co=
m</a>.
<br>&gt; To post to this group, send email to <a rel=3D"nofollow">outreach.=
..@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20170221185615.GA25627%40singhal-Inspi=
ron-5558" rel=3D"nofollow">https://groups.google.com/d/<wbr>msgid/outreachy=
-kernel/<wbr>20170221185615.GA25627%<wbr>40singhal-Inspiron-5558</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" rel=3D"nofollow">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_8445_719055857.1487731207167--

------=_Part_8444_2091222266.1487731207167--

