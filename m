X-GM-THRID: 6469118697195700224
X-Received: by 10.223.172.8 with SMTP id v8mr315400wrc.32.1506334552164;
        Mon, 25 Sep 2017 03:15:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.17 with SMTP id u17ls2285963ljd.9.gmail; Mon, 25 Sep
 2017 03:15:51 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCmwpkCK99QvFFAK9HDpXmPXRtk5ekg6UbuH2uMs/8z8yNgYSC3NuXClHIeTERetTMkKEmN
X-Received: by 10.46.25.66 with SMTP id p63mr419251lje.12.1506334551381;
        Mon, 25 Sep 2017 03:15:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506334551; cv=none;
        d=google.com; s=arc-20160816;
        b=jiglONNRcePnw5+BsPJ1fbYehA4wH6VzLmbvhTQ1ZtKTPOncmu8VD8XDGO0clqEFmI
         XpOvi5qflBxT8U4vixtskoR6qgt4zukO4SQf2jY9FIrNu7OaB0NOAO3VPzmIClBnkULX
         Fo1yCUewlSAY+EsW+ixGJE6ZzwVQGC1keCMs4qFUdHHpMlGOFGQILw16v3pwvJ3hcsF4
         hrrkLUzswZ2d1/uWL8oAJWaRwSLgtogSKpHg0LGrOavDJwyeKNnR9+PUbTuiQ/il4dTZ
         /1i/NPHISAOlSTXJ7qU8cqrJVhuauOlD8G0ox7V7fGEdlFkBM8TsA9HLAuIbqEZOwo4o
         63xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=/ou6IeA8Hdn6ogACuMFi2f1X4zQ1ii5JAEBehsWPzDI=;
        b=KrnNHyf+ZG8hX+SWiHpMYGx6zwZVRWmwVxADpmHF1UQ608zWohsi/YBHDwtrxYYgU6
         I/XS+zkBwN3miXsELH0SW/ep7q47WV1b+bwQr6R9/THqd7zO24cYa4fQNthQzZosZjHY
         4nb5h8TBe8CyZzquQx924ViGaPXwGFhhBbhrUwgTitStig1BjArvODOD9quVERfHpX6M
         C5htbPAngFwJClhCeThJ1TonoObkjd1+ErCpyN5mRzFe7G0tTpfJJM4OrfT5tZubhIAg
         QLUgtCCGh9tdbarX4bGCsMdDeOtW2TTvZZ4hIaZs2apTN5zRqBn01M5VxS3klhalqNn8
         g0iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l133si485120wmb.3.2017.09.25.03.15.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 03:15:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,435,1500933600"; 
   d="scan'208";a="292572823"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Sep 2017 12:15:51 +0200
Date: Mon, 25 Sep 2017 12:15:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: atomisp: Use
 kmalloc_array instead of kmalloc
In-Reply-To: <CALta04w00_XEDmGfUfFa=Sq3JsObV6eJcQ-sCS-zG+uFEwbu3g@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709251213590.3141@hadrien>
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
> Also, it's safe to do the prediction on a lower level because any
> mistake will cost
> more CPU cycles.
>
> Please, tell me if it is correct. Thank you!
>
> I will resend this patch as a patch set. Should I change the version?
>

I think v2 would be good.  State explicitly that you enlarged a single
patch into a series, so it is clear what is going on.  Otherwise, Greg
will see the series version and the standalone version and wonder what is
going on.

julia

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
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CALta04w00_XEDmGfUfFa%3DSq3JsObV6eJcQ-sCS-zG%2BuFEwbu3g%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

