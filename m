X-GM-THRID: 6394100888766513152
Date: Mon, 6 Mar 2017 05:46:36 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: diaconitatamara@gmail.com, w.d.hubbs@gmail.com, chris@the-brannons.com,
	kirk@reisers.ca, samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org, diaconita.tamara@gmail.com
Message-Id: <4efe0441-12da-4574-bd58-0a5a95af2977@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1703061237370.3078@hadrien>
References: <20170305193701.20390-1-diaconita.tamara@gmail.com> <ae948b29-c3d0-40d3-94a0-31df90500e76@googlegroups.com>
 <alpine.DEB.2.20.1703061237370.3078@hadrien>
Subject: Re: [Outreachy kernel] Re: [PATCH 3/3] staging:speakup:keyhelp.c:
 Remove unnecessary else
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1446_21060329.1488807997047"
X-Google-Token: ELzQ9cUFZS3kmuDrG-g0
X-Google-IP: 141.85.228.76

------=_Part_1446_21060329.1488807997047
Content-Type: multipart/alternative; 
	boundary="----=_Part_1447_1205160772.1488807997048"

------=_Part_1447_1205160772.1488807997048
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you for your explanations!=20
Should I resend the patch set without this patch?

luni, 6 martie 2017, 13:41:29 UTC+2, Julia Lawall a scris:
>
>
>
> On Mon, 6 Mar 2017, Tamara Diaconita wrote:=20
>
> > Did I do something wrong? In this case I see that the if statement=20
> finish=20
> > with a return.=20
>
> The structure is complex is this case.  For a simpler example, suppose yo=
u=20
> have=20
>
> if (x)=20
>   print "hello"=20
> else if (y)=20
>   return;=20
> else print "goodbye"=20
>
> The original program prints hello or goodbye (or nothing), but not both.=
=20
> If you remove the final else, it may print hello goodbye.  The structure=
=20
> of your code is like this.  The KT_LATIN and KT_CUR cases might not=20
> return.=20
>
> Chckpatch just looks at very local structure.  It doesn't follow the=20
> entire control flow, so it can have false positives like this.=20
>
> julia=20
>
> >=20
> > duminic=C4=83, 5 martie 2017, 21:37:05 UTC+2, Tamara Diaconita a scris:=
=20
> >       Fixed the checkpath.pl WARNING:=20
> >       Else is not generally useful after a break return.=20
> >=20
> >       Deleted the 'else' structure.=20
> >       Deleted extra tabs which remained after the 'else' structure was=
=20
> >       removed.=20
> >=20
> >       Signed-off-by: Tamara Diaconita <diaconit...@gmail.com=20
> <javascript:>>=20
> >       ---=20
> >        drivers/staging/speakup/keyhelp.c | 44=20
> >       +++++++++++++++++++--------------------=20
> >        1 file changed, 22 insertions(+), 22 deletions(-)=20
> >=20
> >       diff --git a/drivers/staging/speakup/keyhelp.c=20
> >       b/drivers/staging/speakup/keyhelp.c=20
> >       index 2ef7370..0e0efc46 100644=20
> >       --- a/drivers/staging/speakup/keyhelp.c=20
> >       +++ b/drivers/staging/speakup/keyhelp.c=20
> >       @@ -176,30 +176,30 @@ int spk_handle_help(struct vc_data *vc,=20
> >       u_char type, u_char ch, u_short key)=20
> >                        synth_printf("%s\n",=20
> >       spk_msg_get(MSG_HELP_INFO));=20
> >                        build_key_data(); /* rebuild each time in case=
=20
> >       new mapping */=20
> >                        return 1;=20
> >       -        } else {=20
> >       -                name =3D NULL;=20
> >       -                if ((type !=3D KT_SPKUP) && (key > 0) && (key <=
=3D=20
> >       num_key_names)) {=20
> >       -                        synth_printf("%s\n",=20
> >       -                                    =20
> >       spk_msg_get(MSG_KEYNAMES_START + key - 1));=20
> >       -                        return 1;=20
> >       -                }=20
> >       -                for (i =3D 0; funcvals[i] !=3D 0 && !name; i++) =
{=20
> >       -                        if (ch =3D=3D funcvals[i])=20
> >       -                                name =3D=20
> >       spk_msg_get(MSG_FUNCNAMES_START + i);=20
> >       -                }=20
> >       -                if (!name)=20
> >       -                        return -1;=20
> >       -                kp =3D spk_our_keys[key] + 1;=20
> >       -                for (i =3D 0; i < nstates; i++) {=20
> >       -                        if (ch =3D=3D kp[i])=20
> >       -                                break;=20
> >       -                }=20
> >       -                key +=3D (state_tbl[i] << 8);=20
> >       -                say_key(key);=20
> >       -                synth_printf(spk_msg_get(MSG_KEYDESC), name);=20
> >       -                synth_printf("\n");=20
> >       +        }=20
> >       +        name =3D NULL;=20
> >       +        if ((type !=3D KT_SPKUP) && (key > 0) && (key <=3D=20
> >       num_key_names)) {=20
> >       +                synth_printf("%s\n",=20
> >       +                             spk_msg_get(MSG_KEYNAMES_START +=20
> >       key - 1));=20
> >                        return 1;=20
> >                }=20
> >       +        for (i =3D 0; funcvals[i] !=3D 0 && !name; i++) {=20
> >       +                if (ch =3D=3D funcvals[i])=20
> >       +                        name =3D spk_msg_get(MSG_FUNCNAMES_START=
=20
> >       + i);=20
> >       +        }=20
> >       +        if (!name)=20
> >       +                return -1;=20
> >       +        kp =3D spk_our_keys[key] + 1;=20
> >       +        for (i =3D 0; i < nstates; i++) {=20
> >       +                if (ch =3D=3D kp[i])=20
> >       +                        break;=20
> >       +                }=20
> >       +        key +=3D (state_tbl[i] << 8);=20
> >       +        say_key(key);=20
> >       +        synth_printf(spk_msg_get(MSG_KEYDESC), name);=20
> >       +        synth_printf("\n");=20
> >       +        return 1;=20
> >       +=20
> >                name =3D spk_msg_get(MSG_FUNCNAMES_START + cur_item);=20
> >                func =3D funcvals[cur_item];=20
> >                synth_printf("%s", name);=20
> >       --=20
> >       2.9.3=20
> >=20
> > --=20
> > You received this message because you are subscribed to the Google=20
> Groups=20
> > "outreachy-kernel" group.=20
> > To unsubscribe from this group and stop receiving emails from it, send=
=20
> an=20
> > email to outreachy-kern...@googlegroups.com <javascript:>.=20
> > To post to this group, send email to outreach...@googlegroups.com=20
> <javascript:>.=20
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/ae948b29-c3d0-40d3-94a0-=20
> > 31df90500e76%40googlegroups.com.=20
> > For more options, visit https://groups.google.com/d/optout.=20
> >=20
> >


------=_Part_1447_1205160772.1488807997048
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you for your explanations! <br>Should I resend the p=
atch set without this patch?<br><br>luni, 6 martie 2017, 13:41:29 UTC+2, Ju=
lia Lawall a scris:<blockquote class=3D"gmail_quote" style=3D"margin: 0;mar=
gin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Mon, 6 Mar 2017, Tamara Diaconita wrote:
<br>
<br>&gt; Did I do something wrong? In this case I see that the if statement=
 finish
<br>&gt; with a return.
<br>
<br>The structure is complex is this case. =C2=A0For a simpler example, sup=
pose you
<br>have
<br>
<br>if (x)
<br>=C2=A0 print &quot;hello&quot;
<br>else if (y)
<br>=C2=A0 return;
<br>else print &quot;goodbye&quot;
<br>
<br>The original program prints hello or goodbye (or nothing), but not both=
.
<br>If you remove the final else, it may print hello goodbye. =C2=A0The str=
ucture
<br>of your code is like this. =C2=A0The KT_LATIN and KT_CUR cases might no=
t
<br>return.
<br>
<br>Chckpatch just looks at very local structure. =C2=A0It doesn&#39;t foll=
ow the
<br>entire control flow, so it can have false positives like this.
<br>
<br>julia
<br>
<br>&gt;
<br>&gt; duminic=C4=83, 5 martie 2017, 21:37:05 UTC+2, Tamara Diaconita a s=
cris:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Fixed the <a href=3D"http://checkpath.pl" tar=
get=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.=
google.com/url?q\x3dhttp%3A%2F%2Fcheckpath.pl\x26sa\x3dD\x26sntz\x3d1\x26us=
g\x3dAFQjCNHJG89P3V6thKDFaYlxk26bhheSug&#39;;return true;" onclick=3D"this.=
href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpath.pl\x26sa\=
x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNHJG89P3V6thKDFaYlxk26bhheSug&#39;;return =
true;">checkpath.pl</a> WARNING:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Else is not generally useful after a break re=
turn.
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Deleted the &#39;else&#39; structure.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Deleted extra tabs which remained after the &=
#39;else&#39; structure was
<br>&gt; =C2=A0 =C2=A0 =C2=A0 removed.
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Signed-off-by: Tamara Diaconita &lt;<a href=
=3D"javascript:" target=3D"_blank" gdf-obfuscated-mailto=3D"MAUIqwZRAQAJ" r=
el=3D"nofollow" onmousedown=3D"this.href=3D&#39;javascript:&#39;;return tru=
e;" onclick=3D"this.href=3D&#39;javascript:&#39;;return true;">diaconit...@=
gmail.com</a>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ---
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0drivers/staging/speakup/<wbr>keyhelp.c =
| 44
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +++++++++++++++++++-----------<wbr>---------
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A01 file changed, 22 insertions(+), 22 de=
letions(-)
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 diff --git a/drivers/staging/speakup/<wbr>key=
help.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/speakup/<wbr>keyhelp.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 index 2ef7370..0e0efc46 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 --- a/drivers/staging/speakup/<wbr>keyhelp.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +++ b/drivers/staging/speakup/<wbr>keyhelp.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 @@ -176,30 +176,30 @@ int spk_handle_help(str=
uct vc_data *vc,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 u_char type, u_char ch, u_short key)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0synth_printf(<wbr>=
&quot;%s\n&quot;,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 spk_msg_get(MSG_HELP_INFO));
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0build_key_<wbr>dat=
a(); /* rebuild each time in case
<br>&gt; =C2=A0 =C2=A0 =C2=A0 new mapping */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 1;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0} else {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0name =3D NULL;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((type !=3D KT_SPK=
UP) &amp;&amp; (key &gt; 0) &amp;&amp; (key &lt;=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 num_key_names)) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>synth_printf(&quot;%s\n&quot;,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 spk_msg_get(MSG_KEYNAMES_START + key - 1));
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>return 1;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0; funcval=
s[i] !=3D 0 &amp;&amp; !name; i++) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ch =3D=3D funcvals[i])
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0name =3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 spk_msg_get(MSG_FUNCNAMES_<wbr>START + i);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!name)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>return -1;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kp =3D spk_our_keys[k=
ey] + 1;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0; i &lt; =
nstates; i++) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ch =3D=3D kp[i])
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0break;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0key +=3D (state_tbl[i=
] &lt;&lt; 8);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0say_key(key);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0synth_printf(<wbr>spk=
_msg_get(MSG_KEYDESC), name);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0synth_printf(<wbr>&qu=
ot;\n&quot;);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0name =3D NULL;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0if ((type !=3D KT_SPKUP) &amp;&amp; (key &gt; 0) &amp;&amp; (key &lt;=
=3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 num_key_names)) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0synth_printf(<wbr>&qu=
ot;%s\n&quot;,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 spk_msg_get(MSG_KEYNAMES_START +
<br>&gt; =C2=A0 =C2=A0 =C2=A0 key - 1));
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 1;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0for (i =3D 0; funcvals[i] !=3D 0 &amp;&amp; !name; i++) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ch =3D=3D funcval=
s[i])
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0name =3D spk_msg_get(MSG_FUNCNAMES_<wbr>START
<br>&gt; =C2=A0 =C2=A0 =C2=A0 + i);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0if (!name)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -1;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0kp =3D spk_our_keys[key] + 1;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0for (i =3D 0; i &lt; nstates; i++) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ch =3D=3D kp[i])
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>break;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0key +=3D (state_tbl[i] &lt;&lt; 8);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0say_key(key);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0synth_printf(spk_msg_<wbr>get(MSG_KEYDESC), name);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0synth_printf(&quot;\n&quot;);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0return 1;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0name =3D spk_msg_get(MSG_FUNCNAMES_<wbr>START + cur_item);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0func =3D funcvals[cur_item];
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0synth_printf(&quot;%s&quot;, name);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 --
<br>&gt; =C2=A0 =C2=A0 =C2=A0 2.9.3
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups
<br>&gt; &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an
<br>&gt; email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-=
mailto=3D"MAUIqwZRAQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;ja=
vascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;r=
eturn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"MAUIqwZRAQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visithttps://<a href=3D"http://=
groups.google.com/d/msgid/outreachy-kernel/ae948b29-c3d0-40d3-94a0-" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://groups.=
google.com/d/msgid/outreachy-kernel/ae948b29-c3d0-40d3-94a0-&#39;;return tr=
ue;" onclick=3D"this.href=3D&#39;http://groups.google.com/d/msgid/outreachy=
-kernel/ae948b29-c3d0-40d3-94a0-&#39;;return true;">groups.google.<wbr>com/=
d/msgid/outreachy-kernel/<wbr>ae948b29-c3d0-40d3-94a0-</a>
<br>&gt; 31df90500e76%<a href=3D"http://40googlegroups.com" target=3D"_blan=
k" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/u=
rl?q\x3dhttp%3A%2F%2F40googlegroups.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dA=
FQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;return true;" onclick=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F40googlegroups.com\x26s=
a\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;retur=
n true;">40googlegroups.<wbr>com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br>&gt;</blockquote></div>
------=_Part_1447_1205160772.1488807997048--

------=_Part_1446_21060329.1488807997047--

