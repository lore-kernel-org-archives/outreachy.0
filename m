X-GM-THRID: 6331784353650049024
X-Received: by 10.194.74.131 with SMTP id t3mr547195wjv.21.1474264429638;
        Sun, 18 Sep 2016 22:53:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.193.3 with SMTP id r3ls453951wmf.24.gmail; Sun, 18 Sep 2016
 22:53:48 -0700 (PDT)
X-Received: by 10.194.127.234 with SMTP id nj10mr535015wjb.20.1474264428872;
        Sun, 18 Sep 2016 22:53:48 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id p199si1832941wmd.1.2016.09.18.22.53.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 22:53:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id l131so7745157lfl.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 22:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Pdx/DnrWdWEfmT0lbSeXziIcB6pKcDZf1aM4xoNkN40=;
        b=J05PvR5DaICSzS8KecsutahIM+bb8Qp2vz2S0NFhphLiS7yGkkmtbYIJ3Vnex9i1qZ
         WIkt2f0+Jvfyb5/SDhrBUJUGA1Io1U3JT7ygHzyHv1f6IH2UvsLSepFGUrkstjj/kgu4
         X6UjUUyxPCx1pjvv8cOZM6QG/THUv+Big1LmZAKa9emz5aLfU64oO94M0RZ/ZJA5tQq0
         HwcfL9WAK6wso6LiYDcaPNSg0aolmRpGJ0ePEVyrbcpUPq60rsAFKOO8Sz4muIKZu27i
         BMhsyHJ+ND1kPk7DoGZDQEe2+n9RGevRFdwm0GXUgvBlKXw4gPZxS2R31uhA+SXScpH3
         J+dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Pdx/DnrWdWEfmT0lbSeXziIcB6pKcDZf1aM4xoNkN40=;
        b=DnEtbBxGlITRRkWNJF5BRp8oZROrMF61Y2uaojVFgOmOsM+G5mldLkR5tLGxJyswT8
         NDN5KQKR1LaN97xV5HXX4ZXuUeNeTLyilSgZfAtdz4FQNd2xabfjmY5QBhq04hCQSqdQ
         MFf6N4SwFx/3DqtDKKStJJoPuoebap4A51vRrujtbctC+BfeR7Pah49KNLNDspPU5oDR
         mouuZuKAhEnP8nCQ5WbKvbLcYyE7tyN8ENiSaXIFROLzUHKv5iR/vb1OkP/8uWvrFBZx
         TuzKqkX743EMdCbYYKZ1QlubHvfo7DpH53EfQ3n4a1dIkMMO5zLJ0zUOGA4YmSwrB12d
         Pp0Q==
X-Gm-Message-State: AE9vXwPx8erfVca8ICInI401rko6UX42p5alyrZeW2banWZiR3foa9OV7DR4GHNJbwG4vEl2fNRdrgLTPoCT6w==
X-Received: by 10.25.24.91 with SMTP id o88mr10324771lfi.81.1474264428219;
 Sun, 18 Sep 2016 22:53:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Sun, 18 Sep 2016 22:53:47 -0700 (PDT)
In-Reply-To: <20160919054442.GB2699@d830.WORKGROUP>
References: <1474233410-6932-1-git-send-email-bhumirks@gmail.com> <20160919054442.GB2699@d830.WORKGROUP>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Mon, 19 Sep 2016 11:23:47 +0530
Message-ID: <CAOH+1jFsWGDVcifqDU0_9MPw=uEXQ+u0E8dg0hkimx+eJbWq1Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: trigger: Use devm functions
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com, jic23@kernel.org, knaack.h@gmx.de, 
	Lars-Peter Clausen <lars@metafoo.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Mon, Sep 19, 2016 at 11:14 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> On Mon, Sep 19, 2016 at 02:46:50AM +0530, Bhumika Goyal wrote:
>> Use managed resource functions devm_iio_trigger_alloc and
>> devm_request_irq instead of iio_trigger_alloc and request_irq.
>> Remove corresponding calls to free_irq in the probe and remove
>> functions. Drop the now unnecessary goto labels and replace various
>> gotos with direct returns.
>> request_irq replacement done using coccinelle.
>
> Hi Bhumika,
> Thanks for the patch.  This seems like it's worthy of 2 separate
> patches.
>
> Also, I'm a bit confused with why I don't see an iio_trigger_free
> that is going away, when you switch to the devm_iio_trigger_alloc
> functions, but I realize there isn't one there to remove. hmm???
>
> alisons
>

Hey Alison,
Ok, I will separate this in two patches. I will do
devm_iio_trigger_alloc in patch 1 and devm_request_irq in patch 2 as
devm_request_irq requires all previous memory allocations to be devms.
Regarding iio_trigger_free I didn't find any in either of the two
functions(probe and remove).
Thanks for the input.

Thanks,
Bhumika
>
>
>>
>> @platform@
>> identifier p, probefn, removefn;
>> @@
>> struct platform_driver p = {
>>   .probe = probefn,
>>   .remove = removefn,
>> };
>>
>> @prb@
>> identifier platform.probefn, pdev;
>> expression list E;
>> expression e;
>>
>> @@
>> probefn(struct platform_device *pdev, ...) {
>>   <+...
>> - e = request_irq(E);
>> + e = devm_request_irq(&pdev->dev,E);
>>   ...
>> ?-free_irq(...);
>>   ...+>
>> }
>>
>> @rem depends on prb@
>> identifier platform.removefn;
>> expression e;
>> @@
>> removefn(...) {
>>   <...
>> - free_irq(...);
>>   ...>
>> }
>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> ---
>>  drivers/staging/iio/trigger/iio-trig-bfin-timer.c | 13 ++++++-------
>>  1 file changed, 6 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
>> index 38dca69..ea4845c 100644
>> --- a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
>> +++ b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
>> @@ -200,7 +200,8 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
>>       st->timer_num = ret;
>>       st->t = &iio_bfin_timer_code[st->timer_num];
>>
>> -     st->trig = iio_trigger_alloc("bfintmr%d", st->timer_num);
>> +     st->trig = devm_iio_trigger_alloc(&pdev->dev, "bfintmr%d",
>> +                                          st->timer_num);
>>       if (!st->trig)
>>               return -ENOMEM;
>>
>> @@ -211,8 +212,8 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
>>       if (ret)
>>               goto out;
>>
>> -     ret = request_irq(st->irq, iio_bfin_tmr_trigger_isr,
>> -                       0, st->trig->name, st);
>> +     ret = devm_request_irq(&pdev->dev, st->irq, iio_bfin_tmr_trigger_isr,
>> +                            0, st->trig->name, st);
>>       if (ret) {
>>               dev_err(&pdev->dev,
>>                       "request IRQ-%d failed", st->irq);
>> @@ -229,7 +230,7 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
>>
>>               ret = peripheral_request(st->t->pin, st->trig->name);
>>               if (ret)
>> -                     goto out_free_irq;
>> +                     return ret;
>>
>>               val = (unsigned long long)get_sclk() * pdata->duty_ns;
>>               do_div(val, NSEC_PER_SEC);
>> @@ -255,8 +256,7 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
>>       platform_set_drvdata(pdev, st);
>>
>>       return 0;
>> -out_free_irq:
>> -     free_irq(st->irq, st);
>> +
>>  out1:
>>       iio_trigger_unregister(st->trig);
>>  out:
>> @@ -271,7 +271,6 @@ static int iio_bfin_tmr_trigger_remove(struct platform_device *pdev)
>>       disable_gptimers(st->t->bit);
>>       if (st->output_enable)
>>               peripheral_free(st->t->pin);
>> -     free_irq(st->irq, st);
>>       iio_trigger_unregister(st->trig);
>>       iio_trigger_put(st->trig);
>>
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474233410-6932-1-git-send-email-bhumirks%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.

