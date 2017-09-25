X-GM-THRID: 6469118697195700224
X-Received: by 10.223.174.201 with SMTP id y67mr285405wrc.7.1506334446517;
        Mon, 25 Sep 2017 03:14:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.19.87 with SMTP id j84ls261159lfi.17.gmail; Mon, 25 Sep
 2017 03:14:04 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAMYToI9to6EYCZyhcyt7fjKPYYEVtmw5stkF9mV4MhpZ1iPbi3bcgnzFfXSXWAWPsHXdtT
X-Received: by 10.25.125.138 with SMTP id y132mr497503lfc.9.1506334444544;
        Mon, 25 Sep 2017 03:14:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506334444; cv=none;
        d=google.com; s=arc-20160816;
        b=MYnjzAKu4MRjnEJMyt4HeSA7g/dKy6hLCb7oPPmCC0VZPmpZS8Fsu0jLK7WH2jBfye
         VdXP7Mm3bw7dxeINMGkw9mf2NUuTygvmxjrLauScuRiaFtSrs4CIHNhY/i3PjjlTUg6P
         kbsg/2s0dJB3911/ZJaM4CJjIoBjHh3zeebu4PPNXeS5DTcFe/ShXQkO7+PDj+GHwOJ0
         lSX/JTUqqQTkMV9cvJi1wQHAw07Ms9SYt+NCPmLFP/Yj8KxVi4rhd48dalZF8BesxO2K
         9nuO3axRxHb6ibUUrlYy4+Wki34x6NnLCGr2U71uATFO7RTsDZKk+t5J0uPnjaoxATze
         qQTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=tHSWJLaop8NDgvQVjJPtwNnPViibHBO5M5/bQeWgbv8=;
        b=i3pe7rTahONJWK5HVkNJBg+8GTP721BXpaiZ6CpxPtrd5nKy6pdoVNgOxMm34fm7RA
         x2r87fu+HXZ67U6GM5rSf+9/8tITvPJzOwIIab0Ql/kEzBaOof5tFhhEhTVGMqK2e/XB
         /0YKYu4KZwOb9kO6Vv9jpu30ptUpwQs25mexlczNT7O7ApTpTykk8wyXlmLqH60+WoBt
         yx9ADlvGVwjbjnpjc2q0ZnBTotS0YhFPYrAFL9WTFjfCHBEBUmfA9IWwQ5X0e1/SVG9S
         mIhP7bbbNQuHudmEM1dAa1rdJ6KIdMiyFfwducy5n5wGPqBFQF8/A+X7L+p1QENwR4gm
         c2iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k18si659986wmd.1.2017.09.25.03.14.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 03:14:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,435,1500933600"; 
   d="scan'208";a="292572569"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Sep 2017 12:14:04 +0200
Date: Mon, 25 Sep 2017 12:13:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: atomisp: Use
 kmalloc_array instead of kmalloc
In-Reply-To: <CALta04w00_XEDmGfUfFa=Sq3JsObV6eJcQ-sCS-zG+uFEwbu3g@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709251211510.3141@hadrien>
References: <20170923232419.21625-1-georgiana.chelu93@gmail.com> <alpine.DEB.2.20.1709240900140.2101@hadrien> <CALta04w00_XEDmGfUfFa=Sq3JsObV6eJcQ-sCS-zG+uFEwbu3g@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 25 Sep 2017, Georgiana Chelu wrote:

> On 24 September 2017 at 10:05, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sun, 24 Sep 2017, Georgiana Chelu wrote:
> >
> >> Prefer kmalloc_array over kmalloc with multiply
> >> because kmalloc_array performs additional checks
> >> before memory allocation.
> >>
> >> Fix the following issues reported by :
> >> * WARNING: Prefer kmalloc_array over kmalloc with multiply
> >> * CHECK: Alignment should match open parenthesis
> >>
> >> Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
> >>
> >> ---
> >>  drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 6 +++---
> >>  1 file changed, 3 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
> >> index 11162f595fc7..22dbd79fe123 100644
> >> --- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
> >> +++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
> >> @@ -725,8 +725,8 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
> >>
> >>       pgnr = bo->pgnr;
> >>
> >> -     bo->page_obj = kmalloc(sizeof(struct hmm_page_object) * pgnr,
> >> -                             GFP_KERNEL);
> >> +     bo->page_obj = kmalloc_array(pgnr, sizeof(struct hmm_page_object),
> >> +                                  GFP_KERNEL);
> >>       if (unlikely(!bo->page_obj)) {
> >>               dev_err(atomisp_dev, "out of memory for bo->page_obj\n");
> >
> > If you want to make a series on this code, the error message here and in
> > the next case are not necessary - kmalloc will generate a backtrace on
> > failure that will make the same information available.  Alse, the
> > unlikely's do not look necessary.  The compiler can figure it out for
> > itself.
> >
>
> Hi Julia,
>
> I have done some research regarding kmalloc and compiler optimization.
> Here is my understanding of the change you suggested to me.
>
> The memory allocation in kmalloc function is done using the Slab Allocator
> and it is the allocator job to improve the branch prediction with the
> likely/unlikely macros.

I'm puzzled by the latter point. I don't think that the allocator would
affect the branch prediction at the call site.  But it is a pretty
standard strategy for a compiler to realize that a small if in the middle
of a function that ends in a immediate return is not likely to be taken.

julia

> Also, it's safe to do the prediction on a lower level because any
> mistake will cost
> more CPU cycles.
>
> Please, tell me if it is correct. Thank you!
>
> I will resend this patch as a patch set. Should I change the version?
>
>
> Thanks,
> Georgiana
>
>
> >>               return -ENOMEM;
> >> @@ -990,7 +990,7 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
> >>       struct vm_area_struct *vma;
> >>       struct page **pages;
> >>
> >> -     pages = kmalloc(sizeof(struct page *) * bo->pgnr, GFP_KERNEL);
> >> +     pages = kmalloc_array(bo->pgnr, sizeof(struct page *), GFP_KERNEL);
> >>       if (unlikely(!pages)) {
> >>               dev_err(atomisp_dev, "out of memory for pages...\n");
> >>               return -ENOMEM;
> >
> > It looks like you have missed a call just under this one?
>
> I will resend it as a patch set with a
>
> >
> > julia
> >
> >> --
> >> 2.11.0
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170923232419.21625-1-georgiana.chelu93%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>

