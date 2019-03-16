X-GM-THRID: 6668944264527872000
X-Received: by 2002:a17:902:7d8a:: with SMTP id a10mr2812329plm.10.1552739081966;
        Sat, 16 Mar 2019 05:24:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:e393:: with SMTP id ch19ls6203354plb.2.gmail; Sat,
 16 Mar 2019 05:24:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx59awCrvN0fs/YYri+vpSELoZfx/2zeWtplGptg+8N5pnRRWffdd/SIN5beVErT6jmvDQ0
X-Received: by 2002:a17:902:8688:: with SMTP id g8mr2823102plo.84.1552739081017;
        Sat, 16 Mar 2019 05:24:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552739081; cv=none;
        d=google.com; s=arc-20160816;
        b=vd/krBBeXlWiKRpx5v2FA4zkED2jdWSd9ilJMgDoI+PcKHAu9KdnD7LzW/1wJogM+N
         mFjE50xinU/Or/HLfuy0jkCPJIIaPbx1jQdMlWo2ym44CF7y/W0uWP2sRZqOYyUiKsKM
         uS82tOWsYprXILEZI38J7YQvKLuDuC4A5L6ho0KbyNl4MvVxAQoHuo2jOmY5R6GdUB4F
         EcvNTTWbQXx1GhdVN9V58+lUz+ttEyMXJW3MTnipQMnwFeVOLmYZ/EF2YlH+5DRZU01C
         Bb+O7XcqztoQz4vYv7gqQPn7x4qb1Unap24iMLLyson8HTHigRnF+X8zI8GOEQ8PBcE5
         yutw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=X78/d/JWZc1jwaUaDDg70ndVMPlOXQUwAgXWHbYajII=;
        b=AtbvYwS6SacJmAJ8DDtPKT92tIANbzTI6sKfKgrZeeOaAdfDhbOlFu1GjIRm6fV0vo
         ERp4Nn4dFH9D8Kg60onUt7d4BFNVyPpMDfwD/ukMulnbc1BjQlWV8qZRbdqZnInLXFIi
         TSHZehRlrAJkEKwMN8qWiEND/hhENInD/ZZIIy7PT+MFhz2sk49pmeL7pRL1XWoyfCrb
         cyTsqYlhZKFNDl/OsdZdBl10Esp7wXDOgfTsw8t/Q0XY0JjB2YMz/1FNfjHDcnkj/SgW
         zxZwv0Ec0Vd1TZP3ofd8EMBV0qxZKAs7NDmEOa58WPrnIDUJo6QOHCcXYGjk0OWYWPuu
         zyaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ir6KFZkR;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id k70si246070pfc.0.2019.03.16.05.24.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 05:24:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ir6KFZkR;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x342.google.com with SMTP id b3so10705958otp.4
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 05:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=X78/d/JWZc1jwaUaDDg70ndVMPlOXQUwAgXWHbYajII=;
        b=ir6KFZkRbcXfqzGH077WgK6Viy4LzM6cIw0smUI/1IGsCqbL1qthTNCDuA/mRgA71r
         Va9uUWhvyE0i0bTU0SKwelyMKEAqAIQumgjNov3OaoQg2LCn59rZq5VgHmCenbyl52bR
         wGWzyq6rRH9dd0W45v1IVMgUlsGq/6yE+egLEzRUPzMMlDaQ4+VuNLcLyaJI8BVmNxf9
         PZHSrGw0g2vBApou83TkE8vmSG73CtGQHJvKxB5/GkrO8QIZAwEgot90bkh51ozD17/c
         i76cGmmH6cmhrJ22RYgK3ForwfpXd2JncNa289fPAjHSnhqnqFVe6jsHh1l2ADYdWd82
         bqvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=X78/d/JWZc1jwaUaDDg70ndVMPlOXQUwAgXWHbYajII=;
        b=qYMAhi4dZn5ZlQMH1OmyaDseWXSKHMyUO1p7brTWKlzJZLYDXR16S12YliJYljFzTB
         tiyZemspypB2MnqIUNbBR1ncYg4EkEFrfvdWnGt1ShpS/NjMsMwteXuPFrN43otK22g8
         zkm2ELpZlGXtmjDk0It34UyvyaMvdyKYbZjBCPCxUi+m0MfhfkeosuFytTNunFFfkLTt
         xHXy1MleFmUvB6KPPLHa7IL7/EyF130kyPuVB3KaSFT9tyLbR3EqKti3yhDJZuBWRm1e
         IqCLbPWjoY0ahEoY0nYl9abjkpuXWMe/QvvBo5kbabhRJoNNyZeFup3RiS2e7zS4vDbR
         xpwA==
X-Gm-Message-State: APjAAAV3+5EXd6j1frjC0FgGMDgvv9qapz3FFd8/EWitSOt/xBLtmEa6
	kbTqC2S7mURiqwkITfrY4fYQaSMy38m2B/KxYbU=
X-Received: by 2002:a9d:6a1a:: with SMTP id g26mr5219216otn.299.1552739080007;
 Sat, 16 Mar 2019 05:24:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190316102759.20272-1-himadri18.07@gmail.com> <alpine.DEB.2.21.1903161313530.2487@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903161313530.2487@hadrien>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Sat, 16 Mar 2019 17:54:27 +0530
Message-ID: <CAPnhUpYGxONZyJrdd2kL1JaeoG+=v0k-3fCvnFOQ93CGOd71HQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/3] staging:rtl8723bs: hal: Remove
 comparision to NULL
To: Julia Lawall <Julia.Lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000004af5f60584353dfb"

--0000000000004af5f60584353dfb
Content-Type: text/plain; charset="UTF-8"

On Sat, 16 Mar, 2019, 5:44 PM Julia Lawall, <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 16 Mar 2019, Himadri Pandya wrote:
>
> > - This patchset removes comparision to NULL in various files of
> > drivers/staging/rtl8723bs/hal/ .
> >
> > - The changes are broken into 3 separate patches to keep the length of
> > each patch below/near 100 lines for convinient reviewing.
> >
> > - All patches have the same subject line as they all do the exact same
> thing.
> >
> > Himadri Pandya (3):
> >   staging: rtl8723bs: hal: Remove comparision to NULL
> >   staging: rtl8723bs: hal: Remove comparision to NULL
> >   staging: rtl8723bs: hal: Remove comparision to NULL
>
> While it's a good thought to limit the patch size, you also have to come
> up with different subject lines for each patch.
>
> julia
>

Okay. Sending version 2 with different subject lines.

- Himadri

>
> >
> >  drivers/staging/rtl8723bs/hal/hal_btcoex.c     |  8 ++++----
> >  drivers/staging/rtl8723bs/hal/hal_com.c        |  8 ++++----
> >  drivers/staging/rtl8723bs/hal/hal_com_phycfg.c | 18 +++++++++---------
> >  drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c   |  8 ++++----
> >  drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c |  6 +++---
> >  5 files changed, 24 insertions(+), 24 deletions(-)
> >
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190316102759.20272-1-himadri18.07%40gmail.com
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
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903161313530.2487%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--0000000000004af5f60584353dfb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, 16 Mar, 2019, 5:44 PM Julia Lawall, &lt;<a hre=
f=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><br>
<br>
On Sat, 16 Mar 2019, Himadri Pandya wrote:<br>
<br>
&gt; - This patchset removes comparision to NULL in various files of<br>
&gt; drivers/staging/rtl8723bs/hal/ .<br>
&gt;<br>
&gt; - The changes are broken into 3 separate patches to keep the length of=
<br>
&gt; each patch below/near 100 lines for convinient reviewing.<br>
&gt;<br>
&gt; - All patches have the same subject line as they all do the exact same=
 thing.<br>
&gt;<br>
&gt; Himadri Pandya (3):<br>
&gt;=C2=A0 =C2=A0staging: rtl8723bs: hal: Remove comparision to NULL<br>
&gt;=C2=A0 =C2=A0staging: rtl8723bs: hal: Remove comparision to NULL<br>
&gt;=C2=A0 =C2=A0staging: rtl8723bs: hal: Remove comparision to NULL<br>
<br>
While it&#39;s a good thought to limit the patch size, you also have to com=
e<br>
up with different subject lines for each patch.<br>
<br>
julia<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">Okay. Sending version 2 with different subject lines.</div><div dir=3D=
"auto"><br></div><div dir=3D"auto">- Himadri</div><div dir=3D"auto"><div cl=
ass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
&gt;<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/hal/hal_btcoex.c=C2=A0 =C2=A0 =C2=A0|=
=C2=A0 8 ++++----<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/hal/hal_com.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 8 ++++----<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c | 18 +++++++++---=
------<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c=C2=A0 =C2=A0|=C2=A0=
 8 ++++----<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c |=C2=A0 6 +++---<=
br>
&gt;=C2=A0 5 files changed, 24 insertions(+), 24 deletions(-)<br>
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
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@g=
ooglegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20190316102759.20272-1-himadri18.07%40gmai=
l.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.googl=
e.com/d/msgid/outreachy-kernel/20190316102759.20272-1-himadri18.07%40gmail.=
com</a>.<br>
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
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903161313530.2487%40hadrien" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/alpine.DEB.2.21.1903161313530.2487%40hadrien</a>.<br=
>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--0000000000004af5f60584353dfb--

