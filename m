X-GM-THRID: 6746979289302827008
X-Received: by 2002:ac8:704c:: with SMTP id y12mr2347379qtm.363.1571893869612;
        Wed, 23 Oct 2019 22:11:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:4893:: with SMTP id i19ls1413415qtq.14.gmail; Wed, 23
 Oct 2019 22:11:08 -0700 (PDT)
X-Received: by 2002:ac8:f8d:: with SMTP id b13mr2320023qtk.129.1571893868721;
        Wed, 23 Oct 2019 22:11:08 -0700 (PDT)
Received: by 2002:a05:620a:1416:0:0:0:0 with SMTP id d22msqkj;
        Wed, 23 Oct 2019 10:43:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzsRyAJzocFqWYpZoPvXbyIEDNRIyBIRe1eqG1/dVZPvHitDHhAsHehqOxXvFGDHUMRdrUs
X-Received: by 2002:a2e:8684:: with SMTP id l4mr22676477lji.53.1571852585679;
        Wed, 23 Oct 2019 10:43:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571852585; cv=none;
        d=google.com; s=arc-20160816;
        b=mE6VHiqK7rLaLg/cZuLYfhSYtidhoabrHtq3K5Zot9uHVbHR70b0pJWUmWcYQ8CFAh
         Bvg0YsGxGWbYCDFHGIhi7tW+Yl6RmDK9M5aZmcgtpbpeCeXz5I7nmbu9MhLQYx/tWNbg
         5MNkOJdWPani15UCaXYG2ZgE0k+aRrCqEsNTc3VY4qPFmBQGp5tWQ3HIcD6nL00d8pKv
         RajgLJo46jGis2MNwvLZXJDvtaXul+zQp1f0dikXyIN9jsDZDp8tunGKdmmDdSMdUKC0
         S5we203NHbDYptYNvkX9Zav0PNORPabBYLPY+6oQ1B0ru83yXemJQ8CD52iD/ijpZ71C
         Terw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=bJZAMWkHRq2Xutzmw/dC3RN2fX5X2oPhB++YE4VXv+U=;
        b=y8HVrhOoW4a8Uxc6vlV75qlmNxq+wKeX8B1xe8siO/eK8CAU7XTAX5wsCgZEp9FwMv
         UFP7VTee+XFMtwsNlBhL74KyEw78rdT2YwgwNwXWizlJuRyFjpAKtG4vQE+bHZKhM1Xw
         J4TzAE4iLFhIkM1etmM9Tj7pSLdAo8Rb5pOsDSJVYhNYx8CDD7wh/O4N7Y9MfQxPqdhc
         wjX+G/3Sv2IJWgXvmUmoK0TbIv3Ex7j7q8v/sAj9CZKpjBVx6sB6qwffIu+NGsHv88fX
         eh9k5OlflaUsqv0El050JUbySVYlV8FD4KdAV9WZMkhPUEAXwoOkdulkW5Dr5DNvWjYM
         Um3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 62.142.5.117 is neither permitted nor denied by domain of aaro.koskinen@iki.fi) smtp.mailfrom=aaro.koskinen@iki.fi;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iki.fi
Return-Path: <aaro.koskinen@iki.fi>
Received: from emh07.mail.saunalahti.fi (emh07.mail.saunalahti.fi. [62.142.5.117])
        by gmr-mx.google.com with ESMTPS id y6si1369152lji.0.2019.10.23.10.43.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Oct 2019 10:43:05 -0700 (PDT)
Received-SPF: neutral (google.com: 62.142.5.117 is neither permitted nor denied by domain of aaro.koskinen@iki.fi) client-ip=62.142.5.117;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 62.142.5.117 is neither permitted nor denied by domain of aaro.koskinen@iki.fi) smtp.mailfrom=aaro.koskinen@iki.fi;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iki.fi
Received: from darkstar.musicnaut.iki.fi (85-76-128-127-nat.elisa-mobile.fi [85.76.128.127])
	by emh07.mail.saunalahti.fi (Postfix) with ESMTP id 02536B006F;
	Wed, 23 Oct 2019 20:43:04 +0300 (EEST)
Date: Wed, 23 Oct 2019 20:43:04 +0300
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: Julia Lawall <julia.lawall@lip6.fr>,
	Wambui Karuga <wambui.karugax@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 0/5] Remove typedef declarations in
 staging: octeon
Message-ID: <20191023174304.GD18977@darkstar.musicnaut.iki.fi>
References: <cover.1570821661.git.wambui.karugax@gmail.com>
 <alpine.DEB.2.21.1910122034390.3049@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910122034390.3049@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hi,

On Sat, Oct 12, 2019 at 08:35:19PM +0200, Julia Lawall wrote:
> On Sat, 12 Oct 2019, Wambui Karuga wrote:
> > This patchset removes the addition of new typedefs data types in octeon,
> > along with replacing the previous uses with the new declaration format.
> >
> > v2 of the series removes the obsolete "_t" notation in the named types.
> >
> > Wambui Karuga (5):
> >   staging: octeon: remove typedef declaration for cvmx_wqe
> >   staging: octeon: remove typedef declaration for cvmx_helper_link_info
> >   staging: octeon: remove typedef declaration for cvmx_fau_reg_32
> >   staging: octeon: remove typedef declartion for cvmx_pko_command_word0
> >   staging: octeon: remove typedef declaration for cvmx_fau_op_size
> >
> >  drivers/staging/octeon/ethernet-mdio.c   |  6 +--
> >  drivers/staging/octeon/ethernet-rgmii.c  |  4 +-
> >  drivers/staging/octeon/ethernet-rx.c     |  6 +--
> >  drivers/staging/octeon/ethernet-tx.c     |  4 +-
> >  drivers/staging/octeon/ethernet.c        |  6 +--
> >  drivers/staging/octeon/octeon-ethernet.h |  2 +-
> >  drivers/staging/octeon/octeon-stubs.h    | 56 ++++++++++++------------
> >  7 files changed, 43 insertions(+), 41 deletions(-)
> 
> For the series:
> 
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>

This series breaks the build on MIPS/OCTEON (the only actual HW using this
driver):

$ make ARCH=mips CROSS_COMPILE=mips64-linux-gnu- cavium_octeon_defconfig
$ make ARCH=mips CROSS_COMPILE=mips64-linux-gnu-
[...]
  CC      drivers/staging/octeon/ethernet.o
In file included from drivers/staging/octeon/ethernet.c:22:
drivers/staging/octeon/octeon-ethernet.h:94:12: warning: 'union cvmx_helper_link_info' declared inside parameter list will not be visible outside of this definition or declaration
      union cvmx_helper_link_info li);  
            ^~~~~~~~~~~~~~~~~~~~~
drivers/staging/octeon/ethernet.c: In function 'cvm_oct_free_work':
drivers/staging/octeon/ethernet.c:177:21: error: dereferencing pointer to incomplete type 'struct cvmx_wqe'
  int segments = work->word2.s.bufs;
                     ^~
drivers/staging/octeon/ethernet.c: In function 'cvm_oct_common_open':
drivers/staging/octeon/ethernet.c:463:30: error: storage size of 'link_info' isn't known
  union cvmx_helper_link_info link_info;
                              ^~~~~~~~~

etc.

Probably all these patches need to be reverted.

A.

