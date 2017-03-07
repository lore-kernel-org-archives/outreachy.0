X-GM-THRID: 6394683262663393280
Date: Tue, 7 Mar 2017 08:14:32 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: diaconitatamara@gmail.com, w.d.hubbs@gmail.com, chris@the-brannons.com,
	kirk@reisers.ca, samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org, diaconita.tamara@gmail.com
Message-Id: <f63c9134-c6c9-45b2-9baf-c22c2bdde713@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1703071709390.3150@hadrien>
References: <20170307091646.13717-1-diaconita.tamara@gmail.com>
 <alpine.DEB.2.20.1703071709390.3150@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: kobjects:
 Rearrange if statement
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1939_139184356.1488903272437"
X-Google-Token: EOi4-8UFjPlJFpN0Xus0
X-Google-IP: 141.85.228.70

------=_Part_1939_139184356.1488903272437
Content-Type: multipart/alternative; 
	boundary="----=_Part_1940_1730255786.1488903272438"

------=_Part_1940_1730255786.1488903272438
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Ok, I will put them in a set.

mar=C8=9Bi, 7 martie 2017, 18:11:01 UTC+2, Julia Lawall a scris:
>
>
> On Tue, 7 Mar 2017, Tamara Diaconita wrote:=20
>
> > Fixed the checkpath.pl issue:=20
> > CHECK: line over 80 characters.=20
> >=20
> > Put a part of the if statement on a new line to have less than 80=20
> > characters.=20
> >=20
> > Signed-off-by: Tamara Diaconita <diaconit...@gmail.com <javascript:>>=
=20
> > ---=20
> >  drivers/staging/speakup/kobjects.c | 6 ++++--=20
>
> You have a bunch of patches on the same file.  In this case they need to=
=20
> be in a series, even if they don't overlap. Otherwise, the recipient has=
=20
> to spend time figuring out that they don't overlap.=20
>
> julia=20
>
> >  1 file changed, 4 insertions(+), 2 deletions(-)=20
> >=20
> > diff --git a/drivers/staging/speakup/kobjects.c=20
> b/drivers/staging/speakup/kobjects.c=20
> > index cd8eb12..a032932 100644=20
> > --- a/drivers/staging/speakup/kobjects.c=20
> > +++ b/drivers/staging/speakup/kobjects.c=20
> > @@ -106,7 +106,8 @@ static void report_char_chartab_status(int reset,=
=20
> int received, int used,=20
> >   * This is called when a user changes the characters or chartab=20
> parameters.=20
> >   */=20
> >  static ssize_t chars_chartab_store(struct kobject *kobj,=20
> > -                                   struct kobj_attribute *attr, const=
=20
> char *buf, size_t count)=20
> > +                                   struct kobj_attribute *attr,=20
> > +                                   const char *buf, size_t count)=20
> >  {=20
> >          char *cp =3D (char *)buf;=20
> >          char *end =3D cp + count; /* the null at the end of the buffer=
 */=20
> > @@ -404,7 +405,8 @@ static ssize_t synth_store(struct kobject *kobj,=20
> struct kobj_attribute *attr,=20
> >   * This is called when text is sent to the synth via the synth_direct=
=20
> file.=20
> >   */=20
> >  static ssize_t synth_direct_store(struct kobject *kobj,=20
> > -                                  struct kobj_attribute *attr, const=
=20
> char *buf, size_t count)=20
> > +                                  struct kobj_attribute *attr,=20
> > +                                  const char *buf, size_t count)=20
> >  {=20
> >          u_char tmp[256];=20
> >          int len;=20
> > --=20
> > 2.9.3=20
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
> https://groups.google.com/d/msgid/outreachy-kernel/20170307091646.13717-1=
-diaconita.tamara%40gmail.com.=20
>
> > For more options, visit https://groups.google.com/d/optout.=20
> >=20
>

------=_Part_1940_1730255786.1488903272438
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok, I will put them in a set.<br><br>mar=C8=9Bi, 7 martie =
2017, 18:11:01 UTC+2, Julia Lawall a scris:<blockquote class=3D"gmail_quote=
" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding=
-left: 1ex;">
<br>On Tue, 7 Mar 2017, Tamara Diaconita wrote:
<br>
<br>&gt; Fixed the <a href=3D"http://checkpath.pl" target=3D"_blank" rel=3D=
"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dh=
ttp%3A%2F%2Fcheckpath.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNHJG89P3V6t=
hKDFaYlxk26bhheSug&#39;;return true;" onclick=3D"this.href=3D&#39;http://ww=
w.google.com/url?q\x3dhttp%3A%2F%2Fcheckpath.pl\x26sa\x3dD\x26sntz\x3d1\x26=
usg\x3dAFQjCNHJG89P3V6thKDFaYlxk26bhheSug&#39;;return true;">checkpath.pl</=
a> issue:
<br>&gt; CHECK: line over 80 characters.
<br>&gt;
<br>&gt; Put a part of the if statement on a new line to have less than 80
<br>&gt; characters.
<br>&gt;
<br>&gt; Signed-off-by: Tamara Diaconita &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"MsKRflCuAQAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">diaconit...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/speakup/<wbr>kobjects.c | 6 ++++--
<br>
<br>You have a bunch of patches on the same file. =C2=A0In this case they n=
eed to
<br>be in a series, even if they don&#39;t overlap. Otherwise, the recipien=
t has
<br>to spend time figuring out that they don&#39;t overlap.
<br>
<br>julia
<br>
<br>&gt; =C2=A01 file changed, 4 insertions(+), 2 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/speakup/<wbr>kobjects.c b/drivers/sta=
ging/speakup/<wbr>kobjects.c
<br>&gt; index cd8eb12..a032932 100644
<br>&gt; --- a/drivers/staging/speakup/<wbr>kobjects.c
<br>&gt; +++ b/drivers/staging/speakup/<wbr>kobjects.c
<br>&gt; @@ -106,7 +106,8 @@ static void report_char_chartab_status(int res=
et, int received, int used,
<br>&gt; =C2=A0 * This is called when a user changes the characters or char=
tab parameters.
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0static ssize_t chars_chartab_store(struct kobject *kobj,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 struct k=
obj_attribute *attr, const char *buf, size_t count)
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 struct k=
obj_attribute *attr,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 const ch=
ar *buf, size_t count)
<br>&gt; =C2=A0{
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0char *cp =3D=
 (char *)buf;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0char *end =
=3D cp + count; /* the null at the end of the buffer */
<br>&gt; @@ -404,7 +405,8 @@ static ssize_t synth_store(struct kobject *kob=
j, struct kobj_attribute *attr,
<br>&gt; =C2=A0 * This is called when text is sent to the synth via the syn=
th_direct file.
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0static ssize_t synth_direct_store(struct kobject *kobj,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0struct ko=
bj_attribute *attr, const char *buf, size_t count)
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0struct ko=
bj_attribute *attr,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0const cha=
r *buf, size_t count)
<br>&gt; =C2=A0{
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u_char tmp[2=
56];
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int len;
<br>&gt; --
<br>&gt; 2.9.3
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"MsKRflCuAQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"MsKRflCuAQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20170307091646.13717-1-diaconita.tamar=
a%40gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20170307091646.1=
3717-1-diaconita.tamara%40gmail.com&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20170307091646.1=
3717-1-diaconita.tamara%40gmail.com&#39;;return true;">https://groups.googl=
e.com/d/<wbr>msgid/outreachy-kernel/<wbr>20170307091646.13717-1-<wbr>diacon=
ita.tamara%40gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_1940_1730255786.1488903272438--

------=_Part_1939_139184356.1488903272437--

