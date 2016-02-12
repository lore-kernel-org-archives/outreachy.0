X-GM-THRID: 6250276130683617280
Date: Thu, 11 Feb 2016 23:16:37 -0800 (PST)
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: bhumirks@gmail.com
Message-Id: <660d75f4-ceb0-4945-81e9-8e4c2bb1cab0@googlegroups.com>
In-Reply-To: <alpine.DEB.2.02.1602120750400.2055@localhost6.localdomain6>
References: <1455255789-6050-1-git-send-email-bhumirks@gmail.com>
 <alpine.DEB.2.02.1602120750400.2055@localhost6.localdomain6>
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: lustre: osc: Declare
 structure as static
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_120_1454945190.1455261397599"
X-Google-Token: ENWN9rUFmXgkT4CKxSU0
X-Google-IP: 14.139.242.195

------=_Part_120_1454945190.1455261397599
Content-Type: multipart/alternative; 
	boundary="----=_Part_121_770218418.1455261397600"

------=_Part_121_770218418.1455261397600
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On Friday, February 12, 2016 at 12:22:02 PM UTC+5:30, Julia Lawall wrote:
>
> On Fri, 12 Feb 2016, Bhumika Goyal wrote:=20
>
> > Declare structure as static since it is used only in this file.=20
> > Problem found using sparse. Used grep to find occurences.=20
>
> Could it also be const?  You can try annotating all declarations of this=
=20
> type as const and seeing if it compiles.=20
>
   =20
   I declared it as static const struct obd_ops osc_obd_ops but I am=20
getting warnings like :

drivers/staging/lustre/lustre/osc/osc_request.c:3312:6: warning: passing=20
argument 1 of =E2=80=98class_register_type=E2=80=99 discards =E2=80=98const=
=E2=80=99 qualifier from pointer=20
target type [enabled by default]
      LUSTRE_OSC_NAME, &osc_device_type);
      ^
In file included from drivers/staging/lustre/lustre/osc/osc_request.c:51:0:
drivers/staging/lustre/lustre/osc/../include/obd_class.h:75:5: note:=20
expected =E2=80=98struct obd_ops *=E2=80=99 but argument is of type =E2=80=
=98const struct obd_ops *=E2=80=99
 int class_register_type(struct obd_ops *, struct md_ops *,
=20

> Possible reasons for the warnings?
> julia=20
>
> > Signed-off-by: Bhumika Goyal <bhum...@gmail.com <javascript:>>=20
> > ---=20
> >  drivers/staging/lustre/lustre/osc/osc_request.c | 2 +-=20
> >  1 file changed, 1 insertion(+), 1 deletion(-)=20
> >=20
> > diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c=20
> b/drivers/staging/lustre/lustre/osc/osc_request.c=20
> > index 3ae00fc..beabb1c 100644=20
> > --- a/drivers/staging/lustre/lustre/osc/osc_request.c=20
> > +++ b/drivers/staging/lustre/lustre/osc/osc_request.c=20
> > @@ -3256,7 +3256,7 @@ static int osc_process_config(struct obd_device=
=20
> *obd, u32 len, void *buf)=20
> >          return osc_process_config_base(obd, buf);=20
> >  }=20
> >  =20
> > -struct obd_ops osc_obd_ops =3D {=20
> > +static struct obd_ops osc_obd_ops =3D {=20
> >          .owner          =3D THIS_MODULE,=20
> >          .setup          =3D osc_setup,=20
> >          .precleanup     =3D osc_precleanup,=20
> > --=20
> > 1.9.1=20
> >=20
> > --=20
> > You received this message because you are subscribed to the Google=20
> Groups "outreachy-kernel" group.=20
> > To unsubscribe from this group and stop receiving emails from it, send=
=20
> an email to outreachy-kern...@googlegroups.com <javascript:>.=20
> > To post to this group, send email to outreach...@googlegroups.com=20
> <javascript:>.=20
> > To view this discussion on the web visit=20
> https://groups.google.com/d/msgid/outreachy-kernel/1455255789-6050-1-git-=
send-email-bhumirks%40gmail.com.=20
>
> > For more options, visit https://groups.google.com/d/optout.=20
> >=20
>

------=_Part_121_770218418.1455261397600
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Friday, February 12, 2016 at 12:22:02 PM UTC+5:=
30, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0=
;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Fri,=
 12 Feb 2016, Bhumika Goyal wrote:
<br>
<br>&gt; Declare structure as static since it is used only in this file.
<br>&gt; Problem found using sparse. Used grep to find occurences.
<br>
<br>Could it also be const? =C2=A0You can try annotating all declarations o=
f this=20
<br>type as const and seeing if it compiles.
<br></blockquote><div>=C2=A0 =C2=A0 <br>=C2=A0=C2=A0 I declared it as stati=
c const struct obd_ops osc_obd_ops but I am getting warnings like :<br><br>=
drivers/staging/lustre/lustre/osc/osc_request.c:3312:6: warning: passing ar=
gument 1 of =E2=80=98class_register_type=E2=80=99 discards =E2=80=98const=
=E2=80=99 qualifier from pointer target type [enabled by default]<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 LUSTRE_OSC_NAME, &amp;osc_device_type);<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 ^<br>In file included from drivers/staging/lustre/=
lustre/osc/osc_request.c:51:0:<br>drivers/staging/lustre/lustre/osc/../incl=
ude/obd_class.h:75:5: note: expected =E2=80=98struct obd_ops *=E2=80=99 but=
 argument is of type =E2=80=98const struct obd_ops *=E2=80=99<br>=C2=A0int =
class_register_type(struct obd_ops *, struct md_ops *,<br>=C2=A0<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;bord=
er-left: 1px #ccc solid;padding-left: 1ex;">
Possible reasons for the warnings?<br>julia
<br>
<br>&gt; Signed-off-by: Bhumika Goyal &lt;<a href=3D"javascript:" target=3D=
"_blank" gdf-obfuscated-mailto=3D"pKRWrZevAQAJ" rel=3D"nofollow" onmousedow=
n=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=
=3D&#39;javascript:&#39;;return true;">bhum...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/lustre/<wbr>lustre/osc/osc_request.c | 2 +-
<br>&gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/lustre/<wbr>lustre/osc/osc_request.c =
b/drivers/staging/lustre/<wbr>lustre/osc/osc_request.c
<br>&gt; index 3ae00fc..beabb1c 100644
<br>&gt; --- a/drivers/staging/lustre/<wbr>lustre/osc/osc_request.c
<br>&gt; +++ b/drivers/staging/lustre/<wbr>lustre/osc/osc_request.c
<br>&gt; @@ -3256,7 +3256,7 @@ static int osc_process_config(struct obd_dev=
ice *obd, u32 len, void *buf)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return osc_p=
rocess_config_base(obd, buf);
<br>&gt; =C2=A0}
<br>&gt; =C2=A0
<br>&gt; -struct obd_ops osc_obd_ops =3D {
<br>&gt; +static struct obd_ops osc_obd_ops =3D {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.owner =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D THIS_MODULE,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.setup =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D osc_setup,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.precleanup =
=C2=A0 =C2=A0 =3D osc_precleanup,
<br>&gt; --=20
<br>&gt; 1.9.1
<br>&gt;=20
<br>&gt; --=20
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"pKRWrZevAQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"pKRWrZevAQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/1455255789-6050-1-git-send-email-bhumi=
rks%40gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.hre=
f=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/1455255789-6050=
-1-git-send-email-bhumirks%40gmail.com&#39;;return true;" onclick=3D"this.h=
ref=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/1455255789-60=
50-1-git-send-email-bhumirks%40gmail.com&#39;;return true;">https://groups.=
google.com/d/<wbr>msgid/outreachy-kernel/<wbr>1455255789-6050-1-git-send-<w=
br>email-bhumirks%40gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;=20
<br></blockquote></div>
------=_Part_121_770218418.1455261397600--

------=_Part_120_1454945190.1455261397599--

