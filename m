X-GM-THRID: 6885367021918224384
X-Received: by 2002:a67:cc2:: with SMTP id 185mr401321vsm.42.1603165128576;
        Mon, 19 Oct 2020 20:38:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:2d49:: with SMTP id t70ls34856vst.4.gmail; Mon, 19 Oct
 2020 20:38:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwSY3ct02271ZImqrZ2yV2R8KAoRLmBWdvtk9FcLvvoHxx1YNJv5yaifMoXEd2HV7cOecsF
X-Received: by 2002:a05:6102:201b:: with SMTP id p27mr458360vsr.0.1603165127109;
        Mon, 19 Oct 2020 20:38:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603165127; cv=none;
        d=google.com; s=arc-20160816;
        b=hipIS4qS33HgrAPCuDASP4pgfpnD2QqSdFYpJ/8f+uekjJZBsFHvLALvh9Y1auNjqB
         FiSe91AidPbp+4eKdOYyRb0l7CAtXouCNpdxPiZhU4lucOmr8da6GN59Cab9SGsp978j
         Ba/+qT/F2gjDZ3se+Euxz3ZeCjPQ7deL/9NylY+ds4gGettGtHn86R8qYJG/ESCovayb
         GEtqbtgFswMkx0FOcF3O/1hbkVw8qkNhjMeHj50hKkX7ozHNY5q1MFbVUOo8h36y1KBY
         Yh9eRWZXa4YzB6lpuD2LHGCcX1sLl1iu3Jsbw141LFyzMY/SRayL7Ho9B0RH9Y01cWZv
         tSow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vSMM+E3NwQtw+loxfR+7Tmlwhr4zWyTNkQPEPCApDbc=;
        b=IsYW9rAUktjQJoVUbzIYqtCWbtacCfTCegITnMKu+uqhJ1/Eo3qWiIxVU1ZC3RRgSm
         Mxq1VejB63dOvrno2op62XFTTjAETfGRPaLv85N5wA9Qht7e3pgdguhK70vepUf9wmD9
         SJV2pNjPJ2aVH3aXDNo2wTvrb9ioU4Fw4bEgL7/AmRB4pcgPvUlP9FSQNC2V4B85/HJR
         HVAJB+ze3iKD2Z0FsO+XfJ9Muk//SDXUerUm8RjFB9rVuBlOVuC3YwPRrN6vOSztGT3G
         LC923RTns+ErSBqFH493DZJATTIJrJ8kQaEgnmD+IZYd1vh8uSqslFl//Iv+2EYTh060
         ywEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fOT6mS5c;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id j77si32633vkj.1.2020.10.19.20.38.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 20:38:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fOT6mS5c;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id az3so192410pjb.4
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2020 20:38:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=vSMM+E3NwQtw+loxfR+7Tmlwhr4zWyTNkQPEPCApDbc=;
        b=fOT6mS5coElDvMdgr5PBwBYHcWS7ySejWFGaL74y0f8VO4VdLibToNmtAhjOmGUk57
         eMmdJ4yIVNqLGTDs6lfApXigaQIcdNw//4N/Q3XMU6uxWDf8dKZ2AhdAz98kC9dWxa9l
         iFzglSmP/j5m0HSJRTRaTpG4prY5AUN6f6kNnqpI8/FirhQGRwhqrMJqF3YmQFlg0LVp
         3iD3n4swUq0JdpUoOJ6VLn93Y21DcYxYgka6KsXIyq4hBRgXD4WwMphvtvthyHJ9dzxV
         o31wHndS6vnykmu4ZjZvWxOl94uSLtZiZachP+7jn7h2QiZqKSXCSZBLDUyAlzhBq0bv
         H3Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=vSMM+E3NwQtw+loxfR+7Tmlwhr4zWyTNkQPEPCApDbc=;
        b=Pze0b8QPH4lpBhXoKEVuvAqeTYaPujAS8WxwK6Cy74LSEyGU2FtwGevzOwpKRlgFhq
         K+jqPYZp6eUJXgH9JythWVjTCPH0FZb2ZSMkUa7cLrxO8dG4mZojweLJZT2dutcKFWql
         rG8U2Bh+RSn8oFD6gZbvjKAcBb/lVcwMyKWCgIxX5QBOFgPJcQYIof7yqYU23UMJhWAs
         nAR1xxoY1FQuMmwWZlpRYR4pzenqWlwphAc2QTgNCAp9+qq5kNWNUhllmi3BFAgroA1w
         VVReXJPuKsD4bkVHwJ2+n6DAmb6MVDDa1QVId459AYp9WujvQ6fGC2dBK6NPSrkRkPzc
         XmcQ==
X-Gm-Message-State: AOAM531gCT1ZRgAi/4f+p7o0q3guW7MzBR+ccsst336EtX/kF8M1XkVm
	nNb2VisQ5yybgAurPyCY/2oIYddNDFrVwA==
X-Received: by 2002:a17:90b:2286:: with SMTP id kx6mr167803pjb.114.1603165126193;
        Mon, 19 Oct 2020 20:38:46 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([43.241.135.6])
        by smtp.gmail.com with ESMTPSA id ck21sm255499pjb.56.2020.10.19.20.38.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 20:38:45 -0700 (PDT)
Date: Tue, 20 Oct 2020 09:08:36 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Need help building a driver: mt7621-pci
Message-ID: <20201020033836.GA78621@ubuntu204>
References: <20201019162028.GA68635@ubuntu204>
 <alpine.DEB.2.22.394.2010191858240.2781@hadrien>
 <20201019191803.GV20115@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201019191803.GV20115@casper.infradead.org>

On Mon, Oct 19, 2020 at 08:18:03PM +0100, Matthew Wilcox wrote:
> On Mon, Oct 19, 2020 at 07:01:50PM +0200, Julia Lawall wrote:
> > On Mon, 19 Oct 2020, Deepak R Varma wrote:
> > > Hello,
> > > I have made a change to drivers/staging/mt7621-pci/pci-mt7621.c file and
> > > now trying to build to ensure the driver builds fine. However, this file
> > > doesn't get included in the build process.
> > >
> > > I tried looking for driver dependencies and am not able to locate RALINK
> > > in my driver tree [in menuconfig] to enable it.
> > >
> > > Can you please suggest what may be wrong here?
> > 
> > A colleague of mine, Paul Gazzillo, makes a tool called klocalizer that
> > figures out how to compile Linux kernel files.  It suggests:
> > 
> > make.cross ARCH=mips olddefconfig; make.cross ARCH=mips clean drivers/staging/mt7621-pci/pci-mt7621.o
> 
> It's useful for drivers to build on all architectures by depending
> on COMPILE_TEST.  You will probably have to provide a lot of dummy
> interfaces; the only requirement is that the code build, not work,
> since it almost certainly needs to access hardware that only exists on
> the Mediatek platform.

Thank you. Tried a couple of times with different selections however,
not able to get across this error:

make[4]: *** No rule to make target
'drivers/staging/mt7621-pci/pci-mt7621.o'.  Stop.
make[3]: *** [scripts/Makefile.build:475: __build] Error 2
make[2]: *** [scripts/Makefile.build:500: drivers/staging] Error 2
make[1]: *** [Makefile:1777: drivers] Error 2
make: *** [Makefile:335: __build_one_by_one] Error 2

It looks like a generic error message and lot of possibilities while I
try to explore it myself. Any quick suggestion on what is wrong will
be time saving.

Thank you,
Deepak.


