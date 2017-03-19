X-GM-THRID: 6399195765741191168
X-Received: by 10.157.56.39 with SMTP id i36mr11224111otc.71.1489939528999;
        Sun, 19 Mar 2017 09:05:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.218 with SMTP id i26ls11864067ote.48.gmail; Sun, 19 Mar
 2017 09:05:28 -0700 (PDT)
X-Received: by 10.200.54.238 with SMTP id b43mr2917820qtc.75.1489939528501;
        Sun, 19 Mar 2017 09:05:28 -0700 (PDT)
Return-Path: <geert.uytterhoeven@gmail.com>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id a17si1065744itd.1.2017.03.19.09.05.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 09:05:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: by mail-it0-x244.google.com with SMTP id g138so12580858itb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 09:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=Q2+HPr8CrmUh06B2KW/z6fkIqz1j3jOHgHAbqDKhgdQ=;
        b=DbD08VZRlgJxyZ8oVU7O+ilB93H8etrmeLtbYwSyxGOi2IVntfRmoHMPaODhcy99tt
         5KWK94XRXr7pw7Fa1Vr/TgrzJQ4/QM62bomdzBj10jsdVuh2s/yFTE0TNpmwoXTP5Re2
         dT+knGjA+Y7uI8hENNFOeKuW+alrjfArbtSPCODpSmmT+nxAfmeiLKpfZWQdFkzEzoHu
         ZcEw7qpHekwO6WB9hv6Eaj2UZckhy+sVb64Lj5S332sRoHXW6xWXZdxWPhUepXcvnO3x
         gUAUPeZze+cfibUPwD9r9wibAzhyyn7Xlc6qQNBMLtrNpVuu0bCDFz5rNoLwOQS/5o3h
         dqWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc;
        bh=Q2+HPr8CrmUh06B2KW/z6fkIqz1j3jOHgHAbqDKhgdQ=;
        b=pBX8Vv3sUo8LSFwadgfG8RCNejBuz566bDoW1FdTlA78H9k5+lNTExK11+ZATCbiVt
         6RB3RY+150rl3plpPcfvpbCVyyw2XUlLS0pmFPrCsR77H10BoGfU8nkr/aiAwMQy3OBy
         5HOHYroijmHZti2jSkDrN5TmKnXdPhUcyMav+j4hBqtWjCC6A+o3grgIkBtbVnLV6WA5
         y9BtrqXfEHA7q93Ipyj54k3rH527r80CYmbPuA3XoaQIBKho4ITCPb7CsDQIgZcfBjUU
         pP7ckQNLxKSdfoZDr/I/ETEK+GSL0jIOCisuIW+Duux6LwV/8PENYNlmj4X/wfvP8MkD
         PjAw==
X-Gm-Message-State: AFeK/H0RWyqg0s5hvqsohxVCRvdazM9zV1ApACAdrNY5uJ485THz8H4l/eL5FTwXIgdcrLpFheVClFZcZuvINg==
X-Received: by 10.36.122.208 with SMTP id a199mr6804255itc.74.1489939528112;
 Sun, 19 Mar 2017 09:05:28 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
Received: by 10.107.137.65 with HTTP; Sun, 19 Mar 2017 09:05:26 -0700 (PDT)
In-Reply-To: <CA+XqjF87GbaU4jkF1cCskbLnf=ev5vYHmB67gOrApg9vOgYEsQ@mail.gmail.com>
References: <20170319130744.GA24605@arushi-HP-Pavilion-Notebook>
 <alpine.DEB.2.20.1703191409140.2108@hadrien> <CAMuHMdU_jvNSbi5mfexMZHjvXqny6v+3F4Cc_OCTpD0jngWaQQ@mail.gmail.com>
 <CA+XqjF87GbaU4jkF1cCskbLnf=ev5vYHmB67gOrApg9vOgYEsQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Sun, 19 Mar 2017 17:05:26 +0100
X-Google-Sender-Auth: _Cn9r7SqWgrdaYgRhWUppj867iM
Message-ID: <CAMuHMdWy7HVbvKqGyuQ2bRLTfS_hMZt54-eJttZ91cTkNnzpGA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: sm750fb: Code readability
 is improved
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
	Teddy Wang <teddy.wang@siliconmotion.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Linux Fbdev development list <linux-fbdev@vger.kernel.org>, driverdevel <devel@driverdev.osuosl.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 19, 2017 at 4:52 PM, Arushi Singhal
<arushisinghal19971997@gmail.com> wrote:
> On Sun, Mar 19, 2017 at 7:34 PM, Geert Uytterhoeven <geert@linux-m68k.org>
> wrote:
>>
>> On Sun, Mar 19, 2017 at 2:11 PM, Julia Lawall <julia.lawall@lip6.fr>
>> wrote:
>> > On Sun, 19 Mar 2017, Arushi Singhal wrote:
>> >> New variables are added to make the code more readable.
>> >>
>> >> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
>> >> ---
>> >>  changes in v3
>> >>  -try to make the code much more readable.
>> >>
>> >>  drivers/staging/sm750fb/ddk750_mode.c | 61
>> >> ++++++++++++++++++++---------------
>> >>  1 file changed, 35 insertions(+), 26 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/sm750fb/ddk750_mode.c
>> >> b/drivers/staging/sm750fb/ddk750_mode.c
>> >> index eea5aef2956f..5f18ce4d10de 100644
>> >> --- a/drivers/staging/sm750fb/ddk750_mode.c
>> >> +++ b/drivers/staging/sm750fb/ddk750_mode.c
>> >> @@ -81,33 +81,42 @@ static int programModeRegisters(mode_parameter_t
>> >> *pModeParam, struct pll_value *
>> >>       if (pll->clockType == SECONDARY_PLL) {
>> >>               /* programe secondary pixel clock */
>> >>               poke32(CRT_PLL_CTRL, sm750_format_pll_reg(pll));
>> >> -             poke32(CRT_HORIZONTAL_TOTAL,
>> >> -                    (((pModeParam->horizontal_total - 1) <<
>> >> -                      CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
>> >> -                     CRT_HORIZONTAL_TOTAL_TOTAL_MASK) |
>> >> -                    ((pModeParam->horizontal_display_end - 1) &
>> >> -                     CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK));
>> >> -
>> >> -             poke32(CRT_HORIZONTAL_SYNC,
>> >> -                    ((pModeParam->horizontal_sync_width <<
>> >> -                      CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) &
>> >> -                     CRT_HORIZONTAL_SYNC_WIDTH_MASK) |
>> >> -                    ((pModeParam->horizontal_sync_start - 1) &
>> >> -                     CRT_HORIZONTAL_SYNC_START_MASK));
>> >>
>> >> -             poke32(CRT_VERTICAL_TOTAL,
>> >> -                    (((pModeParam->vertical_total - 1) <<
>> >> -                      CRT_VERTICAL_TOTAL_TOTAL_SHIFT) &
>> >> -                     CRT_VERTICAL_TOTAL_TOTAL_MASK) |
>> >> -                    ((pModeParam->vertical_display_end - 1) &
>> >> -                     CRT_VERTICAL_TOTAL_DISPLAY_END_MASK));
>> >> -
>> >> -             poke32(CRT_VERTICAL_SYNC,
>> >> -                    ((pModeParam->vertical_sync_height <<
>> >> -                      CRT_VERTICAL_SYNC_HEIGHT_SHIFT) &
>> >> -                     CRT_VERTICAL_SYNC_HEIGHT_MASK) |
>> >> -                    ((pModeParam->vertical_sync_start - 1) &
>> >> -                     CRT_VERTICAL_SYNC_START_MASK));
>> >> +             unsigned int a = (pModeParam->horizontal_total - 1) <<
>> >> +                             CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT;
>> >> +             unsigned int b = a & CRT_HORIZONTAL_TOTAL_TOTAL_MASK;
>> >> +             unsigned int c = (pModeParam->horizontal_display_end - 1)
>> >> &
>> >> +                             CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK;
>> >> +             unsigned int temp = b | c;
>> >> +
>> >> +             poke32(CRT_HORIZONTAL_TOTAL, temp);
>> >> +
>> >> +             unsigned int a = (pModeParam->horizontal_sync_width <<
>> >> +                             CRT_HORIZONTAL_SYNC_WIDTH_SHIFT);
>> >> +             unsigned int b = a & CRT_HORIZONTAL_SYNC_WIDTH_MASK;
>> >> +             unsigned int c = (pModeParam->horizontal_sync_start - 1)
>> >> &
>> >> +                             CRT_HORIZONTAL_SYNC_START_MASK;
>> >> +             unsigned int temp = b | c;
>> >
>> > This is back to the original incorrect solution.  You can't declare
>> > variables on the fly in Linux code.  Variables have to be declared at
>> > the
>> > top of a block.
>>
>> Arushi: have you tried to compile this?
>
> Yes.
> It's not showing any error.

No, not an error.

> Is it not fine when you compiled :( ?

 But you did introduce warnings, like:

drivers/staging/sm750fb/ddk750_mode.c: In function 'programModeRegisters':
drivers/staging/sm750fb/ddk750_mode.c:87:3: warning: ISO C90 forbids
mixed declarations and code [-Wdeclaration-after-statement]

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

