X-GM-THRID: 6523310311652458496
X-Received: by 10.55.158.81 with SMTP id h78mr8112034qke.24.1518937970361;
        Sat, 17 Feb 2018 23:12:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.68.2 with SMTP id j2ls3366129qtn.8.gmail; Sat, 17 Feb 2018
 23:12:49 -0800 (PST)
X-Google-Smtp-Source: AH8x227v4SmpljXR3jqdeWipHRlhmrQzqK43zAwwCTf9XCvUZK3DShbOM5Y+qip++GK19gRuKYsJ
X-Received: by 10.237.59.91 with SMTP id q27mr8292384qte.21.1518937969545;
        Sat, 17 Feb 2018 23:12:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518937969; cv=none;
        d=google.com; s=arc-20160816;
        b=nIJKv5ZJqnNpZB8BdpfQ8TbJbS7emVGBlemJHbSPaQ1uC/wEJwa5Tb4py7fxL/RtRA
         y383fyTpLYIKXQxfbP7dwjq80/u43FiEKOT5ylOmz0gWH307RQLAsqIUbDoRoD7FdUh7
         OEA3LoqC7HU8QjmPCk7tOfCZs9XjzX61JYrqrCTUm9kQ47G3G4O9C87BtrffTL69Dkwz
         Z/3ztJZOIzdY57uEPNiwyzvS8nMQGI7/LXdKY1SM4YV3zCBBdAJcrvZd2Di2BMaL3JeU
         C2eyGg7SXOZAoBPt2CGY+khxKTvaAT3oyw9j2rcbPwhg3BhuJQYS1WmxhWsyruAi6k4A
         Argg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=Y/XDtXXn6zPr/81CY7tlywW2uxJLO339AcAxP56BIaw=;
        b=MSMBJ2mXCUl+y12fkOU9eT6iKOpC2n97lQMMXPTbwm/00gSCRjRKTRg93VocZMxrHS
         nc+cUORCyRjNeKUab2YnXW3wnbkaQXm4rlgDAA4DGhjBqK/yGjtq8Dt/276hR+GPRFDw
         a1A16mGbNPikopfScgcJ/CGxw2GY+7fulKX9g8OZFzGZZ+s4AjJZCSfJ0f2WvvJ4jSqT
         HGCZlgH7JXCSU0sPJ+tEIzVklj7Xwj6S85Ehn2HiPo64UAzpZZ7AL3stTNnJAtM12nJO
         ImdixzbFKrIkx7erx7Th+stXuAJC0Up1qziEX2KQ5g/g4govMQ/BzuMtIX7FidTdRSNm
         AwEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vFoqbh/d;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chenyensu0@gmail.com>
Received: from mail-io0-x242.google.com (mail-io0-x242.google.com. [2607:f8b0:4001:c06::242])
        by gmr-mx.google.com with ESMTPS id p12si426943qtl.1.2018.02.17.23.12.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Feb 2018 23:12:49 -0800 (PST)
Received-SPF: pass (google.com: domain of chenyensu0@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) client-ip=2607:f8b0:4001:c06::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vFoqbh/d;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io0-x242.google.com with SMTP id e7so8302236ioj.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Feb 2018 23:12:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Y/XDtXXn6zPr/81CY7tlywW2uxJLO339AcAxP56BIaw=;
        b=vFoqbh/dnnaIb0EGvd0X/A/VQBEWT1J2YhDVhYUrycEMwkoMFo21XZmPYkszIye0HW
         +7a0neC6rn4W0XjxgN3P0AzJ53vjdJVyyvNK3k3yKwewJJv9tXXtU8sxT/m5NKzIP/p/
         BOqAnqVvIMhhIIy60aSymCrrSNdxVwV33XUSHDcDsewATDpZVZxJuj1pl0Qb6p19jh+2
         w2l492BpZFGQy+l6DYijgY9N4D6GYapq+2X8EsVCFyZfrZYs7CLf6cEZOKkehcJJUOlD
         sCHjv9UTIZYaDnxnlkkq/13TJV591wmfl6WOP+9F2uF/T5XIrdcsht8dDkMfgftn0XMl
         RiPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Y/XDtXXn6zPr/81CY7tlywW2uxJLO339AcAxP56BIaw=;
        b=WuIpT9PBNOG7UKbBlFplK0Fx7hC6CFUaY/VLiBgPio88cslkahy782mhKwd3WmIYiy
         ++5M2WVHrB1ImN31FvCrtYid3O75/NqLOKda3UYG+/x+y5JSFCQ0FI3sQlLuG8UksPuS
         x/klYqIaCow4fRJTPKgJEFUvG9zQsh89PUrwKfV93M4/F29EG/eEPTytCM/km9+hyJYm
         wxFkXy3MCI9SxskblQMM3ZzdRRfYNhq6+HvaD7OH2RJLaA25adisZMbbLbMLdce7YV1N
         HNybmSd2j2lOxQyt4HenhAo971pucCAE/jtLn31ERazZvPkQSABEyvA39NP/bwU9tQSu
         NfYg==
X-Gm-Message-State: APf1xPDHFZyZLUZQ9M4xV560EUbkbeTKESe8/w1Kg+a2QxRhmje8tY9X
	lr7FdkLjSqBDtOY3tHJX3JKsHRr0ETmrch/mox0=
X-Received: by 10.107.172.130 with SMTP id v124mr14811103ioe.301.1518937969035;
 Sat, 17 Feb 2018 23:12:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.180.65 with HTTP; Sat, 17 Feb 2018 23:12:48 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1802170832430.2645@hadrien>
References: <20180217001446.6261-1-chenyensu0@gmail.com> <alpine.DEB.2.20.1802170832430.2645@hadrien>
From: Eisha Chen-yen-su <chenyensu0@gmail.com>
Date: Sun, 18 Feb 2018 08:12:48 +0100
Message-ID: <CAEXvT6vEi198aC_ej=9Tm2byd+peBtzy7iFYj40SC3PkrP9x3w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Fix dereference
 warning style
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="UTF-8"

On Sat, Feb 17, 2018 at 8:35 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 17 Feb 2018, Eisha Chen-yen-su wrote:
>
>> This patch fixes the checkpatch.pl warning:
>>
>> WARNING: Avoid multiple line dereference - prefer 'devpriv->ao_buffer_bus_addr[i]'
>> \#1494: FILE: drivers/staging/comedi/drivers/cb_pcidas64.c:1494:
>> +                                                  &devpriv->
>> +                                                  ao_buffer_bus_addr[i],
>
> Thank you for your patch.  For the subject line and the commit log, please
> try to focus on what you did, rather than what you fixed, as fixing can
> typically be done in multiple ways.  Basically what you have done is to
> remove a newline inside a dereference.  Also, while it's ok to include the
> checkpatch message, it is probably not necessary to cinlude the cited
> line, since one can easily see that from what changes in the patch.
>
> Please send a v2.
>
> julia

Hello,

I was wondering if the line
`WARNING: Avoid multiple line dereference - prefer
'devpriv->ao_buffer_bus_addr[i]'`
wasn't too long in the commit body, as it is more than 80 characters long.
Unless it is acceptable because I'm quoting something?

Eisha

Ps: I've sent a v2 without answering here before. Maybe it was a
little bit rude.
Sorry, if it was the case.

>>
>> Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
>> ---
>>  drivers/staging/comedi/drivers/cb_pcidas64.c | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
>> index b657beedd5ff..eea44435a2aa 100644
>> --- a/drivers/staging/comedi/drivers/cb_pcidas64.c
>> +++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
>> @@ -1490,8 +1490,7 @@ static int alloc_and_init_dma_members(struct comedi_device *dev)
>>                       devpriv->ao_buffer[i] =
>>                               dma_alloc_coherent(&pcidev->dev,
>>                                                  DMA_BUFFER_SIZE,
>> -                                                &devpriv->
>> -                                                ao_buffer_bus_addr[i],
>> +                                                &devpriv->ao_buffer_bus_addr[i],
>>                                                  GFP_KERNEL);
>>                       if (!devpriv->ao_buffer[i])
>>                               return -ENOMEM;
>> --
>> 2.14.3
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180217001446.6261-1-chenyensu0%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

