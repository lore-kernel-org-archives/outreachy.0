X-GM-THRID: 6212095586717401088
X-Received: by 10.50.13.37 with SMTP id e5mr6099116igc.6.1446369424485;
        Sun, 01 Nov 2015 01:17:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.159.130 with SMTP id i124ls1008486ioe.41.gmail; Sun, 01
 Nov 2015 01:17:04 -0800 (PST)
X-Received: by 10.66.154.170 with SMTP id vp10mr5159747pab.29.1446369424116;
        Sun, 01 Nov 2015 01:17:04 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22d.google.com (mail-qg0-x22d.google.com. [2607:f8b0:400d:c04::22d])
        by gmr-mx.google.com with ESMTPS id z62si1100240ywb.4.2015.11.01.01.17.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:17:04 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) client-ip=2607:f8b0:400d:c04::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x22d.google.com with SMTP id b65so94778704qgb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 01:17:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=AA1/s49Vs9j6sBI9kzI5dImZ/OUJcjiiFHwifm763qQ=;
        b=mujW/QUwGjAF5YX20wvhyjgHvwb2uylKS3EK9oidw6a18G9mRWIaiPBggmF1l9pjIb
         IVH/zpvjrjKtUsEvMAsrwInQfPvv7FaUTYYS/JrXCid9uMwho9Cwxg9izXzn2H68TDUv
         XEvE8RSHWxVtCPLqo+7p6tWGN/CPLLP9luWVB8kdAY6B3ezLCXHzfuu2I4D4eDM2hA1L
         UzwREEVC4dBUkysl5HUdlOGCcAAL3enf5ZQkIsJt2pRcPS+gfX6Qi0XVjwbjayeidA+v
         rCmXX7G3xSW8Osas3WSnwG9EzkAjorD6gD1XrT1zSyMnVnDdIEsU2HA5VNOtlg/fh9RC
         T9uA==
MIME-Version: 1.0
X-Received: by 10.140.92.210 with SMTP id b76mr5148218qge.104.1446369423894;
 Sun, 01 Nov 2015 01:17:03 -0800 (PST)
Received: by 10.140.21.38 with HTTP; Sun, 1 Nov 2015 01:17:03 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1511011011570.2070@localhost6.localdomain6>
References: <cover.1446366036.git.amitoj1606@gmail.com>
	<23ac38a01d5092053da227aaa0741b270125ceeb.1446366036.git.amitoj1606@gmail.com>
	<alpine.DEB.2.02.1511010938560.2070@localhost6.localdomain6>
	<CA+5yK5E2vnAQfvv0F_TyyyNf6ALtz-MVQnCmQ8Nazn7gL30q3g@mail.gmail.com>
	<alpine.DEB.2.02.1511011007130.2070@localhost6.localdomain6>
	<CA+5yK5EbsHmB7FOkZ8WsHXOrRQDOYqCeMUQMrL+2_Wd7K--0sw@mail.gmail.com>
	<alpine.DEB.2.02.1511011011570.2070@localhost6.localdomain6>
Date: Sun, 1 Nov 2015 14:47:03 +0530
Message-ID: <CA+5yK5GdEsnjQSUdiP8VLNXBWhCuOoYFQvqvSPGLhydVq3h3Sw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/5] staging: rdma: hfi1: chip: Remove
 wrapper function
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Nov 1, 2015 at 2:43 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 1 Nov 2015, Amitoj Kaur Chawla wrote:
>
>> On Sun, Nov 1, 2015 at 2:38 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> > On Sun, 1 Nov 2015, Amitoj Kaur Chawla wrote:
>> >
>> >> On Sun, Nov 1, 2015 at 2:11 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >> > On Sun, 1 Nov 2015, Amitoj Kaur Chawla wrote:
>> >> >
>> >> >> Drop wrapper function remap_receive_available_interrupt() that can be
>> >> >> replaced by a single line of code.
>> >> >>
>> >> >> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> >> >> ---
>> >> >>  drivers/staging/rdma/hfi1/chip.c | 8 +-------
>> >> >>  1 file changed, 1 insertion(+), 7 deletions(-)
>> >> >>
>> >> >> diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
>> >> >> index beac326d..a9c6abf 100644
>> >> >> --- a/drivers/staging/rdma/hfi1/chip.c
>> >> >> +++ b/drivers/staging/rdma/hfi1/chip.c
>> >> >> @@ -8749,12 +8749,6 @@ static void remap_sdma_interrupts(struct hfi1_devdata *dd,
>> >> >>               msix_intr);
>> >> >>  }
>> >> >>
>> >> >> -static void remap_receive_available_interrupt(struct hfi1_devdata *dd,
>> >> >> -                                           int rx, int msix_intr)
>> >> >> -{
>> >> >> -     remap_intr(dd, IS_RCVAVAIL_START + rx, msix_intr);
>> >> >> -}
>> >> >
>> >> > remap_intr is not a standard kernel function.  But perhaps one could argue
>> >> > that the constant name gives the same information as the function name, so
>> >> > the function is not needed.
>> >> >
>> >> > But this function is the neighbor of another very similar function that
>> >> > remaps three interrupts at once.  The two functions are also used in a
>> >> > very parallel way, at the end of successive if branches.  It seems strange
>> >> > to inline one function and not the other.
>> >> >
>> >> > julia
>> >>
>> >> In this case, the function names are very similar and the wrapper just
>> >> add the macro IS_RCVAVAIL_START to the second argument, so the change
>> >> made sense to me.
>> >
>> > Personally, I would find the lack of parallelism confusing.
>> > But one could have an opinion either way on this one.
>> >
>> > julia
>> >
>>
>> So I should leave this as is or drop it? Confused.
>
> Up to you in this case.  I can see both points of view.  In one point of
> view, it is nice to have parallel function names.  In another point of
> view, in the case with three operations, a helper function is being
> introduced for a complicated case.  This case is different than set/clear
> because the two functions are not eg opposites of each other.  There are
> just four registers, three that fit together and one that is different.
>
> julia

I'll send this one as a separate patch , since Greg would then decide
whether the change is worth being made and send the changed patch
series separately.

Thanks,
-- 
Amitoj

