X-GM-THRID: 6674050971501330432
X-Received: by 2002:a50:928a:: with SMTP id k10mr3064174eda.10.1553928731625;
        Fri, 29 Mar 2019 23:52:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:b35c:: with SMTP id r28ls1204654edd.7.gmail; Fri, 29 Mar
 2019 23:52:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqznduXe62el8BcXZnyITJCPCBKz3WK0K9UrxYYED9+xXIcI8pKU/n6HDK5GMu72ygE7iykq
X-Received: by 2002:a50:b104:: with SMTP id k4mr1622209edd.12.1553928730809;
        Fri, 29 Mar 2019 23:52:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553928730; cv=none;
        d=google.com; s=arc-20160816;
        b=0Kiq2BcNWM2WlqzeJuzyW+ebC67OBgZ6JAEZcS5+19sEolbWZGWgLZo5wPWIfmWBZz
         VYpHLfIrCYpd1BxsCHfER02ULPRPvKTGWItGinOWcmX5jrz4swtCBUOdA165181bT8mM
         mIlnPHgcQaKwoLIEQ287o6ZmbWjY1t9xBOqibahdDrEPE/ep05sz5PePbhTioaFNS9I/
         NvHbHEoMkKYHAby8rNxAgAQtIJpLndr0+cv6y52si8ffdVEWlf6t9oBp+/S6/HQiei3e
         YXOjopcTEVesK/2e99uyXsKomkRvyJE92enDfWpPeoeYav+QwtF1PhtTqtNLdH4mml08
         ejZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DRBxdaZDvL8SRWHU4jK1RSFdbKiQUuNt30fr7jYkNkM=;
        b=jg8RXfazeurrCwDwO5AzDtkPQz0w6NbORGpwFuQ1L5pXEzXkkcwhncc6abH7hYeMP9
         XJvdPQerQ29s3taCTVqGDLJqKAu8di49u/sz+EpGAom+FQcRWKvSHCx1n1chhiaJ1Wkw
         WNQDBp//kDdDq8lkCFvjc4kbo60bVfFIh3l9vJdikRJ+QnskAEuyc/N9P6AbgnEAo92K
         tv199QfFhdoS2850lgYLPCjqWc8BqA7cZQTVEDVAmN05IS8ki1fu3oktss3U2DwI7bT7
         jnXlqqV00l+PsHfG5FR48wxIdIUe529bhnyVuUtYbxnWsXUPpvyQhN5lLLSh0x+Moa+X
         F6rA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fnyLf+X3;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id r10si148554eda.4.2019.03.29.23.52.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 23:52:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fnyLf+X3;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x234.google.com with SMTP id v13so3818229ljk.4
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 23:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DRBxdaZDvL8SRWHU4jK1RSFdbKiQUuNt30fr7jYkNkM=;
        b=fnyLf+X33BklFxBQScuQzkzJ1i0l4ZQKjd4MV4W80b+PZEhn9u3gXuA+VU64IvREo7
         /V7fZa2ELwwQ0SotFMjYdYWGvRzO14ilpTi3UGBBGXjAZWNAB3dfH23Sfp0FHHgyQ/ya
         6hJrQATXXygRhm5SV1uuQBvXJDoFwuR3kzjzFnVnhYr0QogaylPdKA8F/PfXhmoyc7po
         FA8etpXCL+eZdmPQjHqVY7cWt7INdYMWGji48mJFaVICJTv0tWE7YSbEK+yPmACvpIor
         ybXx0Xb33QspnWDUQGhNYE8lruCftLcHlz9QO/9OoYda1xTgsgHEWsp45vxbXS/ZgmV7
         ZyBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DRBxdaZDvL8SRWHU4jK1RSFdbKiQUuNt30fr7jYkNkM=;
        b=Ie9zMP0yZaEOVekHqxVu3NgmyM6LlzA2P1Z0zGsub5HRvHPPesBYSnwfSqRRWUZ+/0
         dXSGaJP+tTp/hB+q2IFW/wsjyAMB55ApUpSALZsylsK9zjehpDyxSGHv7A8HF+nnnkC1
         lT0D1cwAxfS6NNXRJTqAP2WhgIoT6F8AmL2qwG/mj6h7gMY2Uv4uYBZP+Ly6NCBVlMNR
         NRRSV9vpSMaaw9UtBAgBxus4fJ3tqzi7ZjuCp8Tb5orCLjYtmbksm/hS31bmz6GonD0R
         QJdLR/rvf7n7w6E8nzqOS/Kt6pKMnvd8CtaXMeGjgLN/zXKbdn7VD3g+FQ4a8VSpYENG
         Fj4Q==
X-Gm-Message-State: APjAAAVFVSgS4DKsMmwRybC+daOXG/5WJALj8HB6tfAsJcBYGnGfCRaA
	tf8PTxIlzcZ4eLpQ6+jntFy29oEUK+oYyNaBclQ=
X-Received: by 2002:a2e:899a:: with SMTP id c26mr28830332lji.192.1553928730532;
 Fri, 29 Mar 2019 23:52:10 -0700 (PDT)
MIME-Version: 1.0
References: <1553923565-12066-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
 <alpine.DEB.2.21.1903300740450.2817@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903300740450.2817@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sat, 30 Mar 2019 12:21:57 +0530
Message-ID: <CANTOzWH9df0FWXLYqP8-i1UkUVdCPDEnOBNTBbwPaAS5OEVczg@mail.gmail.com>
Subject: Re: [PATCH] [Outreachy kernel] staging: speakup: Compress two lines
 into one line
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000fd5e8505854a39ce"

--000000000000fd5e8505854a39ce
Content-Type: text/plain; charset="UTF-8"

On Sat, Mar 30, 2019, 12:11 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 30 Mar 2019, Payal Kshirsagar wrote:
>
> > Challenge suggested by coccinelle.
> > Return value directly without saving it in a variable.
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/speakup/i18n.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/speakup/i18n.c
> b/drivers/staging/speakup/i18n.c
> > index ee240d3..a748eb8 100644
> > --- a/drivers/staging/speakup/i18n.c
> > +++ b/drivers/staging/speakup/i18n.c
> > @@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)
> >       input++;                /* Advance over %. */
> >       input = skip_flags(input);
> >       input = skip_width(input);
> > -     input = skip_conversion(input);
> > -     return input;
> > +     return skip_conversion(input);
>
> Many people have proposed this already and the maintainer prefers that the
> code is left as it is, with input = over and over, for uniformity.
>

Okay I will drop this patch.
Thanks,
Payal

julia
>
> >  }
> >
> >  /*
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1553923565-12066-1-git-send-email-payal.s.kshirsagar.98%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903300740450.2817%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--000000000000fd5e8505854a39ce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Sat, Mar 30, 2019, 12:11 PM Julia Lawall &lt;<a href=3D"mailto:julia.law=
all@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><br>
<br>
On Sat, 30 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt; Challenge suggested by coccinelle.<br>
&gt; Return value directly without saving it in a variable.<br>
&gt;<br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank" rel=3D"noreferrer">payal.s.kshirsagar.98=
@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/speakup/i18n.c | 3 +--<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/=
i18n.c<br>
&gt; index ee240d3..a748eb8 100644<br>
&gt; --- a/drivers/staging/speakup/i18n.c<br>
&gt; +++ b/drivers/staging/speakup/i18n.c<br>
&gt; @@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0input++;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 /* Advance over %. */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0input =3D skip_flags(input);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0input =3D skip_width(input);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0input =3D skip_conversion(input);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return input;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return skip_conversion(input);<br>
<br>
Many people have proposed this already and the maintainer prefers that the<=
br>
code is left as it is, with input =3D over and over, for uniformity.<br></b=
lockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">Okay I =
will drop this patch.</div><div dir=3D"auto">Thanks,</div><div dir=3D"auto"=
>Payal</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gma=
il_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">
julia<br>
<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 /*<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@goog=
legroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@g=
ooglegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1553923565-12066-1-git-send-email-payal.s.=
kshirsagar.98%40gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">=
https://groups.google.com/d/msgid/outreachy-kernel/1553923565-12066-1-git-s=
end-email-payal.s.kshirsagar.98%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@googlegro=
ups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@google=
groups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903300740450.2817%40hadrien" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/alpine.DEB.2.21.1903300740450.2817%40hadrien</a>.<br=
>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--000000000000fd5e8505854a39ce--

