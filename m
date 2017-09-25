X-GM-THRID: 6469118697195700224
X-Received: by 10.157.12.65 with SMTP id 59mr228868otr.25.1506352119105;
        Mon, 25 Sep 2017 08:08:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.146.203 with SMTP id j194ls1351375ywg.1.gmail; Mon, 25 Sep
 2017 08:08:38 -0700 (PDT)
X-Received: by 10.13.235.149 with SMTP id u143mr4932205ywe.90.1506352118315;
        Mon, 25 Sep 2017 08:08:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506352118; cv=none;
        d=google.com; s=arc-20160816;
        b=uLqSKPLPyymOHDo3ahUuYJ2cyiF6Z/6XQiOejVHUqdgauC4j7wmzwGtrstlgkn9eAb
         4n7y456xUZGqz2xNl2I03Xq64ZLm9b8sT1s646KEUZq5+pnaDAHwAJhwCOTpdKPZ0bZy
         Qqilklpm2KNs1GCOMoeGhMjFc2RJ9Vezss5bYQ0YQ2G0ADTwmEws9B8rfIArGdpvGbi5
         RQd07EAYbiTVVp0rUIAFgatnYD0sy8WJ3GZp6twEMwo+k2h9oqdEauyYXEBSLaTwJgXe
         VUQwBe+P/sDsO4vkH8hr7RZ9hYcO04rCE4NpJiFroMSQlFTvAvP6IYWURWrQcw/pDTIS
         Id3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=MzBOMGqUKW7At3qZkFgcZc0QC7fwGntsf2n/yqjpIVY=;
        b=JajzFytGUd0X1ishEL/lHAuezU1MF8tqJIa13fKRug/iHzlUnugEDDa99GlZjdDEvv
         JykKyx8oQ+iaOw/x0X6/k4Pa/UczqMiD39uYR7KzzzHlEn2C/Iu9qp6m3mGjjTrEh15D
         unNfJpA1WxKpe1qKe1RX+aKbMZI5M+GJe698FIiBirT1jQm/VBrs/hJfqW52YJDm81gA
         uIBR9ed3IVPMWyme84YgPtwasrjYV6MOrZWtyGADEYnx9t8V2TSpLGXFsaD3xjsryYuB
         4MaUVNbuTh8T1wK59B2KlFtFECNIh5EwbOjLOIeyrnpzRcPrxAi6yKSAQh3HKytLp4tb
         vkFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pUJcNz/p;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id g186si314016ywc.29.2017.09.25.08.08.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 08:08:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pUJcNz/p;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id r66so5000558qke.4
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Sep 2017 08:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=MzBOMGqUKW7At3qZkFgcZc0QC7fwGntsf2n/yqjpIVY=;
        b=pUJcNz/puacWyCejXuLUp2ifu7XQ+Zz/3ttZYuRzY48FVcGSxK0qothApJGCdU8Jg1
         slPJIGkGw58viIlYVM6UWok51VL2NK35sNpaMAHLS+Il2qS+mPONYtQZR41Zc2RbjKHK
         n3QHJTSwG7wvdVF7SBuiwPxMeVFqcDo2dDHIAlPRTDNF9jViHfuNE/s0me3QO/rRTAre
         X3Z51LC/HCXtymKpbPf1g0B0YJmL96bP/KBO/8bbhDFcJtWx5KMGk0TL1p5O/l8pOtF2
         ZZFJW1q5vR8fw/Y3qw5LuGZRsk4LM+pFqJgrUDkC3zpWjNdka1nUoc2XY6FCxpho7Nsb
         PISQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=MzBOMGqUKW7At3qZkFgcZc0QC7fwGntsf2n/yqjpIVY=;
        b=JeVwhPBndGTZtUo29lbzIqQLaizdGwOKudkiSgvqgIrweXmFrlEn1JD/B+z3fqDMTi
         9Ojq2wMXxt2WLsWTP0ZJ43vQAdmeh/b21rL2jY8qIBnahpRWZHiTr9EadLNbKJF4nFOY
         AWKLBSp1QOiu08PRZ8vEErNg30W8nl3k0RNKd64T+KIuFCH/IF2eepFqJj5VPNAS6P4N
         y8FcVvV09hqwceffvBN+aw4JDTBDVuVyhmU+LB7pLii78mLSDTx9WvuykOvIzoBHbBj/
         HurVIz1QJZs8dnmIJz/d+gAsuKMXx4sefrAorEXl57KbCcxb+wYH9tboFVNxgnguL1mP
         QMBw==
X-Gm-Message-State: AHPjjUh8IMhCgVQej4aCa3Qoi5I62BUHGaciEYSzHE8gE8the9FDB6Qj
	xjGsNFoyaIZnDlEaya5UYvEfIyBLdDt/0iMZp3uqpw==
X-Google-Smtp-Source: AOwi7QAWry+yTVUQrG5Gz34wKNpQlAq45NtulNskuyCP0FoeY5qgDcO3PF1cFdr/tEky2h1zKxwY+U18QJB2AGvsdeo=
X-Received: by 10.55.188.131 with SMTP id m125mr11239321qkf.12.1506352117934;
 Mon, 25 Sep 2017 08:08:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.18.240 with HTTP; Mon, 25 Sep 2017 08:08:37 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709251213590.3141@hadrien>
References: <20170923232419.21625-1-georgiana.chelu93@gmail.com>
 <alpine.DEB.2.20.1709240900140.2101@hadrien> <CALta04w00_XEDmGfUfFa=Sq3JsObV6eJcQ-sCS-zG+uFEwbu3g@mail.gmail.com>
 <alpine.DEB.2.20.1709251213590.3141@hadrien>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Mon, 25 Sep 2017 18:08:37 +0300
Message-ID: <CALta04zYVpOTi9xfz805Y3q6J3Tum1r_gABjPHfxDFtjNfkxBQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: atomisp: Use
 kmalloc_array instead of kmalloc
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On 25 September 2017 at 13:15, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Mon, 25 Sep 2017, Georgiana Chelu wrote:
>
>> On 24 September 2017 at 10:05, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Sun, 24 Sep 2017, Georgiana Chelu wrote:
>> >
>> >> Prefer kmalloc_array over kmalloc with multiply
>> >> because kmalloc_array performs additional checks
>> >> before memory allocation.
>> >>
>> >> Fix the following issues reported by :
>> >> * WARNING: Prefer kmalloc_array over kmalloc with multiply
>> >> * CHECK: Alignment should match open parenthesis
>> >>
>> >> Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
>> >>
>> >> ---
>> >>  drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 6 +++---
>> >>  1 file changed, 3 insertions(+), 3 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
>> >> index 11162f595fc7..22dbd79fe123 100644
>> >> --- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
>> >> +++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
>> >> @@ -725,8 +725,8 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
>> >>
>> >>       pgnr = bo->pgnr;
>> >>
>> >> -     bo->page_obj = kmalloc(sizeof(struct hmm_page_object) * pgnr,
>> >> -                             GFP_KERNEL);
>> >> +     bo->page_obj = kmalloc_array(pgnr, sizeof(struct hmm_page_object),
>> >> +                                  GFP_KERNEL);
>> >>       if (unlikely(!bo->page_obj)) {
>> >>               dev_err(atomisp_dev, "out of memory for bo->page_obj\n");
>> >
>> > If you want to make a series on this code, the error message here and in
>> > the next case are not necessary - kmalloc will generate a backtrace on
>> > failure that will make the same information available.  Alse, the
>> > unlikely's do not look necessary.  The compiler can figure it out for
>> > itself.
>> >
>>
>> Hi Julia,
>>
>> I have done some research regarding kmalloc and compiler optimization.
>> Here is my understanding of the change you suggested to me.
>>
>> The memory allocation in kmalloc function is done using the Slab Allocator
>> and it is the allocator job to improve the branch prediction with the
>> likely/unlikely macros.
>> Also, it's safe to do the prediction on a lower level because any
>> mistake will cost
>> more CPU cycles.
>>
>> Please, tell me if it is correct. Thank you!
>>
>> I will resend this patch as a patch set. Should I change the version?
>>
>
> I think v2 would be good.  State explicitly that you enlarged a single
> patch into a series, so it is clear what is going on.  Otherwise, Greg
> will see the series version and the standalone version and wonder what is
> going on.
>
> julia


I intend to fix more warnings from this file. So, I will include more
patches in the second version of the patch set. In this way,
Greg will know the order to apply them.

Thanks,
Georgiana

>
>>
>> Thanks,
>> Georgiana
>>
>>
>> >>               return -ENOMEM;
>> >> @@ -990,7 +990,7 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
>> >>       struct vm_area_struct *vma;
>> >>       struct page **pages;
>> >>
>> >> -     pages = kmalloc(sizeof(struct page *) * bo->pgnr, GFP_KERNEL);
>> >> +     pages = kmalloc_array(bo->pgnr, sizeof(struct page *), GFP_KERNEL);
>> >>       if (unlikely(!pages)) {
>> >>               dev_err(atomisp_dev, "out of memory for pages...\n");
>> >>               return -ENOMEM;
>> >
>> > It looks like you have missed a call just under this one?
>>
>> I will resend it as a patch set with a
>>
>> >
>> > julia
>> >
>> >> --
>> >> 2.11.0
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170923232419.21625-1-georgiana.chelu93%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CALta04w00_XEDmGfUfFa%3DSq3JsObV6eJcQ-sCS-zG%2BuFEwbu3g%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

