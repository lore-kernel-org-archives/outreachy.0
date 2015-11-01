X-GM-THRID: 6212095586717401088
X-Received: by 10.107.10.153 with SMTP id 25mr15412248iok.3.1446368986395;
        Sun, 01 Nov 2015 01:09:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.36.149 with SMTP id k143ls989971iok.7.gmail; Sun, 01 Nov
 2015 01:09:46 -0800 (PST)
X-Received: by 10.107.129.11 with SMTP id c11mr14572542iod.20.1446368986085;
        Sun, 01 Nov 2015 01:09:46 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22b.google.com (mail-qg0-x22b.google.com. [2607:f8b0:400d:c04::22b])
        by gmr-mx.google.com with ESMTPS id m7si1103028ywe.1.2015.11.01.01.09.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:09:45 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) client-ip=2607:f8b0:400d:c04::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x22b.google.com with SMTP id b65so94710238qgb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 01:09:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=vuMbVHxVBenowTL1n6h+3371ZpTvIBh9yLvDGHXJoJ0=;
        b=iWSQOTNw96DEkj5cKTZpA80kuPmVs+UCW55ldt5N2ZFtd+fiYqyAMIOdPjlArypT2F
         J8kJEtXmuiCLxVnOGrGmkMF7hAGUf7eYaw8Ge+Lcu3MuFFMp9dLXzyrdOwwFLbVI4e4U
         gnsz3u1a350uDVauIOVSjO+cjPUpNBpv2SqWLET6JP39QKfpTo+gRSyD0p/4cnhTdeN/
         9UVq4tsMbulpcry+0vYKHhYL61bzZ6HreHlqaBZX/8Uuszm7FThdc3LLYuQ/YG/RHOVP
         f8XuHQelkX8G2BHkCIfrTmk1yrECjYLXpE9w+gc9LYn3QxSnpmv9HnSmT2MgjSI59MJm
         bhTw==
MIME-Version: 1.0
X-Received: by 10.140.232.70 with SMTP id d67mr23419210qhc.62.1446368985794;
 Sun, 01 Nov 2015 01:09:45 -0800 (PST)
Received: by 10.140.21.38 with HTTP; Sun, 1 Nov 2015 01:09:45 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1511011007130.2070@localhost6.localdomain6>
References: <cover.1446366036.git.amitoj1606@gmail.com>
	<23ac38a01d5092053da227aaa0741b270125ceeb.1446366036.git.amitoj1606@gmail.com>
	<alpine.DEB.2.02.1511010938560.2070@localhost6.localdomain6>
	<CA+5yK5E2vnAQfvv0F_TyyyNf6ALtz-MVQnCmQ8Nazn7gL30q3g@mail.gmail.com>
	<alpine.DEB.2.02.1511011007130.2070@localhost6.localdomain6>
Date: Sun, 1 Nov 2015 14:39:45 +0530
Message-ID: <CA+5yK5EbsHmB7FOkZ8WsHXOrRQDOYqCeMUQMrL+2_Wd7K--0sw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/5] staging: rdma: hfi1: chip: Remove
 wrapper function
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Nov 1, 2015 at 2:38 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sun, 1 Nov 2015, Amitoj Kaur Chawla wrote:
>
>> On Sun, Nov 1, 2015 at 2:11 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> > On Sun, 1 Nov 2015, Amitoj Kaur Chawla wrote:
>> >
>> >> Drop wrapper function remap_receive_available_interrupt() that can be
>> >> replaced by a single line of code.
>> >>
>> >> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> >> ---
>> >>  drivers/staging/rdma/hfi1/chip.c | 8 +-------
>> >>  1 file changed, 1 insertion(+), 7 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
>> >> index beac326d..a9c6abf 100644
>> >> --- a/drivers/staging/rdma/hfi1/chip.c
>> >> +++ b/drivers/staging/rdma/hfi1/chip.c
>> >> @@ -8749,12 +8749,6 @@ static void remap_sdma_interrupts(struct hfi1_devdata *dd,
>> >>               msix_intr);
>> >>  }
>> >>
>> >> -static void remap_receive_available_interrupt(struct hfi1_devdata *dd,
>> >> -                                           int rx, int msix_intr)
>> >> -{
>> >> -     remap_intr(dd, IS_RCVAVAIL_START + rx, msix_intr);
>> >> -}
>> >
>> > remap_intr is not a standard kernel function.  But perhaps one could argue
>> > that the constant name gives the same information as the function name, so
>> > the function is not needed.
>> >
>> > But this function is the neighbor of another very similar function that
>> > remaps three interrupts at once.  The two functions are also used in a
>> > very parallel way, at the end of successive if branches.  It seems strange
>> > to inline one function and not the other.
>> >
>> > julia
>>
>> In this case, the function names are very similar and the wrapper just
>> add the macro IS_RCVAVAIL_START to the second argument, so the change
>> made sense to me.
>
> Personally, I would find the lack of parallelism confusing.
> But one could have an opinion either way on this one.
>
> julia
>

So I should leave this as is or drop it? Confused.

-- 
Amitoj

