X-GM-THRID: 6255537432818614272
X-Received: by 10.182.125.132 with SMTP id mq4mr6291713obb.22.1456594794112;
        Sat, 27 Feb 2016 09:39:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.13 with SMTP id c13ls1777325qge.68.gmail; Sat, 27 Feb
 2016 09:39:52 -0800 (PST)
X-Received: by 10.13.236.84 with SMTP id v81mr6056831ywe.2.1456594792909;
        Sat, 27 Feb 2016 09:39:52 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qg0-x244.google.com (mail-qg0-x244.google.com. [2607:f8b0:400d:c04::244])
        by gmr-mx.google.com with ESMTPS id q187si1129949ywf.4.2016.02.27.09.39.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 09:39:52 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) client-ip=2607:f8b0:400d:c04::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x244.google.com with SMTP id y89so7846063qge.0
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 09:39:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=1atYwO7f1yKjX0c30BEXU07syz0r8UHExVlL6+ITU6c=;
        b=1HDyd+xEJq+DwnxBn+IQl5Rd+TvJ1MwhtFOGlRV2O8zs2zBQlI1H49CdCOFTV47TCm
         iYhp6Yx5Y7OuXD0oiKjRRqh2shZ8wKwmF39kvcLZ+1lEkVxKDrddiew2vNRCoirL5JUV
         xzWs50jV6yub8CCnnTrSN7ZX4+X3FvzLznOYtJxR82LH505gbv++6eYoUi3KF7MYm8nC
         iNGsdmvv4/5eoFoNXopAAZyoITWUKnVif8n93ePDLr/3MUcBnEhbHJOd3OmeqAbSm+gj
         xxo3lqt2UXVqx77WbZ7jcH6Oypk2IyFuSjRhr3bYFYaM/SjWu8UW8bWX312RJN1KODDO
         IQGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=1atYwO7f1yKjX0c30BEXU07syz0r8UHExVlL6+ITU6c=;
        b=ONO7FYrU8iAm6VUVlqFi4xAzLMa0NFUKJlJC+lVonedJzBunoHg+fzHYjdFNFxM3R/
         ksBNewImAJYinhKDiYfcd6/qiBZMQbNv5ldqDYFd4AjfaTKi2MDvKN76f4Gm1sm0Wzfv
         LfTOXlFdOrMRLhV5zQDnK2eCMxmIRWBw6816j2XlEMvGHB5M0+YuO3rYcjE1aVIFM5kd
         7p3YA1FI49x4wg4bESO4Ynar/nAPeLqwZgkhdZTptGBqzlXCZdmtTY8Bs9YTGZNc5Ute
         pfVcxMhd07X/5efM0e1HvNz1l/mf3SfS/Z4skfAWkr/ftPJw+80bJwfT/oDUC0e7EIlK
         kQJw==
X-Gm-Message-State: AD7BkJKhk6OrWgxmozNl5ZZ2apeovUpEgPJt2kcXXmJ8tti8tLTPs5+X3tdLvIhS7KeUrxAVeffcilPS7oqF2w==
X-Received: by 10.140.134.144 with SMTP id 138mr10198530qhg.63.1456594792678;
 Sat, 27 Feb 2016 09:39:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.217.215 with HTTP; Sat, 27 Feb 2016 09:39:13 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602261101330.2614@hadrien>
References: <20160226100041.GA11042@Karyakshetra> <alpine.DEB.2.10.1602261101330.2614@hadrien>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Sat, 27 Feb 2016 23:09:13 +0530
Message-ID: <CAFNHFT8VRLL_pUXDU88fwysEbfbjppzraHVEjbw-UY=_sd53rA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: lnet: Use list_for_each_entry
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hello Julia,

I'll send in a v3 with a changed commit message.

Thanks,
Bhaktipriya

On Fri, Feb 26, 2016 at 3:36 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
> On Fri, 26 Feb 2016, Bhaktipriya Shridhar wrote:
>
>> In general, doubly linked lists are iterated  using list_empty
>> and list_entry functions.
>
> It's a little bit fussy, but this is not true.  I had neer seen this
> pattern before you found it.  So I don't think that it is the general
> case.  Currently there are over 2000 uses of list_for_each_entry.
>
> Also the subject and this part of the commit message mention
> list_for_each_entry, but actually you are using list_for_each_entry_safe.
> And list_for_each_entry_safe is the only thing that makes sense when there
> is a list_empty test on the loop, because for the list to be empty, you
> have to remove things from it, and if you remove things from it, you need
> to use list_for_each_entry_safe.
>
> Note that when you reach the "end" of a doubly linked list, you actually
> reach the beginning, not a NULL element like for a singly linked list, so
> reaching the end of the list does not make list_empty true.
>
> julia
>
>> But it can be better written using
>> list_for_each_entry macro.
>>
>> This patch replaces the while loop containing list_empty and list_entry
>> with list_for_each_entry and list_for_each_entry_safe(if list_del is
>> used int the loop).
>>
>> This was done with Coccinelle.
>>
>> @@
>> expression E1;
>> identifier I1, I2;
>> type T;
>> iterator name list_for_each_entry_safe;
>> @@
>>
>> T *I1;
>> + T *temp;
>> ...
>> - while (list_empty(&E1) == 0)
>> + list_for_each_entry_safe (I1, temp, &E1, I2)
>> {
>> ...when != T *I1;
>> - I1 = list_entry(E1.next, T, I2);
>> ...
>> }
>>
>> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
>> ---
>>  Changes in v2:
>>       -Fixed typo "lusture" to "lustre" in the subject.
>>
>>  drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c | 5 ++---
>>  1 file changed, 2 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
>> index efb7169..8c1d50a7 100644
>> --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
>> +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
>> @@ -2354,13 +2354,12 @@ static inline void
>>  ksocknal_flush_stale_txs(ksock_peer_t *peer)
>>  {
>>       ksock_tx_t *tx;
>> +     ksock_tx_t *temp;
>>       LIST_HEAD(stale_txs);
>>
>>       write_lock_bh(&ksocknal_data.ksnd_global_lock);
>>
>> -     while (!list_empty(&peer->ksnp_tx_queue)) {
>> -             tx = list_entry(peer->ksnp_tx_queue.next, ksock_tx_t, tx_list);
>> -
>> +     list_for_each_entry_safe(tx, temp, &peer->ksnp_tx_queue, tx_list) {
>>               if (!cfs_time_aftereq(cfs_time_current(),
>>                                     tx->tx_deadline))
>>                       break;
>> --
>> 2.1.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160226100041.GA11042%40Karyakshetra.
>> For more options, visit https://groups.google.com/d/optout.
>>

