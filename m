Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DDC315AF
	for <outreachy@lists.linux.dev>; Tue, 10 Oct 2023 20:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="FBkmkRZo"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1696971340; x=1728507340;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=s11o75Bon3b5wJlhGWVU4j2NBY++YD0BJrxIfKowpg0=;
  b=FBkmkRZoX/i4M4vmcbR5EL11kepNvgVQxd1LALQWhpAyU76mW00OLJni
   h3Iu27dTsOFaFdn/7Nj1gKLVg8OPptABDk5pc2sDD7P4KiP6vgzKpTIQ8
   GzSwCQ+PtwsXPG8hj2MP6D5UZK8/mfP+vXUmH51GYWmE/sNef/0CfSLwC
   qYoe+Gfz2sPLLfmXkV/G4Uzk1C3UPKjnFqSLjS8IbmKBCHOujdDSZflqJ
   IeL3wUWyPgzadK+1PdRQT/TveHYzJbQDE6Xdn33oCTrCNbiSs6i+EGoeX
   B3F8aNh4hShfqkfERgpFnSUNNzj3plt/mO78O9dYa55FoRxJVQ3/HS01L
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="387345417"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; 
   d="scan'208";a="387345417"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2023 13:54:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="927296050"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; 
   d="scan'208";a="927296050"
Received: from ppalanyk-mobl.gar.corp.intel.com (HELO intel.com) ([10.213.148.82])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2023 13:54:25 -0700
Date: Tue, 10 Oct 2023 22:54:19 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
	Julia Lawall <julia.lawall@inria.fr>,
	"andi.shyti@kernel.org" <andi.shyti@kernel.org>,
	"outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Subject: Re: [Outreachy Applicant] NEEDS SOME CLARIFICATIONS
Message-ID: <ZSW5+/fhwFOpZmxR@ashyti-mobl2.lan>
References: <ZSTRETv7sO+1A6/G@gilbert-PC>
 <ZST5+5a8Uq1pULop@ashyti-mobl2.lan>
 <CAKrXSsZe4w-K7kzGu=8_R_h1TSVtJWL1_TmFX-S-A1jCrPeCrg@mail.gmail.com>
 <8e38f1a1-1da4-1d1f-aa32-6ad7ebb31c11@inria.fr>
 <ZSV/MLpQs0GJYIqh@ashyti-mobl2.lan>
 <CAKrXSsZSb35yvwvMm_sa9+Xk6V01ZA_2LSzd9Lbufjsifr7kKw@mail.gmail.com>
 <ZSWD1rtmLLWS++RH@ashyti-mobl2.lan>
 <CAKrXSsYYWUYyTC2SKpiYmXT3jktvCs0WJQO=z1=TVu-+ZPM_Mw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKrXSsYYWUYyTC2SKpiYmXT3jktvCs0WJQO=z1=TVu-+ZPM_Mw@mail.gmail.com>

Hi Gilbert,

> Thank you for your response. I think I'm finally understanding good e-mail style
> thanks to you and everyone else who has responded to emails

glad to hear! :-)

> > > > > You have too little space in the partition that contains /boot?
> > > >
> > > > What does "df -h" say?
> > > >
> > > > Andi
> > >
> > > This is what df -h returned:
> > >
> > > Filesystem      Size  Used Avail Use% Mounted on
> > > tmpfs           784M  2.0M  782M   1% /run
> > > /dev/sda9        23G   17G  5.6G  75% /
> > > tmpfs           3.9G   45M  3.8G   2% /dev/shm
> > > tmpfs           5.0M  4.0K  5.0M   1% /run/lock
> > > /dev/sda7       944M  761M  119M  87% /boot
> >
> > I wonder why your boot directory is so packed, even though 119M
> > should be enough.
> >

> I don't why it is so packed either. I ran du -ah /boot/ and it returned:
> 272K /boot/config-6.2.0-34-generic
> 14M /boot/vmlinuz-6.6.0-rc1gilbert+
> 0 /boot/initrd.img
> 276K /boot/config-6.6.0-rc1gilbert+
> 14M /boot/vmlinuz-6.2.0-34-generic
> 184K /boot/memtest86+_multiboot.bin
> 7.6M /boot/System.map-6.2.0-26-generic
> 180K /boot/memtest86+.bin
> 184K /boot/memtest86+.elf
> 67M /boot/initrd.img-6.2.0-34-generic
> 7.7M /boot/System.map-6.2.0-34-generic
> du: cannot read directory '/boot/efi': Permission denied
> 1.0K /boot/efi
> 0 /boot/vmlinuz
> 7.6M /boot/System.map-6.6.0-rc1gilbert+
> du: cannot read directory '/boot/lost+found': Permission denied
> 16K /boot/lost+found
> 14M /boot/vmlinuz-6.2.0-26-generic
> 4.0K /boot/grub/x86_64-efi/lsefimmap.mod
> 4.0K /boot/grub/x86_64-efi/setjmp.mod
> 12K /boot/grub/x86_64-efi/loadenv.mod

...

> 4.0K /boot/grub/i386-pc/search_fs_uuid.mod
> 2.5M /boot/grub/i386-pc
> 11M /boot/grub
> 547M /boot/initrd.img-6.6.0-rc1gilbert+
> 74M /boot/initrd.img-6.2.0-26-generic
> 272K /boot/config-6.2.0-26-generic
> 
> I apologize for the overly long list

that's a long list indeed. I don't know what all those files are,
but I don't think they are an issue.

> > > /dev/sda11       60G   28G   30G  49% /home
> >
> > BTW, are you working in your home directory?
> >
> No, I'm not working in the home directory

then I think this is the main issue. You have lots of free space
in your home directory, you should work there. I only work in my
home directory.

I believe you weren't able to complete the compilation because
you were working in the root partition where you have less
space available.

Andi
