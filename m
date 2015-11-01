X-GM-THRID: 6212095586717401088
X-Received: by 10.66.147.33 with SMTP id th1mr13336510pab.27.1446369237824;
        Sun, 01 Nov 2015 01:13:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.117.97 with SMTP id kd1ls576221igb.19.gmail; Sun, 01 Nov
 2015 01:13:57 -0800 (PST)
X-Received: by 10.66.145.193 with SMTP id sw1mr13993900pab.21.1446369237447;
        Sun, 01 Nov 2015 01:13:57 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x233.google.com (mail-qk0-x233.google.com. [2607:f8b0:400d:c09::233])
        by gmr-mx.google.com with ESMTPS id j204si252455ywg.2.2015.11.01.01.13.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:13:57 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) client-ip=2607:f8b0:400d:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x233.google.com with SMTP id r67so747748qkb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 01:13:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=v3DAEgwCkXB6xgxQc5uW55Fn+HyVFrDwf/Ydy9U+jn0=;
        b=RIdn9P2Jx5fGopA/ITambiF6tK3EtNU2FjHUS7mx8A8gTsDoCEj4nd/rfBJ7KvNHlH
         TfD1m0G8O4DbmC4aWaSNxneGVFffXE+6L/IidRV9RvweAvIQ+yXs7FPewbHuKjd66H8G
         oxnR81G2kOMUxNFU95l0A9zkJpqSWje94xb+Pw+TSlY64QvZTXjFRQW6twKh/zKAM1Yj
         AFm42sGHoptLqMvyNJB2tWz2JfSTyHmg+Vryw7k2vTBZUqwwP4c7hOlIfF7iuv7WDHFj
         Fpx0ZsYOndJDUGkOmuMePJvQLH66UYK0gcA/4T+Rq2tyLVpTYuETv4A64aDHQhCj0h0o
         2O0A==
MIME-Version: 1.0
X-Received: by 10.55.203.20 with SMTP id d20mr6803758qkj.57.1446369237243;
 Sun, 01 Nov 2015 01:13:57 -0800 (PST)
Received: by 10.140.21.38 with HTTP; Sun, 1 Nov 2015 01:13:57 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1511011009530.2070@localhost6.localdomain6>
References: <cover.1446366036.git.amitoj1606@gmail.com>
	<d87be280ac9dc0fe8fc50e25afabf579dcd7b98b.1446366036.git.amitoj1606@gmail.com>
	<alpine.DEB.2.02.1511010931350.2070@localhost6.localdomain6>
	<CA+5yK5G+mF3FKZaRb_6wuNGF+Wf=QHJ3GygW1NMgBZgvU5BE0Q@mail.gmail.com>
	<alpine.DEB.2.02.1511011009530.2070@localhost6.localdomain6>
Date: Sun, 1 Nov 2015 14:43:57 +0530
Message-ID: <CA+5yK5F6qPWpTigeyp0vz6-iYkpWw7owKjDg9S-9CLGx_BLdXQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/5] staging: rdma: hfi1: chip: Remove
 wrapper functions
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Nov 1, 2015 at 2:41 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 1 Nov 2015, Amitoj Kaur Chawla wrote:
>
>> On Sun, Nov 1, 2015 at 2:05 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> > On Sun, 1 Nov 2015, Amitoj Kaur Chawla wrote:
>> >
>> >> Drop wrapper functions add_rcvctrl() and clear_rcvctrl() that can be replaced by a single line of code.
>> >>
>> >> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> >> ---
>> >>  drivers/staging/rdma/hfi1/chip.c | 30 ++++++++++--------------------
>> >>  1 file changed, 10 insertions(+), 20 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
>> >> index a9c6abf..23cacbf 100644
>> >> --- a/drivers/staging/rdma/hfi1/chip.c
>> >> +++ b/drivers/staging/rdma/hfi1/chip.c
>> >> @@ -3176,16 +3176,6 @@ static void adjust_rcvctrl(struct hfi1_devdata *dd, u64 add, u64 clear)
>> >>       spin_unlock_irqrestore(&dd->rcvctrl_lock, flags);
>> >>  }
>> >>
>> >> -static inline void add_rcvctrl(struct hfi1_devdata *dd, u64 add)
>> >> -{
>> >> -     adjust_rcvctrl(dd, add, 0);
>> >> -}
>> >> -
>> >> -static inline void clear_rcvctrl(struct hfi1_devdata *dd, u64 clear)
>> >> -{
>> >> -     adjust_rcvctrl(dd, 0, clear);
>> >> -}
>> >
>> > Is it really an improvement?  adjust_rcvctrl is not a standard kernel
>> > function.  In the original code, one can undestand what add_rcvctrl and
>> > clear_rcvctrl do based on their names.  In the modified code, you have to
>> > know what is the significance of the different argument positions of
>> > adjust_rcvctrl, so you have to go look at the definition.  So this makes
>> > more work for someone who wants to understand the code.
>> >
>> > Wrapping standard kernel functions is not good.  And wrapping when the
>> > arguments don't change and the name is almost the same is probably not
>> > good either.  But here the wrapping would seem to add some value.
>> >
>> > julia
>>
>> Since both were using the same function and one would have to look at
>> adjust_rcvctrl to understand what add_rcvctrl and clear_rcvctrl are
>> doing, I thought this would work by removing that extra 2 functions.
>
> In any case, all of this discussion shows that the commit message needs to
> be better.  Just saying that something is a one-line function is not
> enough justification to remove it.  There needs to be an explanation about
> why the code will be improved as a result.
>
> julia

Okay will further improve on the commit message. And drop this since
add and clear make it more readable.

-- 
Amitoj

