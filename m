X-GM-THRID: 6885367021918224384
X-Received: by 2002:a2e:9d91:: with SMTP id c17mr645512ljj.263.1603135091214;
        Mon, 19 Oct 2020 12:18:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:c111:: with SMTP id r17ls305303lff.0.gmail; Mon, 19 Oct
 2020 12:18:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxRRMY/ZEJZNdX/+QBjzXmSpGx7ov77FKmK761kZiQR4paSZAVDw64SMBS0K/OkbIuAiHIK
X-Received: by 2002:ac2:5c5d:: with SMTP id s29mr408680lfp.584.1603135088924;
        Mon, 19 Oct 2020 12:18:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603135088; cv=none;
        d=google.com; s=arc-20160816;
        b=YjAW19fuB/kSo1G9W6U1dIh8qDDZATUOV0tN+qU3DfFDpgKyR2NUPh/Kmjta9i5E8f
         4EqpSNPhW/C5Q8MT2ctlBCd0nmuNYUAZOaiDGnd/ZLhD78A5zNoqIwyYLxtm77Mm1c0+
         vkx+vclRPMrxVAQQYJSO1VdfFQn55AieS7HsDY1HWMdbel+5xBgCnv1wOVSOzkoFSllw
         UZq2gHIWW8uW/Rpik1o0JjlEM4MQA8dFliSETdfuE2mgC2/8N+vcXz6CU8SHx22Be1ri
         idE2sZ/AXyTNrl8rvIDpLlMvUmk1A0xrRrw2qab+W+mhsUoe5Es+xb2G37LgaLLzL2B9
         4ZVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2rWXJyPdj33dP1IID+wF0hce412mmCPa3GO4lcMqbB0=;
        b=lf8UQ8mKNyjVIVM6Gvo3WsA8jH0E8NLqRlhyXZdAUWfYY2SJ1CVJQ4kFJcLS1476fi
         0j/lSzTKaOoedtibyEcmTpFzBFWZTIcuS8sf/sul0yU/bwOWaMWKP2ilPKa2H8RX+AqH
         zZsbLXk6N7e9LixVb7YOVAlyjV1Agqtu7CgwonkyXrmNTvCmODVm4yDfBUSRkx/cqL1z
         TDKyZTr6QBWuwltVQKqgfAK92voansN58ieQ8nXzwA8H/NlFoIkCDegaSD8VhmBTqKdl
         86TUO92lXEPluFSRGyQJKrcb0so1CL1YQT39InhWMPIC10TYf83v59kiHpr5VDHneAro
         8h1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=WbyBoTKA;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id n5si15716lji.5.2020.10.19.12.18.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 12:18:08 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=WbyBoTKA;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=2rWXJyPdj33dP1IID+wF0hce412mmCPa3GO4lcMqbB0=; b=WbyBoTKApN4DqV7C9XNW1pgjg3
	hRcfCLs06aQTgkrkU314K6KNFuJYjoKUFJ8R7BhQkd4w4Y7TwDbVtfm9tvooK6FnsTn9buXBh30nr
	AullZdAWuw3ipiPS/7C9c+gKoSb+pig7eUsrOAfpoMalBYp5HoJ+/+3kJdks1LyDN+TwCkZdC3FHq
	wZCJrXYlqpzViEB9Mu3ptmp4KKNJC2KrV+cVbd6Dj+vDUQzBhEDirmdELUXrzagEWakXJnTTdkUYl
	uYXTYNNsMAAH8KdvpigesG8XfYdx1hMurF3rSa7Psf0jj0ivMkSjuIhMeKPvh8eMlvlLvYE2FtyGX
	V1HtRBvg==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUafT-0006RA-Vl; Mon, 19 Oct 2020 19:18:04 +0000
Date: Mon, 19 Oct 2020 20:18:03 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Deepak R Varma <mh12gx2825@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Need help building a driver: mt7621-pci
Message-ID: <20201019191803.GV20115@casper.infradead.org>
References: <20201019162028.GA68635@ubuntu204>
 <alpine.DEB.2.22.394.2010191858240.2781@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2010191858240.2781@hadrien>

On Mon, Oct 19, 2020 at 07:01:50PM +0200, Julia Lawall wrote:
> On Mon, 19 Oct 2020, Deepak R Varma wrote:
> > Hello,
> > I have made a change to drivers/staging/mt7621-pci/pci-mt7621.c file and
> > now trying to build to ensure the driver builds fine. However, this file
> > doesn't get included in the build process.
> >
> > I tried looking for driver dependencies and am not able to locate RALINK
> > in my driver tree [in menuconfig] to enable it.
> >
> > Can you please suggest what may be wrong here?
> 
> A colleague of mine, Paul Gazzillo, makes a tool called klocalizer that
> figures out how to compile Linux kernel files.  It suggests:
> 
> make.cross ARCH=mips olddefconfig; make.cross ARCH=mips clean drivers/staging/mt7621-pci/pci-mt7621.o

It's useful for drivers to build on all architectures by depending
on COMPILE_TEST.  You will probably have to provide a lot of dummy
interfaces; the only requirement is that the code build, not work,
since it almost certainly needs to access hardware that only exists on
the Mediatek platform.

