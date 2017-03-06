X-GM-THRID: 6394100888766513152
Date: Mon, 6 Mar 2017 03:29:46 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org,
	diaconita.tamara@gmail.com
Message-Id: <ae948b29-c3d0-40d3-94a0-31df90500e76@googlegroups.com>
In-Reply-To: <20170305193701.20390-1-diaconita.tamara@gmail.com>
References: <20170305193701.20390-1-diaconita.tamara@gmail.com>
Subject: Re: [PATCH 3/3] staging:speakup:keyhelp.c: Remove unnecessary else
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1364_187246547.1488799786515"
X-Google-Token: EKqQ9cUFyondZrB25kI0
X-Google-IP: 141.85.228.66

------=_Part_1364_187246547.1488799786515
Content-Type: multipart/alternative; 
	boundary="----=_Part_1365_630511791.1488799786516"

------=_Part_1365_630511791.1488799786516
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Did I do something wrong? In this case I see that the if statement finish=
=20
with a return.

duminic=C4=83, 5 martie 2017, 21:37:05 UTC+2, Tamara Diaconita a scris:
>
> Fixed the checkpath.pl WARNING:=20
> Else is not generally useful after a break return.=20
>
> Deleted the 'else' structure.=20
> Deleted extra tabs which remained after the 'else' structure was=20
> removed.=20
>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>=20
> ---=20
>  drivers/staging/speakup/keyhelp.c | 44=20
> +++++++++++++++++++--------------------=20
>  1 file changed, 22 insertions(+), 22 deletions(-)=20
>
> diff --git a/drivers/staging/speakup/keyhelp.c=20
> b/drivers/staging/speakup/keyhelp.c=20
> index 2ef7370..0e0efc46 100644=20
> --- a/drivers/staging/speakup/keyhelp.c=20
> +++ b/drivers/staging/speakup/keyhelp.c=20
> @@ -176,30 +176,30 @@ int spk_handle_help(struct vc_data *vc, u_char type=
,=20
> u_char ch, u_short key)=20
>                  synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));=20
>                  build_key_data(); /* rebuild each time in case new=20
> mapping */=20
>                  return 1;=20
> -        } else {=20
> -                name =3D NULL;=20
> -                if ((type !=3D KT_SPKUP) && (key > 0) && (key <=3D=20
> num_key_names)) {=20
> -                        synth_printf("%s\n",=20
> -                                     spk_msg_get(MSG_KEYNAMES_START + ke=
y=20
> - 1));=20
> -                        return 1;=20
> -                }=20
> -                for (i =3D 0; funcvals[i] !=3D 0 && !name; i++) {=20
> -                        if (ch =3D=3D funcvals[i])=20
> -                                name =3D spk_msg_get(MSG_FUNCNAMES_START=
 +=20
> i);=20
> -                }=20
> -                if (!name)=20
> -                        return -1;=20
> -                kp =3D spk_our_keys[key] + 1;=20
> -                for (i =3D 0; i < nstates; i++) {=20
> -                        if (ch =3D=3D kp[i])=20
> -                                break;=20
> -                }=20
> -                key +=3D (state_tbl[i] << 8);=20
> -                say_key(key);=20
> -                synth_printf(spk_msg_get(MSG_KEYDESC), name);=20
> -                synth_printf("\n");=20
> +        }=20
> +        name =3D NULL;=20
> +        if ((type !=3D KT_SPKUP) && (key > 0) && (key <=3D num_key_names=
)) {=20
> +                synth_printf("%s\n",=20
> +                             spk_msg_get(MSG_KEYNAMES_START + key - 1));=
=20
>                  return 1;=20
>          }=20
> +        for (i =3D 0; funcvals[i] !=3D 0 && !name; i++) {=20
> +                if (ch =3D=3D funcvals[i])=20
> +                        name =3D spk_msg_get(MSG_FUNCNAMES_START + i);=
=20
> +        }=20
> +        if (!name)=20
> +                return -1;=20
> +        kp =3D spk_our_keys[key] + 1;=20
> +        for (i =3D 0; i < nstates; i++) {=20
> +                if (ch =3D=3D kp[i])=20
> +                        break;=20
> +                }=20
> +        key +=3D (state_tbl[i] << 8);=20
> +        say_key(key);=20
> +        synth_printf(spk_msg_get(MSG_KEYDESC), name);=20
> +        synth_printf("\n");=20
> +        return 1;=20
> +=20
>          name =3D spk_msg_get(MSG_FUNCNAMES_START + cur_item);=20
>          func =3D funcvals[cur_item];=20
>          synth_printf("%s", name);=20
> --=20
> 2.9.3=20
>
>
------=_Part_1365_630511791.1488799786516
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Did I do something wrong? In this case I see that the if s=
tatement finish with a return.<br><br>duminic=C4=83, 5 martie 2017, 21:37:0=
5 UTC+2, Tamara Diaconita a scris:<blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;">Fixed the <a href=3D"http://checkpath.pl" target=3D"_blank" rel=3D"no=
follow" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp=
%3A%2F%2Fcheckpath.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNHJG89P3V6thKD=
FaYlxk26bhheSug&#39;;return true;" onclick=3D"this.href=3D&#39;http://www.g=
oogle.com/url?q\x3dhttp%3A%2F%2Fcheckpath.pl\x26sa\x3dD\x26sntz\x3d1\x26usg=
\x3dAFQjCNHJG89P3V6thKDFaYlxk26bhheSug&#39;;return true;">checkpath.pl</a> =
WARNING:
<br>Else is not generally useful after a break return.
<br>
<br>Deleted the &#39;else&#39; structure.
<br>Deleted extra tabs which remained after the &#39;else&#39; structure wa=
s
<br>removed.
<br>
<br>Signed-off-by: Tamara Diaconita &lt;<a href=3D"mailto:diaconita.tamara@=
gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#=
39;mailto:diaconita.tamara@gmail.com&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;mailto:diaconita.tamara@gmail.com&#39;;return true;">diaconita.tam=
ara@gmail.com</a>&gt;
<br>---
<br>=C2=A0drivers/staging/speakup/<wbr>keyhelp.c | 44 +++++++++++++++++++--=
---------<wbr>---------
<br>=C2=A01 file changed, 22 insertions(+), 22 deletions(-)
<br>
<br>diff --git a/drivers/staging/speakup/<wbr>keyhelp.c b/drivers/staging/s=
peakup/<wbr>keyhelp.c
<br>index 2ef7370..0e0efc46 100644
<br>--- a/drivers/staging/speakup/<wbr>keyhelp.c
<br>+++ b/drivers/staging/speakup/<wbr>keyhelp.c
<br>@@ -176,30 +176,30 @@ int spk_handle_help(struct vc_data *vc, u_char ty=
pe, u_char ch, u_short key)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0synth_printf(<wbr>&quot;%s\n&quot;, spk_ms=
g_get(MSG_HELP_INFO));
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0build_key_<wbr>data(); /* rebuild each tim=
e in case new mapping */
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 1;
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0name =3D NULL;
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((type !=3D KT_SPKUP) &amp;&amp; (key &gt; 0)=
 &amp;&amp; (key &lt;=3D num_key_names)) {
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>synth_printf(&quot;%s\n&quot;,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 spk_msg=
_get(MSG_KEYNAMES_START + key - 1));
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>return 1;
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0; funcvals[i] !=3D 0 &amp;&amp; !nam=
e; i++) {
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
if (ch =3D=3D funcvals[i])
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0name =3D spk_msg_get(M=
SG_FUNCNAMES_<wbr>START + i);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!name)
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>return -1;
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0kp =3D spk_our_keys[key] + 1;
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0; i &lt; nstates; i++) {
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
if (ch =3D=3D kp[i])
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0break;
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0key +=3D (state_tbl[i] &lt;&lt; 8);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0say_key(key);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0synth_printf(<wbr>spk_msg_get(MSG_KEYDESC), name=
);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0synth_printf(<wbr>&quot;\n&quot;);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0name =3D NULL;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((type !=3D KT_SPKU=
P) &amp;&amp; (key &gt; 0) &amp;&amp; (key &lt;=3D num_key_names)) {
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0synth_printf(<wbr>&quot;%s\n&quot;,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =C2=A0 =C2=A0 spk_msg_get(MSG_KEYNAMES_START + key - 1));
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 1;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0; funcvals=
[i] !=3D 0 &amp;&amp; !name; i++) {
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ch =3D=3D funcvals[i])
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
name =3D spk_msg_get(MSG_FUNCNAMES_<wbr>START + i);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!name)
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0return -1;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kp =3D spk_our_keys[ke=
y] + 1;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0; i &lt; n=
states; i++) {
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ch =3D=3D kp[i])
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>break;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0key +=3D (state_tbl[i]=
 &lt;&lt; 8);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0say_key(key);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0synth_printf(spk_msg_<=
wbr>get(MSG_KEYDESC), name);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0synth_printf(&quot;\n&=
quot;);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 1;
<br>+
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0name =3D spk_msg_=
get(MSG_FUNCNAMES_<wbr>START + cur_item);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0func =3D funcvals=
[cur_item];
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0synth_printf(&quo=
t;%s&quot;, name);
<br>--=20
<br>2.9.3
<br>
<br></blockquote></div>
------=_Part_1365_630511791.1488799786516--

------=_Part_1364_187246547.1488799786515--

