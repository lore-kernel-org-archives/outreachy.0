X-GM-THRID: 6746979289302827008
X-Received: by 2002:a2e:9151:: with SMTP id q17mr25276617ljg.115.1571950640388;
        Thu, 24 Oct 2019 13:57:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:3101:: with SMTP id x1ls947270ljx.1.gmail; Thu, 24 Oct
 2019 13:57:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwbG1Ca3v9nm28JtkfBneHA+2EwSC7j1+yKk5uRTAXIh6EZW2jU47Th9WEIEGBO7up5e+Id
X-Received: by 2002:a2e:547:: with SMTP id 68mr10921482ljf.150.1571950639449;
        Thu, 24 Oct 2019 13:57:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571950639; cv=none;
        d=google.com; s=arc-20160816;
        b=L3m7wjxi0T43RMYZfrsLg4mB3A+EbPt3xaQKuA4UqcYNf/1dUDet6ASoDnYhYo+rWX
         mG9hIHPQwf6/E/UoF3t0dQJe8aVdEgRPTres4QkvCmKzMOQel4Sp7V0Gtv8o8DZXwTOD
         XPfVPLF0m9SoH7e6j/6xgTAs5ljUjIlvY//5gzsBhbJhOaBKoSxb09gb41zIgPZ+YyMN
         aU1erQR7yTeSNEN741xkD3GWoTbI1YSULCpgDuEOX4JSvKY6/l8pzsWf6hKDcerYPcoz
         4Luo8b5mMVhVpbf+//3zH7WZlIerzL6LrRFDQqvzef96KAWJymXi3cGR49iF3ZBCtIMB
         aVWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Q0STyBbV02qHJWIyzTSNGmYtwTirxikQHyoaqTt68wE=;
        b=sHsufR4XVNyR9O36Oe8W9F4UTnMZij+zLY+krh5HxEIXj82t02XeS1owO9QNlkhzLG
         LUuVfDgDQXEmKPsi/PkpfZv5saV1CzFRFERSFc3hiIWmjop813TuDsBZHxsz5bU+CXYO
         556C43Mm/KeZaUtSHl6quWF+fVJA0tpg0n6lzDihlB4fB2MJONBtlhWjjsCFP/Kezo3C
         Tk+GA0pL1N2ZhKC5Ix3626dZSEIi6Q8XCEDJtJsvOfoXiMnMK5lzk1SSgas+GpqBUep3
         joj9ZOCImRTJdQD/pZi30YUuoEvaTJBYGdDBWoDn6igdVTgOCcqh63YshafZaNHZf5cx
         UuZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id z26si5783lfq.4.2019.10.24.13.57.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 13:57:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,226,1569276000"; 
   d="scan'208";a="324196663"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Oct 2019 22:57:18 +0200
Date: Thu, 24 Oct 2019 22:57:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Paul Burton <paulburton@kernel.org>
cc: Wambui Karuga <wambui.karugax@gmail.com>, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH v2 1/5] staging: octeon: remove
 typedef declaration for cvmx_wqe
In-Reply-To: <20191024205420.u7z3bhcjgetsyh3w@lantea.localdomain>
Message-ID: <alpine.DEB.2.21.1910242255290.2621@hadrien>
References: <cover.1570821661.git.wambui.karugax@gmail.com> <fa82104ea8d7ff54dc66bfbfedb6cca541701991.1570821661.git.wambui.karugax@gmail.com> <20191024050011.2ziewy6dkxkcxzvo@lantea.localdomain> <alpine.DEB.2.21.1910240722070.2771@hadrien>
 <20191024100020.GA13343@wambui> <20191024205420.u7z3bhcjgetsyh3w@lantea.localdomain>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 24 Oct 2019, Paul Burton wrote:

> Hi Wambui, Julia,
>
> Side-note: Wambui, your mail client seems to have added this header:
>
>   Reply-To: alpine.DEB.2.21.1910240722070.2771@hadrien
>
> This is the ID of the message you replied to (ie. this is the same value
> that the In-Reply-To: header has). You should probably figure out how
> that happened, or you're going to miss responses when people reply
> without noticing the bogus email address.

This is somehow related to me...  I don't know if the problem comes from
me or from Wambui.

julia

>
> On Thu, Oct 24, 2019 at 01:00:20PM +0300, Wambui Karuga wrote:
> > On Thu, Oct 24, 2019 at 07:26:59AM +0200, Julia Lawall wrote:
> > > > If you're making significant changes to this driver, please test them
> > > > using the MIPS cavium_octeon_defconfig which is where this driver is
> > > > actually used.
> > > >
> > > > This driver has broken builds a few times recently which makes me very
> > > > tempted to ask that we stop allowing it to be built with COMPILE_TEST.
> > > > The whole octeon-stubs.h thing is a horrible hack anyway...
> > >
> > > Wambui,
> > >
> > > Please figure out what went wrong here.  Are there two sets of typedefs
> > > that should have been updated?
> > >
> > I managed to reproduce these build errors and finally noticed that the
> > "octeon-stubs.h" header is only included when CONFIG_CAVIUM_OCTEON_SOC
> > is not defined, therefore compiling properly for COMPILE_TEST but will
> > actually fail when compiled with CONFIG_CAVIUM_OCTEON_SOC is set since
> > the functions will try to use the definitions in
> > arch/mips/include/asm/octeon/ that don't have the changes.
> >
> > Paul, please tell me if this is correct?
>
> Yes, that's correct. The driver was written to use the headers in
> arch/mips/include/asm/octeon, and then recently the octeon-stubs.h
> header was added which duplicates lots of the MIPS & Octeon-specific
> header content in one huge monstrous file.
>
> I'm all for improving compile test coverage, but I think octeon-stubs.h
> in its short life has already proven itself to be a bad way to achieve
> that goal[1][2][3].
>
> > > Others,
> > >
> > > Would it be reasonable to put the information about how the driver should
> > > be compied in the TODO file?  git grep cavium_octeon_defconfig in the
> > > octeon directory turns up nothing.
>
> It wouldn't hurt. I'd argue that Kconfig already provides enough
> information to figure this out easily though - OCTEON_ETHERNET depends
> on CAVIUM_OCTEON_SOC || COMPILE_TEST, which ought to tell people that
> its real use is when CAVIUM_OCTEON_SOC=y. That doesn't necessarily point
> you to cavium_octeon_defconfig (though grepping for CAVIUM_OCTEON_SOC=y
> would), but that's not strictly needed anyway - any old config with
> CAVIUM_OCTEON_SOC=y would do.
>
> Thanks,
>     Paul
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0228ecf6128c92b47eadd2ac270c5574d9150c09
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/staging/octeon?id=17a29fea086ba18b000d28439bd5cb4f2b0a527b
> [3] https://storage.kernelci.org/next/master/next-20191024/mips/cavium_octeon_defconfig/gcc-8/build.log
>

