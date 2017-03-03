X-GM-THRID: 6393394520206082048
Date: Fri, 3 Mar 2017 14:08:46 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: chris@the-brannons.com, kirk@reisers.ca, samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org, diaconita.tamara@gmail.com
Message-Id: <103cbc92-2362-4dd6-a855-b8f580c75b23@googlegroups.com>
In-Reply-To: <20170303215557.10077-1-diaconita.tamara@gmail.com>
References: <20170303215557.10077-1-diaconita.tamara@gmail.com>
Subject: Re: [PATCH] Delete tab to indent
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_808_1813714543.1488578926648"
X-Google-Token: EO7S58UF7-CsKYBSFIw0
X-Google-IP: 79.115.211.217

------=_Part_808_1813714543.1488578926648
Content-Type: multipart/alternative; 
	boundary="----=_Part_809_2017740016.1488578926648"

------=_Part_809_2017740016.1488578926648
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

I will resend the patch, thank you!

vineri, 3 martie 2017, 23:56:01 UTC+2, Tamara Diaconita a scris:
>
> Deleted a tab to fix the checkpath.pl issue: 
> CHECK: indent should use tabs where possible. 
>
> Deleted an extra tab to indent the code. 
>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com> 
> --- 
>  drivers/staging/speakup/i18n.c | 2 +- 
>  1 file changed, 1 insertion(+), 1 deletion(-) 
>
> diff --git a/drivers/staging/speakup/i18n.c 
> b/drivers/staging/speakup/i18n.c 
> index 1a3e348..3e5f012 100644 
> --- a/drivers/staging/speakup/i18n.c 
> +++ b/drivers/staging/speakup/i18n.c 
> @@ -552,7 +552,7 @@ ssize_t spk_msg_set(enum msg_index_t index, char 
> *text, size_t length) 
>                          if (index >= MSG_FORMATTED_START && 
>                              index <= MSG_FORMATTED_END && 
>                              !fmt_validate(speakup_default_msgs[index], 
> -                                          newstr)) { 
> +                                    newstr)) { 
>                                  kfree(newstr); 
>                                  return -EINVAL; 
>                          } 
> -- 
> 2.9.3 
>
>
------=_Part_809_2017740016.1488578926648
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I will resend the patch, thank you!<br><br>vineri, 3 marti=
e 2017, 23:56:01 UTC+2, Tamara Diaconita a scris:<blockquote class=3D"gmail=
_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;p=
adding-left: 1ex;">Deleted a tab to fix the <a href=3D"http://checkpath.pl"=
 target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://=
www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpath.pl\x26sa\x3dD\x26sntz\x3d1\x=
26usg\x3dAFQjCNHJG89P3V6thKDFaYlxk26bhheSug&#39;;return true;" onclick=3D"t=
his.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpath.pl\x2=
6sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNHJG89P3V6thKDFaYlxk26bhheSug&#39;;ret=
urn true;">checkpath.pl</a> issue:
<br>CHECK: indent should use tabs where possible.
<br>
<br>Deleted an extra tab to indent the code.
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
------=_Part_809_2017740016.1488578926648--

------=_Part_808_1813714543.1488578926648--

