X-GM-THRID: 6256430192250585088
X-Received: by 10.66.131.106 with SMTP id ol10mr1232222pab.22.1456689183177;
        Sun, 28 Feb 2016 11:53:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.37 with SMTP id c5ls311970igt.22.canary; Sun, 28 Feb
 2016 11:53:02 -0800 (PST)
X-Received: by 10.66.182.225 with SMTP id eh1mr10130885pac.24.1456689182885;
        Sun, 28 Feb 2016 11:53:02 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qg0-x230.google.com (mail-qg0-x230.google.com. [2607:f8b0:400d:c04::230])
        by gmr-mx.google.com with ESMTPS id q187si1376254ywf.4.2016.02.28.11.53.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 11:53:02 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) client-ip=2607:f8b0:400d:c04::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x230.google.com with SMTP id b67so101841882qgb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 11:53:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=nRIplrA0bYeLFDGnsNG+9ZE+fEc8faq7AKV9jmCnwek=;
        b=X53T2x5igrsQFjgz3ToM2XwMsI01kAHVY9gB4HZg9GlbMjxjpcIkkGPJTuLjUtrFZN
         23AI3FRXJQ0tmQye3rkTnw/8ivY4lcHhTqdxyCv52+PUh9DQ1UPFoxYEcepQQ2p1Rk3b
         4eJBzUoGzd/3nxB1zPlN5q/FunwYsTvNFE+fI8cGjP8g2F419/ZXJ26zOaBcSh+UYRMJ
         6eWRsJvoqFvAxb2Wnfuoeozyf/VQA8O9GbMUwkMrlO8Rfxzf/3iPmTZcZffc0dBTktja
         KRsIkuWvA21hIDLQskbS8kpdGYYFOtYWzDKtJ9pW6LHClY8hvFcD6t+HHMxSGJHa2Hi/
         c97Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=nRIplrA0bYeLFDGnsNG+9ZE+fEc8faq7AKV9jmCnwek=;
        b=DBFQXXCIMLBBpVIfXVmeoayjlxmCgb77/ImCh1Htq+DIOWzkF/ucJBLGua/vtpygi0
         ezeEhMOs/OGWNT72sbcSB/6Ith6s3pAj/orblC0iIIebXwgLvM9AeQ1SV8s5xGtk/74F
         FcQ/UBqHH2qjytXWaLAXJoPIAkBglJ3VMt4oMGZA7zgespjqtluvcenIXn5+dzwLvk0s
         vYesTg403Df4a7m8zh3Qq2J0wNl84np+X4umCyTe/6WItLiASCKknSjoqwBReK8BEOIe
         R9YczhxYP0FHOnqIH93dQ+oO/CAZkmCzrhKAEUKFmwhe3Hl5ODnfXHIiHlVo1wTehTKQ
         MVeA==
X-Gm-Message-State: AD7BkJJjPyn1kKIiBSaN3BryovLvfCAfkTlXKKqiFkL/Es310wK+VWhpfiHguV8QHPgTSinBMKzHqVIS+XVL4Q==
X-Received: by 10.140.224.19 with SMTP id u19mr16082017qhb.93.1456689182678;
 Sun, 28 Feb 2016 11:53:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.217.215 with HTTP; Sun, 28 Feb 2016 11:52:23 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602282045040.2075@localhost6.localdomain6>
References: <20160228194139.GA1694@Karyakshetra> <alpine.DEB.2.02.1602282045040.2075@localhost6.localdomain6>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Mon, 29 Feb 2016 01:22:23 +0530
Message-ID: <CAFNHFT_j5ORVAnEXJYWLAHikbRNjf5+YKKG3EcAS0GOs9WWmWA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/6] Remove NULL test before vfree
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hello Julia,

Well, you caught me there :)
Path names were the same for some patches because the files belonged
to the same directory.
Can you suggest a different subject?

Thanks,
Bhaktipriya




On Mon, Feb 29, 2016 at 1:16 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Mon, 29 Feb 2016, Bhaktipriya Shridhar wrote:
>
>> This patch-set removes NULL tests before vfree.
>>
>> Bhaktipriya Shridhar (6):
>>   staging: rts5208: Remove NULL test before vfree
>>   staging: rtl8192e: Remove NULL test before vfree
>>   staging: rts5208: Remove NULL Test before vfree
>>   staging: rtl8188eu: core: Remove NULL test before vfree
>>   staging: rtl8188eu: core: Remove NULL Test before vfree
>
> I think that turning test into Test is a slightly subtle way of making the
> subject lines different.  It could be better to use a bit more of the path
> name.
>
> julia
>
>>   staging: rtl8188eu: os_dep: Remove NULL test before vfree
>>
>>  drivers/staging/rtl8188eu/core/rtw_recv.c    |  3 +--
>>  drivers/staging/rtl8188eu/core/rtw_sta_mgt.c |  3 +--
>>  drivers/staging/rtl8188eu/os_dep/usb_intf.c  |  2 +-
>>  drivers/staging/rtl8192e/rtl8192e/rtl_core.c |  6 ++---
>>  drivers/staging/rts5208/ms.c                 | 30 ++++++++---------------
>>  drivers/staging/rts5208/xd.c                 | 36 ++++++++++------------------
>>  6 files changed, 27 insertions(+), 53 deletions(-)
>>
>> --
>> 2.1.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160228194139.GA1694%40Karyakshetra.
>> For more options, visit https://groups.google.com/d/optout.
>>

