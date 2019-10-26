X-GM-THRID: 6746979289302827008
X-Received: by 2002:a6b:f716:: with SMTP id k22mr6057774iog.304.1572115640931;
        Sat, 26 Oct 2019 11:47:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:d204:: with SMTP id y4ls2294310ily.11.gmail; Sat, 26 Oct
 2019 11:47:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxoU/IpLw7rTdTMEUDqK21hQQWDhPWlILgPvnYczCQHLFpSYRklOdZE1oBMHuOif2EEiKyj
X-Received: by 2002:a92:c8ca:: with SMTP id c10mr12062447ilq.229.1572115639644;
        Sat, 26 Oct 2019 11:47:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572115639; cv=none;
        d=google.com; s=arc-20160816;
        b=DlYJfSwR7nuqgmGrRMOBGqguRNkbucRjozblTm4qxa3VuPg3XD/3KHDckAaayZnJxy
         8dMyj3irdfzIqaiAzJPlKxO/tNUq3oo8Vg60QbVETaRZT1H0IshHUZsSuQ0AC79NOZ7J
         lTl7VOzCyTsXSmJ/OPa7tHIwdzwF6EgNre+aBQ9hM4jdzCkv9we7Xv0o+RzuwKGMt2yQ
         X0o1tHVARHdV2TbVLEXc8Owz90XDSGTsojKeji8orGgC4PF8Zvbh20BviDhdeAxR3DsG
         t1T1IO7+opihNlr/l6lijbVsdko/dOE+S7o6newCyHzzEgOuzNPZ8/Dd65mURJ4DNUZm
         r/dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=8g2QNyUE0qcF5yAJHbXnwey6y/3a61PFOFRlt5MLQM8=;
        b=kcXzdlIm93IZgtWlYU+XJ6fmjV7Hl+mMm3DISmsdI/Yg370WXwq4Z+3wWl/H+6n2Zc
         t/KQcPtyDqT6QMrK/TWrM5EbfVi+55bZeFKCW4hH4msc/rm9acR3j4bvblHynW13fkPz
         MKSgGPyIkADa1ebFzlF/1FxapYn7nmGebw4tPmeyHBqCuK4zFHIHSPwsdzlvkmC6JxLD
         sQ7zuj1p8YwjLpQieFuNQtAzYVANi9Lq2iSQeACQ6lvmySV5rT3RCkdL7QBezXsm6irT
         zQgRbuFnYm8iexMgET7EPakRKUgKYEOk5nGwH0AqiWEEjnn2x5VD0ldarg2rSK3wLekI
         wxFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UkK5VxEy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a17si589330iok.0.2019.10.26.11.47.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 11:47:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UkK5VxEy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4F53820663;
	Sat, 26 Oct 2019 18:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572115638;
	bh=ko0i0zDpitgbOfxq/GRV2PdhwP/g81WtxSssjEN3BIY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UkK5VxEy1Nj3AdQCch7Ewa4Iw8T65kQqJwVhCpf/0LHsbV0MvQHXZA/Xjo84toKA7
	 HZoOEHkphNJIKRxtEARPs/eYIjnnP4ibZhe9grlPF2QyoM2enBxAffKuNG21Vcv1nt
	 kryuBnqUS8vhjvUCSN9Ab1pPeSS+/+5ilBsoQl0U=
Date: Sat, 26 Oct 2019 20:47:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Wambui Karuga <wambui.karugax@gmail.com>,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 0/5] Remove typedef declarations in
 staging: octeon
Message-ID: <20191026184716.GA753584@kroah.com>
References: <cover.1570821661.git.wambui.karugax@gmail.com>
 <alpine.DEB.2.21.1910122034390.3049@hadrien>
 <20191023174304.GD18977@darkstar.musicnaut.iki.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191023174304.GD18977@darkstar.musicnaut.iki.fi>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Wed, Oct 23, 2019 at 08:43:04PM +0300, Aaro Koskinen wrote:
> Hi,
> 
> On Sat, Oct 12, 2019 at 08:35:19PM +0200, Julia Lawall wrote:
> > On Sat, 12 Oct 2019, Wambui Karuga wrote:
> > > This patchset removes the addition of new typedefs data types in octeon,
> > > along with replacing the previous uses with the new declaration format.
> > >
> > > v2 of the series removes the obsolete "_t" notation in the named types.
> > >
> > > Wambui Karuga (5):
> > >   staging: octeon: remove typedef declaration for cvmx_wqe
> > >   staging: octeon: remove typedef declaration for cvmx_helper_link_info
> > >   staging: octeon: remove typedef declaration for cvmx_fau_reg_32
> > >   staging: octeon: remove typedef declartion for cvmx_pko_command_word0
> > >   staging: octeon: remove typedef declaration for cvmx_fau_op_size
> > >
> > >  drivers/staging/octeon/ethernet-mdio.c   |  6 +--
> > >  drivers/staging/octeon/ethernet-rgmii.c  |  4 +-
> > >  drivers/staging/octeon/ethernet-rx.c     |  6 +--
> > >  drivers/staging/octeon/ethernet-tx.c     |  4 +-
> > >  drivers/staging/octeon/ethernet.c        |  6 +--
> > >  drivers/staging/octeon/octeon-ethernet.h |  2 +-
> > >  drivers/staging/octeon/octeon-stubs.h    | 56 ++++++++++++------------
> > >  7 files changed, 43 insertions(+), 41 deletions(-)
> > 
> > For the series:
> > 
> > Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> 
> This series breaks the build on MIPS/OCTEON (the only actual HW using this
> driver):
> 
> $ make ARCH=mips CROSS_COMPILE=mips64-linux-gnu- cavium_octeon_defconfig
> $ make ARCH=mips CROSS_COMPILE=mips64-linux-gnu-
> [...]
>   CC      drivers/staging/octeon/ethernet.o
> In file included from drivers/staging/octeon/ethernet.c:22:
> drivers/staging/octeon/octeon-ethernet.h:94:12: warning: 'union cvmx_helper_link_info' declared inside parameter list will not be visible outside of this definition or declaration
>       union cvmx_helper_link_info li);  
>             ^~~~~~~~~~~~~~~~~~~~~
> drivers/staging/octeon/ethernet.c: In function 'cvm_oct_free_work':
> drivers/staging/octeon/ethernet.c:177:21: error: dereferencing pointer to incomplete type 'struct cvmx_wqe'
>   int segments = work->word2.s.bufs;
>                      ^~
> drivers/staging/octeon/ethernet.c: In function 'cvm_oct_common_open':
> drivers/staging/octeon/ethernet.c:463:30: error: storage size of 'link_info' isn't known
>   union cvmx_helper_link_info link_info;
>                               ^~~~~~~~~
> 
> etc.
> 
> Probably all these patches need to be reverted.

Ick :(

What is the git commit ids here that should be reverted?

thanks,

greg k-h

