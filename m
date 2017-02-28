X-GM-THRID: 6391852583766458368
X-Received: by 10.46.80.1 with SMTP id e1mr501603ljb.10.1488308207292;
        Tue, 28 Feb 2017 10:56:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.203 with SMTP id u194ls202691lja.20.gmail; Tue, 28 Feb
 2017 10:56:46 -0800 (PST)
X-Received: by 10.46.33.163 with SMTP id h35mr524645lji.17.1488308206570;
        Tue, 28 Feb 2017 10:56:46 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id i76si1190909wmh.1.2017.02.28.10.56.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 10:56:46 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id g70so667805lfh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 10:56:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=HA0lYAnCpZ4/+ziJ6r07Ggc9VPQt2Tb+UVe89EpecZE=;
        b=hvoJ4xgaIAdrQFnh0MaEUpv7jGdEk14BuVf8nQUQfFhrLKRCQl4LTU3pE2imZ6Bnn7
         x6XoA3rZ1r7c7rQCQKTS+MDJbz6VXsOjmbLZLsqL/RGKKOo8ECCaYYCb1HuAWNGyJgKc
         +pvD/IeEzNiLECiS+3KMsY1GIuF+Lt4UWUP4rgu9pVaNDflBPgIQ5dufIbzZ34Gi5qCF
         XtgOo9x3UtboBxaoJ7uLJEjmWndvNCeN/SSGf+W4tSruDaGAufeGHVmRKRataB9sObY9
         oycCzOkhwMCxs27ec8OKvxHgpoFRckTAutsFi0vbCmz0iotn0qSmxIQO5UuritnJUPan
         F2lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=HA0lYAnCpZ4/+ziJ6r07Ggc9VPQt2Tb+UVe89EpecZE=;
        b=affjTwiWNdhr+XVfian4UCHbTadDnOwGkGqRFjLut4yU8tPzNnYhBs0aKduVJ/MLy9
         LO/JBnK6B/tnYpGVQYNYULwDWkDtIkDYbDPf/tGdcqls1YiZIu0E0BI821Te84Ct64uq
         bqNvSuSyBhTn8SSIAFZ8E7yWBwlplRC0cKsma+xDbmvMZPsFc87G1gYk5EMmH0OuBFH/
         +5quc7cm6TzctNy53aHaXUhocpi095xA+9tTc95VxL/6YVUfqHtQtrm1477lkPYBbDnE
         fNi2nzeKYA6fQrl0T1fZdW6dAyk+562xSTK3lFPuCY2GB2e3Q/Ujie0nGHLg1tUFiFuk
         jkDg==
X-Gm-Message-State: AMke39lVyNi7Byf+orHvhuiKrd4b6vONiW1fx2oN+jZteGc7LKKFW4Ol5V1ypyPa1UN8+Z77XQ82JZ4sjC2akw==
X-Received: by 10.46.20.20 with SMTP id u20mr1386958ljd.61.1488308206045; Tue,
 28 Feb 2017 10:56:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Tue, 28 Feb 2017 10:56:45 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1702272214410.2127@hadrien>
References: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com>
 <1488219268-3006-4-git-send-email-singhalsimran0@gmail.com> <alpine.DEB.2.20.1702272214410.2127@hadrien>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Wed, 1 Mar 2017 00:26:45 +0530
Message-ID: <CALrZqyNXbn1SZ8Daws7yKkYm-C-U9FHyJ_eRxvuem1Fk+Mqs=g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/5] staging: sm750fb: Remove
 unnecessary else after return
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, lustre-devel@lists.lustre.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	linux-fbdev@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 28, 2017 at 2:45 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Mon, 27 Feb 2017, simran singhal wrote:
>
>> This patch fixes the checkpatch warning that else is not generally
>> useful after a break or return.
>>
>> This was done using Coccinelle:
>> @@
>> expression e2;
>> statement s1;
>> @@
>> if(e2) { ... return ...; }
>> -else
>>          s1
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> ---
>>  drivers/staging/sm750fb/ddk750_sii164.c | 6 ++----
>>  drivers/staging/sm750fb/ddk750_swi2c.c  | 6 ++----
>>  2 files changed, 4 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
>> index 259006a..6906598 100644
>> --- a/drivers/staging/sm750fb/ddk750_sii164.c
>> +++ b/drivers/staging/sm750fb/ddk750_sii164.c
>> @@ -368,8 +368,7 @@ unsigned char sii164IsConnected(void)
>>       hotPlugValue = i2cReadReg(SII164_I2C_ADDRESS, SII164_DETECT) & SII164_DETECT_HOT_PLUG_STATUS_MASK;
>>       if (hotPlugValue == SII164_DETECT_HOT_PLUG_STATUS_ON)
>>               return 1;
>> -     else
>> -             return 0;
>> +     return 0;
>
>
> Totally unrelated to what you are doing, but I wonder if these return
> values should be true and false?  Perhaps it would help to see how the
> return values are used at the calling context.
>
you want me to go ahead with what Joe mentioned and also do the same
changes here also.
> julia
>
>>  }
>>
>>  /*
>> @@ -387,8 +386,7 @@ unsigned char sii164CheckInterrupt(void)
>>       detectReg = i2cReadReg(SII164_I2C_ADDRESS, SII164_DETECT) & SII164_DETECT_MONITOR_STATE_MASK;
>>       if (detectReg == SII164_DETECT_MONITOR_STATE_CHANGE)
>>               return 1;
>> -     else
>> -             return 0;
>> +     return 0;
>>  }
>>
>>  /*
>> diff --git a/drivers/staging/sm750fb/ddk750_swi2c.c b/drivers/staging/sm750fb/ddk750_swi2c.c
>> index a4ac07c..5997349 100644
>> --- a/drivers/staging/sm750fb/ddk750_swi2c.c
>> +++ b/drivers/staging/sm750fb/ddk750_swi2c.c
>> @@ -199,8 +199,7 @@ static unsigned char sw_i2c_read_sda(void)
>>       gpio_data = peek32(sw_i2c_data_gpio_data_reg);
>>       if (gpio_data & (1 << sw_i2c_data_gpio))
>>               return 1;
>> -     else
>> -             return 0;
>> +     return 0;
>>  }
>>
>>  /*
>> @@ -295,8 +294,7 @@ static long sw_i2c_write_byte(unsigned char data)
>>
>>       if (i < 0xff)
>>               return 0;
>> -     else
>> -             return -1;
>> +     return -1;
>>  }
>>
>>  /*
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488219268-3006-4-git-send-email-singhalsimran0%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

