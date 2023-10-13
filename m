Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48240101F5
	for <outreachy@lists.linux.dev>; Fri, 13 Oct 2023 07:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OfMoVAPh"
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-5a7db1f864bso21236347b3.3
        for <outreachy@lists.linux.dev>; Fri, 13 Oct 2023 00:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697183968; x=1697788768; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=su9xKWoStQB7RNr82xq1pj+qARZcxDSQiN6DRUPVKtY=;
        b=OfMoVAPh3BPmE8z6oKLZGTQ1xq7AodNkBSJALrMTNm153MPTBbkcYIGfbeOSP3qkx0
         KXqLu7a15yqmlIBpdGry4AY3OcHqTGL7/PALolHhkbWdZkyU5nRsgbWTxtgtuEP2iJpv
         jGeKpI/Sfa3VcSATV6swEJ6yqHCUMcFby7x5zEjOimow/GMqguGxJ7TQhwz+oB160u/R
         IslfW/UDlYibAuYKolpNHP+2ZQQFCN1x+fZk/aE4y/d6s0Cd8c22hq4HvJLhnpVDr2Kq
         sKSOvHch6HOnQiHiIVBkuExXraYmJMsGB/kAUPRg3/iPDng59ZhZLJqJGA4DRqS3XOU/
         nJPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697183968; x=1697788768;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=su9xKWoStQB7RNr82xq1pj+qARZcxDSQiN6DRUPVKtY=;
        b=by0x/QyNIhMrY38uLc/motM399FnwyoW1r6yj3Zj8ooZ9rVxBICEjk60cujogMaeFD
         h2C0CkEVS0qsQQcCYly63Vhkhmd3oOR31XfcN5HtU/xdnLLoriBGE2lK8QJw9IRSWC7C
         1t8wZdXIs1UsEciS0MuF0P1fV44M/BIwwFr9DLKznCko/p7zIsKAnpcEWirrTs9KTfoO
         nfS/AIfGViMfI5F7QV82k+v8AW1Gy8JQa3jjc7F3/5vcbfa39SB3nPG3s9xauLN5Q082
         bScfETr+Us4useMSopqmr0SW1lmMa4oVM4X/ok9Lg4ieOr9ycAFT9RjUkI3Ce7NYr32j
         hLTQ==
X-Gm-Message-State: AOJu0YwH/bej11bJD5v0u8hQQElcwRW7Nt0ltIKqei1HvDX1wOCoHsNj
	dpNdte1uong51KOBg2F9LnNanXu9emVzVA==
X-Google-Smtp-Source: AGHT+IECOUd8AfAq1u+uX2AXR6TJ93s+xLZ40lmZZqlXfPM9yO3yQWFt9utjZOrP1kMgTwgm5Ti+Cw==
X-Received: by 2002:a81:5405:0:b0:573:30c8:6e1d with SMTP id i5-20020a815405000000b0057330c86e1dmr26500886ywb.44.1697183968069;
        Fri, 13 Oct 2023 00:59:28 -0700 (PDT)
Received: from gilbert-PC ([105.113.107.22])
        by smtp.gmail.com with ESMTPSA id q6-20020a815c06000000b00583803487ccsm519095ywb.122.2023.10.13.00.59.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 00:59:27 -0700 (PDT)
Date: Fri, 13 Oct 2023 08:59:23 +0100
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [Outreachy Applicant] NEEDS SOME CLARIFICATIONS
Message-ID: <ZSj42wdF7eAsflQW@gilbert-PC>
References: <CAKrXSsZe4w-K7kzGu=8_R_h1TSVtJWL1_TmFX-S-A1jCrPeCrg@mail.gmail.com>
 <8e38f1a1-1da4-1d1f-aa32-6ad7ebb31c11@inria.fr>
 <ZSV/MLpQs0GJYIqh@ashyti-mobl2.lan>
 <CAKrXSsZSb35yvwvMm_sa9+Xk6V01ZA_2LSzd9Lbufjsifr7kKw@mail.gmail.com>
 <ZSWD1rtmLLWS++RH@ashyti-mobl2.lan>
 <CAKrXSsYYWUYyTC2SKpiYmXT3jktvCs0WJQO=z1=TVu-+ZPM_Mw@mail.gmail.com>
 <ZSW5+/fhwFOpZmxR@ashyti-mobl2.lan>
 <ZSY9lKQQjfgEUYWD@gilbert-PC>
 <alpine.DEB.2.22.394.2310110825150.3208@hadrien>
 <ZSZKfhGAIlqDXvt1@ashyti-mobl2.lan>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZSZKfhGAIlqDXvt1@ashyti-mobl2.lan>

Hello Andi, 

On Wed, Oct 11, 2023 at 09:10:54AM +0200, Andi Shyti wrote:
> Hi Gilbert,
> 
> > > > > > > > > You have too little space in the partition that contains /boot?
> > > > > > > >
> > > > > > > > What does "df -h" say?
> > > > > > > >
> > > > > > > > Andi
> > > > > > >
> > > > > > > This is what df -h returned:
> > > > > > >
> > > > > > > Filesystem      Size  Used Avail Use% Mounted on
> > > > > > > tmpfs           784M  2.0M  782M   1% /run
> > > > > > > /dev/sda9        23G   17G  5.6G  75% /
> > > > > > > tmpfs           3.9G   45M  3.8G   2% /dev/shm
> > > > > > > tmpfs           5.0M  4.0K  5.0M   1% /run/lock
> > > > > > > /dev/sda7       944M  761M  119M  87% /boot
> > > > > >
> > > > > > I wonder why your boot directory is so packed, even though 119M
> > > > > > should be enough.
> > > > > >
> > > >
> > > > > I don't why it is so packed either. I ran du -ah /boot/ and it returned:
> > > > > 272K /boot/config-6.2.0-34-generic
> > > > > 14M /boot/vmlinuz-6.6.0-rc1gilbert+
> > > > > 0 /boot/initrd.img
> > > > > 276K /boot/config-6.6.0-rc1gilbert+
> > > > > 14M /boot/vmlinuz-6.2.0-34-generic
> > > > > 184K /boot/memtest86+_multiboot.bin
> > > > > 7.6M /boot/System.map-6.2.0-26-generic
> > > > > 180K /boot/memtest86+.bin
> > > > > 184K /boot/memtest86+.elf
> > > > > 67M /boot/initrd.img-6.2.0-34-generic
> > > > > 7.7M /boot/System.map-6.2.0-34-generic
> > > > > du: cannot read directory '/boot/efi': Permission denied
> > > > > 1.0K /boot/efi
> > > > > 0 /boot/vmlinuz
> > > > > 7.6M /boot/System.map-6.6.0-rc1gilbert+
> > > > > du: cannot read directory '/boot/lost+found': Permission denied
> > > > > 16K /boot/lost+found
> > > > > 14M /boot/vmlinuz-6.2.0-26-generic
> > > > > 4.0K /boot/grub/x86_64-efi/lsefimmap.mod
> > > > > 4.0K /boot/grub/x86_64-efi/setjmp.mod
> > > > > 12K /boot/grub/x86_64-efi/loadenv.mod
> > > >
> > > > ...
> > > >
> > > > > 4.0K /boot/grub/i386-pc/search_fs_uuid.mod
> > > > > 2.5M /boot/grub/i386-pc
> > > > > 11M /boot/grub
> > > > > 547M /boot/initrd.img-6.6.0-rc1gilbert+
> > > > > 74M /boot/initrd.img-6.2.0-26-generic
> > > > > 272K /boot/config-6.2.0-26-generic
> > > > >
> > > > > I apologize for the overly long list
> > > >
> > > > that's a long list indeed. I don't know what all those files are,
> > > > but I don't think they are an issue.
> > > >
> > > > > > > /dev/sda11       60G   28G   30G  49% /home
> > > > > >
> > > > > > BTW, are you working in your home directory?
> > > > > >
> > > > > No, I'm not working in the home directory
> > > >
> > > > then I think this is the main issue. You have lots of free space
> > > > in your home directory, you should work there. I only work in my
> > > > home directory.
> > > >
> > > > I believe you weren't able to complete the compilation because
> > > > you were working in the root partition where you have less
> > > > space available.
> > > >
> > > > Andi
> > > >
> > > Hello Andi,
> > >
> > > Thank you for your response. So I'm not sure I understand what you mean
> > > by do all you work in the home directory so I will explain how I work
> > > now to see if that is what you mean.
> > >
> > > I have the staging respository in my home directory and I usually
> > > do all my compilation from inside the directory of the staging
> > > repository that is saved in my home directory.
> > >
> > > Is this what you mean by working from the home directory? or is there other setups I should be doing my home directory?
> 
> yes, I mean the directory where you clone and build the kernel.
> If you do that in your home directory, then it's fine.
> 
> > > Also I deleted the offending file in my /boot :
> > >
> > > 547M /boot/initrd.img-6.6.0-rc1gilbert+
> > >
> > > and deleted its module directory in usr/lib/modules
> > >
> > > I realised it was too large compared to the other kernels and assumed
> > > that probably I didn't do its .config file properly which might have enabled
> > > more modules than is needed for it to run on my machine.
> > >
> > > this is the result of df -h after the deletion:
> > > Filesystem      Size  Used Avail Use% Mounted on
> > > tmpfs           784M  2.0M  782M   1% /run
> > > /dev/sda9        23G   11G   12G  47% /
> > > tmpfs           3.9G  193M  3.7G   5% /dev/shm
> > > tmpfs           5.0M  4.0K  5.0M   1% /run/lock
> > > /dev/sda7       944M  201M  678M  23% /boot
> > > /dev/sda11       60G   28G   30G  49% /home
> > > /dev/sda2        96M   32M   65M  33% /boot/efi
> > > tmpfs           784M  144K  784M   1% /run/user/1000
> > >
> > > I want to generate a new .config file and recompile. I also realised
> > > that the staging repository I have on my machine is 28GB large is this
> > > normal?
> 
> Yes, it's normaly. 28GB is a lot though, I guess you are using a
> big config.
> 
> > When you start compiling the Linux kernel it gets very big.  But maybe you
> > reduced your config at some point, but didn't delete the no longer needed
> > .o files?  You could try make clean and then recompile.
> 
I found the cause of the oversize memory problem. It turns out to be
debugging symbols after all. I found out that originally installed modules are 
stripped (don't know what that means yet). from 
Documentation/kbuild/makefile.txt:
	INSTALL_MOD_STRIP

	If this variable is specified, will cause modules to be stripped
	after they are installed.  If INSTALL_MOD_STRIP is '1', then the
	default option --strip-debug will be used.  Otherwise,
	INSTALL_MOD_STRIP will used as the option(s) to the strip command.

So I recompiled the modules like this:

$ make modules_install INSTALL_MOD_STRIP=1

then ran df -h: 

Filesystem      Size  Used Avail Use% Mounted on
tmpfs           786M  2.1M  784M   1% /run
/dev/sda9        23G   11G   11G  50% /
tmpfs           3.9G   73M  3.8G   2% /dev/shm
tmpfs           5.0M  4.0K  5.0M   1% /run/lock
efivarfs        128K   88K   36K  71% /sys/firmware/efi/efivars
/dev/sda7       944M  282M  598M  33% /boot
/dev/sda11       60G   27G   31G  48% /home
/dev/sda2        96M   32M   65M  33% /boot/efi
tmpfs           786M  124K  785M   1% /run/user/1000

> You could try with a "make distclean", before doing again
> everything, to cut some bytes down. This way you would start
> afresh.
> 
> Andi
> 
> PS my working machine has 110GB, not far from yours :-)

Hahaha, thank you for sharing... I'm inspired!

Thanks
Gilbert

