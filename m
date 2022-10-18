Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246F97F
	for <outreachy@lists.linux.dev>; Tue, 18 Oct 2022 05:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=nNeuz4dvHWhjeR+HX71jSbNxQAWK7trXUSRbMPa6d6I=;
  b=YdjPQ7tEDIKp7hJ1t+xxDLlZLAEfODDik22jQztU7eGYrWNB8aib+Y7O
   daPB13UMB5eJvl90YMv+ZraDnOHi3jkmj6J6x3c8xTFwCTMO8KRVY4SaO
   3C4q6PnmuDMfEO5/KYlPrdQPmqON1Shu6z4AF3eNHrFdSJDaFkyWY5lw5
   Y=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,193,1661810400"; 
   d="scan'208";a="65620009"
Received: from 51.123.68.85.rev.sfr.net (HELO hadrien) ([85.68.123.51])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2022 07:48:44 +0200
Date: Tue, 18 Oct 2022 07:48:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Emily Peri <eperi1024@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Hi from Outreachy Intern
In-Reply-To: <Y049MpN3jQE/WtTV@emily-beep-beep-boop>
Message-ID: <alpine.DEB.2.22.394.2210180746390.2938@hadrien>
References: <Y0dCQ91kKpe2t9CG@emily-beep-beep-boop> <alpine.DEB.2.22.394.2210130717530.2822@hadrien> <Y049MpN3jQE/WtTV@emily-beep-beep-boop>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 17 Oct 2022, Emily Peri wrote:

> Thanks Julia for your reply!
> I recompiled the kernel following your advice, but am still running into the same kernel panic.
> After loading the kernel with grub, the following lines are printed:
>         Loading Linux 6.0.0+ ...
>         Loading inital ramdisk ...
>         error: can't allocate initrd.
>
>         Press any key to continue...
>
> After I enter a key to continue, I get the same kernel panic as before.
>
> I should mention that after running 'make olddefconfig', I did actually make two changes to the .config,
> CONFIG_SYSTEM_TRUSTED_KEYS="debian/canonical-certs.pem" -> CONFIG_SYSTEM_TRUSTED_KEYS=""
> CONFIG_SYSTEM_REVOCATION_KEYS="debian/canonical-revoked-certs.pem" -> CONFIG_SYSTEM_REVOCATION_KEYS=""
> I changed these options because the kernel wasn't compiling otherwise,
> and I saw this had been discussed a previous email thread.
>
> Is there a way to get a debug output when grub runs initrd /boot/initrd.img?
> Is there any explanation about why the "error: can't allocate initrd" might happen?
> Any help is appreciated!

Hi,

I'm sorry, but I don't know anything more about this than what you can
find in Google.  From what I saw, it seemed like it might be a file system
problem, maybe it is trying to do something in the wrong place.

There was a suggestion on the list to use a VM.  Perhaps that will work
directly.

julia


>
> Best,
> Emily
>
>
> On Thu, Oct 13, 2022 at 07:20:08AM +0200, Julia Lawall wrote:
> >
> >
> > On Wed, 12 Oct 2022, Emily Peri wrote:
> >
> > > Hi everyone,
> > >
> > > My name is Emily and I'm a new Outreachy intern for the upcoming phase.
> > > I'm looking for projects to get involved in and I'm really intersted in
> > > working on Coccinelle!
> > >
> > > I started the first patch tutorial, but ran into an issue. I'm currently
> > > using a dual operating system setup-- I have Ubuntu and Windows on the
> > > same machine. The thing is, I have my Ubuntu filesystem on an external
> > > ssd. The boot parition is on the internal disk. Following the tutorial, after compiling and installing the kernel,
> > > I tried to reboot with it, which caused a kernel panic. The exact error
> > > was (along with the call trace):
> > > Kernel panic -- not syncing: VFS: Unable to mount root fs on unknown-block(0,0)
> > >
> > > From what I read online, one of the problems that may be going on is that the kernel wasn't compiled with the necessary drivers to interact
> > > with the external ssd and filesystem. Am I understanding this correctly?
> > > Can this be solved by recompiling with the necessary settings in
> > > .config?
> >
> > Hello and welcome.
> >
> > Since you already have Linux running on your machine, did you use the same
> > .config as was being used on your machine?  You can find it in the /boot
> > directory.  make oldconfig should take this .config file automatically.
> >
> > julia
> >
> > >
> > > Another thing I'm seeing is that I need to create an initramfs for the new kernel. Do I need to do both? If the kernel can access the root filesystem on the external ssd, would it still need a temporary filesystem for the boot process?
> > >
> > > Finally, I'm wondering if I need to set the "root" variable for grub when it loads the kernel. Such as, GRUB_CMDLINE_LINUX_DEFAULT="root=/dev/sb3" where sb3
> > > is the filesystem partition. I'm just not sure if this is necessary
> > > because grub doesn't have trouble loading my current kernel.
> > >
> > > Sorry for so many questions! Hopefully I can figure this out, but any
> > > help is greatly appreciated!
> > >
> > > Best,
> > > Emily
> > >
> > >
>
