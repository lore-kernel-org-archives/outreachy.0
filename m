Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B21B313A87C
	for <outreachy@lists.linux.dev>; Sat, 29 Mar 2025 10:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743244230; cv=none; b=QqRSSCsPlzxaRMM3fOnrQwWb+LyWQgT3RPW9sb1Dn/PfvBEuiFfS7WiU+5Eq4VRZ1wH11zZkg2M/gjPrJd+iRfTV61Jn6oIOksUG0FlvshAQcgumyG2stOs3wzINcO3UAiyCQn7uK6c7ToEBsH9Ljj9eGxRqzT8qED82Cv+KB7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743244230; c=relaxed/simple;
	bh=ZhZiPTiS0wFZR1dDI6Q7ofy9Y2P/0UvSjsaYZ8nCGgk=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=eZlunTSzcAYNWao5FhqNPMlnE8rbFLZopBK/RKUpS7C5dcsfPksfXDLCSdjB3eDG+NFHV1o+cH4x70rmr7MSOVKK8tDW+aJo/85yvnuDeU0inmzQ0BM9I68ELxfo9xH31sJpcKBQGxHuFm80713NdZmK9odkD4tCOI9098HDJuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=gjrDJutX; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="gjrDJutX"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=aYqtuuNEtyInGHfDudQtdPyT3146enjB4sJ+AHj3tsg=;
  b=gjrDJutXFqqvDs0sw+A/1F6XbqxvvM4NXo41iheqS7mgDZspZl7Kl0ro
   jg97rnYVu36pj/KCV1ongFfK1RiYdvvaeZIQLiXQgZMwx+l8Il75SIPaX
   Uhu2G+akKwWMdIhpzLg9IN1dRMVIqkwgA1wK+fEsD0cl+ohnEBgjxzAwZ
   Y=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,285,1736809200"; 
   d="scan'208";a="215391690"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2025 11:30:25 +0100
Date: Sat, 29 Mar 2025 11:30:24 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Richard Akintola <princerichard17a@gmail.com>
cc: "outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Subject: Re: Can't Build Linux Kernel from Tutorial
In-Reply-To: <CAMyr_bKSouz-OCTOaWX9HvAEVLEsodW6Nv9MNDqjzYWp+=Ohtw@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2503291129340.58211@hadrien>
References: <c1b29fc7062b6e6a130de4adb121845d9574a50e.camel@gmail.com> <c651948d-2c11-d140-3aca-9ace35f52eb@inria.fr> <CAMyr_bLnE22pObV784EKpabb-R8w64o0fYDf8_x8h9rmySCoVA@mail.gmail.com> <bbec6f21-69c1-b14d-512-7660b83ffd7@inria.fr>
 <CAMyr_bJyn3Krz0R5tYooQRP6A3=bj_H_f3f4rejGJGkS8LQaLg@mail.gmail.com> <CAMyr_b+rJBRQFrFCnB=kq33XCyo=twuRQ-OrQC50D0mH9CaRUg@mail.gmail.com> <alpine.DEB.2.22.394.2503252124080.3642@hadrien> <CAMyr_bKWDLGZLQgducONi=H_107UydmaOErRcRythgw9FR9CFw@mail.gmail.com>
 <CAMyr_bKSouz-OCTOaWX9HvAEVLEsodW6Nv9MNDqjzYWp+=Ohtw@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1961424870-1743244224=:58211"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1961424870-1743244224=:58211
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 29 Mar 2025, Richard Akintola wrote:

> Hi Julia,
>
> I want to inform you that I have successfully built the kernel.
> After building successfully, I could not install, I searched on how to
> build Linux kernel on Debian, so I found the command "make -jN
> bindeb-pkg" which created a debian packages for easy installation in
> the parent directory which I installed with the command "sudo apt
> install ./*.deb".
>
> Thank you for the support so far, I really appreciate, now nothing is
> standing in the way of sending my patches.

OK, sounds good.

It could be good to review the previous messages on the mailing list to
get suggestions of what to focus on and to see what others have done.  I
will post some more suggestions this weekend.

julia


>
> Richard Akintola
>
>
> On Wed, Mar 26, 2025 at 11:50 AM Richard Akintola
> <princerichard17a@gmail.com> wrote:
> >
> > Thank you Julia, do expect my patches.
> >
> > Richard
> >
> >
> > On Tue, 25 Mar 2025, 21:25 Julia Lawall, <julia.lawall@inria.fr> wrote:
> >>
> >>
> >>
> >> On Tue, 25 Mar 2025, Richard Akintola wrote:
> >>
> >> > Hi Julia,
> >> > The reason I haven't sent feedback is that the kernel I built and installed resulted in kernel panic which I am trying to recover from and if I am not able to, I will install a new Os and try again (until I successfully build the kernel).
> >>
> >> OK, thanks for the update.  If you can't make it work in th short term,
> >> you could start working on some patches while continuing to try to get the
> >> build to work.
> >>
> >> julia
> >>
> >>
> >>
> >> >
> >> > Thank you for the support so far.
> >> >
> >> > Richard Akintola
> >> >
> >> > On Monday, March 24, 2025, Richard Akintola <princerichard17a@gmail.com> wrote:
> >> >
> >> >       Thank you Julia, I will go about resolving it as recommended
> >> >
> >> >       Richard Akintola
> >> >
> >> >
> >> >       On Mon, 24 Mar 2025, 16:06 Julia Lawall, <julia.lawall@inria.fr> wrote:
> >> >
> >> >
> >> >       On Mon, 24 Mar 2025, Richard Akintola wrote:
> >> >
> >> >       > Good to hear from you Julia,
> >> >       >
> >> >       > For the first question: No, I am not using a VM, I am building the kernel on
> >> >       > my machine's Os which is Parrot Linux Os.
> >> >       >
> >> >       > And as for the configuration: yes, I am reusing the the configuration of my
> >> >       > host machine - I copied my machine's configuration to the repository as
> >> >       > shown in the tutorial.
> >> >
> >> >
> >> >       OK, try to find something related to signatures in your configuration.
> >> >       Distro configurations often have this issue.  For Debian there is some PEM
> >> >       thing.
> >> >
> >> >       julia
> >> >
> >> >       >
> >> >       > Richard Akintola
> >> >       >
> >> >       > On Mon, 24 Mar 2025, 14:57 Julia Lawall, <julia.lawall@inria.fr> wrote:
> >> >       >
> >> >       >
> >> >       >       On Mon, 24 Mar 2025, Richard Akintola wrote:
> >> >       >
> >> >       >       > Hello Julia,
> >> >       >       >
> >> >       >       > I have been trying to build the Linux Kernel via the tutorial
> >> >       >       on my
> >> >       >       > machine to no avail.
> >> >       >       >
> >> >       >       > This has prevented me from making a PATCH.
> >> >       >       >
> >> >       >       > This is the Os and Kernel version of my machine
> >> >       >       > OS: Parrot Security 6.3 (lorikeet) x86_64
> >> >       >       > Kernel: 6.5.0-13parrot1-amd64
> >> >       >
> >> >       >       Sort of basic questions are whether you are using a VM and how
> >> >       >       much memory
> >> >       >       you have.
> >> >       >
> >> >       >       Afterwards, maybe it is a configuration problems?  Are you
> >> >       >       reusing the
> >> >       >       configuration of your host machine?  Here are some old posts on
> >> >       >       disabling
> >> >       >       module signing:
> >> >       >
> >> >       > https://stackoverflow.com/questions/29806414/how-to-disable-kernel-module-s
> >> >       >       igning-in-linux
> >> >       > https://kernelnewbies.kernelnewbies.narkive.com/kKXLBu8C/how-to-disable-mod
> >> >       > ule-verification-failed-signature-and-or-required-key-missing-tainting-ker
> >> >       >       nel
> >> >       >
> >> >       >       If you change the configuration file, do make olddefconfig
> >> >       >       afterwards to
> >> >       >       make sure your changes are take into account.
> >> >       >
> >> >       >       Let me know how it goes.
> >> >       >
> >> >       >       julia
> >> >       >
> >> >       >
> >> >       >       >
> >> >       >       > Below is the error I got while installing the kernel build
> >> >       >       >
> >> >       >       > ...
> >> >       >       >
> >> >       >       > INSTALL /lib/modules/6.14.0-rc1custom-
> >> >       >       > ola+/kernel/net/vmw_vsock/vmw_vsock_virtio_transport_common.ko
> >> >       >       >   INSTALL /lib/modules/6.14.0-rc1custom-
> >> >       >       > ola+/kernel/net/vmw_vsock/hv_sock.ko
> >> >       >       >   INSTALL /lib/modules/6.14.0-rc1custom-
> >> >       >       > ola+/kernel/net/vmw_vsock/vsock_loopback.ko
> >> >       >       >   INSTALL
> >> >       >       /lib/modules/6.14.0-rc1custom-ola+/kernel/net/nsh/nsh.ko
> >> >       >       >   INSTALL
> >> >       >       /lib/modules/6.14.0-rc1custom-ola+/kernel/net/hsr/hsr.ko
> >> >       >       >   INSTALL
> >> >       >       /lib/modules/6.14.0-rc1custom-ola+/kernel/net/qrtr/qrtr.ko
> >> >       >       >   INSTALL
> >> >       >       /lib/modules/6.14.0-rc1custom-ola+/kernel/net/qrtr/qrtr-
> >> >       >       > mhi.ko
> >> >       >       >   DEPMOD  /lib/modules/6.14.0-rc1custom-ola+
> >> >       >       >   INSTALL /boot
> >> >       >       > run-parts: executing /etc/kernel/postinst.d/dkms
> >> >       >       6.14.0-rc1custom-ola+
> >> >       >       > /boot/vmlinuz-6.14.0-rc1custom-ola+
> >> >       >       > dkms: running auto installation service for kernel
> >> >       >       6.14.0-rc1custom-
> >> >       >       > ola+.
> >> >       >       > readelf: Error: Not an ELF file - it has the wrong magic bytes
> >> >       >       at the
> >> >       >       > start
> >> >       >       > readelf: Error: Not an ELF file - it has the wrong magic bytes
> >> >       >       at the
> >> >       >       > start
> >> >       >       > readelf: Error: Not an ELF file - it has the wrong magic bytes
> >> >       >       at the
> >> >       >       > start
> >> >       >       > readelf: Error: Not an ELF file - it has the wrong magic bytes
> >> >       >       at the
> >> >       >       > start
> >> >       >       > readelf: Error: Not an ELF file - it has the wrong magic bytes
> >> >       >       at the
> >> >       >       > start
> >> >       >       > readelf: Error: Not an ELF file - it has the wrong magic bytes
> >> >       >       at the
> >> >       >       > start
> >> >       >       > readelf: Error: Not an ELF file - it has the wrong magic bytes
> >> >       >       at the
> >> >       >       > start
> >> >       >       > readelf: Error: Not an ELF file - it has the wrong magic bytes
> >> >       >       at the
> >> >       >       > start
> >> >       >       > readelf: Error: Not an ELF file - it has the wrong magic bytes
> >> >       >       at the
> >> >       >       > start
> >> >       >       > readelf: Error: Not an ELF file - it has the wrong magic bytes
> >> >       >       at the
> >> >       >       > start
> >> >       >       > readelf: Error: Not an ELF file - it has the wrong magic bytes
> >> >       >       at the
> >> >       >       > start
> >> >       >       > readelf: Error: Not an ELF file - it has the wrong magic bytes
> >> >       >       at the
> >> >       >       > start
> >> >       >       > readelf: Error: Not an ELF file - it has the wrong magic bytes
> >> >       >       at the
> >> >       >       > start
> >> >       >       > readelf: Error: Not an ELF file - it has the wrong magic bytes
> >> >       >       at the
> >> >       >       > start
> >> >       >       > Sign command:
> >> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-
> >> >       >       > file
> >> >       >       > Binary
> >> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-file not
> >> >       >       > found, modules won't be signed
> >> >       >       >
> >> >       >       > Building module:
> >> >       >       > Cleaning build area...
> >> >       >       > make -j4 KERNELRELEASE=6.14.0-rc1custom-ola+
> >> >       >       KVER=6.14.0-rc1custom-
> >> >       >       > ola+........(bad exit status: 2)
> >> >       >       > Error! Bad return status for module build on kernel:
> >> >       >       6.14.0-rc1custom-
> >> >       >       > ola+ (x86_64)
> >> >       >       > Consult /var/lib/dkms/broadcom-sta/6.30.223.271/build/make.log
> >> >       >       for more
> >> >       >       > information.
> >> >       >       > Sign command:
> >> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-
> >> >       >       > file
> >> >       >       > Binary
> >> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-file not
> >> >       >       > found, modules won't be signed
> >> >       >       >
> >> >       >       > Building module:
> >> >       >       > Cleaning build area...(bad exit status: 2)
> >> >       >       > kernelver=6.14.0-rc1custom-ola+ ./dkms-make.sh...(bad exit
> >> >       >       status: 2)
> >> >       >       > Error! Bad return status for module build on kernel:
> >> >       >       6.14.0-rc1custom-
> >> >       >       > ola+ (x86_64)
> >> >       >       > Consult /var/lib/dkms/realtek-
> >> >       >       > rtl8814au/5.8.5.1~git20240527.d8208c8/build/make.log for more
> >> >       >       > information.
> >> >       >       > Sign command:
> >> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-
> >> >       >       > file
> >> >       >       > Binary
> >> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-file not
> >> >       >       > found, modules won't be signed
> >> >       >       >
> >> >       >       > Building module:
> >> >       >       > Cleaning build area...(bad exit status: 2)
> >> >       >       > 'make' -j4 KVER=6.14.0-rc1custom-ola+
> >> >       >       KSRC=/lib/modules/6.14.0-
> >> >       >       > rc1custom-ola+/build...(bad exit status: 2)
> >> >       >       > Error! Bad return status for module build on kernel:
> >> >       >       6.14.0-rc1custom-
> >> >       >       > ola+ (x86_64)
> >> >       >       > Consult /var/lib/dkms/realtek-
> >> >       >       > rtl88xxau/5.6.4.2~git20240510.b44d288/build/make.log for more
> >> >       >       > information.
> >> >       >       > Error! One or more modules failed to install during
> >> >       >       autoinstall.
> >> >       >       > Refer to previous errors for more information.
> >> >       >       > dkms: autoinstall for kernel: 6.14.0-rc1custom-ola+ failed!
> >> >       >       > run-parts: /etc/kernel/postinst.d/dkms exited with return code
> >> >       >       11
> >> >       >       > make[2]: *** [arch/x86/Makefile:321: install] Error 1
> >> >       >       > make[1]: ***
> >> >       >       [/home/laolu/Desktop/Outreachy_Contributions/Linux-
> >> >       >       > Kernel/git/kernels/staging/Makefile:372: __build_one_by_one]
> >> >       >       Error 2
> >> >       >       > make[1]: Target 'modules_install' not remade because of
> >> >       >       errors.
> >> >       >       > make[1]: Target 'install' not remade because of errors.
> >> >       >       > make: *** [Makefile:251: __sub-make] Error 2
> >> >       >       > make: Target 'modules_install' not remade because of errors.
> >> >       >       > make: Target 'install' not remade because of errors.
> >> >       >       >
> >> >       >       >
> >> >       >       >
> >> >       >
> >> >       >
> >> >       >
> >> >
> >> >
> >> >
>
>
--8323329-1961424870-1743244224=:58211--
