Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE0CB25E444
	for <outreachy@lists.linux.dev>; Mon, 24 Mar 2025 13:58:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742824686; cv=none; b=GGZP8kFfva3hdV9VqihKfNuYpx3RfVID24NSqCrSbiRzbgzF75Q6tu7FZK11LGhArd5eMgVekdych/ouvBsOhutPDR+GxY1qCaWM7dExqpsTOFqNcjD4U4D0zMU/0JAK1l0UBioWU5XnVb5m8SuyLWqZ0veLtubXiY9rxdZzgOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742824686; c=relaxed/simple;
	bh=LgVHbRf0uiUxz9y4HzjVP3j/DGmzp3BClq6kMtAp4mQ=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=WEhzwrKH3/En8kM4mY7P2DzD4ne6hvohTzzbZ1ATPyxf+hExGbnnujOytSrgzNInzfPDkK84oAZEm5nJuPqq8wNAGgL/RfNunyrn3DeVsS9ivSoW4khaL1hcJuB1ZVB4E3aUeKA3ZOmctUiXt95x+3MSVFzebK7YKkmteOfgePM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=IdRhfEEh; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="IdRhfEEh"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=ffEMDMAgECaFBaakvdov7Pj17O+pJw7jqY1Iijwx21c=;
  b=IdRhfEEhyuQZFUl4VPbR8snBq0Udj18FWYw7hC/BNyCiXO9fgNCJjWCo
   yiuNNi8oOL6gWh6zAaR7BSVjcVuoQHKtBr3+zlfWy85bvSoAKntoVBhXC
   tlv2WTSs6r8gBAiaUbsUva9kIz0owvEyoqX1dl2O9WjvKjQoT1L3eEbjp
   8=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,272,1736809200"; 
   d="scan'208";a="112447245"
Received: from wifi-eduroam-85-162.paris.inria.fr ([128.93.85.162])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2025 14:57:55 +0100
Date: Mon, 24 Mar 2025 14:57:54 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Richard Akintola <princerichard17a@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Can't Build Linux Kernel from Tutorial
In-Reply-To: <c1b29fc7062b6e6a130de4adb121845d9574a50e.camel@gmail.com>
Message-ID: <c651948d-2c11-d140-3aca-9ace35f52eb@inria.fr>
References: <c1b29fc7062b6e6a130de4adb121845d9574a50e.camel@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 24 Mar 2025, Richard Akintola wrote:

> Hello Julia,
>
> I have been trying to build the Linux Kernel via the tutorial on my
> machine to no avail.
>
> This has prevented me from making a PATCH.
>
> This is the Os and Kernel version of my machine
> OS: Parrot Security 6.3 (lorikeet) x86_64
> Kernel: 6.5.0-13parrot1-amd64

Sort of basic questions are whether you are using a VM and how much memory
you have.

Afterwards, maybe it is a configuration problems?  Are you reusing the
configuration of your host machine?  Here are some old posts on disabling
module signing:

https://stackoverflow.com/questions/29806414/how-to-disable-kernel-module-signing-in-linux
https://kernelnewbies.kernelnewbies.narkive.com/kKXLBu8C/how-to-disable-module-verification-failed-signature-and-or-required-key-missing-tainting-kernel

If you change the configuration file, do make olddefconfig afterwards to
make sure your changes are take into account.

Let me know how it goes.

julia


>
> Below is the error I got while installing the kernel build
>
> ...
>
> INSTALL /lib/modules/6.14.0-rc1custom-
> ola+/kernel/net/vmw_vsock/vmw_vsock_virtio_transport_common.ko
>   INSTALL /lib/modules/6.14.0-rc1custom-
> ola+/kernel/net/vmw_vsock/hv_sock.ko
>   INSTALL /lib/modules/6.14.0-rc1custom-
> ola+/kernel/net/vmw_vsock/vsock_loopback.ko
>   INSTALL /lib/modules/6.14.0-rc1custom-ola+/kernel/net/nsh/nsh.ko
>   INSTALL /lib/modules/6.14.0-rc1custom-ola+/kernel/net/hsr/hsr.ko
>   INSTALL /lib/modules/6.14.0-rc1custom-ola+/kernel/net/qrtr/qrtr.ko
>   INSTALL /lib/modules/6.14.0-rc1custom-ola+/kernel/net/qrtr/qrtr-
> mhi.ko
>   DEPMOD  /lib/modules/6.14.0-rc1custom-ola+
>   INSTALL /boot
> run-parts: executing /etc/kernel/postinst.d/dkms 6.14.0-rc1custom-ola+
> /boot/vmlinuz-6.14.0-rc1custom-ola+
> dkms: running auto installation service for kernel 6.14.0-rc1custom-
> ola+.
> readelf: Error: Not an ELF file - it has the wrong magic bytes at the
> start
> readelf: Error: Not an ELF file - it has the wrong magic bytes at the
> start
> readelf: Error: Not an ELF file - it has the wrong magic bytes at the
> start
> readelf: Error: Not an ELF file - it has the wrong magic bytes at the
> start
> readelf: Error: Not an ELF file - it has the wrong magic bytes at the
> start
> readelf: Error: Not an ELF file - it has the wrong magic bytes at the
> start
> readelf: Error: Not an ELF file - it has the wrong magic bytes at the
> start
> readelf: Error: Not an ELF file - it has the wrong magic bytes at the
> start
> readelf: Error: Not an ELF file - it has the wrong magic bytes at the
> start
> readelf: Error: Not an ELF file - it has the wrong magic bytes at the
> start
> readelf: Error: Not an ELF file - it has the wrong magic bytes at the
> start
> readelf: Error: Not an ELF file - it has the wrong magic bytes at the
> start
> readelf: Error: Not an ELF file - it has the wrong magic bytes at the
> start
> readelf: Error: Not an ELF file - it has the wrong magic bytes at the
> start
> Sign command: /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-
> file
> Binary /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-file not
> found, modules won't be signed
>
> Building module:
> Cleaning build area...
> make -j4 KERNELRELEASE=6.14.0-rc1custom-ola+ KVER=6.14.0-rc1custom-
> ola+........(bad exit status: 2)
> Error! Bad return status for module build on kernel: 6.14.0-rc1custom-
> ola+ (x86_64)
> Consult /var/lib/dkms/broadcom-sta/6.30.223.271/build/make.log for more
> information.
> Sign command: /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-
> file
> Binary /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-file not
> found, modules won't be signed
>
> Building module:
> Cleaning build area...(bad exit status: 2)
> kernelver=6.14.0-rc1custom-ola+ ./dkms-make.sh...(bad exit status: 2)
> Error! Bad return status for module build on kernel: 6.14.0-rc1custom-
> ola+ (x86_64)
> Consult /var/lib/dkms/realtek-
> rtl8814au/5.8.5.1~git20240527.d8208c8/build/make.log for more
> information.
> Sign command: /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-
> file
> Binary /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sign-file not
> found, modules won't be signed
>
> Building module:
> Cleaning build area...(bad exit status: 2)
> 'make' -j4 KVER=6.14.0-rc1custom-ola+ KSRC=/lib/modules/6.14.0-
> rc1custom-ola+/build...(bad exit status: 2)
> Error! Bad return status for module build on kernel: 6.14.0-rc1custom-
> ola+ (x86_64)
> Consult /var/lib/dkms/realtek-
> rtl88xxau/5.6.4.2~git20240510.b44d288/build/make.log for more
> information.
> Error! One or more modules failed to install during autoinstall.
> Refer to previous errors for more information.
> dkms: autoinstall for kernel: 6.14.0-rc1custom-ola+ failed!
> run-parts: /etc/kernel/postinst.d/dkms exited with return code 11
> make[2]: *** [arch/x86/Makefile:321: install] Error 1
> make[1]: *** [/home/laolu/Desktop/Outreachy_Contributions/Linux-
> Kernel/git/kernels/staging/Makefile:372: __build_one_by_one] Error 2
> make[1]: Target 'modules_install' not remade because of errors.
> make[1]: Target 'install' not remade because of errors.
> make: *** [Makefile:251: __sub-make] Error 2
> make: Target 'modules_install' not remade because of errors.
> make: Target 'install' not remade because of errors.
>
>
>
