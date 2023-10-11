Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3191635506
	for <outreachy@lists.linux.dev>; Wed, 11 Oct 2023 06:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MTdshU1w"
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-d8164e661abso6927179276.1
        for <outreachy@lists.linux.dev>; Tue, 10 Oct 2023 23:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697004953; x=1697609753; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4NKUp+P4tXKbGcyJBOhjkRhDEG15jK9iDB6tBhM/g4E=;
        b=MTdshU1wTPTVl23Mal+vT+c/mXz3LqbxTOe1Z7byqi7z2HdO6hgX3uoZ263xyGt111
         T0vukECOVPdaT7MpoKdElNVuPHF0T/iLj60N1TGITbRsA8DPFmJIOTvwOH9r1rOVyciD
         kDULmR1eg/CM1azcsgOBcXHM3eubjOVPINb3t95idxAnU4ANYqJi2GG79Drqe4wSmlkO
         ci3qEKBC23FHNLJR4KuzBmtzV2/U0o3PcDsUhMT536vahkvy6ifd8exp5JYvUZ9CtmGp
         j7VhqbYvJbLT7NRn1q0qAQS0rXt3RegTYrFUR8NIX5BMJRtN0jjFWCIhBkAlkTOJuXDR
         /pcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697004953; x=1697609753;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4NKUp+P4tXKbGcyJBOhjkRhDEG15jK9iDB6tBhM/g4E=;
        b=M+a4L8EhBRPKqJCLUKRpUmjSiTj0Q4yv8JsVFTRrhRudfqB83OdchG3emcJk96ELRO
         /aK3vt1lESZplQCGR7fDYHhFOVj5o60zkJQJ3m/T1i4ZmP5+y5Ml//Hq9It9Hv9wjlpo
         gvKRP9Y25oVwAHsGHJbBrC/EQZZmeiIKh9lwcfMlFlZN/lkhZQNFZ5GQyynAKLDK8g+5
         fb9zS9q8nFo61cwzx4v0YPEJSnKT1bE/3s8uMawB3xvp/qN4XXYDGNSr2RtD5fHFADZe
         I7viYgya39BlTT0NDCiLeuuDP2z1gt6/FGzXAwoeqJbcJUvXUVvh+tR9ASdOFrvxt3qc
         uyrA==
X-Gm-Message-State: AOJu0YzX2Zvku12SnWomh9QTQ+myiDMEhlEYCfY9LDkPVjQJokA67Qay
	P1ezF/qrVHMBYBkTQ3zUBMs6uee2C9YScUAi
X-Google-Smtp-Source: AGHT+IHhs4xnajHcHauXgfuV0jy2TMMtCpmbQ90BPF9xlssJcjLtn6vjRnDfgZcr1qhE1CyuJDtwqQ==
X-Received: by 2002:a05:6902:18c9:b0:d3b:108b:c104 with SMTP id ck9-20020a05690218c900b00d3b108bc104mr23186780ybb.54.1697004953403;
        Tue, 10 Oct 2023 23:15:53 -0700 (PDT)
Received: from gilbert-PC ([105.112.30.11])
        by smtp.gmail.com with ESMTPSA id u74-20020a25ab50000000b00d7481ed7e45sm4329708ybi.56.2023.10.10.23.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 23:15:52 -0700 (PDT)
Date: Wed, 11 Oct 2023 07:15:48 +0100
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [Outreachy Applicant] NEEDS SOME CLARIFICATIONS
Message-ID: <ZSY9lKQQjfgEUYWD@gilbert-PC>
References: <ZSTRETv7sO+1A6/G@gilbert-PC>
 <ZST5+5a8Uq1pULop@ashyti-mobl2.lan>
 <CAKrXSsZe4w-K7kzGu=8_R_h1TSVtJWL1_TmFX-S-A1jCrPeCrg@mail.gmail.com>
 <8e38f1a1-1da4-1d1f-aa32-6ad7ebb31c11@inria.fr>
 <ZSV/MLpQs0GJYIqh@ashyti-mobl2.lan>
 <CAKrXSsZSb35yvwvMm_sa9+Xk6V01ZA_2LSzd9Lbufjsifr7kKw@mail.gmail.com>
 <ZSWD1rtmLLWS++RH@ashyti-mobl2.lan>
 <CAKrXSsYYWUYyTC2SKpiYmXT3jktvCs0WJQO=z1=TVu-+ZPM_Mw@mail.gmail.com>
 <ZSW5+/fhwFOpZmxR@ashyti-mobl2.lan>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZSW5+/fhwFOpZmxR@ashyti-mobl2.lan>

On Tue, Oct 10, 2023 at 10:54:19PM +0200, Andi Shyti wrote:
> Hi Gilbert,
> 
> > Thank you for your response. I think I'm finally understanding good e-mail style
> > thanks to you and everyone else who has responded to emails
> 
> glad to hear! :-)
> 
> > > > > > You have too little space in the partition that contains /boot?
> > > > >
> > > > > What does "df -h" say?
> > > > >
> > > > > Andi
> > > >
> > > > This is what df -h returned:
> > > >
> > > > Filesystem      Size  Used Avail Use% Mounted on
> > > > tmpfs           784M  2.0M  782M   1% /run
> > > > /dev/sda9        23G   17G  5.6G  75% /
> > > > tmpfs           3.9G   45M  3.8G   2% /dev/shm
> > > > tmpfs           5.0M  4.0K  5.0M   1% /run/lock
> > > > /dev/sda7       944M  761M  119M  87% /boot
> > >
> > > I wonder why your boot directory is so packed, even though 119M
> > > should be enough.
> > >
> 
> > I don't why it is so packed either. I ran du -ah /boot/ and it returned:
> > 272K /boot/config-6.2.0-34-generic
> > 14M /boot/vmlinuz-6.6.0-rc1gilbert+
> > 0 /boot/initrd.img
> > 276K /boot/config-6.6.0-rc1gilbert+
> > 14M /boot/vmlinuz-6.2.0-34-generic
> > 184K /boot/memtest86+_multiboot.bin
> > 7.6M /boot/System.map-6.2.0-26-generic
> > 180K /boot/memtest86+.bin
> > 184K /boot/memtest86+.elf
> > 67M /boot/initrd.img-6.2.0-34-generic
> > 7.7M /boot/System.map-6.2.0-34-generic
> > du: cannot read directory '/boot/efi': Permission denied
> > 1.0K /boot/efi
> > 0 /boot/vmlinuz
> > 7.6M /boot/System.map-6.6.0-rc1gilbert+
> > du: cannot read directory '/boot/lost+found': Permission denied
> > 16K /boot/lost+found
> > 14M /boot/vmlinuz-6.2.0-26-generic
> > 4.0K /boot/grub/x86_64-efi/lsefimmap.mod
> > 4.0K /boot/grub/x86_64-efi/setjmp.mod
> > 12K /boot/grub/x86_64-efi/loadenv.mod
> 
> ...
> 
> > 4.0K /boot/grub/i386-pc/search_fs_uuid.mod
> > 2.5M /boot/grub/i386-pc
> > 11M /boot/grub
> > 547M /boot/initrd.img-6.6.0-rc1gilbert+
> > 74M /boot/initrd.img-6.2.0-26-generic
> > 272K /boot/config-6.2.0-26-generic
> > 
> > I apologize for the overly long list
> 
> that's a long list indeed. I don't know what all those files are,
> but I don't think they are an issue.
> 
> > > > /dev/sda11       60G   28G   30G  49% /home
> > >
> > > BTW, are you working in your home directory?
> > >
> > No, I'm not working in the home directory
> 
> then I think this is the main issue. You have lots of free space
> in your home directory, you should work there. I only work in my
> home directory.
> 
> I believe you weren't able to complete the compilation because
> you were working in the root partition where you have less
> space available.
> 
> Andi
>
Hello Andi,

Thank you for your response. So I'm not sure I understand what you mean
by do all you work in the home directory so I will explain how I work
now to see if that is what you mean.

I have the staging respository in my home directory and I usually
do all my compilation from inside the directory of the staging
repository that is saved in my home directory. 

Is this what you mean by working from the home directory? or is there other setups I should be doing my home directory?

Also I deleted the offending file in my /boot :

547M /boot/initrd.img-6.6.0-rc1gilbert+

and deleted its module directory in usr/lib/modules

I realised it was too large compared to the other kernels and assumed
that probably I didn't do its .config file properly which might have enabled
more modules than is needed for it to run on my machine. 

this is the result of df -h after the deletion:
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           784M  2.0M  782M   1% /run
/dev/sda9        23G   11G   12G  47% /
tmpfs           3.9G  193M  3.7G   5% /dev/shm
tmpfs           5.0M  4.0K  5.0M   1% /run/lock
/dev/sda7       944M  201M  678M  23% /boot
/dev/sda11       60G   28G   30G  49% /home
/dev/sda2        96M   32M   65M  33% /boot/efi
tmpfs           784M  144K  784M   1% /run/user/1000

I want to generate a new .config file and recompile. I also realised
that the staging repository I have on my machine is 28GB large is this
normal?

Thanks
Gilbert
