X-GM-THRID: 6399195765741191168
X-Received: by 10.157.20.163 with SMTP id d32mr11152314ote.1.1489932251250;
        Sun, 19 Mar 2017 07:04:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.170 with SMTP id 39ls11896075otj.6.gmail; Sun, 19 Mar
 2017 07:04:10 -0700 (PDT)
X-Received: by 10.129.158.213 with SMTP id v204mr12900423ywg.70.1489932250719;
        Sun, 19 Mar 2017 07:04:10 -0700 (PDT)
Return-Path: <geert.uytterhoeven@gmail.com>
Received: from mail-it0-x243.google.com (mail-it0-x243.google.com. [2607:f8b0:4001:c0b::243])
        by gmr-mx.google.com with ESMTPS id p186si231533itc.2.2017.03.19.07.04.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 07:04:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) client-ip=2607:f8b0:4001:c0b::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: by mail-it0-x243.google.com with SMTP id 190so1812399itm.3
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 07:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=frkjgjzON6YKUuJQ5STra151BmbP9hNK6Az7162uVUE=;
        b=juRfnRWQYQURf+oyNs78qHdqjeCmOi2s8/vKoUxjpZHM8dOtvLrCNaMD2E36vKamj9
         xhk60bu0aAJVATiU1OiUpXbc3MTzBZMD3hdBHpLbL2+uAKocAv/XkMtkdIpVIBaiPeqe
         4qf0F/HVqQ/UypRnJ36NeAsTPRr6loZQdoHryLX/P0RnC+hB3ETBc2ngD2kzTyjdZsR7
         ++sDFvyFojh+3j+k7bWe5jXFcPwlh8Iu4dkyDnt6VtLvMOASAHqN+KMIFcGguXypx18Z
         eClud9hY2Qqe7nyNQ9XLv7f/SOkPELQXUf0ecQWJwvRz6epx6QLe4M+lbKDSszrT4ydS
         wqBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc;
        bh=frkjgjzON6YKUuJQ5STra151BmbP9hNK6Az7162uVUE=;
        b=LB2u20OiVWMaFhWPnExNaMxJlCFp/rYjChGR33iURghafvOtHIdfypK4MJ954vO4xS
         LaVAMdSz4OrTRZAGD/rKLHPsWCSi/B+YaVa12H5LIltcxk76oLZbvnfNCpuLTq3ZDlYK
         UnJuZkAk0N2ksR5T1zoZcHUZIw7aAl9IqV8OCroWc+FBptG9XA/eB4fnIDFL+81TYubY
         A+DujD/qwMsn4mZF0bFMIFjNkDbObt/cpsJ4gAS9RDWIW9F3uW5S8bETz5omBMeHP8rH
         wxgirjF7zG6L69tUlL+JnTnhMGj947diqPvW2CDBLzpe7yhDyGLEOQbyGIuPuy5C5EOr
         SCzA==
X-Gm-Message-State: AFeK/H0JIIMdw+Nns/oJNwakUJmIEOVN1eUpF4H2q5hrxX4jHV5bbFNhKS5hmaBPh1m7gZPwMoyQRRFg3lLUxw==
X-Received: by 10.107.132.140 with SMTP id o12mr21830085ioi.181.1489932250442;
 Sun, 19 Mar 2017 07:04:10 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
Received: by 10.107.137.65 with HTTP; Sun, 19 Mar 2017 07:04:09 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1703191409140.2108@hadrien>
References: <20170319130744.GA24605@arushi-HP-Pavilion-Notebook> <alpine.DEB.2.20.1703191409140.2108@hadrien>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Sun, 19 Mar 2017 15:04:09 +0100
X-Google-Sender-Auth: Zg-S5tjyAdmHyewTKnKP1JRdpjM
Message-ID: <CAMuHMdU_jvNSbi5mfexMZHjvXqny6v+3F4Cc_OCTpD0jngWaQQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: sm750fb: Code readability
 is improved
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Arushi Singhal <arushisinghal19971997@gmail.com>, 
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>, Teddy Wang <teddy.wang@siliconmotion.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Linux Fbdev development list <linux-fbdev@vger.kernel.org>, driverdevel <devel@driverdev.osuosl.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 19, 2017 at 2:11 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sun, 19 Mar 2017, Arushi Singhal wrote:
>> New variables are added to make the code more readable.
>>
>> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
>> ---
>>  changes in v3
>>  -try to make the code much more readable.
>>
>>  drivers/staging/sm750fb/ddk750_mode.c | 61 ++++++++++++++++++++---------------
>>  1 file changed, 35 insertions(+), 26 deletions(-)
>>
>> diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
>> index eea5aef2956f..5f18ce4d10de 100644
>> --- a/drivers/staging/sm750fb/ddk750_mode.c
>> +++ b/drivers/staging/sm750fb/ddk750_mode.c
>> @@ -81,33 +81,42 @@ static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value *
>>       if (pll->clockType == SECONDARY_PLL) {
>>               /* programe secondary pixel clock */
>>               poke32(CRT_PLL_CTRL, sm750_format_pll_reg(pll));
>> -             poke32(CRT_HORIZONTAL_TOTAL,
>> -                    (((pModeParam->horizontal_total - 1) <<
>> -                      CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
>> -                     CRT_HORIZONTAL_TOTAL_TOTAL_MASK) |
>> -                    ((pModeParam->horizontal_display_end - 1) &
>> -                     CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK));
>> -
>> -             poke32(CRT_HORIZONTAL_SYNC,
>> -                    ((pModeParam->horizontal_sync_width <<
>> -                      CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) &
>> -                     CRT_HORIZONTAL_SYNC_WIDTH_MASK) |
>> -                    ((pModeParam->horizontal_sync_start - 1) &
>> -                     CRT_HORIZONTAL_SYNC_START_MASK));
>>
>> -             poke32(CRT_VERTICAL_TOTAL,
>> -                    (((pModeParam->vertical_total - 1) <<
>> -                      CRT_VERTICAL_TOTAL_TOTAL_SHIFT) &
>> -                     CRT_VERTICAL_TOTAL_TOTAL_MASK) |
>> -                    ((pModeParam->vertical_display_end - 1) &
>> -                     CRT_VERTICAL_TOTAL_DISPLAY_END_MASK));
>> -
>> -             poke32(CRT_VERTICAL_SYNC,
>> -                    ((pModeParam->vertical_sync_height <<
>> -                      CRT_VERTICAL_SYNC_HEIGHT_SHIFT) &
>> -                     CRT_VERTICAL_SYNC_HEIGHT_MASK) |
>> -                    ((pModeParam->vertical_sync_start - 1) &
>> -                     CRT_VERTICAL_SYNC_START_MASK));
>> +             unsigned int a = (pModeParam->horizontal_total - 1) <<
>> +                             CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT;
>> +             unsigned int b = a & CRT_HORIZONTAL_TOTAL_TOTAL_MASK;
>> +             unsigned int c = (pModeParam->horizontal_display_end - 1) &
>> +                             CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK;
>> +             unsigned int temp = b | c;
>> +
>> +             poke32(CRT_HORIZONTAL_TOTAL, temp);
>> +
>> +             unsigned int a = (pModeParam->horizontal_sync_width <<
>> +                             CRT_HORIZONTAL_SYNC_WIDTH_SHIFT);
>> +             unsigned int b = a & CRT_HORIZONTAL_SYNC_WIDTH_MASK;
>> +             unsigned int c = (pModeParam->horizontal_sync_start - 1) &
>> +                             CRT_HORIZONTAL_SYNC_START_MASK;
>> +             unsigned int temp = b | c;
>
> This is back to the original incorrect solution.  You can't declare
> variables on the fly in Linux code.  Variables have to be declared at the
> top of a block.

Arushi: have you tried to compile this?

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

