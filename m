X-GM-THRID: 6208143559134019584
Date: Thu, 22 Oct 2015 03:32:28 -0700 (PDT)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: daniel.baluta@gmail.com, navyasri.tech@gmail.com
Message-Id: <d9396466-f44d-447c-906a-21bd4b67ace2@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1510221041590.2607@hadrien>
References: <cover.1445445320.git.navyasri.tech@gmail.com> <b2831ecccc09c2e69d330c453f911d8a0ae61e0f.1445445320.git.navyasri.tech@gmail.com> <CAEnQRZBqVWVHtc_pRUemU-6qZMmbD90TzuGsWe-5Xuh63mXG2A@mail.gmail.com>
 <alpine.DEB.2.10.1510221041590.2607@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 1/5] Staging: xgifb: Add space
 between ; and variable name
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_792_1442585192.1445509948122"
X-Google-Token: ELz2orEFuCHIPbMZw280
X-Google-IP: 27.6.34.222

------=_Part_792_1442585192.1445509948122
Content-Type: multipart/alternative; 
	boundary="----=_Part_793_1625798654.1445509948123"

------=_Part_793_1625798654.1445509948123
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Thursday, October 22, 2015 at 2:12:48 PM UTC+5:30, Julia Lawall wrote:
>
> On Thu, 22 Oct 2015, Daniel Baluta wrote: 
>
> > On Wed, Oct 21, 2015 at 7:48 PM, Navya Sri Nizamkari 
> > <navyas...@gmail.com <javascript:>> wrote: 
> > > This patch fixes the checkpatch.pl error: 
> > > 
> > > ERROR: space required after that ';' 
> > > 
> > > Signed-off-by: Navya Sri Nizamkari <navyas...@gmail.com <javascript:>> 
>
> > > --- 
> > >  drivers/staging/xgifb/vb_init.c | 2 +- 
> > >  1 file changed, 1 insertion(+), 1 deletion(-) 
> > > 
> > > diff --git a/drivers/staging/xgifb/vb_init.c 
> b/drivers/staging/xgifb/vb_init.c 
> > > index ea358a0..6204a98 100644 
> > > --- a/drivers/staging/xgifb/vb_init.c 
> > > +++ b/drivers/staging/xgifb/vb_init.c 
> > > @@ -10,7 +10,7 @@ static const unsigned short 
> XGINew_DDRDRAM_TYPE340[4][2] = { 
> > >         { 16, 0x45}, 
> > >         {  8, 0x35}, 
> > >         {  4, 0x31}, 
> > > -       {  2, 0x21} };e 
> > > +       {  2, 0x21} }; e 
> > 
> > Hmm, something went wrong here :) 
> > 
> > Please edit the file and remove 'e' after ';'. Otherwise, your code 
> > wouldn't even compile. 
>
> Also, this seems to be a patch on top of your previous patch, whereas your 
> corrected patches should be on top of the current state of Greg's tree. 
>
> julia 
>
>
I introduced the 'e' as a typo. I'll revert and send the patchset without 
this patch. Thanks. 

> > 
> > thanks, 
> > Daniel. 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/CAEnQRZBqVWVHtc_pRUemU-6qZMmbD90TzuGsWe-5Xuh63mXG2A%40mail.gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_793_1625798654.1445509948123
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Thursday, October 22, 2015 at 2:12:48 PM UTC+5:30, Julia Lawall =
wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8=
ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Thu, 22 Oct 2015, Dan=
iel Baluta wrote:
<br>
<br>&gt; On Wed, Oct 21, 2015 at 7:48 PM, Navya Sri Nizamkari
<br>&gt; &lt;<a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-mailt=
o=3D"27Xv08IHDgAJ" rel=3D"nofollow">navyas...@gmail.com</a>&gt; wrote:
<br>&gt; &gt; This patch fixes the <a href=3D"http://checkpatch.pl" target=
=3D"_blank" rel=3D"nofollow">checkpatch.pl</a> error:
<br>&gt; &gt;
<br>&gt; &gt; ERROR: space required after that &#39;;&#39;
<br>&gt; &gt;
<br>&gt; &gt; Signed-off-by: Navya Sri Nizamkari &lt;<a href=3D"javascript:=
" target=3D"_blank" gdf-obfuscated-mailto=3D"27Xv08IHDgAJ" rel=3D"nofollow"=
>navyas...@gmail.com</a>&gt;
<br>&gt; &gt; ---
<br>&gt; &gt; =C2=A0drivers/staging/xgifb/vb_<wbr>init.c | 2 +-
<br>&gt; &gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt; &gt;
<br>&gt; &gt; diff --git a/drivers/staging/xgifb/vb_<wbr>init.c b/drivers/s=
taging/xgifb/vb_<wbr>init.c
<br>&gt; &gt; index ea358a0..6204a98 100644
<br>&gt; &gt; --- a/drivers/staging/xgifb/vb_<wbr>init.c
<br>&gt; &gt; +++ b/drivers/staging/xgifb/vb_<wbr>init.c
<br>&gt; &gt; @@ -10,7 +10,7 @@ static const unsigned short XGINew_DDRDRAM_=
TYPE340[4][2] =3D {
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 { 16, 0x45},
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 { =C2=A08, 0x35},
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 { =C2=A04, 0x31},
<br>&gt; &gt; - =C2=A0 =C2=A0 =C2=A0 { =C2=A02, 0x21} };e
<br>&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 { =C2=A02, 0x21} }; e
<br>&gt;
<br>&gt; Hmm, something went wrong here :)
<br>&gt;
<br>&gt; Please edit the file and remove &#39;e&#39; after &#39;;&#39;. Oth=
erwise, your code
<br>&gt; wouldn&#39;t even compile.
<br>
<br>Also, this seems to be a patch on top of your previous patch, whereas y=
our
<br>corrected patches should be on top of the current state of Greg&#39;s t=
ree.
<br>
<br>julia
<br>
<br></blockquote><div><br>I introduced the &#39;e&#39; as a typo. I&#39;ll =
revert and send the patchset without this patch. Thanks. <br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left=
: 1px #ccc solid;padding-left: 1ex;">&gt;
<br>&gt; thanks,
<br>&gt; Daniel.
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"27Xv08IHDgAJ" rel=3D"nofollow">outreachy-kern...@<wbr>googlegroups=
.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"27Xv08IHDgAJ" rel=3D"nofollow">outrea=
ch...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/CAEnQRZBqVWVHtc_pRUemU-6qZMmbD90TzuGsW=
e-5Xuh63mXG2A%40mail.gmail.com" target=3D"_blank" rel=3D"nofollow">https://=
groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>CAEnQRZBqVWVHtc_pRUemU=
-<wbr>6qZMmbD90TzuGsWe-5Xuh63mXG2A%<wbr>40mail.gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow">https://groups.google.com/d/<wbr>op=
tout</a>.
<br>&gt;
<br></blockquote>
------=_Part_793_1625798654.1445509948123--

------=_Part_792_1442585192.1445509948122--

