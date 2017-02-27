X-GM-THRID: 6390780050561564672
Date: Mon, 27 Feb 2017 07:19:17 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: sreyamittal5@gmail.com, w.d.hubbs@gmail.com, chris@the-brannons.com,
	kirk@reisers.ca, samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org
Message-Id: <9955a49f-05fa-4a47-8999-175c54069811@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1702271614250.3032@hadrien>
References: <20170227151124.18063-1-sreyamittal5@gmail.com>
 <alpine.DEB.2.20.1702271614250.3032@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: speakup: Align with
 open parentheses
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1212_570439652.1488208757299"
X-Google-Token: EPWG0cUFdPKOA_4VxkY0
X-Google-IP: 14.139.82.6

------=_Part_1212_570439652.1488208757299
Content-Type: multipart/alternative; 
	boundary="----=_Part_1213_140170044.1488208757299"

------=_Part_1213_140170044.1488208757299
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Monday, February 27, 2017 at 8:45:31 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Mon, 27 Feb 2017, Sreya Mittal wrote: 
>
> > Align next line of print statements 
> > to the right of open parentheses. 
> > 
> > Signed-off-by: Sreya Mittal <sreyam...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/speakup/keyhelp.c | 4 ++-- 
> >  1 file changed, 2 insertions(+), 2 deletions(-) 
> > 
> > diff --git a/drivers/staging/speakup/keyhelp.c 
> b/drivers/staging/speakup/keyhelp.c 
> > index ce94cb1..f5156bb 100644 
> > --- a/drivers/staging/speakup/keyhelp.c 
> > +++ b/drivers/staging/speakup/keyhelp.c 
> > @@ -117,7 +117,7 @@ static void say_key(int key) 
> >          } 
> >          if ((key > 0) && (key <= num_key_names)) 
>
> It's not related to this change, but there are a lot of parentheses in 
> the if tests that can be dropped. 
>
> julia 
>

Ok. I will make the changes and send again.

Sreya
 

>
> >                  synth_printf(" %s\n", 
> > -                                spk_msg_get(MSG_KEYNAMES_START + (key - 
> 1))); 
> > +                             spk_msg_get(MSG_KEYNAMES_START + (key - 
> 1))); 
> >  } 
> > 
> >  static int help_init(void) 
> > @@ -182,7 +182,7 @@ int spk_handle_help(struct vc_data *vc, u_char type, 
> u_char ch, u_short key) 
> >                  name = NULL; 
> >                  if ((type != KT_SPKUP) && (key > 0) && (key <= 
> num_key_names)) { 
> >                          synth_printf("%s\n", 
> > -                                spk_msg_get(MSG_KEYNAMES_START + key - 
> 1)); 
> > +                                     spk_msg_get(MSG_KEYNAMES_START + 
> key - 1)); 
> >                          return 1; 
> >                  } 
> >                  for (i = 0; funcvals[i] != 0 && !name; i++) { 
> > -- 
> > 2.9.3 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20170227151124.18063-1-sreyamittal5%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_1213_140170044.1488208757299
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Monday, February 27, 2017 at 8:45:31 PM UTC+5:3=
0, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;=
margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Mon, 27 Feb 2017, Sreya Mittal wrote:
<br>
<br>&gt; Align next line of print statements
<br>&gt; to the right of open parentheses.
<br>&gt;
<br>&gt; Signed-off-by: Sreya Mittal &lt;<a href=3D"javascript:" target=3D"=
_blank" gdf-obfuscated-mailto=3D"5wi7drrnAgAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">sreyam...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/speakup/<wbr>keyhelp.c | 4 ++--
<br>&gt; =C2=A01 file changed, 2 insertions(+), 2 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/speakup/<wbr>keyhelp.c b/drivers/stag=
ing/speakup/<wbr>keyhelp.c
<br>&gt; index ce94cb1..f5156bb 100644
<br>&gt; --- a/drivers/staging/speakup/<wbr>keyhelp.c
<br>&gt; +++ b/drivers/staging/speakup/<wbr>keyhelp.c
<br>&gt; @@ -117,7 +117,7 @@ static void say_key(int key)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((key &gt=
; 0) &amp;&amp; (key &lt;=3D num_key_names))
<br>
<br>It&#39;s not related to this change, but there are a lot of parentheses=
 in
<br>the if tests that can be dropped.
<br>
<br>julia
<br></blockquote><div><br>Ok. I will make the changes and send again.<br><b=
r>Sreya<br>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin: 0=
;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0synth_printf(<wbr>&quot; %s\n&quot;,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0spk_msg_get(MSG_=
KEYNAMES_<wbr>START + (key - 1)));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0 spk_msg_get(MSG_KEYNAMES_START + (key - 1)));
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; =C2=A0static int help_init(void)
<br>&gt; @@ -182,7 +182,7 @@ int spk_handle_help(struct vc_data *vc, u_char=
 type, u_char ch, u_short key)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0name =3D NULL;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((type !=3D KT_SPKUP) &amp;&amp; (ke=
y &gt; 0) &amp;&amp; (key &lt;=3D num_key_names)) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>synth_printf(&quot;%s\n&quot;,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0spk_msg_get(MSG_=
KEYNAMES_<wbr>START + key - 1));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 s=
pk_msg_get(MSG_KEYNAMES_START + key - 1));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>return 1;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0; funcvals[i] !=3D 0 &amp;&=
amp; !name; i++) {
<br>&gt; --
<br>&gt; 2.9.3
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"5wi7drrnAgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"5wi7drrnAgAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20170227151124.18063-1-sreyamittal5%40=
gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#=
39;https://groups.google.com/d/msgid/outreachy-kernel/20170227151124.18063-=
1-sreyamittal5%40gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;h=
ttps://groups.google.com/d/msgid/outreachy-kernel/20170227151124.18063-1-sr=
eyamittal5%40gmail.com&#39;;return true;">https://groups.google.com/d/<wbr>=
msgid/outreachy-kernel/<wbr>20170227151124.18063-1-<wbr>sreyamittal5%40gmai=
l.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_1213_140170044.1488208757299--

------=_Part_1212_570439652.1488208757299--

