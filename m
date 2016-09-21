X-GM-THRID: 6332811112929558528
X-Received: by 10.36.160.5 with SMTP id o5mr1211160ite.18.1474475814740;
        Wed, 21 Sep 2016 09:36:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.74 with SMTP id l10ls4703342otd.44.gmail; Wed, 21 Sep
 2016 09:36:54 -0700 (PDT)
X-Received: by 10.200.56.83 with SMTP id r19mr7720954qtb.57.1474475814273;
        Wed, 21 Sep 2016 09:36:54 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c3si3024661ith.1.2016.09.21.09.36.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 09:36:54 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,374,1470693600"; 
   d="scan'208";a="237754388"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Sep 2016 18:36:52 +0200
Date: Wed, 21 Sep 2016 18:36:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com, Laura Abbott <labbott@redhat.com>, 
    Sumit Semwal <sumit.semwal@linaro.org>, 
    =?ISO-8859-15?Q?Arve_Hj=F8nnev=E5g?= <arve@android.com>, 
    Riley Andrews <riandrews@android.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: android: ion: hisilicon:
 Use pointer to memory being allocated as the sizeof argument
In-Reply-To: <CAKG5xWgV-0cKboce8i8LbLB7kBQPMYs_NjcredvggXX6Qb=UGA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609211833350.14829@hadrien>
References: <20160921154114.GA18681@sayli-HP-15-Notebook-PC> <20160921161546.GA28028@kroah.com> <CAKG5xWgV-0cKboce8i8LbLB7kBQPMYs_NjcredvggXX6Qb=UGA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 21 Sep 2016, sayli karnik wrote:

> On Wed, Sep 21, 2016 at 9:45 PM, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> > On Wed, Sep 21, 2016 at 09:11:14PM +0530, sayli karnik wrote:
> >> This patch finds cases where the argument to sizeof is wrong in memory
> >> allocation functions by checking the type of the allocated memory when it is a
> >> double pointer and ensuring the sizeof argument takes a pointer to the memory
> >> being allocated.
> >
> > Are you sure?
> >
> This was detected by scripts/coccinelle/misc/badty.cocci, which
> specifies that a false positive only arises when the sizeof argument
> is not used in constructing the return value. Also the driver builds
> without errors. What do you think?

Neither of these are convincing argument.  For example, if you replaced
the sizeof by 27, it would also build.  And Coccinelle doesn't know
anything aboout the intent of the code.  So you would have to check it
carefully.

>
> >
> >> Done using coccinelle:
> >> @@
> >> type T;
> >> T **x;
> >> @@
> >>
> >>   x =
> >>   <+...sizeof(
> >> - T
> >> + *x

This change looks appropriate for a single pointer case, not a double
pointer case.  Ie where x has type T *x.  Check the code again and think
about what types are involved.

julia

> >>   )...+>
> >>
> >> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> >> ---
> >>  drivers/staging/android/ion/hisilicon/hi6220_ion.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/staging/android/ion/hisilicon/hi6220_ion.c b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
> >> index 659aa71..9f9b244 100644
> >> --- a/drivers/staging/android/ion/hisilicon/hi6220_ion.c
> >> +++ b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
> >> @@ -57,7 +57,7 @@ static int hi6220_ion_probe(struct platform_device *pdev)
> >>               return PTR_ERR(ipdev->data);
> >>
> >>       ipdev->heaps = devm_kzalloc(&pdev->dev,
> >> -                             sizeof(struct ion_heap)*ipdev->data->nr,
> >> +                             sizeof(*ipdev->heaps) * ipdev->data->nr,
> >
> > Do we really want to allocate an array of pointers, or an array of
> > structures?  Which is it, as it's not obvious...
> >
> > thanks,
> >
> > greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKG5xWgV-0cKboce8i8LbLB7kBQPMYs_NjcredvggXX6Qb%3DUGA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

