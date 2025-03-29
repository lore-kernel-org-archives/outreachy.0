Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418F9184524
	for <outreachy@lists.linux.dev>; Sat, 29 Mar 2025 10:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743243886; cv=none; b=JZ5vrase24TJLDpmtSrC5IXmS0O0S97ttvgCTLoz1sCCTJOOiwYTg8AJL2MqBqJ3caQJWhMky7JMBY+C6d+kF7a4upzSLHU78jb47ggebOr9/GyEs7dQwjtbFbYfnxH3iG0GMehp8QaZdX5V8cNILYrHx8pR3t9NUCh3vvEnyl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743243886; c=relaxed/simple;
	bh=nlbYy4Z7P82iAS/QWG32nr6t3Rxk5AHS8vl+S0b63Nk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TTcfjmOUPgAAU3JYHp3i9u5vJmz4zhCe6TROL2b+N7UbQPkWNHitn6tjD+6lpVyvRbObC6oEauVP8zOiv+xIpluzVmNWIWFuWCt39irTVyjhnKcJ+L+wECtov1km2/zS7F26NXsvdZUBz6wDYN5PesezbUB4gEGK5DAoU+BeP9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NDfD4W4y; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NDfD4W4y"
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5e61da95244so5483362a12.2
        for <outreachy@lists.linux.dev>; Sat, 29 Mar 2025 03:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743243882; x=1743848682; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8IYpSCidSHSUllrJq68diooMeu0dG9ChDybMJrAdueY=;
        b=NDfD4W4yfaSuaES+3abXmiJ4qL6Wv24vzS78RpBJm2BXUM2hLLEuqVRFeRhbTgwzFI
         qTNbp393FgVhcD43xcBan+gzDSTsSjXKRt3MW3SjQ/bs6LGTGunSfAhXkq5OQUKERXTj
         kDmURwFFgKbpglC+qOkkMdNPOl0X803tFhfE9uN4SAJt4UEcBvX2qcd89P1Un9NC4R8u
         c9CH0aRZenJU7tdMCmFk0JHfpJ3os1/FEzE2IHn+3R9E+XP5d9hiqveC5e35mxHXkOIU
         ETLdBz09L98P107Im3aEsW37wCp2G5XQ/7axuW/qnZKgnYYYf7QeXcYwJKeX5GBExyfQ
         W0HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743243882; x=1743848682;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8IYpSCidSHSUllrJq68diooMeu0dG9ChDybMJrAdueY=;
        b=Qhn+1WWO52H4Q20N/4etcbu3aGlgVC9/3Kn5cyHbJAy2HWJAGjohHtzSGE0W/H5e9w
         40MvfmSbcrLAgwEm4OiXF93h9STm95vWNnHiwVx6JPkaXQn3hAqQoQx5VwnIca6miQ0R
         Q0Fq+YlJCOl6AYI/Fc3YUTPkT6viXywjBmdad3MsOg87KMcZodwHraDBBIqpwikecBWO
         w0seHdgK00+R+Zp33FsIqQCL4aIdyw1wcahL7YBHiF2alNUPXvtRzu1SU5ieEmrJwj0/
         0lu6CYkI0F1Ssi3fpgXOyRrRHqEUXp5JUgjTW4pvSzivc6c6Z9CAb4/GZ21iSksnU5qM
         bQFQ==
X-Gm-Message-State: AOJu0YxO0zqLGnGhLZRUIOyKwEsuD0FCvaRZsfaSWz9IHI76w/4yfMKx
	CrF2mTMemFoYxpivjqG3CbFOAKACvShcW2CYmOX4TEE/7Gx67ai/rTrwnMUM97eNt7bgbS+2smY
	ByI1BiHRxc3+MHWzOcyOqhHU2Rzao8ajF
X-Gm-Gg: ASbGncsBx+9mBXIqwj352C6idEHYieQEhv1zkceXnLAe02qX4rhr//lRz63O3CY8qbV
	mQIP3E7SudcpfMvKeSjWxh5zeTOk/ErZ4Bsf5OG/5HKuAqjk/OAJzaIaAK9hDK2kCFZjuuuxqAX
	5YukoQMfzU16DklvWmQJFyYA82ww==
X-Google-Smtp-Source: AGHT+IHsihZfYq6M78mP67JlUIDT7fzvAaxBekkfen6jS0a9KTCvkpMZdApWgaeSKlgj+bm/urT952KEvZEh1CNBjAs=
X-Received: by 2002:a05:6402:5201:b0:5ee:497:d4f3 with SMTP id
 4fb4d7f45d1cf-5ee0497d6eemr1734672a12.33.1743243882055; Sat, 29 Mar 2025
 03:24:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <c1b29fc7062b6e6a130de4adb121845d9574a50e.camel@gmail.com>
 <c651948d-2c11-d140-3aca-9ace35f52eb@inria.fr> <CAMyr_bLnE22pObV784EKpabb-R8w64o0fYDf8_x8h9rmySCoVA@mail.gmail.com>
 <bbec6f21-69c1-b14d-512-7660b83ffd7@inria.fr> <CAMyr_bJyn3Krz0R5tYooQRP6A3=bj_H_f3f4rejGJGkS8LQaLg@mail.gmail.com>
 <CAMyr_b+rJBRQFrFCnB=kq33XCyo=twuRQ-OrQC50D0mH9CaRUg@mail.gmail.com>
 <alpine.DEB.2.22.394.2503252124080.3642@hadrien> <CAMyr_bKWDLGZLQgducONi=H_107UydmaOErRcRythgw9FR9CFw@mail.gmail.com>
In-Reply-To: <CAMyr_bKWDLGZLQgducONi=H_107UydmaOErRcRythgw9FR9CFw@mail.gmail.com>
From: Richard Akintola <princerichard17a@gmail.com>
Date: Sat, 29 Mar 2025 11:24:30 +0100
X-Gm-Features: AQ5f1JpNbKti99xzRmb5pzA_uorwhSedjelBIngACpV5fZLNbo3bzJbkHda_Ed8
Message-ID: <CAMyr_bKSouz-OCTOaWX9HvAEVLEsodW6Nv9MNDqjzYWp+=Ohtw@mail.gmail.com>
Subject: Re: Can't Build Linux Kernel from Tutorial
To: Julia Lawall <julia.lawall@inria.fr>
Cc: "outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Julia,

I want to inform you that I have successfully built the kernel.
After building successfully, I could not install, I searched on how to
build Linux kernel on Debian, so I found the command "make -jN
bindeb-pkg" which created a debian packages for easy installation in
the parent directory which I installed with the command "sudo apt
install ./*.deb".

Thank you for the support so far, I really appreciate, now nothing is
standing in the way of sending my patches.

Richard Akintola


On Wed, Mar 26, 2025 at 11:50=E2=80=AFAM Richard Akintola
<princerichard17a@gmail.com> wrote:
>
> Thank you Julia, do expect my patches.
>
> Richard
>
>
> On Tue, 25 Mar 2025, 21:25 Julia Lawall, <julia.lawall@inria.fr> wrote:
>>
>>
>>
>> On Tue, 25 Mar 2025, Richard Akintola wrote:
>>
>> > Hi Julia,
>> > The reason I haven't sent feedback is that the kernel I built and inst=
alled resulted in kernel panic which I am trying to recover from and if I a=
m not able to, I will install a new Os and try again (until I successfully =
build the kernel).
>>
>> OK, thanks for the update.  If you can't make it work in th short term,
>> you could start working on some patches while continuing to try to get t=
he
>> build to work.
>>
>> julia
>>
>>
>>
>> >
>> > Thank you for the support so far.
>> >
>> > Richard Akintola
>> >
>> > On Monday, March 24, 2025, Richard Akintola <princerichard17a@gmail.co=
m> wrote:
>> >
>> >       Thank you Julia, I will go about resolving it as recommended
>> >
>> >       Richard Akintola
>> >
>> >
>> >       On Mon, 24 Mar 2025, 16:06 Julia Lawall, <julia.lawall@inria.fr>=
 wrote:
>> >
>> >
>> >       On Mon, 24 Mar 2025, Richard Akintola wrote:
>> >
>> >       > Good to hear from you Julia,
>> >       >
>> >       > For the first question: No, I am not using a VM, I am building=
 the kernel on
>> >       > my machine's Os which is Parrot Linux Os.
>> >       >
>> >       > And as for the configuration: yes, I am reusing the the config=
uration of my
>> >       > host machine - I copied my machine's configuration to the repo=
sitory as
>> >       > shown in the tutorial.
>> >
>> >
>> >       OK, try to find something related to signatures in your configur=
ation.
>> >       Distro configurations often have this issue.  For Debian there i=
s some PEM
>> >       thing.
>> >
>> >       julia
>> >
>> >       >
>> >       > Richard Akintola
>> >       >
>> >       > On Mon, 24 Mar 2025, 14:57 Julia Lawall, <julia.lawall@inria.f=
r> wrote:
>> >       >
>> >       >
>> >       >       On Mon, 24 Mar 2025, Richard Akintola wrote:
>> >       >
>> >       >       > Hello Julia,
>> >       >       >
>> >       >       > I have been trying to build the Linux Kernel via the t=
utorial
>> >       >       on my
>> >       >       > machine to no avail.
>> >       >       >
>> >       >       > This has prevented me from making a PATCH.
>> >       >       >
>> >       >       > This is the Os and Kernel version of my machine
>> >       >       > OS: Parrot Security 6.3 (lorikeet) x86_64
>> >       >       > Kernel: 6.5.0-13parrot1-amd64
>> >       >
>> >       >       Sort of basic questions are whether you are using a VM a=
nd how
>> >       >       much memory
>> >       >       you have.
>> >       >
>> >       >       Afterwards, maybe it is a configuration problems?  Are y=
ou
>> >       >       reusing the
>> >       >       configuration of your host machine?  Here are some old p=
osts on
>> >       >       disabling
>> >       >       module signing:
>> >       >
>> >       > https://stackoverflow.com/questions/29806414/how-to-disable-ke=
rnel-module-s
>> >       >       igning-in-linux
>> >       > https://kernelnewbies.kernelnewbies.narkive.com/kKXLBu8C/how-t=
o-disable-mod
>> >       > ule-verification-failed-signature-and-or-required-key-missing-=
tainting-ker
>> >       >       nel
>> >       >
>> >       >       If you change the configuration file, do make olddefconf=
ig
>> >       >       afterwards to
>> >       >       make sure your changes are take into account.
>> >       >
>> >       >       Let me know how it goes.
>> >       >
>> >       >       julia
>> >       >
>> >       >
>> >       >       >
>> >       >       > Below is the error I got while installing the kernel b=
uild
>> >       >       >
>> >       >       > ...
>> >       >       >
>> >       >       > INSTALL /lib/modules/6.14.0-rc1custom-
>> >       >       > ola+/kernel/net/vmw_vsock/vmw_vsock_virtio_transport_c=
ommon.ko
>> >       >       >   INSTALL /lib/modules/6.14.0-rc1custom-
>> >       >       > ola+/kernel/net/vmw_vsock/hv_sock.ko
>> >       >       >   INSTALL /lib/modules/6.14.0-rc1custom-
>> >       >       > ola+/kernel/net/vmw_vsock/vsock_loopback.ko
>> >       >       >   INSTALL
>> >       >       /lib/modules/6.14.0-rc1custom-ola+/kernel/net/nsh/nsh.ko
>> >       >       >   INSTALL
>> >       >       /lib/modules/6.14.0-rc1custom-ola+/kernel/net/hsr/hsr.ko
>> >       >       >   INSTALL
>> >       >       /lib/modules/6.14.0-rc1custom-ola+/kernel/net/qrtr/qrtr.=
ko
>> >       >       >   INSTALL
>> >       >       /lib/modules/6.14.0-rc1custom-ola+/kernel/net/qrtr/qrtr-
>> >       >       > mhi.ko
>> >       >       >   DEPMOD  /lib/modules/6.14.0-rc1custom-ola+
>> >       >       >   INSTALL /boot
>> >       >       > run-parts: executing /etc/kernel/postinst.d/dkms
>> >       >       6.14.0-rc1custom-ola+
>> >       >       > /boot/vmlinuz-6.14.0-rc1custom-ola+
>> >       >       > dkms: running auto installation service for kernel
>> >       >       6.14.0-rc1custom-
>> >       >       > ola+.
>> >       >       > readelf: Error: Not an ELF file - it has the wrong mag=
ic bytes
>> >       >       at the
>> >       >       > start
>> >       >       > readelf: Error: Not an ELF file - it has the wrong mag=
ic bytes
>> >       >       at the
>> >       >       > start
>> >       >       > readelf: Error: Not an ELF file - it has the wrong mag=
ic bytes
>> >       >       at the
>> >       >       > start
>> >       >       > readelf: Error: Not an ELF file - it has the wrong mag=
ic bytes
>> >       >       at the
>> >       >       > start
>> >       >       > readelf: Error: Not an ELF file - it has the wrong mag=
ic bytes
>> >       >       at the
>> >       >       > start
>> >       >       > readelf: Error: Not an ELF file - it has the wrong mag=
ic bytes
>> >       >       at the
>> >       >       > start
>> >       >       > readelf: Error: Not an ELF file - it has the wrong mag=
ic bytes
>> >       >       at the
>> >       >       > start
>> >       >       > readelf: Error: Not an ELF file - it has the wrong mag=
ic bytes
>> >       >       at the
>> >       >       > start
>> >       >       > readelf: Error: Not an ELF file - it has the wrong mag=
ic bytes
>> >       >       at the
>> >       >       > start
>> >       >       > readelf: Error: Not an ELF file - it has the wrong mag=
ic bytes
>> >       >       at the
>> >       >       > start
>> >       >       > readelf: Error: Not an ELF file - it has the wrong mag=
ic bytes
>> >       >       at the
>> >       >       > start
>> >       >       > readelf: Error: Not an ELF file - it has the wrong mag=
ic bytes
>> >       >       at the
>> >       >       > start
>> >       >       > readelf: Error: Not an ELF file - it has the wrong mag=
ic bytes
>> >       >       at the
>> >       >       > start
>> >       >       > readelf: Error: Not an ELF file - it has the wrong mag=
ic bytes
>> >       >       at the
>> >       >       > start
>> >       >       > Sign command:
>> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-
>> >       >       > file
>> >       >       > Binary
>> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-fi=
le not
>> >       >       > found, modules won't be signed
>> >       >       >
>> >       >       > Building module:
>> >       >       > Cleaning build area...
>> >       >       > make -j4 KERNELRELEASE=3D6.14.0-rc1custom-ola+
>> >       >       KVER=3D6.14.0-rc1custom-
>> >       >       > ola+........(bad exit status: 2)
>> >       >       > Error! Bad return status for module build on kernel:
>> >       >       6.14.0-rc1custom-
>> >       >       > ola+ (x86_64)
>> >       >       > Consult /var/lib/dkms/broadcom-sta/6.30.223.271/build/=
make.log
>> >       >       for more
>> >       >       > information.
>> >       >       > Sign command:
>> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-
>> >       >       > file
>> >       >       > Binary
>> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-fi=
le not
>> >       >       > found, modules won't be signed
>> >       >       >
>> >       >       > Building module:
>> >       >       > Cleaning build area...(bad exit status: 2)
>> >       >       > kernelver=3D6.14.0-rc1custom-ola+ ./dkms-make.sh...(ba=
d exit
>> >       >       status: 2)
>> >       >       > Error! Bad return status for module build on kernel:
>> >       >       6.14.0-rc1custom-
>> >       >       > ola+ (x86_64)
>> >       >       > Consult /var/lib/dkms/realtek-
>> >       >       > rtl8814au/5.8.5.1~git20240527.d8208c8/build/make.log f=
or more
>> >       >       > information.
>> >       >       > Sign command:
>> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-
>> >       >       > file
>> >       >       > Binary
>> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-fi=
le not
>> >       >       > found, modules won't be signed
>> >       >       >
>> >       >       > Building module:
>> >       >       > Cleaning build area...(bad exit status: 2)
>> >       >       > 'make' -j4 KVER=3D6.14.0-rc1custom-ola+
>> >       >       KSRC=3D/lib/modules/6.14.0-
>> >       >       > rc1custom-ola+/build...(bad exit status: 2)
>> >       >       > Error! Bad return status for module build on kernel:
>> >       >       6.14.0-rc1custom-
>> >       >       > ola+ (x86_64)
>> >       >       > Consult /var/lib/dkms/realtek-
>> >       >       > rtl88xxau/5.6.4.2~git20240510.b44d288/build/make.log f=
or more
>> >       >       > information.
>> >       >       > Error! One or more modules failed to install during
>> >       >       autoinstall.
>> >       >       > Refer to previous errors for more information.
>> >       >       > dkms: autoinstall for kernel: 6.14.0-rc1custom-ola+ fa=
iled!
>> >       >       > run-parts: /etc/kernel/postinst.d/dkms exited with ret=
urn code
>> >       >       11
>> >       >       > make[2]: *** [arch/x86/Makefile:321: install] Error 1
>> >       >       > make[1]: ***
>> >       >       [/home/laolu/Desktop/Outreachy_Contributions/Linux-
>> >       >       > Kernel/git/kernels/staging/Makefile:372: __build_one_b=
y_one]
>> >       >       Error 2
>> >       >       > make[1]: Target 'modules_install' not remade because o=
f
>> >       >       errors.
>> >       >       > make[1]: Target 'install' not remade because of errors=
.
>> >       >       > make: *** [Makefile:251: __sub-make] Error 2
>> >       >       > make: Target 'modules_install' not remade because of e=
rrors.
>> >       >       > make: Target 'install' not remade because of errors.
>> >       >       >
>> >       >       >
>> >       >       >
>> >       >
>> >       >
>> >       >
>> >
>> >
>> >
