X-GM-THRID: 6396341070428372992
X-Received: by 10.99.111.11 with SMTP id k11mr2027862pgc.38.1489589200652;
        Wed, 15 Mar 2017 07:46:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.91 with SMTP id l27ls2171073otd.41.gmail; Wed, 15 Mar
 2017 07:46:40 -0700 (PDT)
X-Received: by 10.13.230.144 with SMTP id p138mr1850180ywe.71.1489589200150;
        Wed, 15 Mar 2017 07:46:40 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x241.google.com (mail-it0-x241.google.com. [2607:f8b0:4001:c0b::241])
        by gmr-mx.google.com with ESMTPS id a17si797738itd.1.2017.03.15.07.46.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 07:46:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) client-ip=2607:f8b0:4001:c0b::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x241.google.com with SMTP id u69so3288315ita.3
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 07:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=0iBwr8VPdDq2ScY3cbd8uWCDBcDgS3SgqoQ8PV5ktGU=;
        b=Qm8JQcAXZo219FGjvfmNWD7rnLYRquT666Gt8drawHghoNwXYNmAEU9H92lM5dGNg8
         R0489Lr0OYR4PGm8EP3zP5BPKWQn6umwGIWgi8DXSqmqgpA+ktyLZLx8Ts19/RnQlj+3
         lbPXWwQgJapH9DI4G389k55s7utAqVekd9+fokuZet/JKqr4Lhjm18xsb4sWeZi6U53y
         gO2QQnv2HowRMeWthLNNemTmD2HOiv9x9+bu02yPpGhmGOSCUYbbNWupfo2gAAsRw2iN
         xo79dxHJGP5yU9EQS6ns+YAAjBNezrbxYcY7Vw258BdAlZ1rVrMgzEL5/o5w9w8aUnpe
         ZZKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=0iBwr8VPdDq2ScY3cbd8uWCDBcDgS3SgqoQ8PV5ktGU=;
        b=H2Chj06wvMqzmIcDaZzFoDHYSSEOvx1FU4hEwFtS4GEr5N2Uloj+oyrr9KxDf83U0N
         SBTU3Xaq545/p8CAOfxxQ3idAUz2lSF2Au+otm+6n23XWZPYgwFKwPPGrttiXnPe3j5A
         GyZdOVJBj4swJOJaNm+v+w+r4UxwcEDUm3KDbuiEhEvRDyF1sYZ4nVXpKgdJVD9fwd7h
         fz2XpNYSLGKHYDbylb+HQQiHlX7GGkokKoVPKUR9ENIQY0e2KceQnGHe7W+bQZMr39mj
         NrS9bud8CUjBYsOI9Wmd22JIyC/JSkIN7AlSllc57+CBuxMViQOHG/lbnm0IUYraTGrE
         jvAQ==
X-Gm-Message-State: AFeK/H2kk1/WzZAsk4G60w/uXo0RTPEMrDYB9jXxytpOdM6sSZFQ9AFy1wqq5uO/JRtE24AoTaaV3UyNdeQcHA==
X-Received: by 10.36.131.131 with SMTP id d125mr22455308ite.113.1489589199848;
 Wed, 15 Mar 2017 07:46:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Wed, 15 Mar 2017 07:46:09 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1703151435241.3566@hadrien>
References: <1489583788-16458-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1703151435241.3566@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Wed, 15 Mar 2017 20:16:09 +0530
Message-ID: <CAOCi2DGKY6B5bf0OzWQsVbwQ6nyBW_+RAShK6PW30gF3_8jnZQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [RESEND PATCH] staging: vc04_services: Use
 macro DIV_ROUND_UP
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 15, 2017 at 7:07 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 15 Mar 2017, Gargi Sharma wrote:
>
>> The macro DIV_ROUND_UP performs the computation (((n) + (d) - 1) /(d)).
>> It clarifies the divisor calculations.
>> Coccinelle script:
>
> As far as I can see, the patch is hugely out of date - the relevant code
> is now 500 lines later in the file, and the change has already been made
> on February 22 by Simran.
>

Oh, I'm so sorry. I rebased against staging-next and my commits were
buried deep, after that. So I did a git reflog and reset and I think I lost all
the patches.

Gargi
> julia
>
>>
>> @@
>> expression e1;
>> expression e2;
>> @@
>> (
>> - ((e1) + e2 - 1) / (e2)
>> + DIV_ROUND_UP(e1,e2)
>> |
>> - ((e1) + (e2 - 1)) / (e2)
>> + DIV_ROUND_UP(e1,e2)
>> )
>>
>> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
>> ---
>>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
>> index 03e1a13..eddff5f 100644
>> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
>> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
>> @@ -1569,7 +1569,7 @@ dump_phys_mem(void *virt_addr, u32 num_bytes)
>>       offset = (int)(long)virt_addr & (PAGE_SIZE - 1);
>>       end_offset = (int)(long)end_virt_addr & (PAGE_SIZE - 1);
>>
>> -     num_pages = (offset + num_bytes + PAGE_SIZE - 1) / PAGE_SIZE;
>> +     num_pages = DIV_ROUND_UP(offset + num_bytes, PAGE_SIZE);
>>
>>       pages = kmalloc(sizeof(struct page *) * num_pages, GFP_KERNEL);
>>       if (pages == NULL) {
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1489583788-16458-1-git-send-email-gs051095%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

