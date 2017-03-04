X-GM-THRID: 6393400648864366592
Date: Sat, 4 Mar 2017 13:14:48 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org,
	diaconita.tamara@gmail.com
Message-Id: <e1877054-d9f5-4389-9dbb-f158d0a8b7df@googlegroups.com>
In-Reply-To: <20170303221944.10488-1-diaconita.tamara@gmail.com>
References: <20170303221944.10488-1-diaconita.tamara@gmail.com>
Subject: Re: [PATCH] staging:speakup:i18n.c: Delete tab to indent
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_977_939410784.1488662088484"
X-Google-Token: EMjc7MUFjFWJsuM6Vng0
X-Google-IP: 141.85.250.134

------=_Part_977_939410784.1488662088484
Content-Type: multipart/alternative; 
	boundary="----=_Part_978_1981617353.1488662088484"

------=_Part_978_1981617353.1488662088484
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Should I change the description and write it as I did in the previous=20
patches?

s=C3=A2mb=C4=83t=C4=83, 4 martie 2017, 00:19:48 UTC+2, Tamara Diaconita a s=
cris:
>
> Fixed the issue by using tabs over spaces to indent the code.=20
>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>=20
> ---=20
>  drivers/staging/speakup/i18n.c | 2 +-=20
>  1 file changed, 1 insertion(+), 1 deletion(-)=20
>
> diff --git a/drivers/staging/speakup/i18n.c=20
> b/drivers/staging/speakup/i18n.c=20
> index 1a3e348..3e5f012 100644=20
> --- a/drivers/staging/speakup/i18n.c=20
> +++ b/drivers/staging/speakup/i18n.c=20
> @@ -552,7 +552,7 @@ ssize_t spk_msg_set(enum msg_index_t index, char=20
> *text, size_t length)=20
>                          if (index >=3D MSG_FORMATTED_START &&=20
>                              index <=3D MSG_FORMATTED_END &&=20
>                              !fmt_validate(speakup_default_msgs[index],=
=20
> -                                          newstr)) {=20
> +                                    newstr)) {=20
>                                  kfree(newstr);=20
>                                  return -EINVAL;=20
>                          }=20
> --=20
> 2.9.3=20
>
>
------=_Part_978_1981617353.1488662088484
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Should I change the description and write it as I did in t=
he previous patches?<br><br>s=C3=A2mb=C4=83t=C4=83, 4 martie 2017, 00:19:48=
 UTC+2, Tamara Diaconita a scris:<blockquote class=3D"gmail_quote" style=3D=
"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex=
;">Fixed the issue by using tabs over spaces to indent the code.
<br>
<br>Signed-off-by: Tamara Diaconita &lt;<a href=3D"mailto:diaconita.tamara@=
gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#=
39;mailto:diaconita.tamara@gmail.com&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;mailto:diaconita.tamara@gmail.com&#39;;return true;">diaconita.tam=
ara@gmail.com</a>&gt;
<br>---
<br>=C2=A0drivers/staging/speakup/i18n.<wbr>c | 2 +-
<br>=C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>
<br>diff --git a/drivers/staging/speakup/<wbr>i18n.c b/drivers/staging/spea=
kup/<wbr>i18n.c
<br>index 1a3e348..3e5f012 100644
<br>--- a/drivers/staging/speakup/<wbr>i18n.c
<br>+++ b/drivers/staging/speakup/<wbr>i18n.c
<br>@@ -552,7 +552,7 @@ ssize_t spk_msg_set(enum msg_index_t index, char *t=
ext, size_t length)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0if (index &gt;=3D MSG_FORMATTED_START &amp;&amp;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0index &lt;=3D MSG_FORMATTED_END &amp;&amp;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0!fmt_validate(speakup_<wbr>default_msgs[index],
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0newstr)) {
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0newstr))=
 {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0kfree(newstr);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0return -EINVAL;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0}
<br>--=20
<br>2.9.3
<br>
<br></blockquote></div>
------=_Part_978_1981617353.1488662088484--

------=_Part_977_939410784.1488662088484--

