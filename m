X-GM-THRID: 6670470603047174144
X-Received: by 2002:a50:928a:: with SMTP id k10mr2801484eda.10.1553099945120;
        Wed, 20 Mar 2019 09:39:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:355a:: with SMTP id s26ls530404eja.0.gmail; Wed, 20
 Mar 2019 09:39:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxTQ0c0B6EGmW2SWqXpMukOycm8VVYAhZXqsE3JnWZ1O3rBiwu2Jgo7NyEQkyM/1+yqtN7L
X-Received: by 2002:a17:906:4f0a:: with SMTP id t10mr2747501eju.5.1553099944138;
        Wed, 20 Mar 2019 09:39:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553099944; cv=none;
        d=google.com; s=arc-20160816;
        b=KkFdTbK/IDpGq/bujlc0ZleN24DK+9NhjSBZ2vABFvghncAYW0XQ5MUnd0/bluKtyl
         mJTl5ccVgGJEqWkKoJsnNhiOW2FfYP+yxFgaeItcu+QKt+3SokLb/o0FMHRCVdGGFswp
         qRXxiEnXi1t7v7vuc8Mc47rum2WdiH7kJsTqWc2PpCIEk3jNJajrQtlhdPDz8DlL1A8j
         drXH4XG/lZ14blydIhMNi99bdolQdO5dAKjwOdyTSxnH2nYungVPE8b1HX5B70Kbr9Kg
         mMLlcovAmE0+ebFMU85NxNsyF11MwbQWy0hY2W0BZ1ip746LrzZ+lu/bOkA164hKfiAa
         hFoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=X9GyuICX+lFqICdwimIsqeJunDKvd1dgPMTGWSandMg=;
        b=jHFxhmlr/yBVIKeyvDwh+/CB7KP/Ozq/Axv/9nhsQ92QgcS55gDgcVZ9jGxxr5N2n1
         2Hod3SN2GhOqS3E6A38QNEvGzIBqNH3SDlI64vsnoZbwgwyEzL1EPKUmXWiW0vBAnWnE
         wf07Pbd5AXX77YHxjlEqO/8+dLTtKWB8VZrj+RrOucnDC3WYPdZuHJTQIGCg/QpKwwAj
         nX/GJuAbusB8RHRi7GWTmKR29hGKyJ5+29isncC+jjnpQBTDYe7Svi9aY1bSKTMawflJ
         PDPxeLj3PrSARCvl8VBylztavY7tGzSqUEtJOYgDvtZ0wEZ6TsDlsqyzPg/iYiBjHg+0
         OUIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dVYKdpMy;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com. [2a00:1450:4864:20::232])
        by gmr-mx.google.com with ESMTPS id a5si84124edn.3.2019.03.20.09.39.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 09:39:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::232 as permitted sender) client-ip=2a00:1450:4864:20::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dVYKdpMy;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x232.google.com with SMTP id y6so2809320ljd.12
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 09:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=X9GyuICX+lFqICdwimIsqeJunDKvd1dgPMTGWSandMg=;
        b=dVYKdpMy4j1cIcM3g5ZE59LsXQp3F517xGECufXYKN3KHZVMdq3HGzdHjPApg1F8cX
         EkxlDDvj0UgsFf7LRkcGHB/j/Vbvptv8aK+T/35MNgyohFgyqTI6LwfJYg/fwrJgH+F/
         G13/Radh2ux/Aw2L6cJwulwEZQeA33gAk0AME4XGc5uFU1s0mK2nieMcVpCr/tK0prjD
         k7XwSWOHOuzyIicjCDUXD63TuWFsUO/KypOJ9qjatXqS65qQuY7UKi7ZdqBJBSg5Hdr7
         UCVpu+PYCbpI5NACLyyLRAPEku2LqXzEiuzUPbDDIa2ygiyJUpDEe3KBrQkMPrIcFGNd
         ilkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=X9GyuICX+lFqICdwimIsqeJunDKvd1dgPMTGWSandMg=;
        b=BMcIIBB83YNIfOkKfHNvVsh2LqHxGw1tuv4hJXxgN4Lb3jeAP6DMeZvpww8JOAyyai
         a/I7O+O76uRPAGw9oZB5zLJcC4adKEXcHchacajKC6xJhzefyAdN8qVMFTYjE9bSWVnn
         ASPANJGuHeYwGG8HBmzJfvw7qcIJ7lD8R8s0woQqFUI6UXdpUt/pJq3F8kTQsgqxzcQQ
         7+YUcdKSVOhfR96udXz1mcIIHlkMIYcRWZfhvmQQAt7S3qO1qzH7AMllrOLNdwpaRlYK
         R0vYUkyuWVAEXa/fpuZzKFTneDsdtl/OXD6xCm785flSCShbN07hwL81z19liLe5Jp1+
         UhuQ==
X-Gm-Message-State: APjAAAVVE/atPW+o0w8FbN0G5AhBRaflVJyGoGCx4iAd/WZtDC6ReoiP
	ePTaAYbABOyV0stcKo6eV8tA6uFb8pOTZTN2szLFvg==
X-Received: by 2002:a2e:3311:: with SMTP id d17mr8770081ljc.165.1553099943596;
 Wed, 20 Mar 2019 09:39:03 -0700 (PDT)
MIME-Version: 1.0
References: <1553089942-7490-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <alpine.DEB.2.20.1903201456260.3627@hadrien>
In-Reply-To: <alpine.DEB.2.20.1903201456260.3627@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Wed, 20 Mar 2019 22:08:51 +0530
Message-ID: <CANTOzWFGmaOSLEwOr8Tb+3MNx2eZGUEBVAXap7PvKGOuO1vTpA@mail.gmail.com>
Subject: Re: [PATCH] [Outreachy kernel] staging: speakup: line over 80 characters
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000705a300584894242"

--000000000000705a300584894242
Content-Type: text/plain; charset="UTF-8"

On Wed, 20 Mar 2019 at 19:27, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Wed, 20 Mar 2019, Payal Kshirsagar wrote:
>
> > Fix line over 80 characters issue of file
> > drivers/staging/speakup/kobjects.c
>
> Your kernel is not up to date.  Someone else has already made thing
> change.  It was done in a different way, because comments in the middle of
> a function should not be moved out to the left side.
>
> julia
>

Yup , Updating
Thanking payal

>
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/speakup/kobjects.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/speakup/kobjects.c
> b/drivers/staging/speakup/kobjects.c
> > index 11c704b..fbd09c7 100644
> > --- a/drivers/staging/speakup/kobjects.c
> > +++ b/drivers/staging/speakup/kobjects.c
> > @@ -154,7 +154,7 @@ static ssize_t chars_chartab_store(struct kobject
> *kobj,
> >                       continue;
> >               }
> >
> > -             /* Do not replace with kstrtoul: here we need temp to be
> updated */
> > +/* Do not replace with kstrtoul: here we need temp to be updated */
> >               index = simple_strtoul(cp, &temp, 10);
> >               if (index > 255) {
> >                       rejected++;
> > @@ -788,7 +788,7 @@ static ssize_t message_store_helper(const char *buf,
> size_t count,
> >                       continue;
> >               }
> >
> > -             /* Do not replace with kstrtoul: here we need temp to be
> updated */
> > +/* Do not replace with kstrtoul: here we need temp to be updated */
> >               index = simple_strtoul(cp, &temp, 10);
> >
> >               while ((temp < linefeed) && (*temp == ' ' || *temp ==
> '\t'))
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
> https://groups.google.com/d/msgid/outreachy-kernel/1553089942-7490-1-git-send-email-payal.s.kshirsagar.98%40gmail.com
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
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903201456260.3627%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--000000000000705a300584894242
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 20 Mar 2019=
 at 19:27, Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=
=3D"_blank" rel=3D"noreferrer">julia.lawall@lip6.fr</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On Wed, 20 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt; Fix line over 80 characters issue of file<br>
&gt; drivers/staging/speakup/kobjects.c<br>
<br>
Your kernel is not up to date.=C2=A0 Someone else has already made thing<br=
>
change.=C2=A0 It was done in a different way, because comments in the middl=
e of<br>
a function should not be moved out to the left side.<br>
<br>
julia<br></blockquote><div><br></div><div>Yup , Updating</div><div dir=3D"a=
uto">Thanking payal</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
&gt;<br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank" rel=3D"noreferrer">payal.s.kshirsagar.98=
@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/speakup/kobjects.c | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/spea=
kup/kobjects.c<br>
&gt; index 11c704b..fbd09c7 100644<br>
&gt; --- a/drivers/staging/speakup/kobjects.c<br>
&gt; +++ b/drivers/staging/speakup/kobjects.c<br>
&gt; @@ -154,7 +154,7 @@ static ssize_t chars_chartab_store(struct kobject =
*kobj,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0continue;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Do not replace wit=
h kstrtoul: here we need temp to be updated */<br>
&gt; +/* Do not replace with kstrtoul: here we need temp to be updated */<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0index =3D simple=
_strtoul(cp, &amp;temp, 10);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (index &gt; 2=
55) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0rejected++;<br>
&gt; @@ -788,7 +788,7 @@ static ssize_t message_store_helper(const char *bu=
f, size_t count,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0continue;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Do not replace wit=
h kstrtoul: here we need temp to be updated */<br>
&gt; +/* Do not replace with kstrtoul: here we need temp to be updated */<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0index =3D simple=
_strtoul(cp, &amp;temp, 10);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while ((temp &lt=
; linefeed) &amp;&amp; (*temp =3D=3D &#39; &#39; || *temp =3D=3D &#39;\t&#3=
9;))<br>
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
gle.com/d/msgid/outreachy-kernel/1553089942-7490-1-git-send-email-payal.s.k=
shirsagar.98%40gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">h=
ttps://groups.google.com/d/msgid/outreachy-kernel/1553089942-7490-1-git-sen=
d-email-payal.s.kshirsagar.98%40gmail.com</a>.<br>
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
om/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903201456260.3627%40hadrien" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/alpine.DEB.2.20.1903201456260.3627%40hadrien</a>.<br=
>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--000000000000705a300584894242--

