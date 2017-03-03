X-GM-THRID: 6393301758267883520
Date: Fri, 3 Mar 2017 08:50:44 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: arushisinghal19971997@gmail.com, w.d.hubbs@gmail.com,
	chris@the-brannons.com, kirk@reisers.ca,
	samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org,
	speakup@linux-speakup.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Message-Id: <cc06f004-d16e-4e67-86fb-5e1b099c811a@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1703031701480.3490@hadrien>
References: <20170303155557.GA23744@arushi-HP-Pavilion-Notebook>
 <alpine.DEB.2.20.1703031701480.3490@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: else is not
 generally useful after a break or return
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_884_1935285041.1488559844498"
X-Google-Token: EOS95sUFLf1L5HP9uk40
X-Google-IP: 14.139.82.6

------=_Part_884_1935285041.1488559844498
Content-Type: multipart/alternative; 
	boundary="----=_Part_885_497596556.1488559844499"

------=_Part_885_497596556.1488559844499
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Friday, March 3, 2017 at 9:33:22 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Fri, 3 Mar 2017, Arushi Singhal wrote: 
>
> > fixed checkpatch.pl warning: else is not generally useful after a break 
> > or return. 
> > Removed the else without affecting the logic. 
> > Dead code is also eliminated. 
>
> The chhange is not correct.  There is a big chain of if/else if.  The if 
> (type == KT_LATIN) can reach the code at the end of the file. 
>
If there is else and all if/else have return statement so then the code 
will not reach at the end. 
 Thanks
Aruhsi

> \
> julia 
>
> > 
> > Signed-off-by: Arushi Singhal <arushising...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/speakup/keyhelp.c | 53 
> ++++++++++++++------------------------- 
> >  1 file changed, 19 insertions(+), 34 deletions(-) 
> > 
> > diff --git a/drivers/staging/speakup/keyhelp.c 
> b/drivers/staging/speakup/keyhelp.c 
> > index 4e6e5daba50c..ad3efded37c1 100644 
> > --- a/drivers/staging/speakup/keyhelp.c 
> > +++ b/drivers/staging/speakup/keyhelp.c 
> > @@ -176,43 +176,28 @@ int spk_handle_help(struct vc_data *vc, u_char 
> type, u_char ch, u_short key) 
> >                  synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO)); 
> >                  build_key_data(); /* rebuild each time in case new 
> mapping */ 
> >                  return 1; 
> > -        } else { 
> > -                name = NULL; 
> > -                if ((type != KT_SPKUP) && (key > 0) && (key <= 
> num_key_names)) { 
> > -                        synth_printf("%s\n", 
> > -                                     spk_msg_get(MSG_KEYNAMES_START + 
> key - 1)); 
> > -                        return 1; 
> > -                } 
> > -                for (i = 0; funcvals[i] != 0 && !name; i++) { 
> > -                        if (ch == funcvals[i]) 
> > -                                name = spk_msg_get(MSG_FUNCNAMES_START 
> + i); 
> > -                } 
> > -                if (!name) 
> > -                        return -1; 
> > -                kp = spk_our_keys[key] + 1; 
> > -                for (i = 0; i < nstates; i++) { 
> > -                        if (ch == kp[i]) 
> > -                                break; 
> > -                } 
> > -                key += (state_tbl[i] << 8); 
> > -                say_key(key); 
> > -                synth_printf(spk_msg_get(MSG_KEYDESC), name); 
> > -                synth_printf("\n"); 
> > -                return 1; 
> >          } 
> > -        name = spk_msg_get(MSG_FUNCNAMES_START + cur_item); 
> > -        func = funcvals[cur_item]; 
> > -        synth_printf("%s", name); 
> > -        if (key_offsets[func] == 0) { 
> > -                synth_printf(" %s\n", spk_msg_get(MSG_IS_UNASSIGNED)); 
> > + 
> > +        name = NULL; 
> > +        if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) 
> { 
> > +                synth_printf("%s\n", 
> > +                             spk_msg_get(MSG_KEYNAMES_START + key - 
> 1)); 
> >                  return 1; 
> >          } 
> > -        p_keys = key_data + key_offsets[func]; 
> > -        for (n = 0; p_keys[n]; n++) { 
> > -                val = p_keys[n]; 
> > -                if (n > 0) 
> > -                        synth_printf("%s ", 
> spk_msg_get(MSG_DISJUNCTION)); 
> > -                say_key(val); 
> > +        for (i = 0; funcvals[i] != 0 && !name; i++) { 
> > +                if (ch == funcvals[i]) 
> > +                        name = spk_msg_get(MSG_FUNCNAMES_START + i); 
> > +        } 
> > +        if (!name) 
> > +                return -1; 
> > +        kp = spk_our_keys[key] + 1; 
> > +        for (i = 0; i < nstates; i++) { 
> > +                if (ch == kp[i]) 
> > +                        break; 
> >          } 
> > +        key += (state_tbl[i] << 8); 
> > +        say_key(key); 
> > +        synth_printf(spk_msg_get(MSG_KEYDESC), name); 
> > +        synth_printf("\n"); 
> >          return 1; 
> >  } 
> > -- 
> > 2.11.0 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20170303155557.GA23744%40arushi-HP-Pavilion-Notebook. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_885_497596556.1488559844499
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Friday, March 3, 2017 at 9:33:22 PM UTC+5:30, J=
ulia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;marg=
in-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Fri, 3 Mar 2017, Arushi Singhal wrote:
<br>
<br>&gt; fixed <a href=3D"http://checkpatch.pl" target=3D"_blank" rel=3D"no=
follow" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp=
%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dh=
mk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=3D&#39;http://www.=
google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26u=
sg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">checkpatch.pl</=
a> warning: else is not generally useful after a break
<br>&gt; or return.
<br>&gt; Removed the else without affecting the logic.
<br>&gt; Dead code is also eliminated.
<br>
<br>The chhange is not correct. =C2=A0There is a big chain of if/else if. =
=C2=A0The if
<br>(type =3D=3D KT_LATIN) can reach the code at the end of the file.
<br></blockquote><div>If there is else and all if/else have return statemen=
t so then the code will not reach at the end. <br></div><div>=C2=A0Thanks<b=
r>Aruhsi<br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0;marg=
in-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
\<br>julia
<br>
<br>&gt;
<br>&gt; Signed-off-by: Arushi Singhal &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"HnVxC6kkBAAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">arushising...@gmail.<wbr>com</a>&gt=
;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/speakup/<wbr>keyhelp.c | 53 ++++++++++++++--=
--------------<wbr>---------
<br>&gt; =C2=A01 file changed, 19 insertions(+), 34 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/speakup/<wbr>keyhelp.c b/drivers/stag=
ing/speakup/<wbr>keyhelp.c
<br>&gt; index 4e6e5daba50c..ad3efded37c1 100644
<br>&gt; --- a/drivers/staging/speakup/<wbr>keyhelp.c
<br>&gt; +++ b/drivers/staging/speakup/<wbr>keyhelp.c
<br>&gt; @@ -176,43 +176,28 @@ int spk_handle_help(struct vc_data *vc, u_ch=
ar type, u_char ch, u_short key)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0synth_printf(<wbr>&quot;%s\n&quot;, spk=
_msg_get(MSG_HELP_INFO));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0build_key_<wbr>data(); /* rebuild each =
time in case new mapping */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 1;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0name =3D NULL;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((type !=3D KT_SPKUP) &amp;&amp; (key &=
gt; 0) &amp;&amp; (key &lt;=3D num_key_names)) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>synth_printf(&quot;%s\n&quot;,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 s=
pk_msg_get(MSG_KEYNAMES_START + key - 1));
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>return 1;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0; funcvals[i] !=3D 0 &amp;&amp=
; !name; i++) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0if (ch =3D=3D funcvals[i])
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0name =3D spk_msg=
_get(MSG_FUNCNAMES_<wbr>START + i);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!name)
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>return -1;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kp =3D spk_our_keys[key] + 1;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0; i &lt; nstates; i++) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0if (ch =3D=3D kp[i])
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0break;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0key +=3D (state_tbl[i] &lt;&lt; 8);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0say_key(key);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0synth_printf(<wbr>spk_msg_get(MSG_KEYDESC)=
, name);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0synth_printf(<wbr>&quot;\n&quot;);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 1;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0name =3D spk_msg_=
get(MSG_FUNCNAMES_<wbr>START + cur_item);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0func =3D funcvals=
[cur_item];
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0synth_printf(&quo=
t;%s&quot;, name);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (key_offsets[f=
unc] =3D=3D 0) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0synth_printf(<wbr>&quot; %s\n&quot;, spk_m=
sg_get(MSG_IS_UNASSIGNED)<wbr>);
<br>&gt; +
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0name =3D NULL;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((type !=3D KT=
_SPKUP) &amp;&amp; (key &gt; 0) &amp;&amp; (key &lt;=3D num_key_names)) {
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0synth_printf(<wbr>&quot;%s\n&quot;,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0 spk_msg_get(MSG_KEYNAMES_START + key - 1));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 1;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0p_keys =3D key_da=
ta + key_offsets[func];
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (n =3D 0; p_k=
eys[n]; n++) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0val =3D p_keys[n];
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (n &gt; 0)
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>synth_printf(&quot;%s &quot;, spk_msg_get(MSG_DISJUNCTION));
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0say_key(val);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0; fun=
cvals[i] !=3D 0 &amp;&amp; !name; i++) {
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ch =3D=3D funcvals[i])
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0name =3D spk_msg_get(MSG_FUNCNAMES_<wbr>START + i);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!name)
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -1;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kp =3D spk_our_ke=
ys[key] + 1;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0; i &=
lt; nstates; i++) {
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ch =3D=3D kp[i])
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0key +=3D (state_t=
bl[i] &lt;&lt; 8);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0say_key(key);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0synth_printf(spk_=
msg_<wbr>get(MSG_KEYDESC), name);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0synth_printf(&quo=
t;\n&quot;);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 1;
<br>&gt; =C2=A0}
<br>&gt; --
<br>&gt; 2.11.0
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"HnVxC6kkBAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"HnVxC6kkBAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20170303155557.GA23744%40arushi-HP-Pav=
ilion-Notebook" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20170303155557.G=
A23744%40arushi-HP-Pavilion-Notebook&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20170303155557.=
GA23744%40arushi-HP-Pavilion-Notebook&#39;;return true;">https://groups.goo=
gle.com/d/<wbr>msgid/outreachy-kernel/<wbr>20170303155557.GA23744%<wbr>40ar=
ushi-HP-Pavilion-Notebook</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_885_497596556.1488559844499--

------=_Part_884_1935285041.1488559844498--

