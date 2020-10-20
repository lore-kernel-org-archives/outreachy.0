X-GM-THRID: 6885367021918224384
X-Received: by 2002:a17:902:8605:b029:d5:a6dc:ad0a with SMTP id f5-20020a1709028605b02900d5a6dcad0amr2733978plo.56.1603194755465;
        Tue, 20 Oct 2020 04:52:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9a0c:: with SMTP id v12ls1044259plp.11.gmail; Tue,
 20 Oct 2020 04:52:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw0Gww6w/XOsgQJP7ccUUOUsDDWANzzuESq6qwFrM2/eIzJ7VeTUwRfxgFQo2idpjx+iIBZ
X-Received: by 2002:a17:902:7e0e:b029:d5:dbd4:451f with SMTP id b14-20020a1709027e0eb02900d5dbd4451fmr2745729plm.38.1603194753802;
        Tue, 20 Oct 2020 04:52:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603194753; cv=none;
        d=google.com; s=arc-20160816;
        b=Nwcr+/s2jiJKDiBK4Wu1CzA3m0JxUSrOE6GpU1NHMOhkfBb83a/lAGyGcryhFTNgtz
         APYn6ZgZ+1kxv4YHMoGFxtQ23D4ZfF2Pu5wh2Ub9lk8qwacInqiV0T6rxWl4S6t/ye/Q
         D5CtK+14RvpMSD4cuvvPKgL5kJQJ0sPC3THHDQ4zXbN5y4OFi5cNJseRFbe6/+Fsyzl7
         Fhz+k80QuDLuaXIthn5m6g5kSqzHAVP67WpGjuq6kt3T+zROwSbQqJc0FJMMXbHOlmPI
         in+++NT+NbfNUPolCDqCwLxmsDLmODo/PD2xZ7qc5oRQ9pXLPjmc0Sdd3dqG0dDXqLgE
         JI+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=aP53fPOhfIAqEynGtPQ200DVSBYq4A/Z3q3vjgzeY10=;
        b=M8nlMPpRqw4QzbZGE1e++sO7pwX2Fv25aVz6VtFpdpLUFsyxFQ18+BvPAyD/F1y5Ku
         LDAQp9EH1lG/hEswqlli+NQSRc6GOgkDS562rKYm2EM1TjxqfNUNKqg8/dInAGbwjGgH
         VQ4zN7jv8RERdkdZAlix+2vZ8oj7ovnsbWgh5UMyftpwTJTuVkOsIxsQ3olThLEtRIa8
         5VXb5vOglvqkfHP8Q5bk1O3g+5R9cJTAla5pPtS/7ClTXTWOMbkllI/IBiyjR8/Ijrhb
         5VIFlxqaW2yBBhpHvVjYCkjzh3Uk4QNRKfbS5SteGcOhONUhvQvX2BfTWHcgXcIDjUdf
         0a7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e7Aog23P;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id e22si96732pgv.5.2020.10.20.04.52.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 04:52:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e7Aog23P;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id j7so931945pgk.5
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2020 04:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=aP53fPOhfIAqEynGtPQ200DVSBYq4A/Z3q3vjgzeY10=;
        b=e7Aog23PBkwlJcXo2D69vHP5yGQFc5zD8bFn3itopmUI8EdJEeM27BjPHzgc4D3nn0
         TDNNAtc/FAxs3oAX6aFypKS7yNLCpzLbQhxxelPdK8IXa9wWFmHYPb44ZmAJ9jVl21tT
         HPHuVCfi+S24wO6dMF8rJ/MuJTuzbhfZtm24IMURc9S8ZKjU8SWKt3vGVz0ERGDCU7ge
         oH29cdNtfjSgUXqwlTB0+opJMnKKtHsjUiiztLMCpeM7Io1rHnpORHWN/s1VBhacZsEJ
         d3umyWL1whDG3Bq6xmYLHDhBkrtk0I4h8CqbZ0Oi9nMH4N8kvv8GtEcZnIc6kp3bl4o2
         UCMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=aP53fPOhfIAqEynGtPQ200DVSBYq4A/Z3q3vjgzeY10=;
        b=dh31nYvyoR6xJmFWJPJVdSOLpWqxuuUl3PJ0FPsDtWdRxncDDo6B3p8MYs8lWOu4Jx
         s6GO/IKR2xu8Rj6TbGMuA3YIDY1QD48Lf18+6seixUN5TF+8t7kolJ8BCNWBrwh4SOnW
         QL3d7DRI4e6CdtKOhY8rKtjzv5HbXCxY9Kds8lVocxsIOTGf72wTFJfpHon7RiG2IVtR
         YKQdrAczpptoBfFY1whHPV9fYP9PtjPRN8p8+6X2raePR7sy9Cjv5bml9c9CejG7HcC8
         eWB0bBkPspUjr75FxqjD0tQSfTgBCLi1h9hQ/VKD2UO40scSlF8snQUQHlvSAGO+Dfs8
         y7dg==
X-Gm-Message-State: AOAM533mgllxJ1lAmL7733AucMJTYC2p9glC1OzB5UtSTUJtfq+sTDCO
	gciuzYvnKshNtklKQjcTPaDd2Z0HxbA=
X-Received: by 2002:a63:e07:: with SMTP id d7mr2288415pgl.225.1603194753569;
        Tue, 20 Oct 2020 04:52:33 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id t20sm2174695pfe.61.2020.10.20.04.52.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 04:52:33 -0700 (PDT)
Date: Tue, 20 Oct 2020 17:22:29 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Need help building a driver: mt7621-pci
Message-ID: <20201020115229.GA137232@ubuntu204>
References: <20201019162028.GA68635@ubuntu204>
 <alpine.DEB.2.22.394.2010191858240.2781@hadrien>
 <20201019191803.GV20115@casper.infradead.org>
 <20201020033836.GA78621@ubuntu204>
 <20201020113222.GA20115@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201020113222.GA20115@casper.infradead.org>

On Tue, Oct 20, 2020 at 12:32:22PM +0100, Matthew Wilcox wrote:
> On Tue, Oct 20, 2020 at 09:08:36AM +0530, Deepak R Varma wrote:
> > On Mon, Oct 19, 2020 at 08:18:03PM +0100, Matthew Wilcox wrote:
> > > It's useful for drivers to build on all architectures by depending
> > > on COMPILE_TEST.  You will probably have to provide a lot of dummy
> > > interfaces; the only requirement is that the code build, not work,
> > > since it almost certainly needs to access hardware that only exists on
> > > the Mediatek platform.
> > 
> > Thank you. Tried a couple of times with different selections however,
> > not able to get across this error:
> > 
> > make[4]: *** No rule to make target
> > 'drivers/staging/mt7621-pci/pci-mt7621.o'.  Stop.
> > make[3]: *** [scripts/Makefile.build:475: __build] Error 2
> > make[2]: *** [scripts/Makefile.build:500: drivers/staging] Error 2
> > make[1]: *** [Makefile:1777: drivers] Error 2
> > make: *** [Makefile:335: __build_one_by_one] Error 2
> > 
> > It looks like a generic error message and lot of possibilities while I
> > try to explore it myself. Any quick suggestion on what is wrong will
> > be time saving.
> 
> You need to go to the Kconfig file and change:
> 
> -       depends on RALINK
> +       depends on RALINK || COMPILE_TEST
> 
> Then you'll need to add dummy definitions of various things to make it
> build.  Commit 171a9bae68c72f2d1260c3825203760856e6793b shows me doing
> horrible things to the Octeon driver to make it build on any platform.
> It's a mixture of adding structs that I copied from elsewhere and
> making random #defines.  There's no hard-and-fast rule about how to make
> things build for COMPILE_TEST, you're just trying to make things build
> so that changes across the tree (eg to common APIs) get picked up by
> the build bots.

This is really very useful information. I will definitely attempt this
once I am done with the current patch work on a different driver.
Thank you very much Matthew.

Deepak.

