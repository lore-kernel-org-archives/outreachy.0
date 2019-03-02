X-GM-THRID: 6663442013681090560
X-Received: by 2002:a17:906:c9d2:: with SMTP id hk18mr1008962ejb.5.1551512302729;
        Fri, 01 Mar 2019 23:38:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:f182:: with SMTP id gs2ls2357278ejb.5.gmail; Fri, 01
 Mar 2019 23:38:21 -0800 (PST)
X-Google-Smtp-Source: APXvYqxAVnW33chhxo4jFdY6laeWr+rm+5aULorOtOb7M/gdU1Za0zCZ52D2x0/jMosSBjtcmTob
X-Received: by 2002:a17:906:938b:: with SMTP id l11mr1019460ejx.8.1551512301938;
        Fri, 01 Mar 2019 23:38:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551512301; cv=none;
        d=google.com; s=arc-20160816;
        b=OplJafYgA+guGm2sOiCatkiWVH8IUx+OsFPzJtpFHk2jx0cT2ffC38W1p2UcnfAFk/
         tG8jLZDJE8g0GvXM60xBdfdExwh330uAhS0iv+S8THOt8Kg9WHYiOSQgAuirMkeVWMkg
         2GiRCvZCeX9r8gN4YXxRzezP3+kT+W0OpQuUUQsFniV8KFNUufbttzPZlcngtuaa6lKK
         4Wo2zPX5UvnJT3nqzh1rc18wsUN/CP6TZz/L97MENVXZwLFDfETrt0iP2qP+a1pyV57E
         JcgyA5+8GxnQq9ItXDXESpzu8Uwv0lYHdU1mnAIm26+5E/2/4i0Z1fD8bSRlKGaxyM6L
         LoYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=LgtqacrBzAc7VPzoZO/QUAcJdVhT4/8OfH2iogLSUV8=;
        b=fA/xhMEH2AGWjHECnijUsFH8XulMVHYbBWmc7vRy8GdQdhNlaiTDCwm72e/0HHAIOH
         YrvC9JL3fZ4/7tdeaW+nHJ7ehyzOhvC5TUWJQL99y3Axuz6783r7CiIvKqCs+LlZGuJ+
         n05HYkdT9GLC7eO7v9HwgF6XCDOhW1rGUe9d6L/JPfc5Fs8KcBlVrKDPi/70Jtj0Ut81
         L7ttqzPi9ReGZAs5sPdZJoT57zeRPf9F+oi9ExDdlfA+9URrr7UhmA7lAQl1XnwjsN1p
         epiZL1brYdIcXPyV2ePd26jVr8L7tohPME4w/CiUuRuY+RlMOdZxQ0s99FTeqgUZ1AM/
         mb3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M3cZ7Tuj;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id a7si19299edb.1.2019.03.01.23.38.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 23:38:21 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) client-ip=2a00:1450:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M3cZ7Tuj;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x544.google.com with SMTP id f2so199235edy.13
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 23:38:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=LgtqacrBzAc7VPzoZO/QUAcJdVhT4/8OfH2iogLSUV8=;
        b=M3cZ7TujKDzBwtAZgLs1IS3/W0cOpAtht0mnONkccQDTZWTjLcVOvXLIsyK03gCAGv
         imuu+s6k5wK37WNtrVUL1BKs9sndw2oE+pLLv231xq6c5shr5NhQI+9g0TGALFcb+fPd
         pGpu9uyqNoOSOfwO1OUC2hcVGrjLlTuXXMyaKRIGLJ9dPsyRWXQLHthW6kAUbQN6dmkm
         vODjR4VRdEQwFB8IngDoXQ14VQBOzvVmtiRwOxUcAhq3VTU1I72Ph4J6di4SfUZmHjfV
         yr/dWA9rYRUSF/CyIf7Ch+JcH89LxB76s1I/5DWi1XcF2M/d/qdISN2RDC1jwFuegens
         3n3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=LgtqacrBzAc7VPzoZO/QUAcJdVhT4/8OfH2iogLSUV8=;
        b=EqMJfzI5HKuNxIpbs5Vf8i61j6JdHzziCag15WlBr5pS3pvwDT2X203InELz65un2y
         pmVKcttXDq2cg+YYlicO0VZV3ofJl8LW/D2S/f1iYRS+hsZH6IZ8wvtL/6vPUA4qMRir
         AcV7NA0+fWVIpZP5Cm9pj3eyNVu0XqTXTCKFbtFzGC9UKCG/H9r0VjDPctllw7XBNNDq
         zCNkp6s8q8qW9nxh/+V8cuG0UwMEtsml5vfGq230ZVT1vu9ZSZFC9BIWlf8R0YottgHf
         hm5I/db7irYdg1VUqOsAjWF1wwik8K5j3AruYtAZpIlxrwH6EQJBm3L58jdNceu0B9zK
         fYxw==
X-Gm-Message-State: APjAAAWruriutwoKglPn4o6ZhrNeKq5ckuUJX/gCpRFUw4D+hn7tD6OZ
	ikzhFMJJsPM0/Ul7yfocK8Q6oBe4lAxrtkBwdqsEPKI=
X-Received: by 2002:a17:906:15d4:: with SMTP id l20mr5665336ejd.11.1551512301450;
 Fri, 01 Mar 2019 23:38:21 -0800 (PST)
MIME-Version: 1.0
References: <20190302001115.20477-1-jbi.octave@gmail.com> <20190302001115.20477-3-jbi.octave@gmail.com>
 <alpine.DEB.2.21.1903020731330.2572@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903020731330.2572@hadrien>
From: Jules Octave <jbi.octave@gmail.com>
Date: Sat, 2 Mar 2019 07:37:45 +0000
Message-ID: <CAOuULM6ZhqFr3VZmi05tO=30hz=hLQti7TtMY6abAE=k67KD1Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: mt7621-dma: Remove
 license boilerplate text
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com, 
	Greg KH <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="00000000000097bb850583179b37"

--00000000000097bb850583179b37
Content-Type: text/plain; charset="UTF-8"

On Sat, 2 Mar 2019 at 06:32, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 2 Mar 2019, Jules Irenge wrote:
>
> > Removes license boilerplate text
>
> The log message should be in the imperative.  No "s" at the end of the
> verb.
>
> Please put a period at the end of the sentence.
>
> The log message should explain why you are removing it, ie it is redundant
> now that there is the SPDX identifier.
>
> julia
>
> >
> > Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> > ---
> >  drivers/staging/mt7621-dma/mtk-hsdma.c | 6 ------
> >  1 file changed, 6 deletions(-)
> >
> > diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c
> b/drivers/staging/mt7621-dma/mtk-hsdma.c
> > index 7d69586f23c0..e4a522f3b448 100644
> > --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> > +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> > @@ -2,12 +2,6 @@
> >  /*
> >   *  Copyright (C) 2015, Michael Lee <igvtee@gmail.com>
> >   *  MTK HSDMA support
> > - *
> > - *  This program is free software; you can redistribute it and/or
> modify it
> > - *  under  the terms of the GNU General       Public License as
> published by the
> > - *  Free Software Foundation;  either version 2 of the License, or (at
> your
> > - *  option) any later version.
> > - *
> >   */
> >
> >  #include <linux/dmaengine.h>
> > --
> > 2.20.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190302001115.20477-3-jbi.octave%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

I will do so. Thanks.

--00000000000097bb850583179b37
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Sat, 2 Mar 2019 at 06:32, Julia Lawall &lt;<a href=3D"mailto:juli=
a.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><br>
<br>
On Sat, 2 Mar 2019, Jules Irenge wrote:<br>
<br>
&gt; Removes license boilerplate text<br>
<br>
The log message should be in the imperative.=C2=A0 No &quot;s&quot; at the =
end of the<br>
verb.<br>
<br>
Please put a period at the end of the sentence.<br>
<br>
The log message should explain why you are removing it, ie it is redundant<=
br>
now that there is the SPDX identifier.<br>
<br>
julia<br>
<br>
&gt;<br>
&gt; Signed-off-by: Jules Irenge &lt;<a href=3D"mailto:jbi.octave@gmail.com=
" target=3D"_blank">jbi.octave@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/mt7621-dma/mtk-hsdma.c | 6 ------<br>
&gt;=C2=A0 1 file changed, 6 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/=
mt7621-dma/mtk-hsdma.c<br>
&gt; index 7d69586f23c0..e4a522f3b448 100644<br>
&gt; --- a/drivers/staging/mt7621-dma/mtk-hsdma.c<br>
&gt; +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c<br>
&gt; @@ -2,12 +2,6 @@<br>
&gt;=C2=A0 /*<br>
&gt;=C2=A0 =C2=A0*=C2=A0 Copyright (C) 2015, Michael Lee &lt;<a href=3D"mai=
lto:igvtee@gmail.com" target=3D"_blank">igvtee@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0*=C2=A0 MTK HSDMA support<br>
&gt; - *<br>
&gt; - *=C2=A0 This program is free software; you can redistribute it and/o=
r modify it<br>
&gt; - *=C2=A0 under=C2=A0 the terms of the GNU General=C2=A0 =C2=A0 =C2=A0=
 =C2=A0Public License as published by the<br>
&gt; - *=C2=A0 Free Software Foundation;=C2=A0 either version 2 of the Lice=
nse, or (at your<br>
&gt; - *=C2=A0 option) any later version.<br>
&gt; - *<br>
&gt;=C2=A0 =C2=A0*/<br>
&gt;<br>
&gt;=C2=A0 #include &lt;linux/dmaengine.h&gt;<br>
&gt; --<br>
&gt; 2.20.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>=
.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20190302001115.20477-3-jbi.octave%40gmail.=
com" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid=
/outreachy-kernel/20190302001115.20477-3-jbi.octave%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br></blockquote><div><br></div><div>I will do so. Thanks.=C2=A0 <br></=
div></div></div>

--00000000000097bb850583179b37--

