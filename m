X-GM-THRID: 6469118697195700224
X-Received: by 10.31.3.99 with SMTP id 96mr4068272vkd.6.1506332164600;
        Mon, 25 Sep 2017 02:36:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.161.205 with SMTP id y196ls1233476ywg.9.gmail; Mon, 25 Sep
 2017 02:36:03 -0700 (PDT)
X-Received: by 10.129.107.70 with SMTP id g67mr4528206ywc.161.1506332163841;
        Mon, 25 Sep 2017 02:36:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506332163; cv=none;
        d=google.com; s=arc-20160816;
        b=en13jh/mfFF2yr7nesczC5D+/42WS5LR64BlBdotDKyJulgRCuhyinQ7GAHwztToPH
         v7rbmUkMXbixY8xMFabY9/iOJ4NjTnc99fFltauuaKh6bhywzGB6jefVT2kEOms6e4vu
         DpEu4COLNdPHJHCSAhY+Tlb+VCuRpqmX3EzvdE25udAdfncJiTJen9tgTjogLGxPMPpJ
         iQymj+D0WtHzO0pAbuE7aJvaUIuRF443W/GrcXM9Rr0CZZBx54PWAEO9ltO9Tkbn1Ag6
         +fvI1gVoOKhRGBsipkR9EJqZSH9zeyuhxmuax2UBP/QRLRWFMFOPdgF+u1FXzx4NXjzp
         IJNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=Bw1b+5Ns7CW2NDWPr1irThJQwi9ZLzz5pe+IJJEAGFE=;
        b=pz7zourPdFiv8pucobQx+qZtxVLdWBxODYYTFOMkbE7NR6UMOqMpUIsxExynmWc36W
         fmkuUAK/G/371ehceNsjY9LTrTbrQDYSV6O7mqHJE6uJ4U+hhJU8DY1aZiW5/aruKBjY
         zstF/0mX37qpsOCiWCv7n7Q7ou1axAUZZdk8TAU4fb8xbhZJtBQgczciK591KmafshxQ
         JG8Kp9PgCda6T4vTB2NU0M5TVAGZb2tkPoxiWU45EHTGdqC5Hrtkhpij2BgQw2Dl2A6l
         bhdsSSODR3YbQnPL+PbIgNgUZ5yjDPU8EftYqxQJKea/RpNQ6Nnso0PmBEvXjkOVV0FD
         XF0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZWzcZt6T;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qt0-x243.google.com (mail-qt0-x243.google.com. [2607:f8b0:400d:c0d::243])
        by gmr-mx.google.com with ESMTPS id i77si247477ywc.9.2017.09.25.02.36.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 02:36:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) client-ip=2607:f8b0:400d:c0d::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZWzcZt6T;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x243.google.com with SMTP id b1so4585192qtc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Sep 2017 02:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Bw1b+5Ns7CW2NDWPr1irThJQwi9ZLzz5pe+IJJEAGFE=;
        b=ZWzcZt6TMGIbMLIXkq5nUmvI2hBLoLdk5SzJ7b2vdvz5VZmM+k0nstNI/3TFaeIKXg
         6IphnICs+j2aqRKDXwt1xqNFDiNhiwvwF5ZmSxh2tC8GDp/7EmZ8uVyUjjKCd8DcP3Kj
         4W78fOCDsjBNp+iiKPHInp8Gqzwzt0x+kdnHWr/DGvttg8hC9NuovXWgE9AcipkkgydN
         nt+IyZUXBI5fI1ofE98ZYpucws21CMWSDOGnJP6UKVLqU0bbovRihIdVGIXIZI5yDv9v
         oqUnsJDLnQVLq57CigjiJipAy+ssHeYyka53D3WfJPX0AftfTt4MRSAirq8es+p8eaXn
         KUMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Bw1b+5Ns7CW2NDWPr1irThJQwi9ZLzz5pe+IJJEAGFE=;
        b=bxjC7rab0YDkuGTIZYBFH35eMHSmxp53V5vX655J9dP7mb6pDExyJLH7C3QIzobYQ9
         XCbE6dMxsghujWCFYdInDqgHT1Jysz1+fUJSdF6YK2HgImMnyMJDsdOIlAsRdie9pXGf
         mYENtIw65Tvo2Z7nmN4klj8X0nExEWbsZM3Z0vQLIEmZ7/yL4Y9OHMS1GHcf+gDHMAf8
         yl4fVZdHBYhpGtKJDDjJXaUVZ2N84icLhuVJPwiooFsZKLylyqLmJFdsS+eTBFnepAKx
         rn6g/MioUFchDM1qs4x7VfrfpaGzcV0uvZx9+jAYqcPeYGEuwrlqvo/P/VHNEaMTopsO
         /5RQ==
X-Gm-Message-State: AHPjjUhCbNDd3tiyH8xdbnsSVm3gIVyRJBBVIzZ/H0Nzez8txgTvnb+W
	rRSNBwczGtVJ2X+4ZWdcTWfi3DOKGM1QkhEiy0S52IhF
X-Google-Smtp-Source: AOwi7QCDdGdGwK86Tvuu/FCG4oRwtXRZW2mGvfjl4fjsP0+uEqRSTVs0wDr74W2w6Rdu2SJfbjtnwA3r1GuD6Ywgl/w=
X-Received: by 10.200.49.170 with SMTP id h39mr9836505qte.162.1506332163488;
 Mon, 25 Sep 2017 02:36:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.18.240 with HTTP; Mon, 25 Sep 2017 02:36:02 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709240900140.2101@hadrien>
References: <20170923232419.21625-1-georgiana.chelu93@gmail.com> <alpine.DEB.2.20.1709240900140.2101@hadrien>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Mon, 25 Sep 2017 12:36:02 +0300
Message-ID: <CALta04w00_XEDmGfUfFa=Sq3JsObV6eJcQ-sCS-zG+uFEwbu3g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: atomisp: Use
 kmalloc_array instead of kmalloc
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On 24 September 2017 at 10:05, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 24 Sep 2017, Georgiana Chelu wrote:
>
>> Prefer kmalloc_array over kmalloc with multiply
>> because kmalloc_array performs additional checks
>> before memory allocation.
>>
>> Fix the following issues reported by :
>> * WARNING: Prefer kmalloc_array over kmalloc with multiply
>> * CHECK: Alignment should match open parenthesis
>>
>> Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
>>
>> ---
>>  drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
>> index 11162f595fc7..22dbd79fe123 100644
>> --- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
>> +++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
>> @@ -725,8 +725,8 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
>>
>>       pgnr = bo->pgnr;
>>
>> -     bo->page_obj = kmalloc(sizeof(struct hmm_page_object) * pgnr,
>> -                             GFP_KERNEL);
>> +     bo->page_obj = kmalloc_array(pgnr, sizeof(struct hmm_page_object),
>> +                                  GFP_KERNEL);
>>       if (unlikely(!bo->page_obj)) {
>>               dev_err(atomisp_dev, "out of memory for bo->page_obj\n");
>
> If you want to make a series on this code, the error message here and in
> the next case are not necessary - kmalloc will generate a backtrace on
> failure that will make the same information available.  Alse, the
> unlikely's do not look necessary.  The compiler can figure it out for
> itself.
>

Hi Julia,

I have done some research regarding kmalloc and compiler optimization.
Here is my understanding of the change you suggested to me.

The memory allocation in kmalloc function is done using the Slab Allocator
and it is the allocator job to improve the branch prediction with the
likely/unlikely macros.
Also, it's safe to do the prediction on a lower level because any
mistake will cost
more CPU cycles.

Please, tell me if it is correct. Thank you!

I will resend this patch as a patch set. Should I change the version?


Thanks,
Georgiana


>>               return -ENOMEM;
>> @@ -990,7 +990,7 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
>>       struct vm_area_struct *vma;
>>       struct page **pages;
>>
>> -     pages = kmalloc(sizeof(struct page *) * bo->pgnr, GFP_KERNEL);
>> +     pages = kmalloc_array(bo->pgnr, sizeof(struct page *), GFP_KERNEL);
>>       if (unlikely(!pages)) {
>>               dev_err(atomisp_dev, "out of memory for pages...\n");
>>               return -ENOMEM;
>
> It looks like you have missed a call just under this one?

I will resend it as a patch set with a

>
> julia
>
>> --
>> 2.11.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170923232419.21625-1-georgiana.chelu93%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

