X-GM-THRID: 6470117861435113472
X-Received: by 10.28.143.200 with SMTP id r191mr1420792wmd.1.1506858448705;
        Sun, 01 Oct 2017 04:47:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.146.131 with SMTP id u125ls1521205wmd.0.gmail; Sun, 01 Oct
 2017 04:47:27 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCJaXxAYKiLEw3kHHwmwCjKFksuWl/SMO4C9EOBjb5avs4j/zQXtYc0acTpDHYXRxO51LEa
X-Received: by 10.28.55.209 with SMTP id e200mr1422401wma.0.1506858447741;
        Sun, 01 Oct 2017 04:47:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506858447; cv=none;
        d=google.com; s=arc-20160816;
        b=C+Bm8HgXJimMi0TmIppCWIVc3MfwUyPJbAplsErj7qy0YOmutzsLcR5Eq2BoFFlzK0
         z5QzH+1Or1IaCRc+tdt9GYI+oQjzYr2HD91LNDR8PzaDYzw7/GqvrS4ACRGSNngZWyk9
         zX46hZd/dyo28b3fUZlHaLr0qBCaMzgYKIt7rN4aAfJYuEHhW0joNs6cLE8Gj36A8i7Y
         b7m+9+Yv7gzV+BrQrqLCusOKGgXRNoxpK6pFyLxnVEAOnBjnxwFT8iPEV1OGc4yNyXYb
         00ylJxt2wn9UrAJ5u/08newYnQ3Cpxs/qpt7n/KFkpIFngLRVGlWyAyAeaCuqfz6+H2G
         TfxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=hCfPAKR9B5BAJm/e8XEDT7bdQNebSMfMDRS/kURoHV4=;
        b=JDqCfgqtWQD/7jYYPmQ26waE0NTR6lBxcELcEGDu3MbKHfA8QljRDyGs06CHddI8AL
         mZ9dV+JRmjAVX+dFZEOG6sT6orUkyGqEGGJ4q7IDsMwTBUru+94x3+jcn19w7lKh96cM
         TOm9DTP5fABfGY//0kLA71ES7AtpBv9DQ9lg8PIjxXRPS5M64k23KMoUfzwBsHV4pgvH
         72FQeJ+hmfSn8SJUOOzZ26nfmXcvvN4CESoojl8labnmZOrntRx1FiZQgIX126XhhekU
         AL8jRHj5U6X6z0xckWRxl9WLsBoZrWPEJz6+HLG085JnBRIPgjsJDsliQnf4hDHxyUSs
         2Tyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p200si1001596wmg.4.2017.10.01.04.47.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 04:47:27 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,463,1500933600"; 
   d="scan'208";a="239278432"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Oct 2017 13:47:26 +0200
Date: Sun, 1 Oct 2017 13:47:26 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [Outreachy kernel] [PATCH v2 02/10] Staging: media: atomisp:
 Remove useless 'out of memory' messages
In-Reply-To: <CALta04wMbvf3BDh9+_7TT_VbnApMt3HfqwD+_4qSNBpY2xaUQQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1710011346330.2031@hadrien>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com> <6994f57188755df17d3ef47a36a4f4ec032dcb4d.1506436974.git.georgiana.chelu93@gmail.com> <20170929133417.GA4057@kroah.com> <CALta04wMbvf3BDh9+_7TT_VbnApMt3HfqwD+_4qSNBpY2xaUQQ@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 1 Oct 2017, Georgiana Chelu wrote:

> On 29 September 2017 at 16:34, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> > On Tue, Sep 26, 2017 at 09:01:30AM -0700, Georgiana Chelu wrote:
> >> OOM (Out Of Memory Manager) reports memory allocation fails,
> >> so there is no need for the error messages.
> >>
> >> Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
> >> ---
> >>
> >> Changes in v2:
> >> * this is a new patch added to the patchset
> >>
> >>  drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 4 ----
> >>  1 file changed, 4 deletions(-)
> >>
> >> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
> >> index 5232327..8667466 100644
> >> --- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
> >> +++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
> >> @@ -728,7 +728,6 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
> >>       bo->page_obj = kmalloc_array(pgnr, sizeof(struct hmm_page_object),
> >>                               GFP_KERNEL);
> >>       if (unlikely(!bo->page_obj)) {
> >> -             dev_err(atomisp_dev, "out of memory for bo->page_obj\n");
> >>               return -ENOMEM;
> >>       }
> >
> > The { } should also be removed when you do this.  Please fix that up
> > here.
> >
>
> This fix is done in
> [PATCH v2 07/10] Staging: media: atomisp:
>     Remove braces {} for single statement blocks
>
> Do you say that is better to remove the {} in 02/10?

Yes.  When you make a change, you should clean immediately up any
checkpatch warnings that you introduce.

julia

>
> Thank you,
> Georgiana
>
> > thanks,
> >
> > greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CALta04wMbvf3BDh9%2B_7TT_VbnApMt3HfqwD%2B_4qSNBpY2xaUQQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

