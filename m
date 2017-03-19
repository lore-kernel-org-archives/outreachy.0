X-GM-THRID: 6399268904363884544
X-Received: by 10.129.50.12 with SMTP id y12mr14070384ywy.111.1489947196554;
        Sun, 19 Mar 2017 11:13:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.120 with SMTP id p53ls7066065otd.7.gmail; Sun, 19 Mar
 2017 11:13:16 -0700 (PDT)
X-Received: by 10.157.41.240 with SMTP id g45mr10833763otd.94.1489947196185;
        Sun, 19 Mar 2017 11:13:16 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id k191si839611vka.4.2017.03.19.11.13.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 11:13:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id y16so1581277vky.1
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 11:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=hHRLpxzxwknzgO9qFe1qaaczsLZcpvaiID30i9Yn6BM=;
        b=cHypqEswRz+GBsZW9cGDkWdOMLbQsprjGrKT9Jm3zNJHFIwJzQR0bh2bXhvNOtIFQo
         JFPw/8zHYv1CCqFMvPgJzzoKZmMLR9yqQ8+o2YmjYi7YD6tzPTxoGFq0AD6zJoKm1e2k
         rfHHSBW3H0sbEiZ7DhZi/BOA2v88B5yAgm81FRefZ3zOF05F4G6pgtzEFwrLscO9cUAf
         FVocNlApADkAIjQkt3xFFSIf5s4MHCC3q9CP2G375qRs+k4YOh+fnljd/9cAN8s8OnQ0
         QTLSclfO/UrNQEAaDESPVOmtdJWCdOWBqf1Ai1NgLgrcPfWbex86VT+fOnxNIS5EgxVk
         JK9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=hHRLpxzxwknzgO9qFe1qaaczsLZcpvaiID30i9Yn6BM=;
        b=k5y33/sgvJJmzjyL6/JL2n/H4NI85ShKRcwZ3qx/eUczmlM4zjcPKv+5xnWbbo9X4h
         YX1+BG3vAkMi2LHAohe+FyhEUM2+rgHFG4eJGAb0T704Jl4uh6tf04+4+BXJk6Cevq2h
         cgQXV3tEU2gbBUsmmit4osL9mMZCUk/jk6NSpOZRcNZXhw33Z6TUjqGQmp7srE+jP1Fm
         MPwCi84+eUQIkidbuxBAl9kpTIwdpcLCn1yLtty3a44A/E93qIUWlEuaBQc9Z3xwu6XP
         EfwwI8FXMoqAHI0ucmvLGhVntn4RHvT+5RxMYBT/YxyMrZvJ2avW8GSzgYMuFPsyw7cP
         ZZUQ==
X-Gm-Message-State: AFeK/H0Gv37t17m2xeALZ+gypRzQNHRtvfbUmYOvBs7b+Dni0qn3mFNzu6a6arG1QnHQcPTD1FiWr4gZSDvTBw==
X-Received: by 10.31.207.65 with SMTP id f62mr9701429vkg.8.1489947195936; Sun,
 19 Mar 2017 11:13:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.75.7 with HTTP; Sun, 19 Mar 2017 11:13:15 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1703191854260.2094@hadrien>
References: <20170319175133.GA19710@singhal-Inspiron-5558> <alpine.DEB.2.20.1703191854260.2094@hadrien>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Sun, 19 Mar 2017 23:43:15 +0530
Message-ID: <CALrZqyPho34bWsHEuwpXv3FrkZb1knf3w0x-m+8rz6QGxV1O1A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: impedance-analyzer: ad5933:
 Remove unnecessary goto
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 19, 2017 at 11:26 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 19 Mar 2017, simran singhal wrote:
>
>> Remove unnecessary goto.
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> ---
>>  drivers/staging/iio/impedance-analyzer/ad5933.c | 10 ++++------
>>  1 file changed, 4 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
>> index 297665d..c9ed2ac 100644
>> --- a/drivers/staging/iio/impedance-analyzer/ad5933.c
>> +++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
>> @@ -663,12 +663,12 @@ static void ad5933_work(struct work_struct *work)
>>               ad5933_cmd(st, AD5933_CTRL_START_SWEEP);
>>               st->state = AD5933_CTRL_START_SWEEP;
>>               schedule_delayed_work(&st->work, st->poll_time_jiffies);
>> -             goto out;
>> +             mutex_unlock(&indio_dev->mlock);
>
> This is not correct.  The code at the end of the function implicitly does
> a return, which has disappeared in the change.  You could add a return to
> each place wher you have put a mutex_unlock, but I think that the code was
> better off as it was.  It's microscopically less error prone to have this
> cleanup code in only one place.
>
OOPS!! This is totally wrong.
Sorry for this.

> julia
>
>>       }
>>
>>       ret = ad5933_i2c_read(st->client, AD5933_REG_STATUS, 1, &status);
>>       if (ret)
>> -             goto out;
>> +             mutex_unlock(&indio_dev->mlock);
>>
>>       if (status & AD5933_STAT_DATA_VALID) {
>>               int scan_count = bitmap_weight(indio_dev->active_scan_mask,
>> @@ -678,7 +678,7 @@ static void ad5933_work(struct work_struct *work)
>>                               AD5933_REG_REAL_DATA : AD5933_REG_IMAG_DATA,
>>                               scan_count * 2, (u8 *)buf);
>>               if (ret)
>> -                     goto out;
>> +                     mutex_unlock(&indio_dev->mlock);
>>
>>               if (scan_count == 2) {
>>                       val[0] = be16_to_cpu(buf[0]);
>> @@ -690,7 +690,7 @@ static void ad5933_work(struct work_struct *work)
>>       } else {
>>               /* no data available - try again later */
>>               schedule_delayed_work(&st->work, st->poll_time_jiffies);
>> -             goto out;
>> +             mutex_unlock(&indio_dev->mlock);
>>       }
>>
>>       if (status & AD5933_STAT_SWEEP_DONE) {
>> @@ -703,8 +703,6 @@ static void ad5933_work(struct work_struct *work)
>>               ad5933_cmd(st, AD5933_CTRL_INC_FREQ);
>>               schedule_delayed_work(&st->work, st->poll_time_jiffies);
>>       }
>> -out:
>> -     mutex_unlock(&indio_dev->mlock);
>>  }
>>
>>  static int ad5933_probe(struct i2c_client *client,
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170319175133.GA19710%40singhal-Inspiron-5558.
>> For more options, visit https://groups.google.com/d/optout.
>>

