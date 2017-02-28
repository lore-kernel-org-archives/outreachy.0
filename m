X-GM-THRID: 6391852583766458368
X-Received: by 10.46.88.9 with SMTP id m9mr505594ljb.25.1488309110551;
        Tue, 28 Feb 2017 11:11:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.132.76 with SMTP id g73ls1721625wmd.18.canary-gmail; Tue,
 28 Feb 2017 11:11:49 -0800 (PST)
X-Received: by 10.28.127.146 with SMTP id a140mr2176wmd.8.1488309109567;
        Tue, 28 Feb 2017 11:11:49 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x231.google.com (mail-lf0-x231.google.com. [2a00:1450:4010:c07::231])
        by gmr-mx.google.com with ESMTPS id c188si984586wmd.0.2017.02.28.11.11.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 11:11:49 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::231 as permitted sender) client-ip=2a00:1450:4010:c07::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::231 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x231.google.com with SMTP id y193so9770606lfd.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 11:11:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=oJU2ywHorGmgxAST2IJosLo327GprpFQ94C2dUeBB70=;
        b=pQ+bN6V7PJvuSY4WdGd0oLLCe/KEEX9AkiCgTiBOe1s5UchQxIXhYBbh5nO+hkl9PZ
         BNjDNNda5c1UiSQt5HwZCdgF2NgScV5eooJ17HwiWnIeRvCmIawmRulurHWKx8Srus0G
         T7qTEDfOlrb6JSnTTKl6BfFTeXa2NC1Qw+iyO4vslIhN+66+tw7P953OwEgW/fQ1Yiia
         nf7eLqcQA9hQfyy/4Im4ygyZ6D5ohfwwj1s25TOCuTkX4pQRK+zinJzoLQTz7z4p+yGo
         OXFvrawxxkeHpucqCUv+C00lhdAoJc9EREGT0MNWuID5dv/ZoVYe0d0d824MsJT3sFZw
         xTcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=oJU2ywHorGmgxAST2IJosLo327GprpFQ94C2dUeBB70=;
        b=g4jfYO9MTZ05GPDAtO7gYOib0NMtinNxtUpDdOaTdnLrqk9gfx5k3oE8D36Hs+vR2w
         y61QECdJsc2gh/PIIFIn6zbYpch4PTTPBerXEMhtXNGT5+dbDcOjlbv6De94E3RRdsfm
         1MVP3LnEjIMrsKqoXuvD/q8Dv6LBuo+rOFunx1dLKl8lm0WAOfF1jFx3//6lg9zLCDw5
         yh828ha1pJAdtAMLug5lGU1zXtY9RugRvl2zH6cZighv/JacDphaMQlLT6Poy0+bfgyJ
         4fSyDiKwNDuPjtx8BcYPFQv3NHaCiMDUgu3INcK6kesSkfvU3a1YciQmqJIHqqVPMJUG
         28Kw==
X-Gm-Message-State: AMke39lVHcaS8CHhbiywLCj49GKfl7gn1g98Ix+kT2oaQRfF8P3KfFvyKPIn/as0un77jKlL61CdEcBi2rSKQA==
X-Received: by 10.46.20.80 with SMTP id 16mr1401142lju.87.1488309109339; Tue,
 28 Feb 2017 11:11:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Tue, 28 Feb 2017 11:11:48 -0800 (PST)
In-Reply-To: <CALrZqyMy3q1GOj3uDK3VpXCs4rNrX2R7WM5wHgFXQTaH-U0utA@mail.gmail.com>
References: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com>
 <1488219268-3006-5-git-send-email-singhalsimran0@gmail.com>
 <1488224468.25838.11.camel@perches.com> <CALrZqyMy3q1GOj3uDK3VpXCs4rNrX2R7WM5wHgFXQTaH-U0utA@mail.gmail.com>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Wed, 1 Mar 2017 00:41:48 +0530
Message-ID: <CALrZqyMUbKUO4it-kmDGwaZJS8b4hrpihDf7jpGPaRmN4_hOzg@mail.gmail.com>
Subject: Re: [PATCH 5/5] staging: gdm724x: Remove unnecessary else after return
To: Joe Perches <joe@perches.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, lustre-devel@lists.lustre.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	linux-fbdev@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 28, 2017 at 1:49 AM, SIMRAN SINGHAL
<singhalsimran0@gmail.com> wrote:
> On Tue, Feb 28, 2017 at 1:11 AM, Joe Perches <joe@perches.com> wrote:
>> On Mon, 2017-02-27 at 23:44 +0530, simran singhal wrote:
>>> This patch fixes the checkpatch warning that else is not generally
>>> useful after a break or return.
>>
>>> This was done using Coccinelle:
>>> @@
>>> expression e2;
>>> statement s1;
>>> @@
>>> if(e2) { ... return ...; }
>>> -else
>>>          s1
>> []
>>> diff --git a/drivers/staging/gdm724x/gdm_endian.c b/drivers/staging/gdm724x/gdm_endian.c
>> []
>>> @@ -26,30 +26,26 @@ __dev16 gdm_cpu_to_dev16(struct gdm_endian *ed, u16 x)
>>>  {
>>>       if (ed->dev_ed == ENDIANNESS_LITTLE)
>>>               return (__force __dev16)cpu_to_le16(x);
>>> -     else
>>> -             return (__force __dev16)cpu_to_be16(x);
>>> +     return (__force __dev16)cpu_to_be16(x);
>>
>> again, not a checkpatch message for any of the
>> suggested modified hunks.
>>
I am not getting what's the problem in removing else or may be I
am wrong you just want to say that I should change the commit message.

