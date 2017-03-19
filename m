X-GM-THRID: 6399195765741191168
X-Received: by 10.25.150.2 with SMTP id y2mr2761762lfd.21.1489940436591;
        Sun, 19 Mar 2017 09:20:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.134 with SMTP id 128ls1061258ljj.4.gmail; Sun, 19 Mar
 2017 09:20:35 -0700 (PDT)
X-Received: by 10.25.204.21 with SMTP id c21mr2895914lfg.19.1489940435891;
        Sun, 19 Mar 2017 09:20:35 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id x188si249806wmx.0.2017.03.19.09.20.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 09:20:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id g70so8469146lfh.3
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 09:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=LNYYNV7SmB+tPHlLB+ABYYgRD8hCzazKSMFBCVolT1w=;
        b=kI4c/zcB/kXFunwDykFc5U6uvuJ7j29vTm8W39vguDefvIKdSeEnHwuKueHMXdb+xU
         x+AX9cPPduxkiUanFS6CTEdqVd5rc1Ha2wB76nS+lDZSsqnxuFxl0Rxj0mSWy2PFnis9
         BktEaXd/7ZC8bms/QB/cWU3gOzmV7VZFlC+HozkHj0UKCi376Fo/DxJWuAtcy16Im5MF
         GoxDzOqUFU7Trpl9KwCFvBQnArfjcQfsx2efaGWUWgGiLQN4S41LKpBX0zBiBe6LDam4
         nT7LqBdjhxgYkEkvP/tCiYpuDzkmlclMxw7DXLmf/JWWFS18ete1yQyDfFXc94H/zyky
         Om8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=LNYYNV7SmB+tPHlLB+ABYYgRD8hCzazKSMFBCVolT1w=;
        b=TzniggUbK5URrHGob69SMhGboxcsMu+BkvIpPZe3UvMGO7inBVp+de+NOben26jp0E
         /nYV+JIDm3BiUZJSfOcgB8B/ELSrKXG6B1m/zKWh7Cda88yPaRIeHo4pgGKp7/UbYBkE
         3GSuci6t7m4+ZAw5ubUWEusN2T7tb1qqM4g2XcDTEaD6MYfs+RjH01c28K1Wf2pWd5JC
         GuSYS2ygc5XSptvQm8S0VcoVl0A7u6gawRwtsk2GAWNajONQ+8bQjSsw6sDNbwqoPvIK
         rboAXEhPz6QI8Ux5Xwm8tNROw5qgQlO4MBEQE/Cng60z17aPk+jjdtJ1gvvJznnQWkQP
         nWyQ==
X-Gm-Message-State: AFeK/H1BWjCYGRd/1imee8IVFvkgcLKEahK+IYrZm90KS3tYNVqg+lQP/RQoCDnWVqaM+mdS/E8dfHlpKiV8Vg==
X-Received: by 10.46.87.89 with SMTP id r25mr8240377ljd.31.1489940435623; Sun,
 19 Mar 2017 09:20:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.170.69 with HTTP; Sun, 19 Mar 2017 09:20:35 -0700 (PDT)
In-Reply-To: <CAMuHMdWy7HVbvKqGyuQ2bRLTfS_hMZt54-eJttZ91cTkNnzpGA@mail.gmail.com>
References: <20170319130744.GA24605@arushi-HP-Pavilion-Notebook>
 <alpine.DEB.2.20.1703191409140.2108@hadrien> <CAMuHMdU_jvNSbi5mfexMZHjvXqny6v+3F4Cc_OCTpD0jngWaQQ@mail.gmail.com>
 <CA+XqjF87GbaU4jkF1cCskbLnf=ev5vYHmB67gOrApg9vOgYEsQ@mail.gmail.com> <CAMuHMdWy7HVbvKqGyuQ2bRLTfS_hMZt54-eJttZ91cTkNnzpGA@mail.gmail.com>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Sun, 19 Mar 2017 21:50:35 +0530
Message-ID: <CA+XqjF_F3VXOeyO9HgZQYyZoA4T2=tFjqVgd2O-LSbtYec8Nzw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: sm750fb: Code readability
 is improved
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Julia Lawall <julia.lawall@lip6.fr>, Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
	Teddy Wang <teddy.wang@siliconmotion.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Linux Fbdev development list <linux-fbdev@vger.kernel.org>, driverdevel <devel@driverdev.osuosl.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=f403045f80f866eeb3054b17caa1

--f403045f80f866eeb3054b17caa1
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 19, 2017 at 9:35 PM, Geert Uytterhoeven <geert@linux-m68k.org>
wrote:

> On Sun, Mar 19, 2017 at 4:52 PM, Arushi Singhal
> <arushisinghal19971997@gmail.com> wrote:
> > On Sun, Mar 19, 2017 at 7:34 PM, Geert Uytterhoeven <
> geert@linux-m68k.org>
> > wrote:
> >>
> >> On Sun, Mar 19, 2017 at 2:11 PM, Julia Lawall <julia.lawall@lip6.fr>
> >> wrote:
> >> > On Sun, 19 Mar 2017, Arushi Singhal wrote:
> >> >> New variables are added to make the code more readable.
> >> >>
> >> >> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> >> >> ---
> >> >>  changes in v3
> >> >>  -try to make the code much more readable.
> >> >>
> >> >>  drivers/staging/sm750fb/ddk750_mode.c | 61
> >> >> ++++++++++++++++++++---------------
> >> >>  1 file changed, 35 insertions(+), 26 deletions(-)
> >> >>
> >> >> diff --git a/drivers/staging/sm750fb/ddk750_mode.c
> >> >> b/drivers/staging/sm750fb/ddk750_mode.c
> >> >> index eea5aef2956f..5f18ce4d10de 100644
> >> >> --- a/drivers/staging/sm750fb/ddk750_mode.c
> >> >> +++ b/drivers/staging/sm750fb/ddk750_mode.c
> >> >> @@ -81,33 +81,42 @@ static int programModeRegisters(mode_parameter_t
> >> >> *pModeParam, struct pll_value *
> >> >>       if (pll->clockType == SECONDARY_PLL) {
> >> >>               /* programe secondary pixel clock */
> >> >>               poke32(CRT_PLL_CTRL, sm750_format_pll_reg(pll));
> >> >> -             poke32(CRT_HORIZONTAL_TOTAL,
> >> >> -                    (((pModeParam->horizontal_total - 1) <<
> >> >> -                      CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
> >> >> -                     CRT_HORIZONTAL_TOTAL_TOTAL_MASK) |
> >> >> -                    ((pModeParam->horizontal_display_end - 1) &
> >> >> -                     CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK));
> >> >> -
> >> >> -             poke32(CRT_HORIZONTAL_SYNC,
> >> >> -                    ((pModeParam->horizontal_sync_width <<
> >> >> -                      CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) &
> >> >> -                     CRT_HORIZONTAL_SYNC_WIDTH_MASK) |
> >> >> -                    ((pModeParam->horizontal_sync_start - 1) &
> >> >> -                     CRT_HORIZONTAL_SYNC_START_MASK));
> >> >>
> >> >> -             poke32(CRT_VERTICAL_TOTAL,
> >> >> -                    (((pModeParam->vertical_total - 1) <<
> >> >> -                      CRT_VERTICAL_TOTAL_TOTAL_SHIFT) &
> >> >> -                     CRT_VERTICAL_TOTAL_TOTAL_MASK) |
> >> >> -                    ((pModeParam->vertical_display_end - 1) &
> >> >> -                     CRT_VERTICAL_TOTAL_DISPLAY_END_MASK));
> >> >> -
> >> >> -             poke32(CRT_VERTICAL_SYNC,
> >> >> -                    ((pModeParam->vertical_sync_height <<
> >> >> -                      CRT_VERTICAL_SYNC_HEIGHT_SHIFT) &
> >> >> -                     CRT_VERTICAL_SYNC_HEIGHT_MASK) |
> >> >> -                    ((pModeParam->vertical_sync_start - 1) &
> >> >> -                     CRT_VERTICAL_SYNC_START_MASK));
> >> >> +             unsigned int a = (pModeParam->horizontal_total - 1) <<
> >> >> +                             CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT;
> >> >> +             unsigned int b = a & CRT_HORIZONTAL_TOTAL_TOTAL_MASK;
> >> >> +             unsigned int c = (pModeParam->horizontal_display_end
> - 1)
> >> >> &
> >> >> +                             CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK;
> >> >> +             unsigned int temp = b | c;
> >> >> +
> >> >> +             poke32(CRT_HORIZONTAL_TOTAL, temp);
> >> >> +
> >> >> +             unsigned int a = (pModeParam->horizontal_sync_width <<
> >> >> +                             CRT_HORIZONTAL_SYNC_WIDTH_SHIFT);
> >> >> +             unsigned int b = a & CRT_HORIZONTAL_SYNC_WIDTH_MASK;
> >> >> +             unsigned int c = (pModeParam->horizontal_sync_start -
> 1)
> >> >> &
> >> >> +                             CRT_HORIZONTAL_SYNC_START_MASK;
> >> >> +             unsigned int temp = b | c;
> >> >
> >> > This is back to the original incorrect solution.  You can't declare
> >> > variables on the fly in Linux code.  Variables have to be declared at
> >> > the
> >> > top of a block.
> >>
> >> Arushi: have you tried to compile this?
> >
> > Yes.
> > It's not showing any error.
>
> No, not an error.
>
> > Is it not fine when you compiled :( ?
>
>  But you did introduce warnings, like:
>
>
drivers/staging/sm750fb/ddk750_mode.c: In function 'programModeRegisters':
> drivers/staging/sm750fb/ddk750_mode.c:87:3: warning: ISO C90 forbids
> mixed declarations and code [-Wdeclaration-after-statement]
>
> No
Arushi

> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 --
> geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker.
> But
> when I'm talking to journalists I just say "programmer" or something like
> that.
>                                 -- Linus Torvalds
>

--f403045f80f866eeb3054b17caa1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Mar 19, 2017 at 9:35 PM, Geert Uytterhoeven <span dir=3D"ltr">&=
lt;<a href=3D"mailto:geert@linux-m68k.org" target=3D"_blank">geert@linux-m6=
8k.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=
=3D"HOEnZb"><div class=3D"h5">On Sun, Mar 19, 2017 at 4:52 PM, Arushi Singh=
al<br>
&lt;<a href=3D"mailto:arushisinghal19971997@gmail.com">arushisinghal1997199=
7@gmail.<wbr>com</a>&gt; wrote:<br>
&gt; On Sun, Mar 19, 2017 at 7:34 PM, Geert Uytterhoeven &lt;<a href=3D"mai=
lto:geert@linux-m68k.org">geert@linux-m68k.org</a>&gt;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Sun, Mar 19, 2017 at 2:11 PM, Julia Lawall &lt;<a href=3D"mailt=
o:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt; &gt; On Sun, 19 Mar 2017, Arushi Singhal wrote:<br>
&gt;&gt; &gt;&gt; New variables are added to make the code more readable.<b=
r>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Signed-off-by: Arushi Singhal &lt;<a href=3D"mailto:arush=
isinghal19971997@gmail.com">arushisinghal19971997@gmail.<wbr>com</a>&gt;<br=
>
&gt;&gt; &gt;&gt; ---<br>
&gt;&gt; &gt;&gt;=C2=A0 changes in v3<br>
&gt;&gt; &gt;&gt;=C2=A0 -try to make the code much more readable.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;=C2=A0 drivers/staging/sm750fb/<wbr>ddk750_mode.c | 61<br>
&gt;&gt; &gt;&gt; ++++++++++++++++++++----------<wbr>-----<br>
&gt;&gt; &gt;&gt;=C2=A0 1 file changed, 35 insertions(+), 26 deletions(-)<b=
r>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; diff --git a/drivers/staging/sm750fb/<wbr>ddk750_mode.c<b=
r>
&gt;&gt; &gt;&gt; b/drivers/staging/sm750fb/<wbr>ddk750_mode.c<br>
&gt;&gt; &gt;&gt; index eea5aef2956f..5f18ce4d10de 100644<br>
&gt;&gt; &gt;&gt; --- a/drivers/staging/sm750fb/<wbr>ddk750_mode.c<br>
&gt;&gt; &gt;&gt; +++ b/drivers/staging/sm750fb/<wbr>ddk750_mode.c<br>
&gt;&gt; &gt;&gt; @@ -81,33 +81,42 @@ static int programModeRegisters(mode_=
<wbr>parameter_t<br>
&gt;&gt; &gt;&gt; *pModeParam, struct pll_value *<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (pll-&gt;clockType =3D=3D SE=
CONDARY_PLL) {<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* =
programe secondary pixel clock */<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pok=
e32(CRT_PLL_CTRL, sm750_format_pll_reg(pll));<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0poke32(C=
RT_HORIZONTAL_TOTAL,<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (((pModeParam-&gt;horizontal_<wbr>total - 1) &lt;&lt;<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 CRT_HORIZONTAL_TOTAL_TOTAL_<wbr>SHIFT) &amp;<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0CRT_HORIZONTAL_TOTAL_TOTAL_<wbr>MASK) |<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 ((pModeParam-&gt;horizontal_<wbr>display_end - 1) &amp;<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0CRT_HORIZONTAL_TOTAL_DISPLAY_<wbr>END_MASK));<br>
&gt;&gt; &gt;&gt; -<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0poke32(C=
RT_HORIZONTAL_SYNC,<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 ((pModeParam-&gt;horizontal_sync_<wbr>width &lt;&lt;<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 CRT_HORIZONTAL_SYNC_WIDTH_<wbr>SHIFT) &amp;<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0CRT_HORIZONTAL_SYNC_WIDTH_<wbr>MASK) |<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 ((pModeParam-&gt;horizontal_sync_<wbr>start - 1) &amp;<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0CRT_HORIZONTAL_SYNC_START_<wbr>MASK));<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0poke32(C=
RT_VERTICAL_TOTAL,<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (((pModeParam-&gt;vertical_total - 1) &lt;&lt;<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 CRT_VERTICAL_TOTAL_TOTAL_<wbr>SHIFT) &amp;<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0CRT_VERTICAL_TOTAL_TOTAL_MASK) |<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 ((pModeParam-&gt;vertical_<wbr>display_end - 1) &amp;<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0CRT_VERTICAL_TOTAL_DISPLAY_<wbr>END_MASK));<br>
&gt;&gt; &gt;&gt; -<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0poke32(C=
RT_VERTICAL_SYNC,<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 ((pModeParam-&gt;vertical_sync_<wbr>height &lt;&lt;<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 CRT_VERTICAL_SYNC_HEIGHT_<wbr>SHIFT) &amp;<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0CRT_VERTICAL_SYNC_HEIGHT_MASK) |<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 ((pModeParam-&gt;vertical_sync_<wbr>start - 1) &amp;<br>
&gt;&gt; &gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0CRT_VERTICAL_SYNC_START_MASK))<wbr>;<br>
&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned=
 int a =3D (pModeParam-&gt;horizontal_total - 1) &lt;&lt;<br>
&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CRT_HORIZONTAL_TOTAL_TOTAL_=
<wbr>SHIFT;<br>
&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned=
 int b =3D a &amp; CRT_HORIZONTAL_TOTAL_TOTAL_<wbr>MASK;<br>
&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned=
 int c =3D (pModeParam-&gt;horizontal_<wbr>display_end - 1)<br>
&gt;&gt; &gt;&gt; &amp;<br>
&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CRT_HORIZONTAL_TOTAL_DISPLA=
Y_<wbr>END_MASK;<br>
&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned=
 int temp =3D b | c;<br>
&gt;&gt; &gt;&gt; +<br>
&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0poke32(C=
RT_HORIZONTAL_TOTAL, temp);<br>
&gt;&gt; &gt;&gt; +<br>
&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned=
 int a =3D (pModeParam-&gt;horizontal_sync_<wbr>width &lt;&lt;<br>
&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CRT_HORIZONTAL_SYNC_WIDTH_<=
wbr>SHIFT);<br>
&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned=
 int b =3D a &amp; CRT_HORIZONTAL_SYNC_WIDTH_<wbr>MASK;<br>
&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned=
 int c =3D (pModeParam-&gt;horizontal_sync_<wbr>start - 1)<br>
&gt;&gt; &gt;&gt; &amp;<br>
&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CRT_HORIZONTAL_SYNC_START_<=
wbr>MASK;<br>
&gt;&gt; &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned=
 int temp =3D b | c;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; This is back to the original incorrect solution.=C2=A0 You ca=
n&#39;t declare<br>
&gt;&gt; &gt; variables on the fly in Linux code.=C2=A0 Variables have to b=
e declared at<br>
&gt;&gt; &gt; the<br>
&gt;&gt; &gt; top of a block.<br>
&gt;&gt;<br>
&gt;&gt; Arushi: have you tried to compile this?<br>
&gt;<br>
&gt; Yes.<br>
&gt; It&#39;s not showing any error.<br>
<br>
</div></div>No, not an error.<br>
<span class=3D""><br>
&gt; Is it not fine when you compiled :( ?<br>
<br>
</span>=C2=A0But you did introduce warnings, like:<br>=C2=A0
<br></blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">
drivers/staging/sm750fb/<wbr>ddk750_mode.c: In function &#39;programModeReg=
isters&#39;:<br>
drivers/staging/sm750fb/<wbr>ddk750_mode.c:87:3: warning: ISO C90 forbids<b=
r>
mixed declarations and code [-Wdeclaration-after-<wbr>statement]<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div>N=
o<br></div><div>Arushi <br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=
=3D"HOEnZb"><div class=3D"h5">
Gr{oetje,eeting}s,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Geert<br>
<br>
--<br>
Geert Uytterhoeven -- There&#39;s lots of Linux beyond ia32 -- <a href=3D"m=
ailto:geert@linux-m68k.org">geert@linux-m68k.org</a><br>
<br>
In personal conversations with technical people, I call myself a hacker. Bu=
t<br>
when I&#39;m talking to journalists I just say &quot;programmer&quot; or so=
mething like that.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -- Linus Torvalds<br>
</div></div></blockquote></div><br></div></div>

--f403045f80f866eeb3054b17caa1--

