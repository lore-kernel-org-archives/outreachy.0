X-GM-THRID: 6618634579794198528
X-Received: by 2002:a0c:ae61:: with SMTP id z30mr4642319qvc.11.1541046980342;
        Wed, 31 Oct 2018 21:36:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:ad35:: with SMTP id u50ls7598799qvc.8.gmail; Wed, 31 Oct
 2018 21:36:19 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cpkUkAzBcxVIsQXCHviLhCiuuKT4rSe7jU4jUu+c3yCQXaOfgc3YORPnovpM9FcRaF60YQ
X-Received: by 2002:a0c:d7cc:: with SMTP id g12-v6mr4524490qvj.55.1541046979847;
        Wed, 31 Oct 2018 21:36:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541046979; cv=none;
        d=google.com; s=arc-20160816;
        b=iiH3M7kafhFwHS+K7bxweVk/m3geZrCLWucP4UEVayL6jMQLlt3WcWLtC1/aR6jGoI
         d9giy3KeRpSQIAi4F+96B2ulTTKDBEANKfbd7fYnwjPOochmX/x3iFfozO20YfVaRhNB
         EvuKdZBQKJLfZey3eXjRh+AannjFnYE7zAClf3sGk5iZu+rQv6cb2gGiDaQzbmlXH5kD
         Wyr9qH3bhlNl6j8q9ztjm3kUoZCoCk7yeHtXXIE+mm+gDQI+gJ+hhdUSdQ3HccfsC5wM
         SUCQnqBOW/KA02lW8GYCGPlygY0L1pPSG3LaecrbHVcFmGjnBaQlb/YWWqiTjsuFc5+V
         CRkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Z5klqL1f4i8gj/xavHjhL1Df7LLPa/naA6tj/nrqrWY=;
        b=ge8y33AJ+bgINEBtZ7G2m7cB4W13g5yCSz1v5wLqFLZcorjEHWZQf7bPUYyoIX1bwX
         Miall1FqPlRtOJCIDfHQk1PBK2DiQSLaSymXXb0yfyx78Kty76ASHx7MR2tgVkqyE7uJ
         xO0xuz1qJ4ilkfB3WFSlKry/ogc5ipQO8L4RisJp8QYBgs1at+SgEVR+QBr/Gwald9i7
         Lh3IHptBV2Mxak/v8q/RZwgOvOtzhQogOxFkp5dzhJf2bQRHh6bDjJUan/FtMxIgH81x
         rh8UFkXHsQhjEIFt2kc3UYXIT8m58re6hsrGpOK4wdDh93kNxcC3gPNVUmY5aH58iW8H
         SSLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OyLQEZXk;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id q49-v6si1430258qte.3.2018.10.31.21.36.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 21:36:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OyLQEZXk;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id j22-v6so4880238pfh.3
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 21:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Z5klqL1f4i8gj/xavHjhL1Df7LLPa/naA6tj/nrqrWY=;
        b=OyLQEZXkKMtN1nnkyOr3wQggrXxl+/0Sokem2DeqlVVE2dHNmrZ9BrEXdsVGJ1R9oL
         06KTnFTsTF1YhAlLwi5QEMHDvJE3JwmEh34feoVLpuYMN4UNaXIXmITSb+52kCoJajml
         t5br1OLHEBNqWcI4c9s3D/1kRGjv0yNTnedEE+oIubRAWD3viKVl4Y40YjFCMiJgSuYv
         huhg/0lZurwPqrOTeovCMzKZIixGzu8EN0p+hVisHlYmL+C1CLfv+rjAg/0MalCq+GF/
         5U9MOdilnNclk6cLubyh3pWuWT659ecwsB+K6lVRb5pl/kVp3IjQqyX0Ktv9yWsvrMob
         NVoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Z5klqL1f4i8gj/xavHjhL1Df7LLPa/naA6tj/nrqrWY=;
        b=A47/VFDhD0M+P2BadwqGEMSJw8NZSrm+f8F9lV5srcAUdFyfJUURYiAFKGIvWDIHP9
         toFsDoL9MA3MF4YZlJosyR5DRuE6Rh/9vLsWobeFqO2Tkxw6e4gevPG7tI502UFl3dhi
         w1gh/Fu0anD1NQK0d9LI8LE3NjdzWG59TYkuxZ97jE+EMnHqLw7RyDLP1ZuezAn4VAKU
         3AI0MiQnOwXZVrQbfdJ+baSIsdFfN42ojKli32JbCX8soOmBnEWHUWV97rsxr+WYlkrs
         lOUeb7H2xVnNfna/8JD+T1wZ0Bn6A9dYnER1ZyXCJ3RHpEH96GA8UQJ8icPrgTfb7Ypy
         Tkyw==
X-Gm-Message-State: AGRZ1gKKmwRrCt6m5jer4UWjH8u7UisZj2zMGPMVIhLy2azt1GprCmed
	ASrvkF+1MPr35KrUP1ILO/g=
X-Received: by 2002:a63:eb42:: with SMTP id b2-v6mr5779718pgk.348.1541046979346;
        Wed, 31 Oct 2018 21:36:19 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id m11-v6sm40949702pfi.102.2018.10.31.21.36.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 31 Oct 2018 21:36:18 -0700 (PDT)
Date: Thu, 1 Nov 2018 10:06:12 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org, alexander.levin@microsoft.com
Subject: Re: [Outreachy kernel] [PATCH v5] staging: gasket: Create a free
 memory error path
Message-ID: <20181101043611.GA2207@himanshu-Vostro-3559>
References: <20181031213742.GA18868@kvasir.local>
 <alpine.DEB.2.21.1810312244040.5416@hadrien>
 <20181031220243.GA21269@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181031220243.GA21269@kvasir.local>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Oct 31, 2018 at 10:02:43PM +0000, Ioannis Valasakis wrote:
> On Wed, Oct 31, 2018 at 10:45:33PM +0100, Julia Lawall wrote:
> > 
> > 
> > On Wed, 31 Oct 2018, Ioannis Valasakis wrote:
> > 
> > > Create an error handling path for memory allocation. It avoids repeating
> > > the same assignments and returns the respective ENOMEM.
> > >
> > > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > > ---
> > > Changes in v5:
> > > 	- Typo on the error handling label
> > 
> > Compilation should have found this error.
> It would indeed but it still's going on since an hour now so I wanted to
> get your feedback meanwhile and understand my mistakes! Me rushing isn't
> good but after it compiles with all the new changes I should have a very
> fast turnaround :) 

Wait..what ?

Are you compiling the whole kernel for this and past checkpatch changes ?

If you are, then please look at partial building techniques such as:

# make drivers/staging/gasket/gasket_interrupt.o

or

# make M=drivers/staging/gasket/

and you could use -j(jobs) to speed up compilation.

Read Linux kernel in a Nutshell for more detailed info.


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

