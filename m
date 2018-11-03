X-GM-THRID: 6619601914535346176
X-Received: by 2002:ac8:32d6:: with SMTP id a22mr4583016qtb.58.1541270403030;
        Sat, 03 Nov 2018 11:40:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:7553:: with SMTP id b19-v6ls1388811qtr.14.gmail; Sat, 03
 Nov 2018 11:40:02 -0700 (PDT)
X-Google-Smtp-Source: AJdET5f8qtfcCGQJGSrttC1SLfpIwl7Q6TFRUPTHTr5m+WsFcPIbsB3oxVyHVZNw3ZtPTOPWiWHdhnIPuQ==
X-Received: by 2002:ac8:1190:: with SMTP id d16-v6mr209071qtj.7.1541270402125;
        Sat, 03 Nov 2018 11:40:02 -0700 (PDT)
X-Google-Thread-Subscription: Yes
X-Google-Web-Client: true
Date: Sat, 3 Nov 2018 11:40:01 -0700 (PDT)
From: tungolcild@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <9a45b0e8-7715-44b5-a3dc-347277102d30@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1811031513180.2416@hadrien>
References: <cover.1541246060.git.code@wizofe.uk> <f4c8e02349e53545f542f02e453bf18f340ed897.1541246060.git.code@wizofe.uk>
 <alpine.DEB.2.21.1811031513180.2416@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v4 2/5] staging: greybus: shorten
 comparison to NULL
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1257_8393670.1541270401956"
X-Google-Token: EIHX994FgCIPALIBmKo0
X-Google-IP: 90.242.56.176

------=_Part_1257_8393670.1541270401956
Content-Type: multipart/alternative; 
	boundary="----=_Part_1258_215824451.1541270401956"

------=_Part_1258_215824451.1541270401956
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On Saturday, November 3, 2018 at 2:13:49 PM UTC, Julia Lawall wrote:
>
>
>
> On Sat, 3 Nov 2018, Ioannis Valasakis wrote: 
>
> > Shorten pointer NULL check by simple truth test 
> > Reported by checkpatch. 
> > 
> > Signed-off-by: Ioannis Valasakis <co...@wizofe.uk <javascript:>> 
> > --- 
> >  drivers/staging/greybus/core.c | 2 +- 
> >  1 file changed, 1 insertion(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/greybus/core.c 
> b/drivers/staging/greybus/core.c 
> > index 6b1f3a27fa9d..d6b0d49130c0 100644 
> > --- a/drivers/staging/greybus/core.c 
> > +++ b/drivers/staging/greybus/core.c 
> > @@ -48,7 +48,7 @@ static bool greybus_match_one_id(struct gb_bundle 
> *bundle, 
> >  static const struct greybus_bundle_id * 
> >  greybus_match_id(struct gb_bundle *bundle, const struct 
> greybus_bundle_id *id) 
> >  { 
> > -        if (id == NULL) 
> > +        if (!id) 
>
> This seems to have the right start and end now. 
>
> >                  return NULL; 
> > 
> >          for (; id->vendor || id->product || id->class || 
> id->driver_info; 
> > -- 
> > 2.19.1 
> > 
> > 
> > -- 
> > ta 
> > ioannis 
>
> You don't need to put anything down here. 
>
> julia 
>
>
Can I leave it as it is or does my signature need to be removed in order to 
be approved? :) 
And if so, should I just send a new version just for this patch or for the 
whole patchset?
thanks!
 

> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/f4c8e02349e53545f542f02e453bf18f340ed897.1541246060.git.code%40wizofe.uk. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_1258_215824451.1541270401956
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Saturday, November 3, 2018 at 2:13:49 PM UTC, Julia Law=
all wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left:=
 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sat, 3 Nov 2018, Ioannis Valasakis wrote:
<br>
<br>&gt; Shorten pointer NULL check by simple truth test
<br>&gt; Reported by checkpatch.
<br>&gt;
<br>&gt; Signed-off-by: Ioannis Valasakis &lt;<a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"Xyg4Bmj0AgAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">co...@wizofe.uk</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/greybus/core.<wbr>c | 2 +-
<br>&gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/greybus/<wbr>core.c b/drivers/staging=
/greybus/<wbr>core.c
<br>&gt; index 6b1f3a27fa9d..d6b0d49130c0 100644
<br>&gt; --- a/drivers/staging/greybus/<wbr>core.c
<br>&gt; +++ b/drivers/staging/greybus/<wbr>core.c
<br>&gt; @@ -48,7 +48,7 @@ static bool greybus_match_one_id(struct gb_bundl=
e *bundle,
<br>&gt; =C2=A0static const struct greybus_bundle_id *
<br>&gt; =C2=A0greybus_match_id(struct gb_bundle *bundle, const struct grey=
bus_bundle_id *id)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (id =3D=3D NUL=
L)
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!id)
<br>
<br>This seems to have the right start and end now.
<br>
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return NULL;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (; id-&g=
t;vendor || id-&gt;product || id-&gt;class || id-&gt;driver_info;
<br>&gt; --
<br>&gt; 2.19.1
<br>&gt;
<br>&gt;
<br>&gt; --
<br>&gt; ta
<br>&gt; ioannis
<br>
<br>You don&#39;t need to put anything down here.
<br>
<br>julia
<br>
<br></blockquote><div><br></div><div>Can I leave it as it is or does my sig=
nature need to be removed in order to be approved? :)=C2=A0</div><div>And i=
f so, should I just=C2=A0send a new version just for this patch or for the =
whole patchset?</div><div>thanks!</div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #cc=
c solid;padding-left: 1ex;">&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"Xyg4Bmj0AgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"Xyg4Bmj0AgAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/f4c8e02349e53545f542f02e453bf18f340ed8=
97.1541246060.git.code%40wizofe.uk" target=3D"_blank" rel=3D"nofollow" onmo=
usedown=3D"this.href=3D&#39;https://groups.google.com/d/msgid/outreachy-ker=
nel/f4c8e02349e53545f542f02e453bf18f340ed897.1541246060.git.code%40wizofe.u=
k&#39;;return true;" onclick=3D"this.href=3D&#39;https://groups.google.com/=
d/msgid/outreachy-kernel/f4c8e02349e53545f542f02e453bf18f340ed897.154124606=
0.git.code%40wizofe.uk&#39;;return true;">https://groups.google.com/d/<wbr>=
msgid/outreachy-kernel/<wbr>f4c8e02349e53545f542f02e453bf1<wbr>8f340ed897.1=
541246060.git.<wbr>code%40wizofe.uk</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_1258_215824451.1541270401956--

------=_Part_1257_8393670.1541270401956--

