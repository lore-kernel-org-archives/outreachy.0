X-GM-THRID: 6666299764348289024
X-Received: by 2002:ac8:3f92:: with SMTP id d18mr13047229qtk.34.1552127893042;
        Sat, 09 Mar 2019 02:38:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:39c3:: with SMTP id m61ls2105560qte.0.gmail; Sat, 09 Mar
 2019 02:38:12 -0800 (PST)
X-Google-Smtp-Source: APXvYqwI77YRI3I9naA+hidwZ8+6yogudVNImWn51fj/3CDn/7lmIxOUGRLankkA9m5EHtOlNUVq
X-Received: by 2002:ac8:26f6:: with SMTP id 51mr13252652qtp.48.1552127892504;
        Sat, 09 Mar 2019 02:38:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552127892; cv=none;
        d=google.com; s=arc-20160816;
        b=CWxGRh5cfdd+pJQrYmQylfMiSa97RtLj03qgXiUpNx8cS8KAdWICvZjD8CcSHXtfGN
         zL9Zh+jYNucgMWE/9w1gvHCx5Kxz8tlcDc88Rnras1Y8jHdyp5NQc5Gjwl8jEITEDmwB
         FybSPKSaLqaVO6feWz60Y/Qa8bFwQHbA6tXGE5vuomccZvQPChHuBE1NzRPnzS26Uz/5
         vFjZzyKRUmF7lmn9P9Dscm+AH3vFB5nCwVPTzODnMf3OZeHpBKQWsQPWryLJewe26PbO
         v8P9a7O3v1fYOcufbgiz8u72F1L2TYKWQwHevlYcko/5lq6XkaLIh+T4xBnRJEwzKBNG
         Uz2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=H8TL+POjYCYSqrQVhFAEgIzaMv44r/YdfFCZn5pPksI=;
        b=CkFGBVy5+tGWK7SG05PaN3MeAtpwAwX/okPZtDknx+h5MxFBJCpKC38JwP2XscGNOV
         3cobcXoPQLyrVEYOaJw38dWmTtW/1IbCcaqYMdec/ZRvau8kJm2OK8aCmA9DNE7igrdl
         yJT035RseXBpE1d2rAar2bgOb4c//C44dlH0/nkO0U58FG9pbdygj1ED/kTMvR/UIRWV
         qj3JF7ZGGylUb1YoxhysSC62K8QOAWDBZJwwBaP89Of6rPV4vzDb1eNQhVXY8xY7hLZ6
         h5yONaDJ4anetKbvBuh1o0kaZwir/0+eUO8xqVMBdjzRaupkdWONpmd1mxgbqo9Kt9QJ
         92zQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pn+PQ0XG;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com. [2607:f8b0:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id a62si10559qkf.1.2019.03.09.02.38.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 02:38:12 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) client-ip=2607:f8b0:4864:20::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pn+PQ0XG;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22d.google.com with SMTP id q81so118902oic.5
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 02:38:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=H8TL+POjYCYSqrQVhFAEgIzaMv44r/YdfFCZn5pPksI=;
        b=pn+PQ0XGFP7tyeN16eLxHvHMSGjyoLWsRP7i3cs2SA3Gg4+0v3WIkF+4VAuUjskq2i
         6gUGsapt7ip6KCyXK6Bhnpv+e6SiHSZRsmOktgLUYUk8t7afXsgytnmgYhnt0d5mnAun
         xnnrXXIj9q10WtHPB//oILJlVnpaPWOJx4dtRjCNOraiFxRCU0EbkwOS45Fi++auf1x9
         Uoj9z3DIdP6ox51iFwcoLJK03hvaSMHusCU3XVMBHL5nAQEX6BB4zdQkneJ1AGI0YSRP
         Bp9euw3UPQZaFJ+NlKXbyKVi9Sr8iI8kjPze+3KBE2bMN3YNBnFDhygCEYzPGwoqqxBr
         wpNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=H8TL+POjYCYSqrQVhFAEgIzaMv44r/YdfFCZn5pPksI=;
        b=fgpVix1S2TmTALUL76Zh5zf8BS8e45vEZQzBFeW1bdTEipDxskxwBSGWg9K0Szgi88
         U2ze7UFPaJKQDZq4Yn3pTSKY7neADjtJOiFNlV4rT88kOuw2UqVnJlA+ahKvNIR101fv
         lGmLOARWGME/MfX/O5V4Up2erwclrr+kvYJhTB1qCsP7DV2Sxye+hvcmO2q0pGjqbzzg
         iqq7RgiE6l+UgwBi6DKRlII86d/kvG1Ol5zX14pmJqvYRbRDRWL7GawMpt27ck63lN4K
         3sS35GpByKColf7SttxkqCkTLb34YCxIoA2e3gPR5u/r2fK8Z4T1gu/A6atkTvQzE5jg
         U5Nw==
X-Gm-Message-State: APjAAAVIi13jjJ00N+3LHfSMAZghVh0uzHas45iDIeDTv1qefC1563SG
	x7DtahDqTBH8C/K4g2U9F/QminCZtui4OZJ0+a1/0U38
X-Received: by 2002:aca:754b:: with SMTP id q72mr11135092oic.127.1552127892067;
 Sat, 09 Mar 2019 02:38:12 -0800 (PST)
MIME-Version: 1.0
References: <20190309080721.26121-1-himadri18.07@gmail.com>
 <20190309090927.26925-1-himadri18.07@gmail.com> <20190309091133.uyhjrmiipm2rahnu@function>
In-Reply-To: <20190309091133.uyhjrmiipm2rahnu@function>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Sat, 9 Mar 2019 16:07:59 +0530
Message-ID: <CAPnhUpbL8qXaG+zWs0sKuj6ejhahxPfZ78Jb8_VdtT0aH=uf3g@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: speakup: remove
 unnecessary assignment statement before return
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca, 
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000a71db50583a6efd2"

--000000000000a71db50583a6efd2
Content-Type: text/plain; charset="UTF-8"

On Sat, 9 Mar, 2019, 2:41 PM Samuel Thibault, <samuel.thibault@ens-lyon.org>
wrote:

> Himadri Pandya, le sam. 09 mars 2019 14:39:27 +0530, a ecrit:
> > Remove unnecessary assignment statement before return from function
> > find_specifier_end. Issue found by Coccinelle.
>
> Well, I have to say that for style I prefer the way it was: we apply
> several functions to the input variable, before returning it.
>

Okay. Thank you.

- Himadri


> > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > ---
> > Changes in V2:
> >       - Remove "Coccinelle" from patch tag
> >
> >  drivers/staging/speakup/i18n.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/speakup/i18n.c
> b/drivers/staging/speakup/i18n.c
> > index ee240d36f947..a748eb8052d1 100644
> > --- a/drivers/staging/speakup/i18n.c
> > +++ b/drivers/staging/speakup/i18n.c
> > @@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)
> >       input++;                /* Advance over %. */
> >       input = skip_flags(input);
> >       input = skip_width(input);
> > -     input = skip_conversion(input);
> > -     return input;
> > +     return skip_conversion(input);
> >  }
> >
> >  /*
> > --
> > 2.17.1
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190309091133.uyhjrmiipm2rahnu%40function
> .
> For more options, visit https://groups.google.com/d/optout.
>

--000000000000a71db50583a6efd2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, 9 Mar, 2019, 2:41 PM Samuel Thibault, &lt;<a h=
ref=3D"mailto:samuel.thibault@ens-lyon.org">samuel.thibault@ens-lyon.org</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Himadri Pandya, le sam=
. 09 mars 2019 14:39:27 +0530, a ecrit:<br>
&gt; Remove unnecessary assignment statement before return from function<br=
>
&gt; find_specifier_end. Issue found by Coccinelle.<br>
<br>
Well, I have to say that for style I prefer the way it was: we apply<br>
several functions to the input variable, before returning it.<br></blockquo=
te></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">Okay. Thank yo=
u.</div><div dir=3D"auto"><br></div><div dir=3D"auto">- Himadri</div><div d=
ir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">
<br>
&gt; Signed-off-by: Himadri Pandya &lt;<a href=3D"mailto:himadri18.07@gmail=
.com" target=3D"_blank" rel=3D"noreferrer">himadri18.07@gmail.com</a>&gt;<b=
r>
&gt; ---<br>
&gt; Changes in V2:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0- Remove &quot;Coccinelle&quot; from patch t=
ag<br>
&gt; <br>
&gt;=C2=A0 drivers/staging/speakup/i18n.c | 3 +--<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 2 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/=
i18n.c<br>
&gt; index ee240d36f947..a748eb8052d1 100644<br>
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
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 /*<br>
&gt; -- <br>
&gt; 2.17.1<br>
&gt; <br>
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
om/d/msgid/outreachy-kernel/20190309091133.uyhjrmiipm2rahnu%40function" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/ms=
gid/outreachy-kernel/20190309091133.uyhjrmiipm2rahnu%40function</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--000000000000a71db50583a6efd2--

