X-GM-THRID: 6755114272133480448
X-Received: by 2002:ab0:5ea9:: with SMTP id y41mr9782502uag.114.1572798448168;
        Sun, 03 Nov 2019 08:27:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:f68c:: with SMTP id n12ls972318vso.14.gmail; Sun, 03 Nov
 2019 08:27:27 -0800 (PST)
X-Google-Smtp-Source: APXvYqzbeJcISkod2edeO/3PZEDyX6OND5vPVzuTBNP8EnbFAooXTTA+YYlWl42UYvCpVWvANBjw
X-Received: by 2002:a67:6983:: with SMTP id e125mr183490vsc.4.1572798447169;
        Sun, 03 Nov 2019 08:27:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572798447; cv=none;
        d=google.com; s=arc-20160816;
        b=vE3TN8zCNuiYArbZh/7dCmJoS9SwfM6pdl56a9Z0S2FWvBkIqxBQpihfOurP5RkC5i
         NMX8ev/4sBGw8kCkAokbSX7XwSAN956d4DzmjtCpQcFfCR/cevFIK913F1X4Pw4h9Boo
         QGXp22rsUWiJTsp0I+tYWJzD200mZPfPTfGYmd2zjKfMvhYeLR74R+hCmrqYvtNO0+EI
         YRB6u5gHQY3oweNA2tPsGzp0r8t2qKmK70RNcrETTMnRc9MIjf/gMoIoBQxKfDuqhAIe
         7nqWqo6Iiu9e9gRzH1kie/LnXmIiUQLUgMGe9+RYSfAB4i1p/4RjUnVEDC0lU7aMp2xv
         ptHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FY3QXzCir3Px8nUHcYIappg2Zqf5/NuQLGiqsozDsc4=;
        b=DeScVMKg2v68onjqoPsC1skb74i5D8FYlwBWIzg9lquODeR+7BOWSntXY7URmEucaO
         DN/0XOuc0hEd/EasMbM3TiM4o9i/yn94WLOY3ULrIvA2mJpqMq0ULVjgA6u3cmv92kGd
         4+UC+NLJbaFkmRcmzxQ5y9cTNZO/+umnd/BAo8R2XWeOYEQsezTEMV6cDGk+CM2vEO9v
         li8QGm8b3+Fqoa52v+J5/iEdEWZks7PqB5/aQ13Le71PpYNDmNEcRAyJA9H8FU5wYNwb
         66tDHrbA75MmMRMQqUZ0oMa/AJDjAz+KMINbNvJ2G8xjxIWOiemHfDXt6UTLGf1733bx
         TTuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ak4n37HC;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id y17si182144vke.2.2019.11.03.08.27.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Nov 2019 08:27:27 -0800 (PST)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ak4n37HC;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe42.google.com with SMTP id b16so3339338vso.10
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Nov 2019 08:27:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FY3QXzCir3Px8nUHcYIappg2Zqf5/NuQLGiqsozDsc4=;
        b=Ak4n37HCJYsr3UBmQwU+IXiZq+gNZff5YhTI014K/+qeNQUCrbKBvrLQ0V6sW6cTtb
         bM7gOETmIt6kAAW3hDVmeEC3larED6Fr4qQPaO2sX5xCP97VzTe5oqwtWqly6y++xRTr
         FtHL6UsPG8HLnYB68mo03zAo4JHdU47rV1VbtYvpdXgVlYGOPzRgkb7WwTPTNOdxFwu4
         HrRgEG0jD3lE/qu5VoqFwFzT7ErqIQQD9obXWUMuy7C+ntL4HhnaX3BvrJl/Xwvyksjk
         UojwMbUwI0HlBHUI8iG2fRzzkqhWTbouFxPQF/sh4jz5Zzelp/feiqLdINI8g6ilyTac
         Kraw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FY3QXzCir3Px8nUHcYIappg2Zqf5/NuQLGiqsozDsc4=;
        b=MkDV59geyUgtCNDbCLZLyDqaUuM3iMQxZH13BMXv3q1oEX+p+cB69sE7Wy+hPahAz8
         aJH3Q/ky8WZhHvKo/xFkQLzKLnP21JvvaNRWbIuYnRAv5iFHPqwDhYrc3/rfTENMLW0Z
         AM0Cxq7Huui6dxYYi+yqZTw9UlS98lrE8HGPa9D83z05UNpxUAXH07U2WVAYNEPNNiW5
         wnIZBaSNGei39H80KHKbPTbh2mmA0FQfu9kjyq0fNUMqbMMdO/NjUGFP91m+uRra4Cml
         Ou0UNXfHNGNy9CI5zAm0OyE0guz6ZapvOlXohhhYd3eVqQEsegxXlGGpFgLmQcNL+doD
         y9Xw==
X-Gm-Message-State: APjAAAVZSfd3TU+4Dv6eG5D5IHTVgN8XnuuYT8bNAM+acw6HdUmw/Vnj
	ZgwFsKOufyAVxUNOXAU2NAelrt7LSjtik5Ha7m3VaQ==
X-Received: by 2002:a67:6bc1:: with SMTP id g184mr10458890vsc.161.1572798447020;
 Sun, 03 Nov 2019 08:27:27 -0800 (PST)
MIME-Version: 1.0
References: <cover.1572797322.git.chime.evan.dri.devel@gmail.com> <alpine.DEB.2.21.1911031716390.2557@hadrien>
In-Reply-To: <alpine.DEB.2.21.1911031716390.2557@hadrien>
From: evan chime <chime.evan.dri.devel@gmail.com>
Date: Sun, 3 Nov 2019 16:27:16 +0000
Message-ID: <CANR89jb9zSo_pq4rqQvH5s50R6W6t6SSZXXByb5bhjYO8SoO_A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 0/3] Add comment to memory barrier
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, laurent.pinchart@ideasonboard.com, 
	mchehab@kernel.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000bcf00a059673ac08"

--000000000000bcf00a059673ac08
Content-Type: text/plain; charset="UTF-8"

On Sun, 3 Nov 2019 at 16:18, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 3 Nov 2019, Evan Chime wrote:
>
> > Include outreachy mailing list in "cc" list. No change
> >
> > Evan Chime (3):
> >   Staging: media: omap4iss: Add comment to memory barrier
> >   Staging: media: omap4iss: Add comment to memory barrier
> >   Staging: media: omap4iss: Add comment to memory barrier
>
> Each patch should have a different subject.  If you end up with patches
> with the same subject, you should make the subjects more specific or merge
> them.
>
> In this case, though, I think that this is an issue that only someone with
> a deep knowledge of the code could really address.  The question is not
> what a memory barrier does, but why one is needed at a particular place in
> the code.
>
> julia


Thanks for the feedback Julia

Kind Regards
Evan



>
> >
> >  drivers/staging/media/omap4iss/iss.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
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
> https://groups.google.com/d/msgid/outreachy-kernel/cover.1572797322.git.chime.evan.dri.devel%40gmail.com
> .
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1911031716390.2557%40hadrien
> .
>

--000000000000bcf00a059673ac08
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Sun, 3 Nov 2019 at 16:18, Julia Lawall &lt;<a href=3D"mailto:julia.lawall=
@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><br>
<br>
On Sun, 3 Nov 2019, Evan Chime wrote:<br>
<br>
&gt; Include outreachy mailing list in &quot;cc&quot; list. No change<br>
&gt;<br>
&gt; Evan Chime (3):<br>
&gt;=C2=A0 =C2=A0Staging: media: omap4iss: Add comment to memory barrier<br=
>
&gt;=C2=A0 =C2=A0Staging: media: omap4iss: Add comment to memory barrier<br=
>
&gt;=C2=A0 =C2=A0Staging: media: omap4iss: Add comment to memory barrier<br=
>
<br>
Each patch should have a different subject.=C2=A0 If you end up with patche=
s<br>
with the same subject, you should make the subjects more specific or merge<=
br>
them.<br>
<br>
In this case, though, I think that this is an issue that only someone with<=
br>
a deep knowledge of the code could really address.=C2=A0 The question is no=
t<br>
what a memory barrier does, but why one is needed at a particular place in<=
br>
the code.<br>
<br>
julia</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks for =
the feedback Julia</div><div dir=3D"auto"><br></div><div dir=3D"auto">Kind=
=C2=A0Regards</div><div dir=3D"auto">Evan=C2=A0</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
&gt;<br>
&gt;=C2=A0 drivers/staging/media/omap4iss/iss.c | 6 +++---<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 3 deletions(-)<br>
&gt;<br>
&gt; --<br>
&gt; 2.17.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/cover.1572797322.git.chime.evan.dri.devel%=
40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com=
/d/msgid/outreachy-kernel/cover.1572797322.git.chime.evan.dri.devel%40gmail=
.com</a>.<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1911031716390.2557%40hadrien" r=
el=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outre=
achy-kernel/alpine.DEB.2.21.1911031716390.2557%40hadrien</a>.<br>
</blockquote></div></div>

--000000000000bcf00a059673ac08--

