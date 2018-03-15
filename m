X-GM-THRID: 6532874572090310656
X-Received: by 10.55.99.70 with SMTP id x67mr6107169qkb.17.1521136878379;
        Thu, 15 Mar 2018 11:01:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.7.66 with SMTP id k2ls1127248qth.6.gmail; Thu, 15 Mar 2018
 11:01:17 -0700 (PDT)
X-Google-Smtp-Source: AG47ELuubJR0MAANLTM1wKABsoiFn6NR5KkTWT9+7cyPoufzL2LTUR2VslL+ojcw39VF86Nkfkof
X-Received: by 10.200.6.68 with SMTP id e4mr6506844qth.51.1521136877558;
        Thu, 15 Mar 2018 11:01:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521136877; cv=none;
        d=google.com; s=arc-20160816;
        b=Uc6VYxqcKuN3nJi9WI8VWlMsJpZ6evVeT5I+9FW7QEP3zszhhM++UbSzXnMtPz8q6x
         2lUKaA4lGGdM1aZKMVKmIFTwYbVx1vL2zITL2F183fGb5rgxihDeOzjjMDvrgRsgjblh
         80hbnzo68RNGyYRq1IW+qKbaJXu+DDa0rNdjM/gyM/S+h5ttJ/IuedRZ4hVVSe9hrVxX
         ISLehndnmgIHjXuDJyIgotkWowkcLAVtf8MC4QClQk3br4Oi4wimj5F6Vm4FRujgB2tE
         cV4mbRwBXRcZcMDP5QEcQ3koh2itZ0xd3GTIWyR4Vfinb9SFaubMwtdpykTIEG/EvJPC
         14iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=21fUVrC8cNb+Sg6YucIH/dfsqdn3RubyFfgvZyaWRtM=;
        b=NQxJUA0DZffrzMxzlfLz8vpytNKdNvIwAP0eR35RMVDv4ypVy2m44YLvDiDpSbH/Js
         wgxMsr+dA8W3/SpIkXCsd2rOX/1GdGx4q5ze0TpRAgwjlAm8NhPoH7c1ALCBBGzYXKN7
         5PgScxo3nMOi3knlRAvQn1P/NEAWyZSWCcPcrweU4mceYniyB87plChfdbM+OcUFXMMx
         fZszPYLfF8SPmSsrmDleOHWLfQug8NRCeCGjEnpBhVaIV/8J7g0qQLP1zeRF76A5YCnc
         WlZqxIqPIgiBOUwJNg+RhLiIPX+ef590tQKCZXWkpxhImZv85fNdquCMfoxlhOkOWnVa
         LChA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=YP8gFvAR;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::231 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-it0-x231.google.com (mail-it0-x231.google.com. [2607:f8b0:4001:c0b::231])
        by gmr-mx.google.com with ESMTPS id s82si221094qke.3.2018.03.15.11.01.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Mar 2018 11:01:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::231 as permitted sender) client-ip=2607:f8b0:4001:c0b::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=YP8gFvAR;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::231 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-it0-x231.google.com with SMTP id u5-v6so10272690itc.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Mar 2018 11:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=21fUVrC8cNb+Sg6YucIH/dfsqdn3RubyFfgvZyaWRtM=;
        b=YP8gFvARJu1fdpBcXzOwWJfWrqDDWRjGxWp31RWhjVNbjzBiDD74OnX801cSSpOIg1
         XdYtShoyZDxOxJDyez73cHFywmCWSCiNp7LWV3Z4u7geH+pF0A326iYSjVcK4J9FB7k4
         ZGEk2wCEteNDfjYvXvYgAPV/IbBrU8obB65Rc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=21fUVrC8cNb+Sg6YucIH/dfsqdn3RubyFfgvZyaWRtM=;
        b=fiOTPtKIC5paK+glanfB+U09oRdjRogcRboSvFPoFU/YQJ/1hBDgy6pWSE9nKy9xUs
         ANigF0tDGbqK24rAWUCEBjrgeIkkyLEDeSADmf54uftRmzU0Lcf0+Qa8FeuLokKYA/5m
         MJVQs6q7eU2a3f2TikJPztET+ddp+Qln5m8NtDWEvVmG1M34gjWeHUpZom953HbHcsPq
         SXb1Uie/AmAPPPLQ0iBJNVLLKdB0do3T5AYE4qXPhasl6qcUu4TIqwhQRCrxCHkgIfEq
         KKG7A/MGuqN2yKNeAc4fawOj7icztYl/aDfDmLKuKwBG/fXO3cSl1D4ORzBG01BrZMJi
         010g==
X-Gm-Message-State: AElRT7Ea/eXyCJaEwbMvvKqCTZqrnzqQMNjoDRWNHV+5vxP5pbnwJnkI
	pr6B86Qxt9x/Kixx2tR9PUzAschOf8SSEZmxD93vbQ==
X-Received: by 10.36.112.17 with SMTP id f17mr7471181itc.34.1521136876839;
 Thu, 15 Mar 2018 11:01:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.128.23 with HTTP; Thu, 15 Mar 2018 11:01:16 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1803151848460.3302@hadrien>
References: <1521135477-2802-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <alpine.DEB.2.20.1803151848460.3302@hadrien>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Thu, 15 Mar 2018 23:31:16 +0530
Message-ID: <CAC4++KAMHLCXAO2EpWW5VA6+RJGhuwSHzVEVP+1tOpV_Lf9SOg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Remove typedef
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 15, 2018 at 11:19 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Thu, 15 Mar 2018, Nishka Dasgupta wrote:
>
>> Change typedef enum to enum and ensure compatibility with the change.
>> Issue found with checkpatch.
>
> I think that this patch is on top of your previous patch.  You need to
> undo your previous patch and make a new one on top of Greg's tree.

Thank you for pointing that out! I have done that.

> julia
>
>
>>
>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
>> ---
>> Changes in v2:
>>  - Remove leading _ of affected variable declarations.
>>  - Make commit message clearer.
>>
>>  drivers/staging/sm750fb/ddk750_display.c | 2 +-
>>  drivers/staging/sm750fb/ddk750_display.h | 4 ++--
>>  drivers/staging/sm750fb/sm750_hw.c       | 2 +-
>>  3 files changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
>> index 7710454..1273e7d 100644
>> --- a/drivers/staging/sm750fb/ddk750_display.c
>> +++ b/drivers/staging/sm750fb/ddk750_display.c
>> @@ -111,7 +111,7 @@ static void swPanelPowerSequence(int disp, int delay)
>>       primary_wait_vertical_sync(delay);
>>  }
>>
>> -void ddk750_setLogicalDispOut(enum _disp_output output)
>> +void ddk750_setLogicalDispOut(enum disp_output output)
>>  {
>>       unsigned int reg;
>>
>> diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
>> index 3eeb02f..7fd101d 100644
>> --- a/drivers/staging/sm750fb/ddk750_display.h
>> +++ b/drivers/staging/sm750fb/ddk750_display.h
>> @@ -89,7 +89,7 @@
>>   * LCD1 means panel path TFT1  & panel path DVI (so enable DAC)
>>   * CRT means crt path DSUB
>>   */
>> -enum _disp_output {
>> +enum disp_output {
>>       do_LCD1_PRI = PNL_2_PRI | PRI_TP_ON | PNL_SEQ_ON | DAC_ON,
>>       do_LCD1_SEC = PNL_2_SEC | SEC_TP_ON | PNL_SEQ_ON | DAC_ON,
>>       do_LCD2_PRI = CRT_2_PRI | PRI_TP_ON | DUAL_TFT_ON,
>> @@ -102,6 +102,6 @@ enum _disp_output {
>>       do_CRT_SEC = CRT_2_SEC | SEC_TP_ON | DPMS_ON | DAC_ON,
>>  };
>>
>> -void ddk750_setLogicalDispOut(enum _disp_output output);
>> +void ddk750_setLogicalDispOut(enum disp_output output);
>>
>>  #endif
>> diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
>> index 3248f88..edeae9d 100644
>> --- a/drivers/staging/sm750fb/sm750_hw.c
>> +++ b/drivers/staging/sm750fb/sm750_hw.c
>> @@ -185,7 +185,7 @@ int hw_sm750_output_setMode(struct lynxfb_output *output,
>>                           struct fb_fix_screeninfo *fix)
>>  {
>>       int ret;
>> -     enum _disp_output disp_set;
>> +     enum disp_output disp_set;
>>       int channel;
>>
>>       ret = 0;
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521135477-2802-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
>> For more options, visit https://groups.google.com/d/optout.
>>

Regards,
Nishka Dasgupta

