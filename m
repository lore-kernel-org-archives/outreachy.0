Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C857F
	for <outreachy@lists.linux.dev>; Tue, 18 Oct 2022 05:44:20 +0000 (UTC)
Received: by mail-pl1-f173.google.com with SMTP id l1so12797957pld.13
        for <outreachy@lists.linux.dev>; Mon, 17 Oct 2022 22:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5ulGzSgGBWG1NsnVYHOKZhbpdcpP2nlFv3TigxHS+po=;
        b=UfNIUyroJpP8XjeKlEwKMH5wtdIVzUHpxsZfD2LsuFADNTJQyzNvr9AvO1/WG9Wkhj
         xAsZfy3aAfHP/LqRopxQR6Dg/FxXcNBZCAYMxWH1FNe3Z2CXYz8XX+dKjxm+QYplIJP7
         LD40v+lGsR8iUJGX9fsFocmjdAz6WW6zOoqorGEL0rmmvNh6BLoFGHcePs6IUQ2rVi2a
         TXIOojly6AUm+iIrWVnUSIyI1jplXD1YijQ2k3JtMAZqneQ+scsAYEfYRRlNJHq/Sra/
         VvzS3BFPIEK7brtJL82I0U3y98O7Q/51J+K5i+i3pbR5og94r45scDUrZxoC7VDYhNTt
         ZvWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5ulGzSgGBWG1NsnVYHOKZhbpdcpP2nlFv3TigxHS+po=;
        b=I6Z/vqqlDKhUKDTVW6E4m9IdEyNmDN1MmxEL9ygSVk8XkhqbkRTWPrO8U9SUFI6DZK
         qO4BOeAzXjkj8pz06I6JO6M7Ceifm8RqAbDVf6A7Xu9MwmpObVV/SqKydOPlPyQ2yWrk
         B2PmpwiA61yZIEShfvXPauxRPE8Q12lTYy191evJVY+BJD8eUyoG8Dg7erGkQK6cVf1g
         hfVWyl/piyucuWrFQN42VGhK3eEgs2WFphc68LfLGKlhSXypr3mhe3T5wOR0iNt+34rE
         LbfKxG2SFpkGhj5ZrC0NGIjN4F8GlD4WBgU5V9khoenJdfcLXr9uTiPc1rZlDTOHq/qe
         4faA==
X-Gm-Message-State: ACrzQf0ZMk6DvV7mx4wQxDsrr12lbnTPyeDhHVezKZPDsSBpAdRM2Mim
	queQLKt9L/Mag0YtAhl6BjQigxurOTM7jA==
X-Google-Smtp-Source: AMsMyM5vY8AL4QR4ZX4pJ8+rqE5kPp4QdILBq+lZjDg69KrLWihIUX4Dqz+HfrnVYX4gTR8mokzpJQ==
X-Received: by 2002:a17:902:efc9:b0:183:88ed:d15e with SMTP id ja9-20020a170902efc900b0018388edd15emr1386612plb.139.1666071860321;
        Mon, 17 Oct 2022 22:44:20 -0700 (PDT)
Received: from emily-beep-beep-boop (192-184-163-51.fiber.dynamic.sonic.net. [192.184.163.51])
        by smtp.gmail.com with ESMTPSA id o66-20020a625a45000000b00551d9fab742sm8148258pfb.218.2022.10.17.22.44.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Oct 2022 22:44:20 -0700 (PDT)
Date: Mon, 17 Oct 2022 22:44:18 -0700
From: Emily Peri <eperi1024@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: Hi from Outreachy Intern
Message-ID: <Y049MpN3jQE/WtTV@emily-beep-beep-boop>
References: <Y0dCQ91kKpe2t9CG@emily-beep-beep-boop>
 <alpine.DEB.2.22.394.2210130717530.2822@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2210130717530.2822@hadrien>

Thanks Julia for your reply!
I recompiled the kernel following your advice, but am still running into the same kernel panic.
After loading the kernel with grub, the following lines are printed:
        Loading Linux 6.0.0+ ...
        Loading inital ramdisk ...
        error: can't allocate initrd.

        Press any key to continue...

After I enter a key to continue, I get the same kernel panic as before.

I should mention that after running 'make olddefconfig', I did actually make two changes to the .config,
CONFIG_SYSTEM_TRUSTED_KEYS="debian/canonical-certs.pem" -> CONFIG_SYSTEM_TRUSTED_KEYS=""
CONFIG_SYSTEM_REVOCATION_KEYS="debian/canonical-revoked-certs.pem" -> CONFIG_SYSTEM_REVOCATION_KEYS=""
I changed these options because the kernel wasn't compiling otherwise,
and I saw this had been discussed a previous email thread.

Is there a way to get a debug output when grub runs initrd /boot/initrd.img? 
Is there any explanation about why the "error: can't allocate initrd" might happen? 
Any help is appreciated!

Best,
Emily


On Thu, Oct 13, 2022 at 07:20:08AM +0200, Julia Lawall wrote:
> 
> 
> On Wed, 12 Oct 2022, Emily Peri wrote:
> 
> > Hi everyone,
> >
> > My name is Emily and I'm a new Outreachy intern for the upcoming phase.
> > I'm looking for projects to get involved in and I'm really intersted in
> > working on Coccinelle!
> >
> > I started the first patch tutorial, but ran into an issue. I'm currently
> > using a dual operating system setup-- I have Ubuntu and Windows on the
> > same machine. The thing is, I have my Ubuntu filesystem on an external
> > ssd. The boot parition is on the internal disk. Following the tutorial, after compiling and installing the kernel,
> > I tried to reboot with it, which caused a kernel panic. The exact error
> > was (along with the call trace):
> > Kernel panic -- not syncing: VFS: Unable to mount root fs on unknown-block(0,0)
> >
> > From what I read online, one of the problems that may be going on is that the kernel wasn't compiled with the necessary drivers to interact
> > with the external ssd and filesystem. Am I understanding this correctly?
> > Can this be solved by recompiling with the necessary settings in
> > .config?
> 
> Hello and welcome.
> 
> Since you already have Linux running on your machine, did you use the same
> .config as was being used on your machine?  You can find it in the /boot
> directory.  make oldconfig should take this .config file automatically.
> 
> julia
> 
> >
> > Another thing I'm seeing is that I need to create an initramfs for the new kernel. Do I need to do both? If the kernel can access the root filesystem on the external ssd, would it still need a temporary filesystem for the boot process?
> >
> > Finally, I'm wondering if I need to set the "root" variable for grub when it loads the kernel. Such as, GRUB_CMDLINE_LINUX_DEFAULT="root=/dev/sb3" where sb3
> > is the filesystem partition. I'm just not sure if this is necessary
> > because grub doesn't have trouble loading my current kernel.
> >
> > Sorry for so many questions! Hopefully I can figure this out, but any
> > help is greatly appreciated!
> >
> > Best,
> > Emily
> >
> >
