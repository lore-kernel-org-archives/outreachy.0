X-GM-THRID: 6801809120095633408
X-Received: by 2002:a5d:45cb:: with SMTP id b11mr11949439wrs.216.1583675042592;
        Sun, 08 Mar 2020 06:44:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f3ca:: with SMTP id g10ls4033851wrp.11.gmail; Sun, 08
 Mar 2020 06:44:01 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv6OO4JOqWCTnTJL1OM+uj88mjFPXuHc9I7XkfT5NSb6kJ0DGVq2pS7KTaFWdcoTMANT3LV
X-Received: by 2002:adf:fd92:: with SMTP id d18mr15955225wrr.16.1583675041296;
        Sun, 08 Mar 2020 06:44:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583675041; cv=none;
        d=google.com; s=arc-20160816;
        b=BXKPzsMpBH4QRxLuLT5BcZ66vlt1ybDqaw8c03onc8yxSgqMdte5tzd0TZF3KSBOLq
         44/mb8Vl0mFZ9OMbq6Jy2XpFSpdNaY5x5IwcvuzgnrUbdOuR/TxqGDPHlVOAeMYVXAO6
         sl6oULJJo1WbPokgyzN4Wcm8fi5Etvqn0xhdiOzdYtWtT4ZFBMoFYnmuOxT8tUnZwtUj
         NESaOadDL0Deb0MQgAMZaR1iyMKbdRX7HdFhI3u/MyeawsGxGQchZl11q+OPtxRyqxbG
         wKIXQ4ZnSQIqDqzy4MpDSJ/SHTRyDu5dlysc/5pOuJ+4S5Po8TKhvY3u98PUTg7uHsvX
         ruyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=U+3TiArY52jPVUhUAFDTAXVf9D1bD3PVw2agGNgPerI=;
        b=PxwxnKaKYblduOD73pHGb7+b8T74MzfpTQKP2i0xYOhhRPBte0Ws6cJEGEdbNT9yxI
         22K/rYhQNyq5g+bTbUKEIVdlua/NcxBc5m+FBsOuSjhYOEcwyvD0vmUArIfejGw893h9
         gpjIBfmiqchrn8C7dtyVdiZQZGc3hBPTpPHwW0NuYNUr4PVno2ExbJ2f74sQwfPxA+2i
         XzyFIh2pInSNOr/+S04kQfYBm5CFTwDZhbAzVRmGWQt1wCZe96ikturAoATUU6jkUFbB
         EzmLylQcGJFD4/wxq/alNY7vJ6YVliw9UxV4zrAb8az7oTb1kK45Fx8C6p7F1uHK3HOp
         O65w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="pC/pdktn";
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id l13si371360wrp.2.2020.03.08.06.44.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 06:44:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="pC/pdktn";
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id 6so7191502wmi.5
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 06:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=U+3TiArY52jPVUhUAFDTAXVf9D1bD3PVw2agGNgPerI=;
        b=pC/pdktnZw7QKtNB5Wyg0/lnut3tfZ4iUvBvZ48gRYM8pLVsG6m7G58WbggCM71nuk
         wNhpRZxfC2kW0ecibXND1pCLYKm1heKFDWCf6OpYywR4E41A/Gq0YQjwcXFeK3IipzR0
         ZfahNWUs72/LEbxG14dUrr4Leknsq6/asbJPp9S4reGeAJmuEkQiN6bVgH3IuV2RmLxt
         g5HQNOCTcKYckNfEqhqtmUWQ5dZ5uy31EvzEhDlHPmJNjHjUSVrXF4HISK8pcmKFYWXM
         DqhKS//6YlaYfj/nMThLAZZFXjcZ7WTHH7VBOktc/0Fhn0xKRrcsbmPzVRsq0ed5arXx
         X8eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=U+3TiArY52jPVUhUAFDTAXVf9D1bD3PVw2agGNgPerI=;
        b=et53BAPs1CSXOgnXtcqLxIW6arFQ61MXKfA5XmCtyLnJ0C4k/RoF51mrFNYM/vXdXg
         2ofbQxF5gjTntvWfB1FuU82sJNnFKckYEofo2XR+sBTghVwfMWvuO8o0bYAOXCaC50kN
         qmZFql+ehg97cqs6sIhuqcfJQv38ovIaLzxmsIwxw7eMewhTeZt1O9CkzPEowSV7YLAf
         MXZolrXzZ2KEaAoOxeirBrMfc4LdwPb7iisTJgjlVNmOIh6Nx1nZ592w3SkGclIF5PQw
         iaJmDh3N5923TaXCnJhx+9ykJxxcGR36faqHpqKjLKF2FPGlkjAvziAxiZyse+v6q4gd
         MUQw==
X-Gm-Message-State: ANhLgQ3stcPrtgyPY8J14/7Z0cosBEaGxtJnenApagwP+ZzSizFWGzZ7
	MRB5ePv3ziiB2RNDBSrAv6qo14ES4jL7wMONuYp9TA==
X-Received: by 2002:a05:600c:208:: with SMTP id 8mr15684812wmi.79.1583675040834;
 Sun, 08 Mar 2020 06:44:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200308132643.4256-1-payalskshirsagar1234@gmail.com> <alpine.DEB.2.21.2003081437400.2400@hadrien>
In-Reply-To: <alpine.DEB.2.21.2003081437400.2400@hadrien>
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Date: Sun, 8 Mar 2020 19:13:48 +0530
Message-ID: <CAJyzNhmZEUmTCvEJWGNf9b3PdCR260P961eMs28ZrqetCA7sdg@mail.gmail.com>
Subject: Re: [PATCH v2] [Outreachy kernel] staging: greybus: remove line over
 80 characters
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000003fa82b05a0581436"

--0000000000003fa82b05a0581436
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 8, 2020, 7:11 PM Julia Lawall <julia.lawall@inria.fr> wrote:

> On Sun, 8 Mar 2020, Payal Kshirsagar wrote:
>
> > Remove line over 80 characters.
> > In this version-2, comment and field are grouped together.
> > A whitespace is added after "bi-dir,".
>
> This is not the correct way to present the revision of a patch.  Put a log
> message that would be appropriate if there were no version 1.  The patch
> will ultimately go in the git history where there is no trace of version
> 1.
>
> Then under the --- write v2: and then describe what you have changed.
>
> See https://kernelnewbies.org/Outreachyfirstpatch and search for v2.
>
> julia
>
> >
> > Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> > ---
> >  drivers/staging/greybus/arche-platform.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/greybus/arche-platform.c
> b/drivers/staging/greybus/arche-platform.c
> > index eebf0deb39f5..cc5a52fc926f 100644
> > --- a/drivers/staging/greybus/arche-platform.c
> > +++ b/drivers/staging/greybus/arche-platform.c
> > @@ -47,7 +47,8 @@ struct arche_platform_drvdata {
> >       struct gpio_desc *svc_reset;
> >       bool is_reset_act_hi;
> >       struct gpio_desc *svc_sysboot;
> > -     struct gpio_desc *wake_detect; /* bi-dir,maps to WAKE_MOD &
> WAKE_FRAME signals */
> > +     /* bi-dir, maps to WAKE_MOD & WAKE_FRAME signals */
> > +     struct gpio_desc *wake_detect;
> >
> >       enum arche_platform_state state;
> >
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20200308132643.4256-1-payalskshirsagar1234%40gmail.com
> .
> >
>


Okay, I will do so.

Payal

>

--0000000000003fa82b05a0581436
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Sun, Mar 8, 2020, 7:11 PM Julia Lawall &lt;<a href=3D"mailto:julia.lawal=
l@inria.fr">julia.lawall@inria.fr</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">On Sun, 8 Mar 2020, Payal Kshirsagar wrote:<br>
<br>
&gt; Remove line over 80 characters.<br>
&gt; In this version-2, comment and field are grouped together.<br>
&gt; A whitespace is added after &quot;bi-dir,&quot;.<br>
<br>
This is not the correct way to present the revision of a patch.=C2=A0 Put a=
 log<br>
message that would be appropriate if there were no version 1.=C2=A0 The pat=
ch<br>
will ultimately go in the git history where there is no trace of version<br=
>
1.<br>
<br>
Then under the --- write v2: and then describe what you have changed.<br>
<br>
See <a href=3D"https://kernelnewbies.org/Outreachyfirstpatch" rel=3D"norefe=
rrer noreferrer" target=3D"_blank">https://kernelnewbies.org/Outreachyfirst=
patch</a> and search for v2.<br>
<br>
julia<br>
<br>
&gt;<br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payalskshirsagar=
1234@gmail.com" target=3D"_blank" rel=3D"noreferrer">payalskshirsagar1234@g=
mail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/greybus/arche-platform.c | 3 ++-<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/stagin=
g/greybus/arche-platform.c<br>
&gt; index eebf0deb39f5..cc5a52fc926f 100644<br>
&gt; --- a/drivers/staging/greybus/arche-platform.c<br>
&gt; +++ b/drivers/staging/greybus/arche-platform.c<br>
&gt; @@ -47,7 +47,8 @@ struct arche_platform_drvdata {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct gpio_desc *svc_reset;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0bool is_reset_act_hi;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct gpio_desc *svc_sysboot;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct gpio_desc *wake_detect; /* bi-dir,maps to =
WAKE_MOD &amp; WAKE_FRAME signals */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0/* bi-dir, maps to WAKE_MOD &amp; WAKE_FRAME sign=
als */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct gpio_desc *wake_detect;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0enum arche_platform_state state;<br>
&gt;<br>
&gt; --<br>
&gt; 2.17.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@goog=
legroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20200308132643.4256-1-payalskshirsagar1234=
%40gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://group=
s.google.com/d/msgid/outreachy-kernel/20200308132643.4256-1-payalskshirsaga=
r1234%40gmail.com</a>.<br>
&gt;<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"au=
to"><br></div><div dir=3D"auto">Okay, I will do so.</div><div dir=3D"auto">=
<br></div><div dir=3D"auto">Payal</div><div dir=3D"auto"><div class=3D"gmai=
l_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">
</blockquote></div></div></div>

--0000000000003fa82b05a0581436--

