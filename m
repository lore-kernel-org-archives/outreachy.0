Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E92171B1
	for <outreachy@lists.linux.dev>; Wed, 11 Oct 2023 06:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T5UA1TzK"
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-d81dd7d76e0so7529083276.1
        for <outreachy@lists.linux.dev>; Tue, 10 Oct 2023 23:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697006233; x=1697611033; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QFxyzB2zssBAadtuO1ed49eHwL0UvArF9W6Ud/OjWYw=;
        b=T5UA1TzKVDi5J6qkXNEpMx6rUbXxRh6QIeEaaDGswzS6txX0SJ/CfMtcYbLjE6ex1X
         J/kUZIh+Gyk6ALeanDPGljam8ZpubTeLfA0EaaNsL32scwcsTRB+6/Q8NrBuILsjWhvq
         EuZlNKP/MJqsyUnIVM+iFCFT3amw+mTVuJkzzXLOWOIinwS7pExMjkdrcrnWMx2nt41V
         j30cuEizdLApbeTHbVb24XPEX41nugNPKtVToEZIO+FQyBMjEtIx6NAJQ6mQR5Uu0JTN
         KMj/M+l4qkLMqWmg7yRmcTPnOXfKf+6mpQzBbOLZB9cPq0iXzcuHp++JOFrb7rLGwt1J
         jT6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697006233; x=1697611033;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QFxyzB2zssBAadtuO1ed49eHwL0UvArF9W6Ud/OjWYw=;
        b=Ad+6BdWqs0OwyC+RRQ1SnfbHj3JjikVbIiKAXidxUOhRcpPGhxw4BOoN8MdDFtJCy4
         uqRuigQQ8iaWyNDxVhJOEporXZeNEWOosElJr8azJ7Ke3xbWl0Qcc8DqUuUKnx7GBSNJ
         jwH1K1rW2OH/ZslhXuRnq8GdwLulIjXiG4I2tvU8oueguC9ulNQQnJ8VhCiaqKZxjXWi
         sEKbisyhXqjjhHmvkFl7y8zVwyLU+gGBJFXwaTvGA64v31+ssawrgGc6ldtoxpaNwp63
         1XFC5pRUOLpjbl6lkozgoeNOryRbSGoVmQYBomABI58QrEFyYK1Ek6dqw+e55dcYeFQN
         /jsg==
X-Gm-Message-State: AOJu0YzRLS4Oz9zcXsim4YCkOY4yKe7MPspo1+fOtpee1wU5yoGTkrwB
	xHPQGhevSGabwd16zNEtat3aBef3+Dwzs+ET
X-Google-Smtp-Source: AGHT+IENRi7MkX1C4wM9plWL/NEuRcWkJOUdEF+TESbAaKA0Ny9BNmWM9JXgfcxJbanWM2ySWKWbXg==
X-Received: by 2002:a5b:70d:0:b0:d78:341d:e475 with SMTP id g13-20020a5b070d000000b00d78341de475mr18393923ybq.44.1697006233274;
        Tue, 10 Oct 2023 23:37:13 -0700 (PDT)
Received: from gilbert-PC ([105.112.30.11])
        by smtp.gmail.com with ESMTPSA id b63-20020a253442000000b00d9a4f3bdffbsm1147763yba.11.2023.10.10.23.37.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 23:37:12 -0700 (PDT)
Date: Wed, 11 Oct 2023 07:37:08 +0100
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: [Outreachy Applicant] NEEDS SOME CLARIFICATIONS
Message-ID: <ZSZClLOzEiiWiT+N@gilbert-PC>
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

On Wed, Oct 11, 2023 at 08:26:15AM +0200, Julia Lawall wrote:
> 
> 
> On Wed, 11 Oct 2023, Gilbert Adikankwu wrote:
> 
> > On Tue, Oct 10, 2023 at 10:54:19PM +0200, Andi Shyti wrote:
> > > Hi Gilbert,
> > >
> > > > Thank you for your response. I think I'm finally understanding good e-mail style
> > > > thanks to you and everyone else who has responded to emails
> > >
> > > glad to hear! :-)
> > >
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
> >
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
> 
> When you start compiling the Linux kernel it gets very big.  But maybe you
> reduced your config at some point, but didn't delete the no longer needed
> .o files?  You could try make clean and then recompile.
> 
> julia

Hello Julia,

Thank you for your response, I will do as you have suggested.
