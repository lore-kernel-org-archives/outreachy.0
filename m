X-GM-THRID: 6663332445434150912
Date: Fri, 1 Mar 2019 01:25:58 -0800 (PST)
From: etsai042@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <ca175c91-1fe5-4d74-adf9-3a0735ebc84d@googlegroups.com>
In-Reply-To: <20190301081903.GA7969@kroah.com>
References: <20190301081238.6440-1-etsai042@gmail.com>
 <20190301081903.GA7969@kroah.com>
Subject: Re: [PATCH] Staging: gasket: Replace symbolic permissions with
 octal permissions
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_224_1513793430.1551432358765"
X-Google-Token: EKb14-MFHjc2kjMwi-00
X-Google-IP: 128.199.125.193

------=_Part_224_1513793430.1551432358765
Content-Type: multipart/alternative; 
	boundary="----=_Part_225_1753502241.1551432358766"

------=_Part_225_1753502241.1551432358766
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Sorry Greg, I'll check the archive first next time, before I send my=20
patches.

Wentao Cai

=E5=9C=A8 2019=E5=B9=B43=E6=9C=881=E6=97=A5=E6=98=9F=E6=9C=9F=E4=BA=94 UTC+=
8=E4=B8=8B=E5=8D=884:19:07=EF=BC=8Cgregkh=E5=86=99=E9=81=93=EF=BC=9A
>
> On Fri, Mar 01, 2019 at 04:12:38PM +0800, Wentao Cai wrote:=20
> > This patch fixes the checkpatch.pl warning:=20
> > WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider=20
> using octal permissions '0444'.=20
> >=20
> > Signed-off-by: Wentao Cai <etsa...@gmail.com <javascript:>>=20
> > ---=20
> >  drivers/staging/gasket/gasket_sysfs.h | 4 ++--=20
> >  1 file changed, 2 insertions(+), 2 deletions(-)=20
> >=20
> > diff --git a/drivers/staging/gasket/gasket_sysfs.h=20
> b/drivers/staging/gasket/gasket_sysfs.h=20
> > index 151e8edd28ea..708ee43175ba 100644=20
> > --- a/drivers/staging/gasket/gasket_sysfs.h=20
> > +++ b/drivers/staging/gasket/gasket_sysfs.h=20
> > @@ -40,7 +40,7 @@=20
> >   */=20
> >  #define GASKET_END_OF_ATTR_ARRAY                                      =
=20
>         \=20
> >          {                                                             =
 =20
>        \=20
> > -                .attr =3D __ATTR(GASKET_ARRAY_END_TOKEN, S_IRUGO, NULL=
,=20
> NULL),   \=20
> > +                .attr =3D __ATTR(GASKET_ARRAY_END_TOKEN, 0444, NULL,=
=20
> NULL),      \=20
>
> This is fun, it keeps coming up and no one looks in the archives to see=
=20
> why I keep rejecting it :)=20
>
> This should be __ATTR_NULL(), but really, the whole macro can be deleted.=
=20
>
> >                  .data.attr_type =3D 0,                                =
  =20
>         \=20
> >          }=20
> >  =20
> > @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {=20
> >  =20
> >  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)            =
=20
>         \=20
> >          {                                                             =
 =20
>        \=20
> > -                .attr =3D __ATTR(_name, S_IRUGO, _show_function, NULL)=
,  =20
>        \=20
> > +                .attr =3D __ATTR(_name, 0444, _show_function, NULL),  =
  =20
>         \=20
>
> __ATTR_RO() please.=20
>
> thanks,=20
>
> greg k-h=20
>

------=_Part_225_1753502241.1551432358766
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry Greg, I&#39;ll check the archive first next time, be=
fore I send my patches.<div><br></div><div>Wentao Cai<br><br>=E5=9C=A8 2019=
=E5=B9=B43=E6=9C=881=E6=97=A5=E6=98=9F=E6=9C=9F=E4=BA=94 UTC+8=E4=B8=8B=E5=
=8D=884:19:07=EF=BC=8Cgregkh=E5=86=99=E9=81=93=EF=BC=9A<blockquote class=3D=
"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc s=
olid;padding-left: 1ex;">On Fri, Mar 01, 2019 at 04:12:38PM +0800, Wentao C=
ai wrote:
<br>&gt; This patch fixes the <a href=3D"http://checkpatch.pl" target=3D"_b=
lank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.co=
m/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQ=
jCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=3D&=
#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x2=
6sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">=
checkpatch.pl</a> warning:
<br>&gt; WARNING: Symbolic permissions &#39;S_IRUGO&#39; are not preferred.=
 Consider using octal permissions &#39;0444&#39;.
<br>&gt;=20
<br>&gt; Signed-off-by: Wentao Cai &lt;<a href=3D"javascript:" target=3D"_b=
lank" gdf-obfuscated-mailto=3D"a_jIyXedCAAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">etsa...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/gasket/<wbr>gasket_sysfs.h | 4 ++--
<br>&gt; =C2=A01 file changed, 2 insertions(+), 2 deletions(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/gasket/<wbr>gasket_sysfs.h b/drivers/=
staging/gasket/<wbr>gasket_sysfs.h
<br>&gt; index 151e8edd28ea..708ee43175ba 100644
<br>&gt; --- a/drivers/staging/gasket/<wbr>gasket_sysfs.h
<br>&gt; +++ b/drivers/staging/gasket/<wbr>gasket_sysfs.h
<br>&gt; @@ -40,7 +40,7 @@
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0#define GASKET_END_OF_ATTR_ARRAY =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{ =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.attr =3D __ATTR(GASKET_ARRAY_END_TOKEN, S=
_IRUGO, NULL, NULL), =C2=A0 \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.attr =3D __ATTR(GASKET_ARRAY_END_TOKEN, 0=
444, NULL, NULL), =C2=A0 =C2=A0 =C2=A0\
<br>
<br>This is fun, it keeps coming up and no one looks in the archives to see
<br>why I keep rejecting it :)
<br>
<br>This should be __ATTR_NULL(), but really, the whole macro can be delete=
d.
<br>
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.data.attr_<wbr>type =3D 0, =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0
<br>&gt; @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
<br>&gt; =C2=A0
<br>&gt; =C2=A0#define GASKET_SYSFS_RO(_name, _show_function, _attr_type) =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{ =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.attr =3D __ATTR(_name, S_IRUGO, _show_fun=
ction, NULL), =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.attr =3D __ATTR(_name, 0444, _show_functi=
on, NULL), =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \
<br>
<br>__ATTR_RO() please.
<br>
<br>thanks,
<br>
<br>greg k-h
<br></blockquote></div></div>
------=_Part_225_1753502241.1551432358766--

------=_Part_224_1513793430.1551432358765--

