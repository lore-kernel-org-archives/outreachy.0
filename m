X-GM-THRID: 6391852583766458368
X-Received: by 10.46.21.11 with SMTP id s11mr2088038ljd.23.1488226921111;
        Mon, 27 Feb 2017 12:22:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.92.71 with SMTP id q68ls489143ljb.40.gmail; Mon, 27 Feb
 2017 12:22:00 -0800 (PST)
X-Received: by 10.25.40.17 with SMTP id o17mr1968102lfo.25.1488226920448;
        Mon, 27 Feb 2017 12:22:00 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id v201si756060wmv.3.2017.02.27.12.22.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 12:22:00 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id a198so4326247lfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 12:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=oHuq1z0NUQ253qVhefLmV0qECtc11k23qLxR0joT9YY=;
        b=mciAnxK3KXE4VYNOO4sCHN0KefKl2WKjDebmZAtY3v5XwCfoEHQamZp5u1OqRm5SUI
         TWEugFGt60JmprjKfWHMjBFAiMC3UwD/XeSN3hPjihPbbm3i4Hmypa/y02Ic16j551nK
         MBF2GXmGj0BphZXdB+K4TwYDUCs3kXSsVmlV6wEV4bjsMyMmJTdIlNlKG4K7jQzoAK35
         556Afj4wM20cTWuAtKAfZmweJ8cR2gWjy5ty10BmFWYHz/Le73eLjxALhczlarf52G4q
         aKQ951KJhruuuZ0Iute+FnCBKJDtotD8ocG+GdtUUON3goE26dwI68DqZtL5libblYOY
         3M9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=oHuq1z0NUQ253qVhefLmV0qECtc11k23qLxR0joT9YY=;
        b=nsGW79mTeVAq7aNROLZ6L0AYvlDQTJxmdvYrHtl7eRRdJ5IqzcCu3ZSVljeiMi3xbP
         6p7vvpJmbSoxHRrmqLC9l4sGr7S7M9THe+jZxqhMF/z7E1nJXy0mGQbtmrqHLIMricmY
         jdnQuqMKQglAhENevtssWY5BzvIUV4mcs3499NMe1yKNL8M/zJcOC0x0zrssjpSIb0st
         E5+dZBB/RKP75nsQq4hJ91JAVF1YN2Ht3j67PzDR08BKeLyzZbnDxC1lJnKVSm9IZcO2
         k1V8HPAJulh/nv+WlrjnJy4dcXbWwa2RsmhIpw86eVwTEr6gxnMZ0sUpBiq0alONi+e1
         AsSw==
X-Gm-Message-State: AMke39m0DNoFhFA/PwQL/EvX2FesCCpOIivpNv397e8+v2Hazt5eM7Irys9HI/Z5Aotfh/FJCcn2HHonkMk7bA==
X-Received: by 10.46.88.79 with SMTP id x15mr4889093ljd.39.1488226919870; Mon,
 27 Feb 2017 12:21:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Mon, 27 Feb 2017 12:21:59 -0800 (PST)
In-Reply-To: <1488223529.25838.8.camel@perches.com>
References: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com> <1488223529.25838.8.camel@perches.com>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Tue, 28 Feb 2017 01:51:59 +0530
Message-ID: <CALrZqyMTTk4o5Y5e3DzH_cqXxvHsHDtByG0oYwWMjekZSR7Kkw@mail.gmail.com>
Subject: Re: [PATCH 1/5] staging: lustre: Remove unnecessary else after return
To: Joe Perches <joe@perches.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, lustre-devel@lists.lustre.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	linux-fbdev@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 28, 2017 at 12:55 AM, Joe Perches <joe@perches.com> wrote:
> On Mon, 2017-02-27 at 23:44 +0530, simran singhal wrote:
>> This patch fixes the checkpatch warning that else is not generally
>> useful after a break or return.
>
> checkpatch doesn't actually warn for this style
>
>         if (foo)
>                 return bar;
>         else
>                 return baz;
>
ok, My bad
so, I have to change commit message as checkpatch doesn't warn for this style.
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
>>  drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c | 3 +--
>>  drivers/staging/lustre/lustre/ldlm/ldlm_pool.c      | 3 +--
>>  2 files changed, 2 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
>> index fbbd8a5..02d49b7 100644
>> --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
>> +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
>> @@ -1806,8 +1806,7 @@ ksocknal_close_matching_conns(struct lnet_process_id id, __u32 ipaddr)
>>
>>       if (!count)
>>               return -ENOENT;
>> -     else
>> -             return 0;
>> +     return 0;
>>  }
>>
>>  void
>> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
>> index cf3fc57..ac32c82 100644
>> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
>> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
>> @@ -338,8 +338,7 @@ static int ldlm_cli_pool_shrink(struct ldlm_pool *pl,
>>
>>       if (nr == 0)
>>               return (unused / 100) * sysctl_vfs_cache_pressure;
>> -     else
>> -             return ldlm_cancel_lru(ns, nr, LCF_ASYNC, LDLM_LRU_FLAG_SHRINK);
>> +     return ldlm_cancel_lru(ns, nr, LCF_ASYNC, LDLM_LRU_FLAG_SHRINK);
>>  }
>>
>>  static const struct ldlm_pool_ops ldlm_cli_pool_ops = {

