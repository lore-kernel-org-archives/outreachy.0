X-GM-THRID: 6212181078592978944
X-Received: by 10.50.18.106 with SMTP id v10mr1776750igd.11.1446386886382;
        Sun, 01 Nov 2015 06:08:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.142.4 with SMTP id rs4ls775618obb.23.gmail; Sun, 01 Nov
 2015 06:08:05 -0800 (PST)
X-Received: by 10.182.76.37 with SMTP id h5mr14461646obw.4.1446386885984;
        Sun, 01 Nov 2015 06:08:05 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x22d.google.com (mail-yk0-x22d.google.com. [2607:f8b0:4002:c07::22d])
        by gmr-mx.google.com with ESMTPS id j204si311346ywg.2.2015.11.01.06.08.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 06:08:05 -0800 (PST)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::22d as permitted sender) client-ip=2607:f8b0:4002:c07::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::22d as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x22d.google.com with SMTP id a4so116782808ykb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 06:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=sSg8HfWHEMb1/DoKtU7WDq6YYT1pn9tIzpz3t6b2Nmk=;
        b=j0Fjl8g7y6WJ++58IkbU7jYZoJqsV79ldm7FJBLwF4yMqjdbc70Ez0CRhVqYBvINxo
         TcaKSbBS/Kzs6OnvTjhylxwkxwRciyd4RsMF8VqkSY9YBILQf11CJqjWTYERR9o5GQO7
         DZneewqa4qfHow70pP/+OGo4YkSqkiPJ/9Qpe1YhxSt3ofodTsXA44zQXTgXXrRhPT/w
         OKi/7I/givcSgNEX6FXvvGeRPl+RMeNwxhMxQK/Z/FwX/CHBb44uDJ4fALb6UCe2iBz7
         COGErL8CdQ2GU217+ZcScnEblAfKVvHeYVoKycIqdEzadpQc0bV47sGedn57IM0un3XZ
         Bj+g==
MIME-Version: 1.0
X-Received: by 10.13.232.193 with SMTP id r184mr12623261ywe.283.1446386885799;
 Sun, 01 Nov 2015 06:08:05 -0800 (PST)
Received: by 10.37.107.66 with HTTP; Sun, 1 Nov 2015 06:08:05 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1511011503140.2070@localhost6.localdomain6>
References: <cover.1446385932.git.ciorneiioana@gmail.com>
	<1aa855620c3b81b4883c6a3a751186f53dd9de6d.1446385932.git.ciorneiioana@gmail.com>
	<alpine.DEB.2.02.1511011503140.2070@localhost6.localdomain6>
Date: Sun, 1 Nov 2015 16:08:05 +0200
Message-ID: <CAHWJYFkNpz5hJomEcee-ayTRSE3+HW5H07T34noLgUYdA6yqNg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/5] staging: android: properly align
 function arguments
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, arve@android.com, 
	riandrews@android.com
Content-Type: text/plain; charset=UTF-8

On Sun, Nov 1, 2015 at 4:03 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sun, 1 Nov 2015, Ioana Ciornei wrote:
>
>> FIx alingment issues by properly indenting function arguments
>> int accordance with the kernel coding style.
>
> Kind of a lot of typos here: FIx -> Fix, int -> in

Sorry about that. I should have double checked it.

Ioana

>
> julia
>
>>
>> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>> ---
>>  drivers/staging/android/lowmemorykiller.c |  4 ++--
>>  drivers/staging/android/sync.c            |  4 ++--
>>  drivers/staging/android/timed_gpio.c      | 10 +++++-----
>>  3 files changed, 9 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/staging/android/lowmemorykiller.c b/drivers/staging/android/lowmemorykiller.c
>> index de65db7..8b5a4a8 100644
>> --- a/drivers/staging/android/lowmemorykiller.c
>> +++ b/drivers/staging/android/lowmemorykiller.c
>> @@ -105,8 +105,8 @@ static unsigned long lowmem_scan(struct shrinker *s, struct shrink_control *sc)
>>       }
>>
>>       lowmem_print(3, "lowmem_scan %lu, %x, ofree %d %d, ma %hd\n",
>> -                     sc->nr_to_scan, sc->gfp_mask, other_free,
>> -                     other_file, min_score_adj);
>> +                  sc->nr_to_scan, sc->gfp_mask, other_free,
>> +                  other_file, min_score_adj);
>>
>>       if (min_score_adj == OOM_SCORE_ADJ_MAX + 1) {
>>               lowmem_print(5, "lowmem_scan %lu, %x, return 0\n",
>> diff --git a/drivers/staging/android/sync.c b/drivers/staging/android/sync.c
>> index 5413f28..e0c1acb 100644
>> --- a/drivers/staging/android/sync.c
>> +++ b/drivers/staging/android/sync.c
>> @@ -313,7 +313,7 @@ struct sync_fence *sync_fence_merge(const char *name,
>>  EXPORT_SYMBOL(sync_fence_merge);
>>
>>  int sync_fence_wake_up_wq(wait_queue_t *curr, unsigned mode,
>> -                              int wake_flags, void *key)
>> +                       int wake_flags, void *key)
>>  {
>>       struct sync_fence_waiter *wait;
>>
>> @@ -353,7 +353,7 @@ int sync_fence_wait_async(struct sync_fence *fence,
>>  EXPORT_SYMBOL(sync_fence_wait_async);
>>
>>  int sync_fence_cancel_async(struct sync_fence *fence,
>> -                          struct sync_fence_waiter *waiter)
>> +                         struct sync_fence_waiter *waiter)
>>  {
>>       unsigned long flags;
>>       int ret = 0;
>> diff --git a/drivers/staging/android/timed_gpio.c b/drivers/staging/android/timed_gpio.c
>> index ce11726..5246f42 100644
>> --- a/drivers/staging/android/timed_gpio.c
>> +++ b/drivers/staging/android/timed_gpio.c
>> @@ -76,8 +76,8 @@ static void gpio_enable(struct timed_output_dev *dev, int value)
>>                       value = data->max_timeout;
>>
>>               hrtimer_start(&data->timer,
>> -                     ktime_set(value / 1000, (value % 1000) * 1000000),
>> -                     HRTIMER_MODE_REL);
>> +                           ktime_set(value / 1000, (value % 1000) * 1000000),
>> +                           HRTIMER_MODE_REL);
>>       }
>>
>>       spin_unlock_irqrestore(&data->lock, flags);
>> @@ -94,8 +94,8 @@ static int timed_gpio_probe(struct platform_device *pdev)
>>               return -EBUSY;
>>
>>       gpio_data = devm_kzalloc(&pdev->dev,
>> -                     sizeof(struct timed_gpio_data) * pdata->num_gpios,
>> -                     GFP_KERNEL);
>> +                              sizeof(*gpio_data) * pdata->num_gpios,
>> +                              GFP_KERNEL);
>>       if (!gpio_data)
>>               return -ENOMEM;
>>
>> @@ -104,7 +104,7 @@ static int timed_gpio_probe(struct platform_device *pdev)
>>               gpio_dat = &gpio_data[i];
>>
>>               hrtimer_init(&gpio_dat->timer, CLOCK_MONOTONIC,
>> -                             HRTIMER_MODE_REL);
>> +                          HRTIMER_MODE_REL);
>>               gpio_dat->timer.function = gpio_timer_func;
>>               spin_lock_init(&gpio_dat->lock);
>>
>> --
>> 2.1.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1aa855620c3b81b4883c6a3a751186f53dd9de6d.1446385932.git.ciorneiioana%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>



-- 
Ioana Ciornei
Facultatea de Automatica si Calculatoare, UPB
Tel. 0753 861 668

