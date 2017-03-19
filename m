X-GM-THRID: 6399195765741191168
X-Received: by 10.25.22.94 with SMTP id m91mr2851178lfi.14.1489938751196;
        Sun, 19 Mar 2017 08:52:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.164 with SMTP id e36ls253895lji.53.gmail; Sun, 19 Mar
 2017 08:52:30 -0700 (PDT)
X-Received: by 10.25.210.146 with SMTP id j140mr2920043lfg.10.1489938750094;
        Sun, 19 Mar 2017 08:52:30 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id l138si655244wmg.0.2017.03.19.08.52.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 08:52:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id v2so8456147lfi.2
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 08:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ADUvi9MDotvOH94kHOPuxIFhZhKmru8JG7OCKF15vhg=;
        b=n9JAPUMxKnrsEUhNj4pnQGMu7PBWv3YnIJPvLWE8C18+TPMXgpAKydCdwgqpAFamH3
         SCH8LoVY0qo8kbEeIzQOPtpC1PaUTlQOoi9+rhCj17iRpT9igVGXovTeC2bnGXre/KlK
         +TBJr18hEMHx/6EFEGYfdwZ0hLNFB8VZ545gbFbic+v5hELZ45G8rOwdUhX7OUtanXSz
         qOtE4mJQvGkYqnM9Dt3I13lLGObra+Pot0MREtg/0mB7rubUIw37XHmoDjMQ1LJKNlTI
         gJPv3sdQGErdd8y9C75vWXEhgWAAFA+Vl2KXOlZUD5ob8SE+TAMLmuH3TsQ9Jn2vnc0y
         2d3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ADUvi9MDotvOH94kHOPuxIFhZhKmru8JG7OCKF15vhg=;
        b=bz75VXNfwguXXBjkFAOk4gEt7YB95mOAPsvh3xJLLakKlrcLiEi8Sbz8Bm1gu3EQH/
         28nrtF/B1lZPnASkrHsUDFub8OuWvfN4DtFacgV+4IzeGFrfcj3/qzlkPC9qgUOZZEsY
         wg0aevExWAYmLmjZDJHjArhV+O09CyMfJgHfQH3F1hiJ2Gg2SNeGs7rrwioTJGVI/78f
         lyJ9G8KswRoFNo5vmiqp4oKh2xzkPVVO+BW3AAOPnr8mrErsXzzjQllh13xJXAm4wjJ5
         EK2iJw/4lGVN7OxFFfY3skD/0w7ehDZvgVYhSjMUInQMqe759hiLYZi3d9qXHcddtBrG
         dOoA==
X-Gm-Message-State: AFeK/H1w7e/N4WrrVy4Nws8V92miQpGyQKGZggAjLrsfrUmptNQBHeqyQblbGtzQ/8kNQay1aQzVpeZLNIR7JA==
X-Received: by 10.46.87.89 with SMTP id r25mr8212619ljd.31.1489938749503; Sun,
 19 Mar 2017 08:52:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.170.69 with HTTP; Sun, 19 Mar 2017 08:52:28 -0700 (PDT)
In-Reply-To: <CAMuHMdU_jvNSbi5mfexMZHjvXqny6v+3F4Cc_OCTpD0jngWaQQ@mail.gmail.com>
References: <20170319130744.GA24605@arushi-HP-Pavilion-Notebook>
 <alpine.DEB.2.20.1703191409140.2108@hadrien> <CAMuHMdU_jvNSbi5mfexMZHjvXqny6v+3F4Cc_OCTpD0jngWaQQ@mail.gmail.com>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Sun, 19 Mar 2017 21:22:28 +0530
Message-ID: <CA+XqjF87GbaU4jkF1cCskbLnf=ev5vYHmB67gOrApg9vOgYEsQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: sm750fb: Code readability
 is improved
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Julia Lawall <julia.lawall@lip6.fr>, Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
	Teddy Wang <teddy.wang@siliconmotion.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Linux Fbdev development list <linux-fbdev@vger.kernel.org>, driverdevel <devel@driverdev.osuosl.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=f403045f80f8e6bfb2054b1765a2

--f403045f80f8e6bfb2054b1765a2
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 19, 2017 at 7:34 PM, Geert Uytterhoeven <geert@linux-m68k.org>
wrote:

> On Sun, Mar 19, 2017 at 2:11 PM, Julia Lawall <julia.lawall@lip6.fr>
> wrote:
> > On Sun, 19 Mar 2017, Arushi Singhal wrote:
> >> New variables are added to make the code more readable.
> >>
> >> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> >> ---
> >>  changes in v3
> >>  -try to make the code much more readable.
> >>
> >>  drivers/staging/sm750fb/ddk750_mode.c | 61
> ++++++++++++++++++++---------------
> >>  1 file changed, 35 insertions(+), 26 deletions(-)
> >>
> >> diff --git a/drivers/staging/sm750fb/ddk750_mode.c
> b/drivers/staging/sm750fb/ddk750_mode.c
> >> index eea5aef2956f..5f18ce4d10de 100644
> >> --- a/drivers/staging/sm750fb/ddk750_mode.c
> >> +++ b/drivers/staging/sm750fb/ddk750_mode.c
> >> @@ -81,33 +81,42 @@ static int programModeRegisters(mode_parameter_t
> *pModeParam, struct pll_value *
> >>       if (pll->clockType == SECONDARY_PLL) {
> >>               /* programe secondary pixel clock */
> >>               poke32(CRT_PLL_CTRL, sm750_format_pll_reg(pll));
> >> -             poke32(CRT_HORIZONTAL_TOTAL,
> >> -                    (((pModeParam->horizontal_total - 1) <<
> >> -                      CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
> >> -                     CRT_HORIZONTAL_TOTAL_TOTAL_MASK) |
> >> -                    ((pModeParam->horizontal_display_end - 1) &
> >> -                     CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK));
> >> -
> >> -             poke32(CRT_HORIZONTAL_SYNC,
> >> -                    ((pModeParam->horizontal_sync_width <<
> >> -                      CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) &
> >> -                     CRT_HORIZONTAL_SYNC_WIDTH_MASK) |
> >> -                    ((pModeParam->horizontal_sync_start - 1) &
> >> -                     CRT_HORIZONTAL_SYNC_START_MASK));
> >>
> >> -             poke32(CRT_VERTICAL_TOTAL,
> >> -                    (((pModeParam->vertical_total - 1) <<
> >> -                      CRT_VERTICAL_TOTAL_TOTAL_SHIFT) &
> >> -                     CRT_VERTICAL_TOTAL_TOTAL_MASK) |
> >> -                    ((pModeParam->vertical_display_end - 1) &
> >> -                     CRT_VERTICAL_TOTAL_DISPLAY_END_MASK));
> >> -
> >> -             poke32(CRT_VERTICAL_SYNC,
> >> -                    ((pModeParam->vertical_sync_height <<
> >> -                      CRT_VERTICAL_SYNC_HEIGHT_SHIFT) &
> >> -                     CRT_VERTICAL_SYNC_HEIGHT_MASK) |
> >> -                    ((pModeParam->vertical_sync_start - 1) &
> >> -                     CRT_VERTICAL_SYNC_START_MASK));
> >> +             unsigned int a = (pModeParam->horizontal_total - 1) <<
> >> +                             CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT;
> >> +             unsigned int b = a & CRT_HORIZONTAL_TOTAL_TOTAL_MASK;
> >> +             unsigned int c = (pModeParam->horizontal_display_end -
> 1) &
> >> +                             CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK;
> >> +             unsigned int temp = b | c;
> >> +
> >> +             poke32(CRT_HORIZONTAL_TOTAL, temp);
> >> +
> >> +             unsigned int a = (pModeParam->horizontal_sync_width <<
> >> +                             CRT_HORIZONTAL_SYNC_WIDTH_SHIFT);
> >> +             unsigned int b = a & CRT_HORIZONTAL_SYNC_WIDTH_MASK;
> >> +             unsigned int c = (pModeParam->horizontal_sync_start - 1)
> &
> >> +                             CRT_HORIZONTAL_SYNC_START_MASK;
> >> +             unsigned int temp = b | c;
> >
> > This is back to the original incorrect solution.  You can't declare
> > variables on the fly in Linux code.  Variables have to be declared at the
> > top of a block.
>
> Arushi: have you tried to compile this?
>
Yes.
It's not showing any error.
Is it not fine when you compiled :( ?
Arushi

>
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

--f403045f80f8e6bfb2054b1765a2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Mar 19, 2017 at 7:34 PM, Geert Uytterhoeven <span dir=3D"ltr">&=
lt;<a href=3D"mailto:geert@linux-m68k.org" target=3D"_blank">geert@linux-m6=
8k.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=
=3D"HOEnZb"><div class=3D"h5">On Sun, Mar 19, 2017 at 2:11 PM, Julia Lawall=
 &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; w=
rote:<br>
&gt; On Sun, 19 Mar 2017, Arushi Singhal wrote:<br>
&gt;&gt; New variables are added to make the code more readable.<br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: Arushi Singhal &lt;<a href=3D"mailto:arushisinghal1=
9971997@gmail.com">arushisinghal19971997@gmail.<wbr>com</a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 changes in v3<br>
&gt;&gt;=C2=A0 -try to make the code much more readable.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 drivers/staging/sm750fb/<wbr>ddk750_mode.c | 61 ++++++++++++=
++++++++----------<wbr>-----<br>
&gt;&gt;=C2=A0 1 file changed, 35 insertions(+), 26 deletions(-)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/drivers/staging/sm750fb/<wbr>ddk750_mode.c b/drivers/=
staging/sm750fb/<wbr>ddk750_mode.c<br>
&gt;&gt; index eea5aef2956f..5f18ce4d10de 100644<br>
&gt;&gt; --- a/drivers/staging/sm750fb/<wbr>ddk750_mode.c<br>
&gt;&gt; +++ b/drivers/staging/sm750fb/<wbr>ddk750_mode.c<br>
&gt;&gt; @@ -81,33 +81,42 @@ static int programModeRegisters(mode_<wbr>para=
meter_t *pModeParam, struct pll_value *<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (pll-&gt;clockType =3D=3D SECONDARY_P=
LL) {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* programe =
secondary pixel clock */<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0poke32(CRT_P=
LL_CTRL, sm750_format_pll_reg(pll));<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0poke32(CRT_HORIZO=
NTAL_TOTAL,<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 (((pModeParam-&gt;horizontal_<wbr>total - 1) &lt;&lt;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 CRT_HORIZONTAL_TOTAL_TOTAL_<wbr>SHIFT) &amp;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0CRT_HORIZONTAL_TOTAL_TOTAL_<wbr>MASK) |<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ((pModeParam-&gt;horizontal_<wbr>display_end - 1) &amp;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0CRT_HORIZONTAL_TOTAL_DISPLAY_<wbr>END_MASK));<br>
&gt;&gt; -<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0poke32(CRT_HORIZO=
NTAL_SYNC,<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ((pModeParam-&gt;horizontal_sync_<wbr>width &lt;&lt;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 CRT_HORIZONTAL_SYNC_WIDTH_<wbr>SHIFT) &amp;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0CRT_HORIZONTAL_SYNC_WIDTH_<wbr>MASK) |<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ((pModeParam-&gt;horizontal_sync_<wbr>start - 1) &amp;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0CRT_HORIZONTAL_SYNC_START_<wbr>MASK));<br>
&gt;&gt;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0poke32(CRT_VERTIC=
AL_TOTAL,<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 (((pModeParam-&gt;vertical_total - 1) &lt;&lt;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 CRT_VERTICAL_TOTAL_TOTAL_<wbr>SHIFT) &amp;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0CRT_VERTICAL_TOTAL_TOTAL_MASK) |<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ((pModeParam-&gt;vertical_<wbr>display_end - 1) &amp;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0CRT_VERTICAL_TOTAL_DISPLAY_<wbr>END_MASK));<br>
&gt;&gt; -<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0poke32(CRT_VERTIC=
AL_SYNC,<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ((pModeParam-&gt;vertical_sync_<wbr>height &lt;&lt;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 CRT_VERTICAL_SYNC_HEIGHT_<wbr>SHIFT) &amp;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0CRT_VERTICAL_SYNC_HEIGHT_MASK) |<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ((pModeParam-&gt;vertical_sync_<wbr>start - 1) &amp;<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0CRT_VERTICAL_SYNC_START_MASK))<wbr>;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int a =
=3D (pModeParam-&gt;horizontal_total - 1) &lt;&lt;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CRT_HORIZONTAL_TOTAL_TOTAL_<wbr>SH=
IFT;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int b =
=3D a &amp; CRT_HORIZONTAL_TOTAL_TOTAL_<wbr>MASK;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int c =
=3D (pModeParam-&gt;horizontal_<wbr>display_end - 1) &amp;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CRT_HORIZONTAL_TOTAL_DISPLAY_<wbr>=
END_MASK;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int temp=
 =3D b | c;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0poke32(CRT_HORIZO=
NTAL_TOTAL, temp);<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int a =
=3D (pModeParam-&gt;horizontal_sync_<wbr>width &lt;&lt;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CRT_HORIZONTAL_SYNC_WIDTH_<wbr>SHI=
FT);<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int b =
=3D a &amp; CRT_HORIZONTAL_SYNC_WIDTH_<wbr>MASK;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int c =
=3D (pModeParam-&gt;horizontal_sync_<wbr>start - 1) &amp;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CRT_HORIZONTAL_SYNC_START_<wbr>MAS=
K;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int temp=
 =3D b | c;<br>
&gt;<br>
&gt; This is back to the original incorrect solution.=C2=A0 You can&#39;t d=
eclare<br>
&gt; variables on the fly in Linux code.=C2=A0 Variables have to be declare=
d at the<br>
&gt; top of a block.<br>
<br>
</div></div>Arushi: have you tried to compile this?<br></blockquote><div>Ye=
s.<br></div><div>It&#39;s not showing any error.<br></div><div>Is it not fi=
ne when you compiled :( ?<br></div><div>Arushi <br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
<br>
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
</blockquote></div><br></div></div>

--f403045f80f8e6bfb2054b1765a2--

