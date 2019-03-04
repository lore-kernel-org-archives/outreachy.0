X-GM-THRID: 6664067951305424896
X-Received: by 2002:a62:a50b:: with SMTP id v11mr7297115pfm.60.1551710674125;
        Mon, 04 Mar 2019 06:44:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:f10:: with SMTP id e16ls6328964pgl.3.gmail; Mon, 04 Mar
 2019 06:44:33 -0800 (PST)
X-Google-Smtp-Source: APXvYqxKxEWd0aVBxkt9lpqVAvrZJTHeT8AGyfTOHtXsl58Z72pG54+0uNRcfjqeEikXQhc7fBhC
X-Received: by 2002:a63:8041:: with SMTP id j62mr7429556pgd.99.1551710673321;
        Mon, 04 Mar 2019 06:44:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551710673; cv=none;
        d=google.com; s=arc-20160816;
        b=zk4YpuDuwVEe9BXODGUEkgn5R0c+Bc3SH/2fOjG/ufnowxbOZeihaH1951D5AOJF56
         5fXKNQDGHEtHHmC1dfqhqGCbtyCCVkD7odvj2BpqPJFc3iSl3kCRrouaAh4OEOVOEzMQ
         LBXlHjjvDDhIzCHAfdNv6eRycFeoPX5NJC/HxMhTW2YpI/ln/fRqMNDKchYZSZ2allg4
         JgUAaX01+CK1kWttzVHEz6xFBXlmFUr3D9SUkBdRmZM+qIkziPHkWQ1mcsqvb9aquWgi
         yoh9MWR0PvZZB3PGZhmIuJCXWWOu9RSl3yJ5UweozthTRDE+d0dXfA4WQX6FmuV5PE+q
         1Y7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XbjRZaUkKmztLa/z/yacIt/V1GSq9G72oteN7Nwgot8=;
        b=CKbuSSxW0H+TJH8R/Lg7Dfn1kP2TJnVTWPZOHtAi/vPGvToI9KkFdqoipYIxr6eF1R
         5E8vMJf0RD/abYqDLeQQWzqS7yA2lE3n0amwdevTltMQjgcXwBfbCFopEeYVrmO9FHk9
         wz+7EN1du+CcwksQW0Ag/ZlSFBoNy+C6YhAKMmG5V1patzf3fi2jlfoeabMUUkf4NRQq
         jj8Rq/3dGUv4hsDhFnNE7lApJb9bJl7YvfP2zL6xwaPeS8FUUN9uJ7rh1fYp3jTSG8a8
         c0UIyIN3p9l5Blh944QPXJRaXa6U9F7bma2jnP+CCVoYXwFSkhXIRw/Jzp4SHh5RQ7PS
         /SXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qFT9yOZV;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id z184si297709pgd.0.2019.03.04.06.44.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 06:44:33 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qFT9yOZV;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id c18so4365540otl.13
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 06:44:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XbjRZaUkKmztLa/z/yacIt/V1GSq9G72oteN7Nwgot8=;
        b=qFT9yOZVNet/tUM97rYeICVZeEdiKO0MPPSphWj2uf7a2Z8bYlVEhsWoDnYHKji7gc
         pYFUWUL98GYQUpsckCJiK7sVmZuC0OU9KZJ1CWgxx6E2Cx/GP4Oii14TRJFVTD5WFQRl
         GJue4wALkScQB/3tk4AFzevLv/sVTwM/zOTXwYETs2yv3ASGMPDNrEC5A4w/0AvHPWfV
         B48lbzMGriGW+6pSNsd4jciu6URotrjVB42elt0RfIB12pCbyjnHWzXZ62MTxBHqmCj4
         J+5ksXn47/GZwHITs/eVqeXLXk2D4JZPV8wT1DOxmuU968CM9oZtUmQ5IxWpx/smnfcS
         AUvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XbjRZaUkKmztLa/z/yacIt/V1GSq9G72oteN7Nwgot8=;
        b=tBnrii3qpzrmilZwQeVTh3iwDl8CbpEBKv9w/TfVw/Q4f/duwRZVlpjGDuApCx/ywi
         ZZbfMcx1UGko9uen6v9LxbPm7GWdfpB7lh7rqzLBrlhylZAF2rUZ7ZCr/PGZPo7/0ce7
         PORDpMMwc2586M9kLxCXyI8jL96+MmFNSRT4NqiE/1Ink2jIqlp5DETbYSOYa8j3YR8c
         GkeSgstMtAGdxvp0JvBWu3dboIzT9S9C5rC+6Ha7P3sOzbaga0bqSDJQENYX8fod2uoN
         HBcqdyd4qkbWIJi5fB0oOV7fb5zIOhVrgOgM9OJNqNFKl1qGOtvAKQZ7eQwh8QJnoYh8
         Kkjw==
X-Gm-Message-State: APjAAAUKquKHik7prp77L4sa5LPb4D2oYVBF0t7d0DitT0Tb3vno511c
	dG0HXv2kbO0AnGKs5gOs23XARB5pvJMqXK3OSU0FJ/VC
X-Received: by 2002:a9d:6496:: with SMTP id g22mr12227717otl.47.1551710672686;
 Mon, 04 Mar 2019 06:44:32 -0800 (PST)
MIME-Version: 1.0
References: <1551679530-2635-1-git-send-email-idebleenasen@gmail.com>
 <20190304074650.GC22711@kroah.com> <68af47ab-3e88-48bb-a3e7-0bdd25fa20f2@googlegroups.com>
 <alpine.DEB.2.20.1903041541320.4541@hadrien>
In-Reply-To: <alpine.DEB.2.20.1903041541320.4541@hadrien>
From: Debleena Sen <idebleenasen@gmail.com>
Date: Mon, 4 Mar 2019 20:14:17 +0530
Message-ID: <CACw+u4FpCs=Oaz93xCX3SK9Eyy6JSKEwKYfz_VOaYnRSNcOuAQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: pi433: Fix line over 80
 characters issue
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000709300058345cbfb"

--000000000000709300058345cbfb
Content-Type: text/plain; charset="UTF-8"

Ok, I'll do that.

On Mon, 4 Mar 2019, 20:12 Julia Lawall, <julia.lawall@lip6.fr> wrote:

>
>
> On Mon, 4 Mar 2019, idebleenasen@gmail.com wrote:
>
> > On Monday, March 4, 2019 at 1:16:54 PM UTC+5:30, gregkh wrote:
> >       On Sun, Mar 03, 2019 at 10:05:30PM -0800, Debleena Sen wrote:
> >       > Delete extra whitespace and tab space to remove
> >       > checkpatch.pl warning:
> >       > WARNING: line over 80 characters
> >       >
> >       > Signed-off-by: Debleena Sen <ideble...@gmail.com>
> >       > ---
> >       >  drivers/staging/pi433/pi433_if.c | 8 ++++----
> >       >  1 file changed, 4 insertions(+), 4 deletions(-)
> >       >
> >       > diff --git a/drivers/staging/pi433/pi433_if.c
> b/drivers/staging/pi433/pi433_if.c
> >       > index b231463..53928af 100644
> >       > --- a/drivers/staging/pi433/pi433_if.c
> >       > +++ b/drivers/staging/pi433/pi433_if.c
> >       > @@ -45,10 +45,10 @@
> >       >  #include "pi433_if.h"
> >       >  #include "rf69.h"
> >       >
> >       > -#define N_PI433_MINORS                        BIT(MINORBITS)
> /*32*/        /* ... up to 256 */
> >       > -#define MAX_MSG_SIZE                        900        /* min:
> FIFO_SIZE! */
> >       > -#define MSG_FIFO_SIZE                        65536   /* 65536 =
> 2^16  */
> >       > -#define NUM_DIO                                2
> >       > +#define N_PI433_MINORS                BIT(MINORBITS)
> /*32*/        /* ... up to 256 */
> >       > +#define MAX_MSG_SIZE                900        /* min:
> FIFO_SIZE! */
> >       > +#define MSG_FIFO_SIZE                65536   /* 65536 = 2^16  */
> >
> >       The comment above should also use a tab, right?
> >
> >       thanks,
> >
> >       greg k-h
> >
> >
> > Yes. Should I resend it ?
>
> If someone makes a suggestion for improvement, then you should resend,
> unless they explicitly say that it doesnt really matter.
>
> julia
>
> --
> You received this message because you are subscribed to a topic in the
> Google Groups "outreachy-kernel" group.
> To unsubscribe from this topic, visit
> https://groups.google.com/d/topic/outreachy-kernel/KI4hZ29Z_go/unsubscribe
> .
> To unsubscribe from this group and all its topics, send an email to
> outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903041541320.4541%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--000000000000709300058345cbfb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Ok, I&#39;ll do that.=C2=A0</div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 4 Mar 2019, 20:12 Juli=
a Lawall, &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
On Mon, 4 Mar 2019, <a href=3D"mailto:idebleenasen@gmail.com" target=3D"_bl=
ank" rel=3D"noreferrer">idebleenasen@gmail.com</a> wrote:<br>
<br>
&gt; On Monday, March 4, 2019 at 1:16:54 PM UTC+5:30, gregkh wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Sun, Mar 03, 2019 at 10:05:30PM -0800, De=
bleena Sen wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Delete extra whitespace and tab space t=
o remove<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; <a href=3D"http://checkpatch.pl" rel=3D=
"noreferrer noreferrer" target=3D"_blank">checkpatch.pl</a> warning:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; WARNING: line over 80 characters<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Debleena Sen &lt;<a href=
=3D"mailto:ideble...@gmail.com" target=3D"_blank" rel=3D"noreferrer">ideble=
...@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; =C2=A0drivers/staging/pi433/pi433_if.c =
| 8 ++++----<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; =C2=A01 file changed, 4 insertions(+), =
4 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/pi433/pi43=
3_if.c b/drivers/staging/pi433/pi433_if.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index b231463..53928af 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/pi433/pi433_if.c<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/pi433/pi433_if.c<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -45,10 +45,10 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; =C2=A0#include &quot;pi433_if.h&quot;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; =C2=A0#include &quot;rf69.h&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -#define N_PI433_MINORS=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BIT(MINORBITS) /*32*/=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* ... up to 256 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -#define MAX_MSG_SIZE=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0900=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0/* min: FIFO_SIZE! */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -#define MSG_FIFO_SIZE=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A065536 =C2=A0 /* 65536=
 =3D 2^16 =C2=A0*/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -#define NUM_DIO=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A02<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +#define N_PI433_MINORS=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0BIT(MINORBITS) /*32*/=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
/* ... up to 256 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +#define MAX_MSG_SIZE=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0900=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* min: FIFO_SIZE! */=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +#define MSG_FIFO_SIZE=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A065536 =C2=A0 /* 65536 =3D 2^16 =C2=A0*/<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0The comment above should also use a tab, rig=
ht?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0thanks,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0greg k-h<br>
&gt;<br>
&gt;<br>
&gt; Yes. Should I resend it ?<br>
<br>
If someone makes a suggestion for improvement, then you should resend,<br>
unless they explicitly say that it doesnt really matter.<br>
<br>
julia<br>
<br>
-- <br>
You received this message because you are subscribed to a topic in the Goog=
le Groups &quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this topic, visit <a href=3D"https://groups.google.com/=
d/topic/outreachy-kernel/KI4hZ29Z_go/unsubscribe" rel=3D"noreferrer norefer=
rer" target=3D"_blank">https://groups.google.com/d/topic/outreachy-kernel/K=
I4hZ29Z_go/unsubscribe</a>.<br>
To unsubscribe from this group and all its topics, send an email to <a href=
=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" target=3D"_blan=
k" rel=3D"noreferrer">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br=
>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@google=
groups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903041541320.4541%40hadrien" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/alpine.DEB.2.20.1903041541320.4541%40hadrien</a>.<br=
>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div>

--000000000000709300058345cbfb--

