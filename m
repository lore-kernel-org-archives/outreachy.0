X-GM-THRID: 6675066065749278720
X-Received: by 2002:a1c:b1c3:: with SMTP id a186mr1510254wmf.3.1554195320933;
        Tue, 02 Apr 2019 01:55:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:b406:: with SMTP id d6ls43668wmf.2.canary-gmail; Tue, 02
 Apr 2019 01:55:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxLTD2qLcfx+F0jJ5FtnmH60EWrcR3jmvn0dPWtOon0grM0Lv700krWg+UtLpLEIK2QWeVi
X-Received: by 2002:a1c:4803:: with SMTP id v3mr1474410wma.12.1554195319912;
        Tue, 02 Apr 2019 01:55:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554195319; cv=none;
        d=google.com; s=arc-20160816;
        b=DA+3+/6TUJgzwr5tpyIKZ9Hkc/D7tp5QKnLKFAW0BZBdYn8Qz5vixY6Ccgjm5bE9RC
         CoG81bE2KSwX8UgvRI64awMr+1gdgFYEY7AYCj4PVZHH+sVFZAFnDkOdzlXpt8jYl7ae
         DfQ0LQGL+LGPl4HhUSblQo+B82xbewTieFoML3FR8SRDjVaXZSAAhIzqn2rRsMUgFisY
         DhTDV5/TVtX0TC79a3w4l057YC7zppWtVWJbOfNIMC40Fd4tzd286mXv3AQHzUWZilqc
         SuX/f/XmKsPiUR/I5vuw0IVMJiWCXAF6MtBsUWZewbNY6nE1deQaagZtyXOYCr2XoWzd
         YBhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ljPtp8tjprqiCgguX9VGQ+uGZ1ibpKqsCCHbivd5xYI=;
        b=xcR0q4fe9KWa92eD4L2aGhVb/u3VViYHKowl/mP8Xp+tUOI6HfHek13KmyL0wIh5uy
         SA9NqxmtO18CJU8bPhLZYii/rkrnbtjZ6YAed+qjpCv49lCuGM11m0mgAl+B6pXymdiv
         NdD5vtlxuYYrS0aLIvlYsAwxGzf1dKxQs1OZpbFI8NwQ/df8LxXQNPe2AWSL7bhTqKhC
         yJNTnEdRxA3BcZtZVSEsrjWIB3Hg/FFk4cqeKyDeKC03Kzps2T8vvcfS/I1rj3TQrY8+
         w/UMl/LN0Xl7ArtvaAKGT47q/ZXxqU+6DSHS3TmU2Dg6Y9tzM9U+wgp461I50wLuL2YR
         lNug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dkxj3PZK;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id f135si412893wmg.2.2019.04.02.01.55.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 01:55:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dkxj3PZK;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x234.google.com with SMTP id f23so10826880ljc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 01:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ljPtp8tjprqiCgguX9VGQ+uGZ1ibpKqsCCHbivd5xYI=;
        b=dkxj3PZKxrtW7RPFkiAotpxu9sxxviybz1JKaK2AtaNQeGbrYNx9wRM2Sh70xDH7Y9
         vfDN9o8a2U0Ot4HcYZ0rKGsvcu6KOqa5D+Iaonx19UXVvEuKJuOpaY+yM4MQBS3bsZnZ
         H2LAFnb8u4/eyjQp3qM+Ct1VxlIkOgXGeu45VoyRuOLWuM+T4nUo+zt4Ed9BA94TJ1K2
         At86zSrrNb371dn+VIpVaMhlPDTLfL8/SN6qR2xagO33gfzWnWGNN+Wk+3QKXO0BsxCa
         BNj4tOQ0/ipn6Al5JehWk/rqP54uT9rzPRGtInsflfG//eYp/P7miXphfxnOLKqOJ2BE
         h4iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ljPtp8tjprqiCgguX9VGQ+uGZ1ibpKqsCCHbivd5xYI=;
        b=r+iJ9XOXeXwfDEQngK1fRIx87l4VM4FTSgRRcjrE5YH9wAqB0B8YSdk1FQr9vOW/6g
         Y/xEUi/SSdn5aFcl8ppoNdRjxLCyRDfmifGZpQrUyMKGxIjUWpBDLac6jRSSsPmI4t2W
         +jd3X3P2SfFGqeQt3yEDRITAdgI0m3nR8e/sc5h232IIE4Qc/YUQJj3M8e5r0ShEKDL7
         KF690Lne8OwiO1q+8O9Y8Nc1zjWAK3GNRUAPHjUF7soSFEgPJ0skLtF05Csoivxlimsd
         eO7IqPc2DhAW/0witkJLNfxO6q6LAlPLmkLFeWmSjUK3BEJPzdyZHSILTRQDBdnkpVJV
         J0AA==
X-Gm-Message-State: APjAAAWjlDz1B3FdxSkGELaxaa2xsa4MBxUQqq/jqSFaJ2U6b8u6QhJ3
	uF0fzit8tJZO/UO7Rh0e8hauayVM0xcV+MS1v7XhBg==
X-Received: by 2002:a2e:9842:: with SMTP id e2mr40388485ljj.142.1554195319447;
 Tue, 02 Apr 2019 01:55:19 -0700 (PDT)
MIME-Version: 1.0
References: <CANTOzWFMtD=pWqa=fm96+AdLa5rGj3=-Mq_9jWh6tethkwAtGA@mail.gmail.com>
 <alpine.DEB.2.21.1904020749520.2664@hadrien>
In-Reply-To: <alpine.DEB.2.21.1904020749520.2664@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Tue, 2 Apr 2019 14:25:02 +0530
Message-ID: <CANTOzWFuFyrD1jnCoRPHf8Z=DAtD+3gzRCPgOSMi1vXncbPtOQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Outreachy internship project timeline
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000ed65330585884bdd"

--000000000000ed65330585884bdd
Content-Type: text/plain; charset="UTF-8"

On Tue, Apr 2, 2019, 11:20 AM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Tue, 2 Apr 2019, Payal Kshirsagar wrote:
>
> > Hello,In the final application there is a subject to fill
> about Outreachy internship project timeline and I don't know what to write
> here.
> > Please guide me to figure this out.
>
> You need to contact the mentor for the project(s) you are applying for.
>

I am applying for project
Linux Kernel - Coccinelle cleanups in the Linux kernel.

julia
>
>
> >
> > Thanks,
> > Payal
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/CANTOzWFMtD%3DpWqa%3Dfm96%2BAdLa5rGj3%3D-Mq_9jWh6tethkwAtGA%40mail.gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1904020749520.2664%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--000000000000ed65330585884bdd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Tue, Apr 2, 2019, 11:20 AM Julia Lawall &lt;<a href=3D"mailto:julia.lawa=
ll@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><br>
<br>
On Tue, 2 Apr 2019, Payal Kshirsagar wrote:<br>
<br>
&gt; Hello,In the final application there is a subject to fill about=C2=A0O=
utreachy internship project timeline and I don&#39;t know what to write her=
e.<br>
&gt; Please guide me to figure this out.<br>
<br>
You need to contact the mentor for the project(s) you are applying for.<br>=
</blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">I am=
 applying for project</div><div dir=3D"auto"><span style=3D"color:rgb(51,51=
,51);font-family:-apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,Roboto=
,&#39;Helvetica Neue&#39;,Arial,sans-serif,&#39;Apple Color Emoji&#39;,&#39=
;Segoe UI Emoji&#39;,&#39;Segoe UI Symbol&#39;,&#39;Noto Color Emoji&#39;;f=
ont-size:16px;font-variant-ligatures:normal;background-color:rgb(255,255,25=
5)">Linux Kernel - Coccinelle cleanups in the Linux kernel.=C2=A0</span><br=
></div><div dir=3D"auto"><span style=3D"color:rgb(51,51,51);font-family:-ap=
ple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,Roboto,&#39;Helvetica Neue=
&#39;,Arial,sans-serif,&#39;Apple Color Emoji&#39;,&#39;Segoe UI Emoji&#39;=
,&#39;Segoe UI Symbol&#39;,&#39;Noto Color Emoji&#39;;font-size:16px;font-v=
ariant-ligatures:normal;background-color:rgb(255,255,255)"><br></span></div=
><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">
julia<br>
<br>
<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Payal=C2=A0<br>
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
gle.com/d/msgid/outreachy-kernel/CANTOzWFMtD%3DpWqa%3Dfm96%2BAdLa5rGj3%3D-M=
q_9jWh6tethkwAtGA%40mail.gmail.com" rel=3D"noreferrer noreferrer" target=3D=
"_blank">https://groups.google.com/d/msgid/outreachy-kernel/CANTOzWFMtD%3Dp=
Wqa%3Dfm96%2BAdLa5rGj3%3D-Mq_9jWh6tethkwAtGA%40mail.gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
&gt;<br>
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
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1904020749520.2664%40hadrien" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/alpine.DEB.2.21.1904020749520.2664%40hadrien</a>.<br=
>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--000000000000ed65330585884bdd--

