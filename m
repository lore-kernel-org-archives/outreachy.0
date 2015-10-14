X-GM-THRID: 6205566056947253248
X-Received: by 10.13.209.70 with SMTP id t67mr3821696ywd.46.1444846601391;
        Wed, 14 Oct 2015 11:16:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.202 with SMTP id d10ls1783485igx.41.canary; Wed, 14 Oct
 2015 11:16:40 -0700 (PDT)
X-Received: by 10.50.41.7 with SMTP id b7mr23293808igl.12.1444846600713;
        Wed, 14 Oct 2015 11:16:40 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x234.google.com (mail-qg0-x234.google.com. [2607:f8b0:400d:c04::234])
        by gmr-mx.google.com with ESMTPS id y6si695421ywc.3.2015.10.14.11.16.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:16:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::234 as permitted sender) client-ip=2607:f8b0:400d:c04::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x234.google.com with SMTP id 61so50194232qgx.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=oBJn+aCMpSDFWsCDAHZhMOGgeH2f8ochQB3URTKsr44=;
        b=eTelgUIoqUuIxo20j2bCMZY/gro5lg3iHRRkZ67uTvAztiN+nZTEPowPdeHgl1Wuxn
         MGEUSSHS22yRUH25yprH3XWj2NNtUIQ4dgyk8TuPqw9b+LjbQarvVj4jHGgXwAzH/6Zr
         vvq9CRr4H/A/rNVpFLmCC9EWs3i2XVfc8RjD21QY+Vhtw+nPOaF24+UM9soK9Oqxwypr
         BdPNz+aH2IU80GIpfQylVpqc1oEelj20AnZu3zPJeSfmDWVAf9qNa2HJn5oTnFMM9CRY
         5RHaosdhgwL7VVZCo/Yj31X/pCCEnXdbb9wqXUq0w6IMwFewP8lwQfhkdHGjW06JYBTi
         x2ng==
MIME-Version: 1.0
X-Received: by 10.140.235.210 with SMTP id g201mr6232557qhc.89.1444846600497;
 Wed, 14 Oct 2015 11:16:40 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Wed, 14 Oct 2015 11:16:40 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510142008470.2421@hadrien>
References: <cover.1444845733.git.amitoj1606@gmail.com>
	<alpine.DEB.2.10.1510142008470.2421@hadrien>
Date: Wed, 14 Oct 2015 23:46:40 +0530
Message-ID: <CA+5yK5H3g3GGtDob2=UNVRdgjn9BMUy7tzkO6EOcd3OLn16Qgw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/6] staging: lustre: Remove useless
 cast on void pointer
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 11:39 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Wed, 14 Oct 2015, Amitoj Kaur Chawla wrote:
>
>> This patchset fixes multiple useless casts on void pointers.
>>
>> The semantic patch used to find this is:
>>
>> @r@
>> expression x;
>> void* e;
>> type T;
>> identifier f;
>> @@
>>
>> (
>>   *((T *)e)
>> |
>>   ((T *)x)[...]
>> |
>>   ((T *)x)->f
>> |
>> - (T *)
>>   e
>> )
>>
>>
>> Amitoj Kaur Chawla (6):
>>   staging: lustre: ptlrpc: Remove useless cast on void pointer
>>   staging: lustre: ptlrpc: Remove useless cast on void pointer
>>   staging: lustre: ptlrpc: Remove useless cast on void pointer
>>   staging: lustre: ptlrpc: Remove useless cast on void pointer
>
> The patches haven't arrived in my mailbox yet, but it looks like you will
> have four with the same subject?
>
> julia
>
Yes all 4 are doing the same thing. Is this a bad thing?
Since I'm making changes in separate files I thought it would be
better to send them as separate patches.
Should I combine the 4 and resend the series?

>>   staging: lustre: mgc: Remove useless cast on void pointer
>>   staging: lustre: osc: Remove useless cast on void pointer
>>
>>  drivers/staging/lustre/lustre/mgc/mgc_request.c | 6 +++---
>>  drivers/staging/lustre/lustre/osc/osc_request.c | 7 +++----
>>  drivers/staging/lustre/lustre/ptlrpc/pinger.c   | 2 +-
>>  drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c | 3 +--
>>  drivers/staging/lustre/lustre/ptlrpc/sec_gc.c   | 2 +-
>>  drivers/staging/lustre/lustre/ptlrpc/service.c  | 6 +++---
>>  6 files changed, 12 insertions(+), 14 deletions(-)
>>
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1444845733.git.amitoj1606%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>



-- 
Warm Regards,


Amitoj Kaur Chawla
Public Relations Head, IEEE IGDTUW Branch
Mobile: +919560127770
Indira Gandhi Delhi Technical University for Women
Kashmere Gate, New Delhi-06

