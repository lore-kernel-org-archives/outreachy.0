X-GM-THRID: 6663442013681090560
X-Received: by 2002:a1c:761a:: with SMTP id r26mr614970wmc.1.1551516543187;
        Sat, 02 Mar 2019 00:49:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2e0a:: with SMTP id u10ls598258wmu.10.canary-gmail; Sat,
 02 Mar 2019 00:49:02 -0800 (PST)
X-Google-Smtp-Source: AHgI3IahbdqENkfkCOgJlVe56eROVL1GDssSi5iYvGYN+SC5E14jlNvJMLgx5sRksyHGANqC9Mo5
X-Received: by 2002:a7b:c002:: with SMTP id c2mr594769wmb.0.1551516542193;
        Sat, 02 Mar 2019 00:49:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551516542; cv=none;
        d=google.com; s=arc-20160816;
        b=ebS1DMB2f8TmCmbuIn369MFm7AEqc0+W8Ke3Spz3THcLFJAAVwF+EO3A0cbABpsDrn
         xSYrG0icM2yiRAnkLo0kpdbwOpOK7fQSuiX8ejrx5l7FoYURhUTCC8FTjStBnqi6Oenj
         CdqjxVbqkQDNLsyXtEPt4EIXqm9eQIjR4ods5yo3+D6W9XsgBMEXQo5m5vMzXDwJeWO/
         yB1+d9mY+oWBOzp8JuP8LFYtQ3Z9e5DSW2FT6ZkHrBfKbVW5WzUIg16E++KpdKHEvmD+
         qa6PO/WrbFCbEbqsb9r8aZKV93lHmy7Abs5igev/IZ8qwwqGSAXGppdyr1eEFTH2m1y5
         heKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=PS6a11UNuPxDaWWkMYuJUGaGvWzXJec2AX5zJAiKNl8=;
        b=akgVvOmGjOxRpUTXVdHQoFmJthBCyRGkPl6+ErkxtOjGH1NWmTh+Y3zuRolzNHFhF2
         iH/k/utizxJL+DGmXpKW64yc9C0KSyquPOoWT9CGz+6oSv7c59mwSrGzwxdZttJs6RR4
         KBRCCZjj0y+wcF2Nq+IP2TE72sMnfHzVaOlOb5mGE2j8YOsuFfWSSy0A/T8amvh6qrYP
         WhLUU0RKb79EfNrcqtM7c3VxWa53wBg3/VmeCbegoWGzKgUA4haCMMtXtBwkV7SfWyxZ
         eMWwTbViw6wVPZVLtgYHL2PXivr4Nva2Y77nUeDBIP52VfshM+iGNizf9RUFTd1H28u2
         uAPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k7qR1Rjd;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id b134si36863wmd.2.2019.03.02.00.49.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 00:49:02 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k7qR1Rjd;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x543.google.com with SMTP id g19so302705edp.2
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 00:49:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=PS6a11UNuPxDaWWkMYuJUGaGvWzXJec2AX5zJAiKNl8=;
        b=k7qR1RjdJSUntoZl4cFmWsPN5ffvGCdPBR/MgBpzSdClzSoj4n7h9jHnNIdQqn+Mfu
         oMPn2rzlzya0H4JG/QVQxAHP1wNyHeAnX1EWN1MeTceIu0gW+CxdJGY9dtbpPeU+uaD3
         4Mp37MJ2aOnCDT7/DcezByGXIcOwGhnHLaPI2/XAkBIK0OjuufYOXNArk4fiKAxB23hC
         e3f83KiFoCUHiMPEnPtCb91n9AMFPtb0LqoAg0cPT89yMm4W3kWoBKaq6Ih+bK1bYMhF
         kewBrpN+TPt8j3TdZsCUZ3bC6Z2zpKGiAC6O6z18xM/mavuHF0r6sJYKU+55+daV7b50
         ceog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=PS6a11UNuPxDaWWkMYuJUGaGvWzXJec2AX5zJAiKNl8=;
        b=JbbPTebTWjh+K0kpaZgmYd8BrczmoV5NuAH+Ommvdz+4yKdSp2USPQiQCAIDrPOZu0
         T8qMavRnQVPadeT0vDdRLR8sfn2QzrqoNpcAmEg/LElJmr9HXCTUWF1avn9uxVlbUd0+
         ia58heNa58VDbDYgogHyiusCr+vGcvTnQqhidQ4Vf5ugWT632gq+1JIWRUXftg/Pq/iS
         OXOCb5qdSQ1BRuQoVCnfHPAfxCte/qaez5QNkI5BFJt1lW7qtaouuclPrIZzld05P9Ni
         4V1u1URK55tvsr1mK7a2vCII5diCfHj6W+2qPla5TB6O9vxdHfvbeexxowe8BHT4D0Dx
         qOKw==
X-Gm-Message-State: APjAAAVy7mQsd2Ybw+xuCrOfLdXja1YbY9ettCjTk8JqJw1xuOx+hVna
	n4HZBYSi6gl75gsszFlUK5J14k3VJ00+TCXreg==
X-Received: by 2002:a17:906:812:: with SMTP id e18mr5698122ejd.28.1551516541708;
 Sat, 02 Mar 2019 00:49:01 -0800 (PST)
MIME-Version: 1.0
References: <20190302001115.20477-1-jbi.octave@gmail.com> <20190302001115.20477-3-jbi.octave@gmail.com>
 <alpine.DEB.2.21.1903020731330.2572@hadrien> <CAOuULM6ZhqFr3VZmi05tO=30hz=hLQti7TtMY6abAE=k67KD1Q@mail.gmail.com>
 <alpine.DEB.2.21.1903020906590.2572@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903020906590.2572@hadrien>
From: Jules Octave <jbi.octave@gmail.com>
Date: Sat, 2 Mar 2019 08:48:24 +0000
Message-ID: <CAOuULM6XJ1cNzJ4mdFVcj10bZxmN=tDipcmuhzuBB7mLRjim2w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: mt7621-dma: Remove
 license boilerplate text
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000054f05e0583189823"

--00000000000054f05e0583189823
Content-Type: text/plain; charset="UTF-8"

On Sat, 2 Mar 2019 at 08:36, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 2 Mar 2019, Jules Octave wrote:
>
> > On Sat, 2 Mar 2019 at 06:32, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> >       On Sat, 2 Mar 2019, Jules Irenge wrote:
> >
> >       > Removes license boilerplate text
> >
> >       The log message should be in the imperative.  No "s" at the end
> >       of the
> >       verb.
> >
> >       Please put a period at the end of the sentence.
> >
> >       The log message should explain why you are removing it, ie it is
> >       redundant
> >       now that there is the SPDX identifier.
> >
> >       julia
> >
> >       >
> >       > Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> >       > ---
> >       >  drivers/staging/mt7621-dma/mtk-hsdma.c | 6 ------
> >       >  1 file changed, 6 deletions(-)
> >       >
> >       > diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c
> >       b/drivers/staging/mt7621-dma/mtk-hsdma.c
> >       > index 7d69586f23c0..e4a522f3b448 100644
> >       > --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> >       > +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> >       > @@ -2,12 +2,6 @@
> >       >  /*
> >       >   *  Copyright (C) 2015, Michael Lee <igvtee@gmail.com>
> >       >   *  MTK HSDMA support
> >       > - *
> >       > - *  This program is free software; you can redistribute it
> >       and/or modify it
> >       > - *  under  the terms of the GNU General       Public License
> >       as published by the
> >       > - *  Free Software Foundation;  either version 2 of the
> >       License, or (at your
> >       > - *  option) any later version.
> >       > - *
> >       >   */
> >       >
> >       >  #include <linux/dmaengine.h>
> >       > --
> >       > 2.20.1
> >       >
> >       > --
> >       > You received this message because you are subscribed to the
> >       Google Groups "outreachy-kernel" group.
> >       > To unsubscribe from this group and stop receiving emails from
> >       it, send an email to
> >       outreachy-kernel+unsubscribe@googlegroups.com.
> >       > To post to this group, send email to
> >       outreachy-kernel@googlegroups.com.
> >       > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/20190302001115.20477-3-j
> >       bi.octave%40gmail.com.
> >       > For more options, visit https://groups.google.com/d/optout.
> >       >
> >
> >
> > I will do so. Thanks.
>
> >This is not the ideal place for comments either.  The response just be
> >right under the text you are responding to.  You aren't responding to
>
> >For more options, visit https://groups.google.com/d/optout.
>
> >julia


Thanks. I take good note.

--00000000000054f05e0583189823
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Sat, 2 Mar 2019 at 08:36, Julia Lawall=
 &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall=
@lip6.fr</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><br>
<br>
On Sat, 2 Mar 2019, Jules Octave wrote:<br>
<br>
&gt; On Sat, 2 Mar 2019 at 06:32, Julia Lawall &lt;<a href=3D"mailto:julia.=
lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Sat, 2 Mar 2019, Jules Irenge wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Removes license boilerplate text<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0The log message should be in the imperative.=
=C2=A0 No &quot;s&quot; at the end<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0of the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0verb.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Please put a period at the end of the senten=
ce.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0The log message should explain why you are r=
emoving it, ie it is<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0redundant<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0now that there is the SPDX identifier.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0julia<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Jules Irenge &lt;<a href=
=3D"mailto:jbi.octave@gmail.com" target=3D"_blank">jbi.octave@gmail.com</a>=
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 drivers/staging/mt7621-dma/mtk-hs=
dma.c | 6 ------<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 1 file changed, 6 deletions(-)<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/mt7621-dma=
/mtk-hsdma.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/mt7621-dma/mtk-hsdma.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index 7d69586f23c0..e4a522f3b448 100644=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/mt7621-dma/mtk-hs=
dma.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/mt7621-dma/mtk-hs=
dma.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -2,12 +2,6 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 /*<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0*=C2=A0 Copyright (C) 2015,=
 Michael Lee &lt;<a href=3D"mailto:igvtee@gmail.com" target=3D"_blank">igvt=
ee@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0*=C2=A0 MTK HSDMA support<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; - *<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; - *=C2=A0 This program is free software=
; you can redistribute it<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0and/or modify it<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; - *=C2=A0 under=C2=A0 the terms of the =
GNU General=C2=A0 =C2=A0 =C2=A0 =C2=A0Public License<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0as published by the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; - *=C2=A0 Free Software Foundation;=C2=
=A0 either version 2 of the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0License, or (at your<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; - *=C2=A0 option) any later version.<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; - *<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0*/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 #include &lt;linux/dmaengine.h&gt=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; 2.20.1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; You received this message because you a=
re subscribed to the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Google Groups &quot;outreachy-kernel&quot; g=
roup.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To unsubscribe from this group and stop=
 receiving emails from<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0it, send an email to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel%2Bunsubsc=
ribe@googlegroups.com" target=3D"_blank">outreachy-kernel+unsubscribe@googl=
egroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To post to this group, send email to<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel@googlegro=
ups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To view this discussion on the web visi=
thttps://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/20190=
302001115.20477-3-j" rel=3D"noreferrer" target=3D"_blank">groups.google.com=
/d/msgid/outreachy-kernel/20190302001115.20477-3-j</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0bi.octave%<a href=3D"http://40gmail.com" rel=
=3D"noreferrer" target=3D"_blank">40gmail.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; For more options, visit <a href=3D"http=
s://groups.google.com/d/optout" rel=3D"noreferrer" target=3D"_blank">https:=
//groups.google.com/d/optout</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt;<br>
&gt; I will do so. Thanks.=C2=A0<br>
<br>
&gt;This is not the ideal place for comments either.=C2=A0 The response jus=
t be<br>
&gt;right under the text you are responding to.=C2=A0 You aren&#39;t respon=
ding to<br>
<br>
&gt;For more options, visit <a href=3D"https://groups.google.com/d/optout" =
rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a>=
.<br>
<br>
&gt;julia</blockquote><div>=C2=A0</div><div>Thanks. I take good note.<br></=
div></div></div>

--00000000000054f05e0583189823--

