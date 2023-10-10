Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9E4808
	for <outreachy@lists.linux.dev>; Tue, 10 Oct 2023 16:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="S3aBV8K/"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=VY/LUXZgWa8Be/7IKYTZqHrOL3PK0LTIow2x1qwqO8g=;
  b=S3aBV8K/+G22JRZTAJGkPPAzDxUme8aAJNxhHquu2aAJQJxYU/ki3stg
   9qqofqxBoXWmr3J1QJ+OBT3omxg1NiZweHVAuP4wW2jYhYcH3QpdFdb8h
   V/fzFvoyUcxQoJa5lC2q3gmN0s3XKnEOVSc48kenIsfq/uuGNRb0CQp1R
   k=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,213,1694728800"; 
   d="scan'208";a="130500129"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2023 18:36:11 +0200
Date: Tue, 10 Oct 2023 18:36:11 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
cc: Andi Shyti <andi.shyti@linux.intel.com>, 
    "andi.shyti@kernel.org" <andi.shyti@kernel.org>, 
    "outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Subject: Re: [Outreachy Applicant] NEEDS SOME CLARIFICATIONS
In-Reply-To: <CAKrXSsZe4w-K7kzGu=8_R_h1TSVtJWL1_TmFX-S-A1jCrPeCrg@mail.gmail.com>
Message-ID: <8e38f1a1-1da4-1d1f-aa32-6ad7ebb31c11@inria.fr>
References: <ZSTRETv7sO+1A6/G@gilbert-PC> <ZST5+5a8Uq1pULop@ashyti-mobl2.lan> <CAKrXSsZe4w-K7kzGu=8_R_h1TSVtJWL1_TmFX-S-A1jCrPeCrg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1996988242-1696955771=:3911"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1996988242-1696955771=:3911
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 10 Oct 2023, Gilbert Adikankwu wrote:

>
>
> On Tuesday, October 10, 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
>       Hi Gilbert,
>
>       On Tue, Oct 10, 2023 at 05:20:33AM +0100, Gilbert Adikankwu
>       wrote:
>       > Hello Andi and Julia,
>       >
>       > Thank you so much for your responses.
>       >
>       > I need some help with moving forward in the tutorial.
>       >
>       > I am at the "Make a driver change" step of the first patch
>       tutorial. The tutorial made the look like finding the _main.c
>       file of the driver and locating its probe function was quite
>       easy.
>       >
>       > I ran lsmod as instructed and picked e1000e. I used git grep
>       e1000e -- '*Makefile' to search for its subdirectory in the
>       kernel tree. This is where it got tricky for me, I thought I
>       would find a .c file like e1000e.c or e1000e_main.c as was shown
>       in the VM example(I'm using native Linux) but I can see in the
>       subdirectory are .o files that I can't modify. And I don't what
>       to do or how to find the probe function I'm supposed to modify
>
>       Long story short: the .o files are object binary files that are
>       not supposed to be edited. The object files are then linked
>       together in a single file that will be your final driver's
>       object.
>
>       Check the file drivers/net/ethernet/intel/e1000e/Makefile:
>
>       obj-$(CONFIG_E1000E) += e1000e.o
>
>       e1000e-objs := 82571.o ich8lan.o 80003es2lan.o \
>                      mac.o manage.o nvm.o phy.o \
>                      param.o ethtool.o netdev.o ptp.o
>
>       This means that the compilation process will produce the objects
>       in the second group of .o files. At the end an e1000e.o file
>       will contain all of them.
>
>       It doesn't mean that you will necessarily have a e1000e.c file.
>
>       As Deepak recommended, you could find the probe file with the
>       grep command. You found it in netdev.c. As you can see from the
>       Makefile, you will also have a netdev.o that will end up inside
>       the e1000e.o.
>
>       This means that not always the driver is called the same way as
>       its directory or the final .o file.
>
>       This is true also you end up working for the i915 sysfs project.
>       Indeed the big set of files in the drivers/gpu/drm/i915/ with
>       all
>       the subdirectories, will, at the end, create one single object,
>       called i915.o, even though there is no i915.c file in it.
>
>       I hope this cleared a bit things as in this list I have often
>       seen people looking for source code in .o files.
>
>       Andi
>
>       > I tried the above process for a couple more names in the list
>       returned by lsmod and it is the same issue.
>       >
>       > Please advise
>       >
>       > Thanks
>       > Gilbert
>       >
>
>
> Hello Andi,
>
> Thank you for the explanation. It has helped my understanding. 
>
> I have another issue, I tried compiling after modifying and it compiled
> successfully. But when I tried to install so I can reboot, I got this
> error: 
>
> zstd: error 25 : Write error : No space left on device (cannot write
> compressed block) 
> E: mkinitramfs failure zstd -q -1 -T0 25
> update-initramfs: failed for /boot/initrd.img-6.6.0-rc1gilbert+ with 1.
> run-parts: /etc/kernel/postinst.d/initramfs-tools exited with return code 1
> make[2]: *** [arch/x86/Makefile:292: install] Error 1
> make[1]: *** [/home/functionguyy/git/kernels/staging/Makefile:359:
> __build_one_by_one] Error 2
> make: *** [Makefile:234: __sub-make] Error 2

You have too little space in the partition that contains /boot?

julia
--8323329-1996988242-1696955771=:3911--
