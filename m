Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B3A2FE07
	for <outreachy@lists.linux.dev>; Tue, 10 Oct 2023 17:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="ULg5WdC6"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1696957409; x=1728493409;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=jrWWM2PiByhdHqXeqUyHdLTv9YirIk0FKhLWiswGSnU=;
  b=ULg5WdC6kDD5OaOJ0fw0JR9IM0entaHv0uJa+a49QcvXidpDJTBeJfgJ
   fcoPgj4kDVwO4gg1u+/ZrDEwKJKxijti7oyR31VoYirVk3XfW3HsXdKUi
   1Nzj3lR6D8N+GRJu2BD20ihScAq8ETfck2d+V9aQDIlEnfghzVz4W51mf
   gccHQc3BIvYsvkozLpkk4eTDoMxpNNkfTPREZ4fd70VTBST4/bp+ZqE0e
   /Yrs8RTRwKu5jnjXHT+iT3z6lpUyd41K/tPOgFK68bskx2f3Y8acZRdvo
   6eFLRZJXCyIvFLSbV0m41kd22vRrgQjhVgWeOQaymnWqY6quDKifokfZc
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="369514042"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; 
   d="scan'208";a="369514042"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2023 10:03:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="703373794"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; 
   d="scan'208";a="703373794"
Received: from ppalanyk-mobl.gar.corp.intel.com (HELO intel.com) ([10.213.148.82])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2023 10:03:24 -0700
Date: Tue, 10 Oct 2023 19:03:18 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
	Julia Lawall <julia.lawall@inria.fr>,
	"andi.shyti@kernel.org" <andi.shyti@kernel.org>,
	"outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Subject: Re: [Outreachy Applicant] NEEDS SOME CLARIFICATIONS
Message-ID: <ZSWD1rtmLLWS++RH@ashyti-mobl2.lan>
References: <ZSTRETv7sO+1A6/G@gilbert-PC>
 <ZST5+5a8Uq1pULop@ashyti-mobl2.lan>
 <CAKrXSsZe4w-K7kzGu=8_R_h1TSVtJWL1_TmFX-S-A1jCrPeCrg@mail.gmail.com>
 <8e38f1a1-1da4-1d1f-aa32-6ad7ebb31c11@inria.fr>
 <ZSV/MLpQs0GJYIqh@ashyti-mobl2.lan>
 <CAKrXSsZSb35yvwvMm_sa9+Xk6V01ZA_2LSzd9Lbufjsifr7kKw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKrXSsZSb35yvwvMm_sa9+Xk6V01ZA_2LSzd9Lbufjsifr7kKw@mail.gmail.com>

Hi Gilbert,

first of all... good to see that your good e-mail style :-)

> > > > I have another issue, I tried compiling after modifying and it compiled
> > > > successfully. But when I tried to install so I can reboot, I got this
> > > > error:
> > > >
> > > > zstd: error 25 : Write error : No space left on device (cannot write
> > > > compressed block)
> > > > E: mkinitramfs failure zstd -q -1 -T0 25
> > > > update-initramfs: failed for /boot/initrd.img-6.6.0-rc1gilbert+ with 1.
> > > > run-parts: /etc/kernel/postinst.d/initramfs-tools exited with return code 1
> > > > make[2]: *** [arch/x86/Makefile:292: install] Error 1
> > > > make[1]: *** [/home/functionguyy/git/kernels/staging/Makefile:359:
> > > > __build_one_by_one] Error 2
> > > > make: *** [Makefile:234: __sub-make] Error 2
> > >
> > > You have too little space in the partition that contains /boot?
> >
> > What does "df -h" say?
> >
> > Andi
> 
> This is what df -h returned:
> 
> Filesystem      Size  Used Avail Use% Mounted on
> tmpfs           784M  2.0M  782M   1% /run
> /dev/sda9        23G   17G  5.6G  75% /
> tmpfs           3.9G   45M  3.8G   2% /dev/shm
> tmpfs           5.0M  4.0K  5.0M   1% /run/lock
> /dev/sda7       944M  761M  119M  87% /boot

I wonder why your boot directory is so packed, even though 119M
should be enough.

You could try to reove some older kernels.

> /dev/sda11       60G   28G   30G  49% /home

BTW, are you working in your home directory?

Andi

> /dev/sda2        96M   32M   65M  33% /boot/efi
> tmpfs           784M  120K  784M   1% /run/user/1000
