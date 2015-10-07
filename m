X-GM-THRID: 6202672545102036992
X-Received: by 10.66.219.2 with SMTP id pk2mr5997329pac.16.1444204716982;
        Wed, 07 Oct 2015 00:58:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.241.101 with SMTP id wh5ls64238obc.3.gmail; Wed, 07 Oct
 2015 00:58:35 -0700 (PDT)
X-Received: by 10.182.52.132 with SMTP id t4mr35256937obo.16.1444204715067;
        Wed, 07 Oct 2015 00:58:35 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x22b.google.com (mail-yk0-x22b.google.com. [2607:f8b0:4002:c07::22b])
        by gmr-mx.google.com with ESMTPS id y6si833395ywc.3.2015.10.07.00.58.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 00:58:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::22b as permitted sender) client-ip=2607:f8b0:4002:c07::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::22b as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x22b.google.com with SMTP id g206so9240326ykd.1
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 00:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=hrUSHyngEtRyVBxwQ4kfwhYv/bwnwSXWj5AEh4iXl7g=;
        b=AGNTTaDyAk5bjFNg5AfRiNWaybXzi0zKUulsXZFOyGmHvS/oe72hxn0MWZ2wbWc8tj
         slqqFjeAdBrYVLs/1RWaTqIAVrfda2rSVGgLIaI23vp2hp7UA1Jcdp+CEFB0+h5VbCya
         B/KADib4BYyNG49fO7C2ogf+oFqneOSGu93YTC/29dqPWOdO6DMojgI8E/NYl5TTZdJT
         yREJZXTUxgLsIv9NMGXAzvqjiYBxLZ6X4aBGw9p5kFl+J/YKdYZJoX960FJA0sqfejnT
         SnGP2HfyUAPsvenrEKdD4G02rkF6UDaA6tb/R73UnAFxI8B0oyiJghm7ESi+ccEyxLht
         eIjA==
MIME-Version: 1.0
X-Received: by 10.13.232.21 with SMTP id r21mr4871336ywe.283.1444204714956;
 Wed, 07 Oct 2015 00:58:34 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Wed, 7 Oct 2015 00:58:34 -0700 (PDT)
In-Reply-To: <20151007065552.GA20931@sudip-pc>
References: <cover.1444172065.git.ciorneiioana@gmail.com>
	<7b2dd35a1b76b4457bc85272f255b982e6003cfc.1444172066.git.ciorneiioana@gmail.com>
	<20151007051459.GC4070@sudip-pc>
	<CAHWJYFk34=Od-DR26wUiW72YLE6EyP8uJ+oT3p-m2cikUhPGKw@mail.gmail.com>
	<20151007065552.GA20931@sudip-pc>
Date: Wed, 7 Oct 2015 10:58:34 +0300
Message-ID: <CAHWJYFmJ+pZDgBEXh9J7yX5Vz4LcXsO21vuThG2VuWbMFo+fAQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 08/10] staging: iio: adc: remove the
 use of CamelCase
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 7, 2015 at 9:57 AM, Sudip Mukherjee
<sudipm.mukherjee@gmail.com> wrote:
>
> On Wed, Oct 07, 2015 at 09:42:36AM +0300, Ioana Ciornei wrote:
> > On Oct 7, 2015 8:15 AM, "Sudip Mukherjee" <sudipm.mukherjee@gmail.com>
> > wrote:
> > >
> > > On Wed, Oct 07, 2015 at 01:57:08AM +0300, Ioana Ciornei wrote:
> > > > Remove the use of CamelCase to follow the kernel naming conventions
> <snip>
> > > Why did you change AD7192_GPOCON_GP10EN to AD7193_GPOCON_GP10EN?
> > >
> > > And I donot see any camelcase here, not even in the next few
> > > conversions.
> > >
> >
> > Sorry for that change from 92 to 93. My mistake. I will send a v2.
> > Regarding the other changes, should I just revert them? Do you consider
> > there is no point in converting them?
>
> Had a closer look. Only this AD7192_GPOCON_GP10EN to
> AD7193_GPOCON_GP10EN is not camelcase conversion. Remaining all are.
> Just leave this one out.

Ok.

>
> And in a later patch you can even remove this
> #define AD7192_GPOCON_GP10EN   BIT(4) /* Digital Output P1 and P0 enable */

Sure.

>
> This one is not used any where and that is the reason you did not see a
> build failure with this patch.
>

I will update the patchset and send a v2 with all the modifications.

Thanks,

Ioana

