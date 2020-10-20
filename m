X-GM-THRID: 6885367021918224384
X-Received: by 2002:a2e:8985:: with SMTP id c5mr1025324lji.406.1603193550139;
        Tue, 20 Oct 2020 04:32:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:554:: with SMTP id 81ls938857lff.1.gmail; Tue, 20 Oct
 2020 04:32:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyFShGYpxWJiIFKR9vNfiOnuiNTDzlk6z4d8LYiyL/6UMHnKOVj5w0GUgqOmu+jhdAfvGuV
X-Received: by 2002:a05:6512:3137:: with SMTP id p23mr853019lfd.316.1603193547576;
        Tue, 20 Oct 2020 04:32:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603193547; cv=none;
        d=google.com; s=arc-20160816;
        b=YlL/jlM+COu5I/MUjjmBW4O3PFgolQ9c6bCmID7Mb22LemANvPWDek9kx/aIVgsiRP
         X68AX3kBQi1gGLeFYOGJfGdLUdrirzK4wMo9OrITPuqkahAcA0CmMVWBZUG4UmXlnowh
         Q6bzrCQqggIylGIM9hJeDFDjB0dJ/f0rv8ZXeDmVydWIkKThaJEHdE0KFGoX6iL8F+EH
         SZ2AcWDfye8012TaFFCnAX6okfq4E24bMJMML5x2OZ5FhZ+rfEiEWEgcbnLc5rKbqmhb
         H9I5rIQGmU6eEEa78Lej03t8h6h+WVwlVYb4HwGb9HS1dNGThfmBKD4b+sjhC8C3e56L
         Lqzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=21Np5+Ai/GksvbG7uOyG4hFngHy2w5snp0JoIuRL5ow=;
        b=tf+dSR/1gGu0Kuq1W0MOzwdUipqtPaBBPdNE1bwX9vMTuIwipLoc1zjaFJewNMSlN7
         Eg/1Sc1Fv9N7zmuEimttFJVsIsheqM2RCC9qiSgTobIVxBqAMgtQZVflIBlszAYgNY40
         2VXm2hU7M7ENMTjMt4lMuXbEEWXJQcaHooG5j7wGyBxeoRyPenzsmettgfXgurTHo0vQ
         IpZIUzBEC5mbJ4kMiSV/k57GIlF+nV0sY94tU3PXqWu2tQdfLbjSc+ZY98wFwUuuZ3EX
         02g1LqxdNZxSD2TlX4n5eXpJ90gT/VzSM0eZnNeMH+Z/24pKRbCMB5plqi/J+vuoXGyU
         o7PQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=LHOr4wMF;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id e1si64571ljg.6.2020.10.20.04.32.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 04:32:27 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=LHOr4wMF;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=21Np5+Ai/GksvbG7uOyG4hFngHy2w5snp0JoIuRL5ow=; b=LHOr4wMFVx1Y2Xo1/fHyuZj4Ym
	VLt2aWuJyUQxVxPxlKYByUZ/kaUTEDqiwVx+59KnoGenNgh8tDpcmRYqxpuHIsGodedwkhCEjRUj3
	OwMA5XKeGa1+FoZRfSxxn4Cf040apEwao/WOydxy94ln9ncPyQz39/gdG1uNbKxOdQkUqHte2/B7F
	rpoPSc2RkjdbTSgZ3gnYmQlaJTJcwjFd/GjfkNVXtBP9mD33XZVTiMbRTGyhQHNAGjgXE0iDsNsia
	EAF9ZXI3J7VMclkJApGiSRrFprcRjPEt4O8Ce6iSnPVlWDKtGojthLwpuNwexozZNQhjC5FcAvWtQ
	OmJwAL+A==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUpsM-0002eQ-Gd; Tue, 20 Oct 2020 11:32:23 +0000
Date: Tue, 20 Oct 2020 12:32:22 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Need help building a driver: mt7621-pci
Message-ID: <20201020113222.GA20115@casper.infradead.org>
References: <20201019162028.GA68635@ubuntu204>
 <alpine.DEB.2.22.394.2010191858240.2781@hadrien>
 <20201019191803.GV20115@casper.infradead.org>
 <20201020033836.GA78621@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201020033836.GA78621@ubuntu204>

On Tue, Oct 20, 2020 at 09:08:36AM +0530, Deepak R Varma wrote:
> On Mon, Oct 19, 2020 at 08:18:03PM +0100, Matthew Wilcox wrote:
> > It's useful for drivers to build on all architectures by depending
> > on COMPILE_TEST.  You will probably have to provide a lot of dummy
> > interfaces; the only requirement is that the code build, not work,
> > since it almost certainly needs to access hardware that only exists on
> > the Mediatek platform.
> 
> Thank you. Tried a couple of times with different selections however,
> not able to get across this error:
> 
> make[4]: *** No rule to make target
> 'drivers/staging/mt7621-pci/pci-mt7621.o'.  Stop.
> make[3]: *** [scripts/Makefile.build:475: __build] Error 2
> make[2]: *** [scripts/Makefile.build:500: drivers/staging] Error 2
> make[1]: *** [Makefile:1777: drivers] Error 2
> make: *** [Makefile:335: __build_one_by_one] Error 2
> 
> It looks like a generic error message and lot of possibilities while I
> try to explore it myself. Any quick suggestion on what is wrong will
> be time saving.

You need to go to the Kconfig file and change:

-       depends on RALINK
+       depends on RALINK || COMPILE_TEST

Then you'll need to add dummy definitions of various things to make it
build.  Commit 171a9bae68c72f2d1260c3825203760856e6793b shows me doing
horrible things to the Octeon driver to make it build on any platform.
It's a mixture of adding structs that I copied from elsewhere and
making random #defines.  There's no hard-and-fast rule about how to make
things build for COMPILE_TEST, you're just trying to make things build
so that changes across the tree (eg to common APIs) get picked up by
the build bots.

