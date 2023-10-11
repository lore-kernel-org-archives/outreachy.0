Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DE7018029
	for <outreachy@lists.linux.dev>; Wed, 11 Oct 2023 07:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="CNR9KCGH"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1697008263; x=1728544263;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=N7hjqP7HiuUtuFnBKMiLXiQ8WNx8yBxuRM+UX36aFW4=;
  b=CNR9KCGHbEsscgyueE6dZTfgiV0mgan2PNcqtnZyYpyZ9ASCjnxld1bh
   Hzr3kvcxyZ7EOqME8dMh8J40TQ3k7c3f0g5gu8OAocIi/shUijBEYLW+m
   qLoTzue2FskkrRV/SitDijWR2NqcnLble9UD5Ife9RuSU/H+tpm5I/3DR
   fY3O3gIFyV3zFqBcVIeb2xUOPQMOISSEYMe8xRkma/IpztyrAXemVntiU
   xkPCkk9AIkiPl4w8rOSBy9UMlPlGKU6bc7lV7vRtzHIYw/XXtMpZ5/WFq
   bFzBjDNRXkn/ZlE0dQGGxY0g3cbqv8S/DrFKoNElHPSV2XYLx03u/gQik
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="470860665"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; 
   d="scan'208";a="470860665"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Oct 2023 00:11:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="1001001792"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; 
   d="scan'208";a="1001001792"
Received: from lyemeeki-mobl2.gar.corp.intel.com (HELO intel.com) ([10.214.156.206])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Oct 2023 00:10:59 -0700
Date: Wed, 11 Oct 2023 09:10:54 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Gilbert Adikankwu <gilbertadikankwu@gmail.com>,
	Andi Shyti <andi.shyti@linux.intel.com>, outreachy@lists.linux.dev
Subject: Re: [Outreachy Applicant] NEEDS SOME CLARIFICATIONS
Message-ID: <ZSZKfhGAIlqDXvt1@ashyti-mobl2.lan>
References: <ZST5+5a8Uq1pULop@ashyti-mobl2.lan>
 <CAKrXSsZe4w-K7kzGu=8_R_h1TSVtJWL1_TmFX-S-A1jCrPeCrg@mail.gmail.com>
 <8e38f1a1-1da4-1d1f-aa32-6ad7ebb31c11@inria.fr>
 <ZSV/MLpQs0GJYIqh@ashyti-mobl2.lan>
 <CAKrXSsZSb35yvwvMm_sa9+Xk6V01ZA_2LSzd9Lbufjsifr7kKw@mail.gmail.com>
 <ZSWD1rtmLLWS++RH@ashyti-mobl2.lan>
 <CAKrXSsYYWUYyTC2SKpiYmXT3jktvCs0WJQO=z1=TVu-+ZPM_Mw@mail.gmail.com>
 <ZSW5+/fhwFOpZmxR@ashyti-mobl2.lan>
 <ZSY9lKQQjfgEUYWD@gilbert-PC>
 <alpine.DEB.2.22.394.2310110825150.3208@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2310110825150.3208@hadrien>

Hi Gilbert,

> > > > > > > > You have too little space in the partition that contains /boot?
> > > > > > >
> > > > > > > What does "df -h" say?
> > > > > > >
> > > > > > > Andi
> > > > > >
> > > > > > This is what df -h returned:
> > > > > >
> > > > > > Filesystem      Size  Used Avail Use% Mounted on
> > > > > > tmpfs           784M  2.0M  782M   1% /run
> > > > > > /dev/sda9        23G   17G  5.6G  75% /
> > > > > > tmpfs           3.9G   45M  3.8G   2% /dev/shm
> > > > > > tmpfs           5.0M  4.0K  5.0M   1% /run/lock
> > > > > > /dev/sda7       944M  761M  119M  87% /boot
> > > > >
> > > > > I wonder why your boot directory is so packed, even though 119M
> > > > > should be enough.
> > > > >
> > >
> > > > I don't why it is so packed either. I ran du -ah /boot/ and it returned:
> > > > 272K /boot/config-6.2.0-34-generic
> > > > 14M /boot/vmlinuz-6.6.0-rc1gilbert+
> > > > 0 /boot/initrd.img
> > > > 276K /boot/config-6.6.0-rc1gilbert+
> > > > 14M /boot/vmlinuz-6.2.0-34-generic
> > > > 184K /boot/memtest86+_multiboot.bin
> > > > 7.6M /boot/System.map-6.2.0-26-generic
> > > > 180K /boot/memtest86+.bin
> > > > 184K /boot/memtest86+.elf
> > > > 67M /boot/initrd.img-6.2.0-34-generic
> > > > 7.7M /boot/System.map-6.2.0-34-generic
> > > > du: cannot read directory '/boot/efi': Permission denied
> > > > 1.0K /boot/efi
> > > > 0 /boot/vmlinuz
> > > > 7.6M /boot/System.map-6.6.0-rc1gilbert+
> > > > du: cannot read directory '/boot/lost+found': Permission denied
> > > > 16K /boot/lost+found
> > > > 14M /boot/vmlinuz-6.2.0-26-generic
> > > > 4.0K /boot/grub/x86_64-efi/lsefimmap.mod
> > > > 4.0K /boot/grub/x86_64-efi/setjmp.mod
> > > > 12K /boot/grub/x86_64-efi/loadenv.mod
> > >
> > > ...
> > >
> > > > 4.0K /boot/grub/i386-pc/search_fs_uuid.mod
> > > > 2.5M /boot/grub/i386-pc
> > > > 11M /boot/grub
> > > > 547M /boot/initrd.img-6.6.0-rc1gilbert+
> > > > 74M /boot/initrd.img-6.2.0-26-generic
> > > > 272K /boot/config-6.2.0-26-generic
> > > >
> > > > I apologize for the overly long list
> > >
> > > that's a long list indeed. I don't know what all those files are,
> > > but I don't think they are an issue.
> > >
> > > > > > /dev/sda11       60G   28G   30G  49% /home
> > > > >
> > > > > BTW, are you working in your home directory?
> > > > >
> > > > No, I'm not working in the home directory
> > >
> > > then I think this is the main issue. You have lots of free space
> > > in your home directory, you should work there. I only work in my
> > > home directory.
> > >
> > > I believe you weren't able to complete the compilation because
> > > you were working in the root partition where you have less
> > > space available.
> > >
> > > Andi
> > >
> > Hello Andi,
> >
> > Thank you for your response. So I'm not sure I understand what you mean
> > by do all you work in the home directory so I will explain how I work
> > now to see if that is what you mean.
> >
> > I have the staging respository in my home directory and I usually
> > do all my compilation from inside the directory of the staging
> > repository that is saved in my home directory.
> >
> > Is this what you mean by working from the home directory? or is there other setups I should be doing my home directory?

yes, I mean the directory where you clone and build the kernel.
If you do that in your home directory, then it's fine.

> > Also I deleted the offending file in my /boot :
> >
> > 547M /boot/initrd.img-6.6.0-rc1gilbert+
> >
> > and deleted its module directory in usr/lib/modules
> >
> > I realised it was too large compared to the other kernels and assumed
> > that probably I didn't do its .config file properly which might have enabled
> > more modules than is needed for it to run on my machine.
> >
> > this is the result of df -h after the deletion:
> > Filesystem      Size  Used Avail Use% Mounted on
> > tmpfs           784M  2.0M  782M   1% /run
> > /dev/sda9        23G   11G   12G  47% /
> > tmpfs           3.9G  193M  3.7G   5% /dev/shm
> > tmpfs           5.0M  4.0K  5.0M   1% /run/lock
> > /dev/sda7       944M  201M  678M  23% /boot
> > /dev/sda11       60G   28G   30G  49% /home
> > /dev/sda2        96M   32M   65M  33% /boot/efi
> > tmpfs           784M  144K  784M   1% /run/user/1000
> >
> > I want to generate a new .config file and recompile. I also realised
> > that the staging repository I have on my machine is 28GB large is this
> > normal?

Yes, it's normaly. 28GB is a lot though, I guess you are using a
big config.

> When you start compiling the Linux kernel it gets very big.  But maybe you
> reduced your config at some point, but didn't delete the no longer needed
> .o files?  You could try make clean and then recompile.

You could try with a "make distclean", before doing again
everything, to cut some bytes down. This way you would start
afresh.

Andi

PS my working machine has 110GB, not far from yours :-)
