X-GM-THRID: 6466273176803344384
X-Received: by 10.101.82.9 with SMTP id o9mr17269622pgp.14.1505553498196;
        Sat, 16 Sep 2017 02:18:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.7.66 with SMTP id f63ls673062itf.8.canary-gmail; Sat, 16
 Sep 2017 02:18:17 -0700 (PDT)
X-Received: by 10.159.246.5 with SMTP id b5mr4815390pls.26.1505553497477;
        Sat, 16 Sep 2017 02:18:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505553497; cv=none;
        d=google.com; s=arc-20160816;
        b=EVYuquO+evGrApFQ5irbexKcNQtbalVOonE12KsfOjqLaKwLReMPY4PqHBUunrO94c
         wGikOhJMAEY9dvDdUyjnZQYPR0pLHCOx8yw4O/OCN6dj64hZxOpt97U3DonzH+0umu8c
         62b1GixbtuAJIae37POxDeNTIB1y6684p0vDZNZkqVoeaWBLss5NUSIux8Ib27hurXGf
         +40E8v8vOiA052AyEZnKtaZ8EmDT4XmAL1u6U9Av/cNR8Oyadhwfmag5U34mEYGQLhk0
         G3QZPZ2vjzyFVsoTmAwLHShjRJSDWyDMkZLcpQLFZjxafdEdQgQWBuZrYbZrF087Ntmi
         NiJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=G8D1BY7RQE5XCSBgcNUufPtTtcPj1yFNo07QT/We42Y=;
        b=n6kkFplLVmZ6xNsJZ7SbZhxyTY1buWjHhpvfT/FH+dNraY4U0JIJ09MnAZNkas9B9q
         Y2NjytnTwbrpnrjwv7eW5/DpLrF/NFj3bv/cPJYVGuk7In7OkrZhR9vpcKocObtVFjyh
         neqJiwht4b1BQDR3aXu76T1UA3r+YeXN6yW4/gzr8wS1Wk252D4x9V6px4I63QduEC6u
         rL6wqG2bBpdmNq5wMoBv0wp0E/raZiHbE+FxbHK9Ga4qfAhk6ZMShOMvy1+sGFkxLkSQ
         Qrhk9uia5g8VqvHDD93hqoc+nkzhJ54w0vgKaJ2uvdtNJYadTP+Z5A1IdsIGgK3FzhLA
         rZSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=enyu/2AB;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-ua0-x242.google.com (mail-ua0-x242.google.com. [2607:f8b0:400c:c08::242])
        by gmr-mx.google.com with ESMTPS id w187si112387vkb.4.2017.09.16.02.18.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 02:18:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) client-ip=2607:f8b0:400c:c08::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=enyu/2AB;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x242.google.com with SMTP id g47so1303219uad.2
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 02:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=G8D1BY7RQE5XCSBgcNUufPtTtcPj1yFNo07QT/We42Y=;
        b=enyu/2ABZEIe8qxam2H37wanudQBlUXaEcEelMjuA0oIsfDiM+R74cTjcIMPwx8qIJ
         2tKp1AmOOWa3xwglw1M78EVvffluyYPB3tEcjeqeDuMmGOzLux5B2ZnACXC45Vp2ao4R
         Xn94qz4GZ3Y5TKhJPEpptmUEqi92k1bd2ldBJ3/CAhtUDgJVAtX9bWbCdauCPOZgaxm+
         M0xMVDDJKozVea/bfEovY1p2nJXmLJj/ztWhKt4LXue/gsaV9MtZ+7os9pOId89UwzUn
         MqUbiRaGtT64hAdXcHysCssWWLG2g9IKZSFgNXV1DeS4qk/YB5K92G++RWk/H88Zn1kw
         jqeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=G8D1BY7RQE5XCSBgcNUufPtTtcPj1yFNo07QT/We42Y=;
        b=iiBykpxYTw11JOoMPi1xsgR7NHeAxA1u3RQWh/8VYGsJ9JARbuFTT2shFkvN956Mrk
         tT3w9OZnfkeEpU/7tDHmsNTZdc/RBdtf0k2ao59GBBQruQiVdc6U9FOTRtCM8DAM3nch
         FCV9SfoR/Cb0YdWlV9E1BeS0UnJlIESlEcdEQy0XmAyTcUp/VPQkLxjt993KkrkX/wBC
         ZvdHqGrJyjXgGBWqVIpYVJXydat7XQyYoe8+uc9YjZNkSGHb1UlD9H0hPJMiV8eMHtH1
         Ksz46burBSu5UZSBbp8KP+yM29peWx0C0zVtoKTzsfPyPVEl+xW8pzZnll/YpJEEt7gf
         BZ5g==
X-Gm-Message-State: AHPjjUjs5YzINwsYGEI30kDj5tgGF8QppRsskvozfxxHpbEtyYSuSJr4
	gM/KTDyiRUzXRIE94LqZ7SmGBtivsbbcHpZQAlM4rQ==
X-Google-Smtp-Source: AOwi7QBWXVopSaF6sjWSxVKpjyx6yViV6A9HJ/l4QhOcC9Qg+w627YVeVxAOVTFhxF42chDG3uUcVMxH/jxWoJwpAJg=
X-Received: by 10.176.86.18 with SMTP id y18mr11127400uaa.1.1505553496575;
 Sat, 16 Sep 2017 02:18:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.2.149 with HTTP; Sat, 16 Sep 2017 02:18:16 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709160925230.2943@hadrien>
References: <1505546539-16383-1-git-send-email-aastha.gupta4104@gmail.com> <alpine.DEB.2.20.1709160925230.2943@hadrien>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Sat, 16 Sep 2017 14:48:16 +0530
Message-ID: <CAHXiS59cc-ODm=7VkQq63UQSa41_Fgi1Xk6nmUH6i_E3A3zLoQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging:r8188eu: fix unnecessary line continuations
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On Sat, Sep 16, 2017 at 12:58 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> There should be a space after each : in the subject line.
>
> On Sat, 16 Sep 2017, Aastha Gupta wrote:
>
>> This patch fixes checkpatch.pl warning:
>> WARNING: Avoid unnecessary line continuations
>
> I don't think you have compiled the code, because the line continuations
> look quite necessary.
>
> Note that it is not easy to compile a .h file.  You have to find a .c file
> that includes it and compile that.  There could also be #ifdefs around
> your changed code that causes it not to be compiled even when you do find
> a relevant .c file to check, but that doesn't seem to be the case here.
>
> julia
>

You are right. This isn't compiling. This patch should be dropped.

Aastha

>>
>> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
>> ---
>>  drivers/staging/rtl8188eu/include/pwrseq.h | 180 ++++++++++++++---------------
>>  1 file changed, 90 insertions(+), 90 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8188eu/include/pwrseq.h b/drivers/staging/rtl8188eu/include/pwrseq.h
>> index bd77a50..dbf164c 100644
>> --- a/drivers/staging/rtl8188eu/include/pwrseq.h
>> +++ b/drivers/staging/rtl8188eu/include/pwrseq.h
>> @@ -58,22 +58,22 @@
>>        * { offset, cut_msk, cmd, msk, value
>>        * },
>>        * comment here
>> -      */                                                             \
>> -     {0x0006, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(1), BIT(1)}, \
>> -     /* wait till 0x04[17] = 1    power ready*/      \
>> -     {0x0002, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0) | BIT(1), 0}, \
>> -     /* 0x02[1:0] = 0        reset BB*/                              \
>> -     {0x0026, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), BIT(7)}, \
>> -     /*0x24[23] = 2b'01 schmit trigger */                            \
>> -     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), 0}, \
>> -     /* 0x04[15] = 0 disable HWPDN (control by DRV)*/                \
>> -     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4) | BIT(3), 0}, \
>> -     /*0x04[12:11] = 2b'00 disable WL suspend*/                      \
>> -     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0), BIT(0)}, \
>> -     /*0x04[8] = 1 polling until return 0*/                          \
>> -     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(0), 0}, \
>> -     /*wait till 0x04[8] = 0*/                                       \
>> -     {0x0023, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0}, \
>> +      */
>> +     {0x0006, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(1), BIT(1)},
>> +     /* wait till 0x04[17] = 1    power ready*/
>> +     {0x0002, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0) | BIT(1), 0},
>> +     /* 0x02[1:0] = 0        reset BB*/
>> +     {0x0026, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), BIT(7)},
>> +     /*0x24[23] = 2b'01 schmit trigger */
>> +     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), 0},
>> +     /* 0x04[15] = 0 disable HWPDN (control by DRV)*/
>> +     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4) | BIT(3), 0},
>> +     /*0x04[12:11] = 2b'00 disable WL suspend*/
>> +     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0), BIT(0)},
>> +     /*0x04[8] = 1 polling until return 0*/
>> +     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(0), 0},
>> +     /*wait till 0x04[8] = 0*/
>> +     {0x0023, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0},
>>       /*LDO normal mode*/
>>
>>  #define RTL8188E_TRANS_ACT_TO_CARDEMU                                        \
>> @@ -81,14 +81,14 @@
>>        * { offset, cut_msk, cmd, msk, value
>>        * },
>>        * comments here
>> -      */                                                             \
>> -     {0x001F, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0}, \
>> -     /*0x1F[7:0] = 0 turn off RF*/                                   \
>> -     {0x0023, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), BIT(4)}, \
>> -     /*LDO Sleep mode*/                                              \
>> -     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(1), BIT(1)}, \
>> -     /*0x04[9] = 1 turn off MAC by HW state machine*/                \
>> -     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(1), 0}, \
>> +      */
>> +     {0x001F, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0},
>> +     /*0x1F[7:0] = 0 turn off RF*/
>> +     {0x0023, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), BIT(4)},
>> +     /*LDO Sleep mode*/
>> +     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(1), BIT(1)},
>> +     /*0x04[9] = 1 turn off MAC by HW state machine*/
>> +     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(1), 0},
>>       /*wait till 0x04[9] = 0 polling until return 0 to disable*/
>>
>>  #define RTL8188E_TRANS_CARDEMU_TO_SUS                                        \
>> @@ -96,14 +96,14 @@
>>        * { offset, cut_msk, cmd, msk,
>>        * value },
>>        * comments here
>> -      */                                                             \
>> -     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), BIT(3)}, \
>> -     /* 0x04[12:11] = 2b'01enable WL suspend */                      \
>> -     {0x0007, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, BIT(7)}, \
>> -     /* 0x04[31:30] = 2b'10 enable enable bandgap mbias in suspend */\
>> -     {0x0041, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0}, \
>> -     /*Clear SIC_EN register 0x40[12] = 1'b0 */                      \
>> -     {0xfe10, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), BIT(4)}, \
>> +      */
>> +     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), BIT(3)},
>> +     /* 0x04[12:11] = 2b'01enable WL suspend */
>> +     {0x0007, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, BIT(7)},
>> +     /* 0x04[31:30] = 2b'10 enable enable bandgap mbias in suspend */
>> +     {0x0041, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0},
>> +     /*Clear SIC_EN register 0x40[12] = 1'b0 */
>> +     {0xfe10, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), BIT(4)},
>>       /*Set USB suspend enable local register  0xfe10[4]=1 */
>>
>>  #define RTL8188E_TRANS_SUS_TO_CARDEMU                                        \
>> @@ -111,8 +111,8 @@
>>        * { offset, cut_msk, cmd, msk,
>>        * value },
>>        * comments here
>> -      */                                                             \
>> -     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), 0}, \
>> +      */
>> +     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), 0},
>>       /*0x04[12:11] = 2b'01enable WL suspend*/
>>
>>  #define RTL8188E_TRANS_CARDEMU_TO_CARDDIS                            \
>> @@ -120,16 +120,16 @@
>>        * { offset, cut_msk, cmd, msk,
>>        * value },
>>        * comments here
>> -      */                                                             \
>> -     {0x0026, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), BIT(7)}, \
>> -     /*0x24[23] = 2b'01 schmit trigger */                            \
>> -     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), BIT(3)}, \
>> -     /*0x04[12:11] = 2b'01 enable WL suspend*/                       \
>> -     {0x0007, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0}, \
>> -     /* 0x04[31:30] = 2b'10 enable enable bandgap mbias in suspend */\
>> -     {0x0041, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0}, \
>> -     /*Clear SIC_EN register 0x40[12] = 1'b0 */                      \
>> -     {0xfe10, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), BIT(4)}, \
>> +      */
>> +     {0x0026, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), BIT(7)},
>> +     /*0x24[23] = 2b'01 schmit trigger */
>> +     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), BIT(3)},
>> +     /*0x04[12:11] = 2b'01 enable WL suspend*/
>> +     {0x0007, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0},
>> +     /* 0x04[31:30] = 2b'10 enable enable bandgap mbias in suspend */
>> +     {0x0041, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0},
>> +     /*Clear SIC_EN register 0x40[12] = 1'b0 */
>> +     {0xfe10, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), BIT(4)},
>>       /*Set USB suspend enable local register  0xfe10[4]=1 */
>>
>>  #define RTL8188E_TRANS_CARDDIS_TO_CARDEMU                            \
>> @@ -137,8 +137,8 @@
>>        * { offset, cut_msk, cmd, msk,
>>        * value },
>>        * comments here
>> -      */                                                             \
>> -     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), 0}, \
>> +      */
>> +     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), 0},
>>       /*0x04[12:11] = 2b'01enable WL suspend*/
>>
>>  #define RTL8188E_TRANS_CARDEMU_TO_PDN                                        \
>> @@ -146,10 +146,10 @@
>>        * { offset, cut_msk, cmd, msk,
>>        * value },
>>        * comments here
>> -      */                                                             \
>> -     {0x0006, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0), 0}, \
>> -     /* 0x04[16] = 0*/                                               \
>> -     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), BIT(7)}, \
>> +      */
>> +     {0x0006, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0), 0},
>> +     /* 0x04[16] = 0*/
>> +     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), BIT(7)},
>>       /* 0x04[15] = 1*/
>>
>>  #define RTL8188E_TRANS_PDN_TO_CARDEMU                                        \
>> @@ -157,8 +157,8 @@
>>        * { offset, cut_msk, cmd, msk,
>>        * value },
>>        * comments here
>> -      */                                                             \
>> -     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), 0}, \
>> +      */
>> +     {0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), 0},
>>       /* 0x04[15] = 0*/
>>
>>  /* This is used by driver for LPSRadioOff Procedure, not for FW LPS Step */
>> @@ -167,25 +167,25 @@
>>        * { offset, cut_msk, cmd, msk,
>>        * value },
>>        * comments here
>> -      */                                                             \
>> -     {0x0522, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0x7F},/*Tx Pause*/ \
>> -     {0x05F8, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0}, \
>> -     /*Should be zero if no packet is transmitting*/                 \
>> -     {0x05F9, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0}, \
>> -     /*Should be zero if no packet is transmitting*/                 \
>> -     {0x05FA, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0}, \
>> -     /*Should be zero if no packet is transmitting*/                 \
>> -     {0x05FB, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0}, \
>> -     /*Should be zero if no packet is transmitting*/                 \
>> -     {0x0002, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0), 0}, \
>> -     /*CCK and OFDM are disabled,and clock are gated*/               \
>> -     {0x0002, PWR_CUT_ALL_MSK, PWR_CMD_DELAY, 0,     PWRSEQ_DELAY_US}, \
>> -     /*Delay 1us*/ \
>> -     {0x0100, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0x3F}, \
>> -     /*Reset MAC TRX*/ \
>> -     {0x0101, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(1), 0}, \
>> -     /*check if removed later*/\
>> -     {0x0553, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(5), BIT(5)}, \
>> +      */
>> +     {0x0522, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0x7F},/*Tx Pause*/
>> +     {0x05F8, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0},
>> +     /*Should be zero if no packet is transmitting*/
>> +     {0x05F9, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0},
>> +     /*Should be zero if no packet is transmitting*/
>> +     {0x05FA, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0},
>> +     /*Should be zero if no packet is transmitting*/
>> +     {0x05FB, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0},
>> +     /*Should be zero if no packet is transmitting*/
>> +     {0x0002, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0), 0},
>> +     /*CCK and OFDM are disabled,and clock are gated*/
>> +     {0x0002, PWR_CUT_ALL_MSK, PWR_CMD_DELAY, 0,     PWRSEQ_DELAY_US},
>> +     /*Delay 1us*/
>> +     {0x0100, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0x3F},
>> +     /*Reset MAC TRX*/
>> +     {0x0101, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(1), 0},
>> +     /*check if removed later*/
>> +     {0x0553, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(5), BIT(5)},
>>       /*Respond TxOK to scheduler*/
>>
>>
>> @@ -194,24 +194,24 @@
>>        * { offset, cut_msk, cmd, msk,
>>        * value },
>>        * comments here
>> -      */                                                             \
>> -     {0xFE58, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0x84}, \
>> -     /*USB RPWM*/    \
>> -     {0x0002, PWR_CUT_ALL_MSK, PWR_CMD_DELAY, 0, PWRSEQ_DELAY_MS}, \
>> -     /*Delay*/       \
>> -     {0x0008, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0}, \
>> -     /* 0x08[4] = 0 switch TSF to 40M */                             \
>> -     {0x0109, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(7), 0}, \
>> -     /* Polling 0x109[7]=0  TSF in 40M */                            \
>> -     {0x0029, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(6) | BIT(7), 0}, \
>> -     /* 0x29[7:6] = 2b'00  enable BB clock */                        \
>> -     {0x0101, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(1), BIT(1)}, \
>> -     /* 0x101[1] = 1 */                                              \
>> -     {0x0100, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0xFF}, \
>> -     /* 0x100[7:0] = 0xFF enable WMAC TRX */                         \
>> -     {0x0002, PWR_CUT_ALL_MSK, \
>> -     PWR_CMD_WRITE, BIT(1) | BIT(0), BIT(1) | BIT(0)}, \
>> -     /* 0x02[1:0] = 2b'11 enable BB macro */                         \
>> +      */
>> +     {0xFE58, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0x84},
>> +     /*USB RPWM*/
>> +     {0x0002, PWR_CUT_ALL_MSK, PWR_CMD_DELAY, 0, PWRSEQ_DELAY_MS},
>> +     /*Delay*/
>> +     {0x0008, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0},
>> +     /* 0x08[4] = 0 switch TSF to 40M */
>> +     {0x0109, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(7), 0},
>> +     /* Polling 0x109[7]=0  TSF in 40M */
>> +     {0x0029, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(6) | BIT(7), 0},
>> +     /* 0x29[7:6] = 2b'00  enable BB clock */
>> +     {0x0101, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(1), BIT(1)},
>> +     /* 0x101[1] = 1 */
>> +     {0x0100, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0xFF},
>> +     /* 0x100[7:0] = 0xFF enable WMAC TRX */
>> +     {0x0002, PWR_CUT_ALL_MSK,
>> +     PWR_CMD_WRITE, BIT(1) | BIT(0), BIT(1) | BIT(0)},
>> +     /* 0x02[1:0] = 2b'11 enable BB macro */
>>       {0x0522, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0}, /*.  0x522 = 0*/
>>
>>  #define RTL8188E_TRANS_END                                           \
>> @@ -219,7 +219,7 @@
>>        * { offset, cut_msk, cmd, msk,
>>        * value },
>>        * comments here
>> -      */                                                             \
>> +      */
>>       {0xFFFF, PWR_CUT_ALL_MSK, PWR_CMD_END, 0, 0},
>>
>>
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505546539-16383-1-git-send-email-aastha.gupta4104%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

