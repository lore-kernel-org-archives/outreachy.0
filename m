X-GM-THRID: 6807884729429262336
X-Received: by 2002:a5d:550c:: with SMTP id b12mr14304727wrv.304.1585565927424;
        Mon, 30 Mar 2020 03:58:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f5cc:: with SMTP id k12ls320719wrp.6.gmail; Mon, 30 Mar
 2020 03:58:46 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtK3gTzAeo2jbIXWJFXW4jekkbHup+dp5qzOWm8KuNwth10HJ3CjWAvzJNAYQpxqd8y9I4N
X-Received: by 2002:a5d:4004:: with SMTP id n4mr14346370wrp.180.1585565926389;
        Mon, 30 Mar 2020 03:58:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585565926; cv=none;
        d=google.com; s=arc-20160816;
        b=o1SMbrwD2JJUBJPTPZt3Si2f1JYsJ1GUGYFsLiuYNuDbR+rk680AxESB90sTOIUkau
         vsK9jNoGyR9brTCutiRdlxxRv1P69NGfcV/vaakTAwNhwCv83pcJaoQembGmJvjulWMK
         Nh1g2k5WjflmRSvkOLyadZ+ekp7SlTzt/K/ay4x/OUYMcFKlSsOGTJ0fGX9GXs3O197m
         0B9B2ucq6lf5PFej9IkDcSud6IHPqV2/7/hVyjtKz20ZZRTJJZ5xUoaZpIemx8oy70pO
         2U4rjHmvwmEc1P4cCzEQ6Rdtl6w20Qbfg5va2PYie0xVbsGj36KQ3eYpCuKAFnrBBENl
         j5jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=r+aIk+u1GbbeiwijSv0fA8aEp5REvF4B56Rty6405hE=;
        b=HP7fzDlwBSf/ULgBkA35V8XwoSnGwRhV0+pOROguX+eTIpiQCCCL1a8JqUmQihouxj
         rM/VWK22xQKfLvrH/otTB4D8YZSUIE3AsOVrDwxdTXxpEreWaKgQlPkmAdT1e97GC9ld
         iAy3nku0oXQl0Dj5WtVUmmN7F6CrykmsKoclfH2sKMgWlt1XzNMSPN0sTiZSrSXxGkno
         hrfL2tl1x4diw7VvMJHyQV18YEbZbntiTbHszXcw3EDAwf505XcwMDq36d33RNUcwnqc
         mRGCTRSHrAYGmocwlwotK2DjuVSt0EDcCRMjl7xFfq3PvyCblG7tfL498L1HigTn/3nA
         TnXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i22si933212wml.0.2020.03.30.03.58.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 03:58:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,324,1580770800"; 
   d="scan'208";a="442934249"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Mar 2020 12:58:46 +0200
Date: Mon, 30 Mar 2020 12:58:45 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Stefano Brivio <sbrivio@redhat.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/7] Staging: kpc2000: kpc_dma:
 Remove comparison to NULL.
In-Reply-To: <415066fb503764a528fa5cf4d681c5cd25065d24.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003301257060.2432@hadrien>
References: <cover.1585143581.git.jane.pnx9@gmail.com>  <f344afba0a8bb0413941a63678688435f04a96b4.1585143581.git.jane.pnx9@gmail.com>  <20200330030346.6420ddc6@elisabeth> <415066fb503764a528fa5cf4d681c5cd25065d24.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 30 Mar 2020, Sam Muhammed wrote:

> On Mon, 2020-03-30 at 03:04 +0200, Stefano Brivio wrote:
> > On Wed, 25 Mar 2020 10:26:36 -0400
> > Sam Muhammed <jane.pnx9@gmail.com> wrote:
> >
> > > Comparison to NULL been used across the driver,
> > > remove them and use (!var) instead.
> > >
> > > Checkpatch.pl: CHECK:
> > > Comparison to NULL could be written "!desc"... etc
> > >
> > > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > > ---
> > > Changes in v2:
> > > - None.
> > >
> > >  drivers/staging/kpc2000/kpc_dma/dma.c            |  2 +-
> > >  drivers/staging/kpc2000/kpc_dma/fileops.c        | 12 ++++++------
> > >  drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h |  4 ++--
> > >  3 files changed, 9 insertions(+), 9 deletions(-)
> > >
> > > diff --git a/drivers/staging/kpc2000/kpc_dma/dma.c b/drivers/staging/kpc2000/kpc_dma/dma.c
> > > index 51a4dd534a0d..4bfbc717bc07 100644
> > > --- a/drivers/staging/kpc2000/kpc_dma/dma.c
> > > +++ b/drivers/staging/kpc2000/kpc_dma/dma.c
> > > @@ -236,7 +236,7 @@ int  count_descriptors_available(struct kpc_dma_device *eng)
> > >  	struct kpc_dma_descriptor *cur = eng->desc_next;
> > >
> > >  	while (cur != eng->desc_completed) {
> > > -		BUG_ON(cur == NULL);
> > > +		BUG_ON(!cur);
> > >  		count++;
> > >  		cur = cur->Next;
> > >  	}
> > > diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > index 40525540dde6..5eb6c5f24feb 100644
> > > --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > @@ -124,7 +124,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
> > >  		pcnt = count_parts_for_sge(sg);
> > >  		for (p = 0 ; p < pcnt ; p++) {
> > >  			// Fill out the descriptor
> > > -			BUG_ON(desc == NULL);
> > > +			BUG_ON(!desc);
> > >  			clear_desc(desc);
> > >  			if (p != pcnt-1) {
> > >  				desc->DescByteCount = 0x80000;
> > > @@ -203,11 +203,11 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
> > >  {
> > >  	unsigned int i;
> > >
> > > -	BUG_ON(acd == NULL);
> > > -	BUG_ON(acd->user_pages == NULL);
> > > -	BUG_ON(acd->sgt.sgl == NULL);
> > > -	BUG_ON(acd->ldev == NULL);
> > > -	BUG_ON(acd->ldev->pldev == NULL);
> > > +	BUG_ON(!acd);
> > > +	BUG_ON(!acd->user_pages);
> > > +	BUG_ON(!acd->sgt.sgl);
> > > +	BUG_ON(!acd->ldev);
> > > +	BUG_ON(!acd->ldev->pldev);
> >
> > I've seen some tool reporting this (perhaps Coccinelle?): with
> > x == NULL, BUG_ON(!x) causes a kernel panic just like dereferencing x.
> > So the first statement in e.g.:
> >
> > 	BUG_ON(!acd);
> > 	BUG_ON(!acd->user_pages);
> >
> > is redundant. This change wouldn't be related to this patch, though.
> >
> Please correct me if i got this wrong:
>
> Does it mean that explicitly stating BUG_ON(!x) case to cause a kernel
> panic is not necessary since its already being dereferenced, and
> dereferencing it is stated to cause a kernel panic already?

Suppose acd is NULL.  Then acd->user_pages will crash with a NULL pointer
derefence.  That is the same as what you are asking the BUG_ON to do in
the first line.  So you can get the effect of both lines with only the
first line.  If BUG_ON gave some more helpful information, then you could
also have the first line.  But it doesn't.

julia

