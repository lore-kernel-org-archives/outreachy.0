X-GM-THRID: 6392397624378392576
X-Received: by 10.157.19.60 with SMTP id f57mr2380214ote.100.1488353160412;
        Tue, 28 Feb 2017 23:26:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.138 with SMTP id g132ls996446ioe.5.gmail; Tue, 28 Feb
 2017 23:25:59 -0800 (PST)
X-Received: by 10.99.152.9 with SMTP id q9mr2284906pgd.84.1488353159657;
        Tue, 28 Feb 2017 23:25:59 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x244.google.com (mail-yw0-x244.google.com. [2607:f8b0:4002:c05::244])
        by gmr-mx.google.com with ESMTPS id a202si473856ywe.2.2017.02.28.23.25.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 23:25:59 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) client-ip=2607:f8b0:4002:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x244.google.com with SMTP id l16so3139421ywb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 23:25:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=1vgrtM+W7tHIwADK7oKkaQ0fUhSq2obNKmt2cOPU/bg=;
        b=Nn0kkg/2Wz+XdfBG55Damrn9diO2YiTmv1WBZlh1+PYjg1ejlBxpg/bEwOfqxAgE57
         /F/yL8zC5q2q0G/sTM12+VLRWBMXSaXnQZ0+6W3bn4amNARmKoA/Yk7GCSdKeMDfpaaT
         Yki+9l9eBk35Imxb5dcyuF6tvRkL5tQtYe6RFD+d0c0Mzsxwi2ORtEx2I1JeW+PRz1yJ
         WmVR8Tks4EpSQX/X9ienmgKkHetQvraxQ4Qd2gF7vwLmgc4QJaaUIaB6nMRzL6dLVW/k
         Ta8rAqxmAwqgCFgizpD4SonTCZ8XgbwLxtdtHUuEG7TdSza+UvjxJpJszKZHeZ2CxYLv
         zGew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=1vgrtM+W7tHIwADK7oKkaQ0fUhSq2obNKmt2cOPU/bg=;
        b=q4r8EBr5HKwGf7xBPfaveMzKgLYUElMUGsD5vLSgTt8Ubgt+g6sbsA4sWDS98S2+U8
         XqSgHhGZzhjwtp6y1cXiSigjdlDUajOLysqEi8tpIUeoaFwpb/LqeLswlKcFrmEMim6o
         fhVpbS5UB9ppVo7QMcRy/qk+EeVAh6HDb8KZpOgpf7lnmtfu80i8xQzlm9mWp9g2RIdP
         sSn0EEzVAQFizoqGY3/QuGx7yqqwRgeE5zAHIwYfKR1DI80lZPI9TWEenF/1M3M/KoEb
         hS29go0yeiUT1Lt7JcNCNcLlc5m5kT8OQLBDQwenDMyIyqmh0iE2weqYViPevnKhtCY3
         SeSQ==
X-Gm-Message-State: AMke39mp8iu1xxrTlkLqFXg2idJ+Z0Y0AX2fhCsuR0sitYL0srfPFcg8INj+PVDvl+//4Vc7h83MRTDYbhExDw==
X-Received: by 10.13.234.215 with SMTP id t206mr2077883ywe.150.1488353159264;
 Tue, 28 Feb 2017 23:25:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.163.196 with HTTP; Tue, 28 Feb 2017 23:25:18 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1703010723120.2079@hadrien>
References: <20170301052712.GA19851@sayli-HP-15-Notebook-PC> <alpine.DEB.2.20.1703010723120.2079@hadrien>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Wed, 1 Mar 2017 12:55:18 +0530
Message-ID: <CAKG5xWg5Tb5uH_zioEQWFPowz1WBHMuNMm4xEmo-g4M=ACjyDg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: ad7280a: Group similar
 macros into enums
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 1, 2017 at 11:53 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 1 Mar 2017, sayli karnik wrote:
>
>> The patch groups similar macros into enum data types.
>
> Like Alison said, I wonder why you changed the order.
>
Yes that was a mistake, I'll correct that along with other changes by
the reviewers, if any.

thanks,
sayli

> julia
>
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> ---
>>  drivers/staging/iio/adc/ad7280a.h | 20 ++++++++++++--------
>>  1 file changed, 12 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/staging/iio/adc/ad7280a.h b/drivers/staging/iio/adc/ad7280a.h
>> index ccfb90d..08e97d4 100644
>> --- a/drivers/staging/iio/adc/ad7280a.h
>> +++ b/drivers/staging/iio/adc/ad7280a.h
>> @@ -13,15 +13,19 @@
>>   * TODO: struct ad7280_platform_data needs to go into include/linux/iio
>>   */
>>
>> -#define AD7280A_ACQ_TIME_400ns                       0
>> -#define AD7280A_ACQ_TIME_800ns                       1
>> -#define AD7280A_ACQ_TIME_1200ns                      2
>> -#define AD7280A_ACQ_TIME_1600ns                      3
>> +enum {
>> +     AD7280A_CONV_AVG_DIS = 0,
>> +     AD7280A_CONV_AVG_2,
>> +     AD7280A_CONV_AVG_4,
>> +     AD7280A_CONV_AVG_8,
>> +};
>>
>> -#define AD7280A_CONV_AVG_DIS                 0
>> -#define AD7280A_CONV_AVG_2                   1
>> -#define AD7280A_CONV_AVG_4                   2
>> -#define AD7280A_CONV_AVG_8                   3
>> +enum {
>> +     AD7280A_ACQ_TIME_400ns = 0,
>> +     AD7280A_ACQ_TIME_800ns,
>> +     AD7280A_ACQ_TIME_1200ns,
>> +     AD7280A_ACQ_TIME_1600ns,
>> +};
>>
>>  #define AD7280A_ALERT_REMOVE_VIN5            BIT(2)
>>  #define AD7280A_ALERT_REMOVE_VIN4_VIN5               BIT(3)
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170301052712.GA19851%40sayli-HP-15-Notebook-PC.
>> For more options, visit https://groups.google.com/d/optout.
>>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1703010723120.2079%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

