X-GM-THRID: 6746979289302827008
X-Received: by 2002:a05:6214:8b:: with SMTP id n11mr12437852qvr.236.1572170215984;
        Sun, 27 Oct 2019 02:56:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:73d6:: with SMTP id v22ls296402qtp.0.gmail; Sun, 27 Oct
 2019 02:56:55 -0700 (PDT)
X-Received: by 2002:ac8:2c99:: with SMTP id 25mr12104577qtw.147.1572170215318;
        Sun, 27 Oct 2019 02:56:55 -0700 (PDT)
Received: by 2002:ae9:e64c:0:0:0:0:0 with SMTP id x12msqkl;
        Thu, 24 Oct 2019 13:54:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyZAo2vP4EM1TBQntHFlIiV6zjpLvWJDOHHW/nDoqiMFFJ31M9vQ3Mu9pOZTCCRQh9sUCp4
X-Received: by 2002:a67:6ac1:: with SMTP id f184mr67873vsc.214.1571950446267;
        Thu, 24 Oct 2019 13:54:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571950446; cv=none;
        d=google.com; s=arc-20160816;
        b=torCsYjwV7SsIcgNFBsDpR8RVtsmTsyGS4MXEo7lyrBoeFt6uPXvr2T/zmUtcOk+11
         bKPjMjUdbzoV6o3/65EneKSeBtOVWd55mRU1UMyn+FvUaSts8Yuk0v2BewdWB6trsqzR
         UA2apRDMVoDBzQLdFsdHvxEqmRqjM/md5CqeBcEtwuK7C7U02kM0HYc3JS1TIn5CuUef
         iVCqOpazgZH484JuAF9XPDbchAg2V5ND/O5QAbxY9HK9VkNKdALsgdvTCTywjOzydE26
         ge+C3SO0/2AcIKDkNDSaUZ3+/QDm7W1uqf2BlcEpF2A0LYreljhDhpKo3/2onRkMZuiA
         JO8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=EwhH6xiECs7L8rpX+VJC4HQgocepfGRCibixehUAMYs=;
        b=jIYa+Ns70K2uR3S5i/zKNm27YoY0+U8mL3InvlzpVe9i4UhTXq0QXfVpXCp3KWwCsC
         m97S0ZXqMwHHe/6x1I24DhPsz3GDbWhR0kfDluX+PJTJUPkiqQ3ZIGtdSOXRzHVJ1lvx
         52oHHDwUEBp30nWJgUej0nwwHOKNe9DMZqq2Pg4W/zwCI4wiPhWW4gv2Kc1V9zaCLkrO
         5Y5ToOk9qVn/7IZhI++StKmp40nTzpz8l1GTX2CRcfM/Y0McOgrz6g4IPgpUWfMOCgGj
         000W+ZWD9ZNAU3Wpe0/Ggk8wlzdQRx/9Bk4rjqBYVU1AHPATC7Sszp+UhqfCH+RASF7Z
         jvZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of paulburton89@gmail.com designates 209.85.215.194 as permitted sender) smtp.mailfrom=paulburton89@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <paulburton89@gmail.com>
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com. [209.85.215.194])
        by gmr-mx.google.com with ESMTPS id y14si1320129vsj.2.2019.10.24.13.54.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 13:54:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of paulburton89@gmail.com designates 209.85.215.194 as permitted sender) client-ip=209.85.215.194;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of paulburton89@gmail.com designates 209.85.215.194 as permitted sender) smtp.mailfrom=paulburton89@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: by mail-pg1-f194.google.com with SMTP id w3so41217pgt.5
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 13:54:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=EwhH6xiECs7L8rpX+VJC4HQgocepfGRCibixehUAMYs=;
        b=l5oV1wfTdQJKQia3xOu7YumJEcqUs9PLomu/8PTBOELbQzvfxt0SEWSVZ7Y8b7SXVl
         CMmWhaHjsouC4TnUQL4ZjNYKYnLFI0a1viGyEnbm96BPVAOyjyULxGBf4uSDfFwInYfN
         0y5+HMjr3yUJoUY1nqq802FCI8/nN+iDCojtemEARYAuWnjOk96PZTrPvWXWwnciO1de
         vm4rHscAORSTLrcD6kVfQ4OVP8AeE1VR0yX5QsWkejKCfEMJa81hz2wX7M+asEDB13Yp
         +1q2WdYe4lhw5wIAFWVr/G+YaLYc+SqQRLwcPygE1lqRe2CijPerdPxOCJL8L3og+h6p
         duxA==
X-Gm-Message-State: APjAAAUbUyNhwAvQDVqd+ku898gvnCtyjnXgyZwuMhUFYnH2+I7goz07
	sPcBC9sJnxd5Dg+A3D1jAD14mA5RfAB/mw==
X-Received: by 2002:a17:90a:94c3:: with SMTP id j3mr5986656pjw.41.1571950444995;
        Thu, 24 Oct 2019 13:54:04 -0700 (PDT)
Return-Path: <paulburton89@gmail.com>
Received: from localhost ([2601:646:8a00:9810:5af3:56d9:f882:39d4])
        by smtp.gmail.com with ESMTPSA id 69sm26909836pgh.47.2019.10.24.13.54.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2019 13:54:03 -0700 (PDT)
Date: Thu, 24 Oct 2019 13:54:20 -0700
From: Paul Burton <paulburton@kernel.org>
To: Wambui Karuga <wambui.karugax@gmail.com>,
	Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH v2 1/5] staging: octeon: remove
 typedef declaration for cvmx_wqe
Message-ID: <20191024205420.u7z3bhcjgetsyh3w@lantea.localdomain>
References: <cover.1570821661.git.wambui.karugax@gmail.com>
 <fa82104ea8d7ff54dc66bfbfedb6cca541701991.1570821661.git.wambui.karugax@gmail.com>
 <20191024050011.2ziewy6dkxkcxzvo@lantea.localdomain>
 <alpine.DEB.2.21.1910240722070.2771@hadrien>
 <20191024100020.GA13343@wambui>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20191024100020.GA13343@wambui>
User-Agent: NeoMutt/20180716

Hi Wambui, Julia,

Side-note: Wambui, your mail client seems to have added this header:

  Reply-To: alpine.DEB.2.21.1910240722070.2771@hadrien

This is the ID of the message you replied to (ie. this is the same value
that the In-Reply-To: header has). You should probably figure out how
that happened, or you're going to miss responses when people reply
without noticing the bogus email address.

On Thu, Oct 24, 2019 at 01:00:20PM +0300, Wambui Karuga wrote:
> On Thu, Oct 24, 2019 at 07:26:59AM +0200, Julia Lawall wrote:
> > > If you're making significant changes to this driver, please test them
> > > using the MIPS cavium_octeon_defconfig which is where this driver is
> > > actually used.
> > >
> > > This driver has broken builds a few times recently which makes me very
> > > tempted to ask that we stop allowing it to be built with COMPILE_TEST.
> > > The whole octeon-stubs.h thing is a horrible hack anyway...
> > 
> > Wambui,
> > 
> > Please figure out what went wrong here.  Are there two sets of typedefs
> > that should have been updated?
> >
> I managed to reproduce these build errors and finally noticed that the
> "octeon-stubs.h" header is only included when CONFIG_CAVIUM_OCTEON_SOC
> is not defined, therefore compiling properly for COMPILE_TEST but will
> actually fail when compiled with CONFIG_CAVIUM_OCTEON_SOC is set since
> the functions will try to use the definitions in
> arch/mips/include/asm/octeon/ that don't have the changes.
> 
> Paul, please tell me if this is correct?

Yes, that's correct. The driver was written to use the headers in
arch/mips/include/asm/octeon, and then recently the octeon-stubs.h
header was added which duplicates lots of the MIPS & Octeon-specific
header content in one huge monstrous file.

I'm all for improving compile test coverage, but I think octeon-stubs.h
in its short life has already proven itself to be a bad way to achieve
that goal[1][2][3].

> > Others,
> > 
> > Would it be reasonable to put the information about how the driver should
> > be compied in the TODO file?  git grep cavium_octeon_defconfig in the
> > octeon directory turns up nothing.

It wouldn't hurt. I'd argue that Kconfig already provides enough
information to figure this out easily though - OCTEON_ETHERNET depends
on CAVIUM_OCTEON_SOC || COMPILE_TEST, which ought to tell people that
its real use is when CAVIUM_OCTEON_SOC=y. That doesn't necessarily point
you to cavium_octeon_defconfig (though grepping for CAVIUM_OCTEON_SOC=y
would), but that's not strictly needed anyway - any old config with
CAVIUM_OCTEON_SOC=y would do.

Thanks,
    Paul

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0228ecf6128c92b47eadd2ac270c5574d9150c09
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/staging/octeon?id=17a29fea086ba18b000d28439bd5cb4f2b0a527b
[3] https://storage.kernelci.org/next/master/next-20191024/mips/cavium_octeon_defconfig/gcc-8/build.log

