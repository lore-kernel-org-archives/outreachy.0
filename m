X-GM-THRID: 6463264709450661888
X-Received: by 10.46.21.77 with SMTP id 13mr192589ljv.25.1504866807941;
        Fri, 08 Sep 2017 03:33:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.207 with SMTP id v198ls284276wmv.10.gmail; Fri, 08 Sep
 2017 03:33:27 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBxLTnmBJpr0v3j5PTUAdFcLyLJDRqZdIobqdgJRFfWMzhgFDzGbALcC3Le9D8qyp2SryXp
X-Received: by 10.28.23.200 with SMTP id 191mr165710wmx.25.1504866807001;
        Fri, 08 Sep 2017 03:33:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504866806; cv=none;
        d=google.com; s=arc-20160816;
        b=Tan1D3wxD8juObgAOIEDHC4tXAvWQNxu6iRlBAqZxt4K+TOr6O3nQ4q9jdUo17eXDV
         cbC7dYLFZCtmff41nBoFFwAA07XoBFNZkC5rYRRPql/wggtHXfNGg/8PCEqnaAAsHeVO
         b+uaRlcGyVanG0yC3+qWi/AxPt5Vj+Qhv3F6LqLxX5m/Vg/4JmyQ+aIJO7AEFmI0sFQg
         O7nVRYMuBdww5KETguuh64t/Q+WxlHRV9fsJktM+wFJgiiJBP04u4LhfHfi7Zqv0sGBT
         WK92eWRnQVY3nKPhJtQPZEoPOWAUfFDPW0vmX+3AuntQ0WdrS8qWUCX3LNwlUM1eQKAz
         l1Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=vbYXfhYJbosjjRkGqrJy/cmq8MY/5G7B05J9v8XLPFs=;
        b=EkHcJpceEg/K1hvRMpAdCw7sUYj+mBfEG+ek1VUK0QlQzHGR07xh8kEbIh7bmEOJVr
         rN5kOQBlUtgVQ2j3keDGT00Ved55sunXjmeogT8uQdjgFUO4JhHEu9daObt9sA+DiqRw
         3MJZvjz2/hgG9CsishFLoRnvekprJamOG9u27ZDyNIBxQmEEEAMqlTq62r6czxQQY36y
         DdzHYPZyrU6sbhrChZViu3AIQ/2JxXKfE+tSd3jk7R1MV2ezwwKSyah3sMb2+6BL5ex0
         16paSmcEEbO1pRN6k+Ly54wWv2Rg684ACHj9vCtsemkI1BPthJJo/3hz2+G7UOeG4fKm
         ibtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l133si105685wmb.3.2017.09.08.03.33.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 03:33:26 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,360,1500933600"; 
   d="scan'208";a="290154056"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Sep 2017 12:33:26 +0200
Date: Fri, 8 Sep 2017 12:32:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Lars-Peter Clausen <lars@metafoo.de>
cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
    Jonathan Cameron <jic23@jic23.retrosnub.co.uk>, 
    Himanshi Jain <himshijain.hj@gmail.com>, outreachy-kernel@googlegroups.com, 
    Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de, 
    pmeerw@pmeerw.net, gregkh@linuxfoundation.org, linux-iio@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: iio: adc: Added Space
 around binary op.
In-Reply-To: <9590dab0-5bd8-c4d0-1f34-934d3835fade@metafoo.de>
Message-ID: <alpine.DEB.2.20.1709081232370.3165@hadrien>
References: <20170908044752.GA6199@himanshi-Inspiron-5558> <DEB4AC67-43D5-40F9-9495-DB4966A07661@jic23.retrosnub.co.uk> <20170908103257.00002165@huawei.com> <2e3476f0-9e7e-2701-220a-5fb178d68d2e@metafoo.de> <alpine.DEB.2.20.1709081157590.3165@hadrien>
 <9590dab0-5bd8-c4d0-1f34-934d3835fade@metafoo.de>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 8 Sep 2017, Lars-Peter Clausen wrote:

> On 09/08/2017 11:59 AM, Julia Lawall wrote:
> >
> >
> > On Fri, 8 Sep 2017, Lars-Peter Clausen wrote:
> >
> >> On 09/08/2017 11:32 AM, Jonathan Cameron wrote:
> >>> On Fri, 8 Sep 2017 07:29:06 +0100
> >>> Jonathan Cameron <jic23@jic23.retrosnub.co.uk> wrote:
> >>>
> >>>> On 8 September 2017 05:47:52 BST, Himanshi Jain <himshijain.hj@gmail.com> wrote:
> >>>>> Added space around(one on each side of) binary
> >>>>> operator(-) as preferred according to kernel
> >>>>> coding style.
> >>>>>
> >>>>> Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
> >>>>
> >>>> Take a closer look at that macro. It isn't doing what you think...
> >>>> To give a hint, changing this breaks userspace.
> >>>
> >>> Ok, I'm bored of this particular one coming up. When you have
> >>> worked out what is going on Himanshi, would you mind putting
> >>> together a patch adding a comment describing why it is a bad
> >>> idea to 'fix' this?  That would be a very useful patch as
> >>> far as I'm concerned :)
> >>>
> >>> There aren't that many cases of this in IIO so adding a comment
> >>> on each of them is probably reasonable just to avoid wasting
> >>> people's time on fixing them! (I think we have had more than
> >>> 5 such goes this year so far...)
> >>>
> >>
> >> I'd much rather fix this API so that you have to put "" around the name so
> >> that it is clear that it is a string, rather than doing the implicit
> >> conversion to string using preprocessor magic. Better to have a
> >> self-documenting API then having to add a comment to each user of the API.
> >
> > All the DEVICE_ATTR macros use the same strategy.  And the non-IIO ones,
> > eg DEVICE_ATTR_RW, also use the provided name to construct the names of
> > the show and store functions, so I don't think a string would be
> > appropriate.
>
> I'm only suggesting to use a string for the _NAMED macros where the name is
> not used to construct the identifiers.
>
> In the case where the name is used to construct the identifiers we don't
> have the issue with false positives since the name must be a valid
> identifier on its own.

OK, it looks like a good project :)

julia

