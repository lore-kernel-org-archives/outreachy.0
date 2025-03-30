Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C3B1D79BE
	for <outreachy@lists.linux.dev>; Sun, 30 Mar 2025 17:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743356440; cv=none; b=V8bXBXV44KPyRVNq5kCpzY9g430pFlWKDrU/43uVHTyFyHYFYjBQ6UFMNvruXWF8vEVzDDl5oye3LYtVh+/hPi4ZLHoB6HJsbXz05JkY6Vjg+L+LHiiKclQk+9DVLealTEei5i8lIRwCDsgg5mdqo9zBTKDD0SHKuOpLlSihnjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743356440; c=relaxed/simple;
	bh=uszHWyA634n10yPbCxZ9qRa7NmOSo0rnEcMIjVFBjdE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HcseWQcUrbQ7bv2YbQkKmT5aVDVujYOFFlXgrHi8pMNunWZcXnASPX3fLpu66k9zYbirKYOyqpnCS0x3nj7y9tWRYLfWa8sr5ojzBk1nME/5RjMHsCt5jcK0kDFuHJl41pjd10NZf1ypjG44HZ25v3eIRxBdbYrn3p7hotPIhVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CINSQoi6; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CINSQoi6"
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5e5bc066283so5950091a12.0
        for <outreachy@lists.linux.dev>; Sun, 30 Mar 2025 10:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743356436; x=1743961236; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=070BplY/TqGEkQxi6Umlu6uncJ/NtpOvKKOn4iS0Pbw=;
        b=CINSQoi6HtaotY9KN6bQ4rYYFRGR3D8C+tyckuEHRfNUYDGoHyUyz8ajZaj7KMICzV
         Ifu9MSU85rFUPNhN5GXFoBa9bTsBFGkZZ4WFg5PVVrG8MJvOxQE5mpfSMTzTqCBY0oYl
         9P+wSm9YjADu2ixLPbcl/NJ79k4/JyLwdQ1n6gZ5Qa67/euBGsiKkZhI3QSzbLkulCxd
         2IcdhnMpViJBeaWT3cwaPw/uLBemy4TomKQ3o68aXpmConmuqkAAXvlgHSHuoqVM3w5Z
         hEUy4XOF1CRA50si8xnKku3T5QP/IaqCdaZyFeQk70P1GKgiGsVqBqIkrTm4MTVsOvwe
         sZyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743356436; x=1743961236;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=070BplY/TqGEkQxi6Umlu6uncJ/NtpOvKKOn4iS0Pbw=;
        b=qdk5XLKXV5y2JNzqObGR1x9UDKYy9jRBm8fEOGUoOBa8hZ75uKZWfBEho4Gjx4jIKq
         K//QGOvNuQBBBSF5+I2CoS8bO6g63Qgk/6Sj9QM+wj+plZ5rBHDUt8d5Dkjn7KvmtJMo
         +6z3j4ZLrqPAiq4QMbfBR1tiEfHRsZPwE4hDBdVWwpZ2f/4QkeITIRyyeqPm3ShHIpaK
         rvpgHjOeT+5W7CiwWt6oXORC3gVv/sG6uP84t3I1ozeGui27GRxD+DFdN0mEOev2u47t
         UCypRt23TfPi8DAfOhEMV61ftaSldc+kQhlwnTRwJA2fnnvuwcmM1MpO8fmLBzXEocnS
         kvUA==
X-Gm-Message-State: AOJu0YyILVpSGowmVW69V0Q6/31on4LRxM3q1mZ79Twy3fpQ/gICSBj5
	d+vxwGCb1ZqDr6FmPt3tJ5tuw/eOjCpBr/uxajvoZaVcbEP9eQ0WvHG/+GmjxqVdoJQJQu/lXFa
	pJ7BaQAKomSMvVf3LxdDLuuvztSfkJywansw=
X-Gm-Gg: ASbGncvgv4m65fCDE0f1U8xMbE8V+gqYVngxa+ZyMSJlllIgw2CSpfZu3/Jgl1ZyHeR
	4zMCu30GR5X1e4qiPohkhGcGEnu8Z9Uq+2xVfNQgag3OTl5lCpuERGLpjAZrIAmOzm9z23L5kaQ
	wqO1xAnsp48k6Ao+oHsRnyGoDY8P5Jd2+w88iFNfU=
X-Google-Smtp-Source: AGHT+IHsNxDRc9bNV/XDIQXJl4P3TI4RKxPVY5pmqb2Dx4U0uVGGFXz+N7zlt9AcY2N2cPIvecgGqi3Q3jxIYVSXa38=
X-Received: by 2002:a05:6402:2709:b0:5ed:7041:cf0f with SMTP id
 4fb4d7f45d1cf-5edfd13e830mr4836059a12.15.1743356435968; Sun, 30 Mar 2025
 10:40:35 -0700 (PDT)
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
 <CAMyr_bKSouz-OCTOaWX9HvAEVLEsodW6Nv9MNDqjzYWp+=Ohtw@mail.gmail.com> <alpine.DEB.2.22.394.2503291129340.58211@hadrien>
In-Reply-To: <alpine.DEB.2.22.394.2503291129340.58211@hadrien>
From: Richard Akintola <princerichard17a@gmail.com>
Date: Sun, 30 Mar 2025 18:40:23 +0100
X-Gm-Features: AQ5f1JqcwxuMeeG7DWUM7PER0z2qfQMFxVoTsjzCUjgTDnMyO8f5dbHTtk1vSSE
Message-ID: <CAMyr_bL-rAZRfPjEWMKHJNApUySeP_Jgkj_iDH+7EK_hCS-Bmg@mail.gmail.com>
Subject: Re: Can't Build Linux Kernel from Tutorial
To: Julia Lawall <julia.lawall@inria.fr>
Cc: "outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Julia,

Having reviewed previous messages on the mailing list, and running the comm=
and:
perl scripts/checkpatch.pl --strict -f drivers/staging/sm750fb/* | less

I found:
------------------------------------
drivers/staging/sm750fb/ddk750_dvi.c
------------------------------------
CHECK: Avoid CamelCase: <sii164GetDeviceID>
#19: FILE: drivers/staging/sm750fb/ddk750_dvi.c:19:
+               .get_device_id =3D sii164GetDeviceID,

CHECK: Avoid CamelCase: <sii164ResetChip>
#21: FILE: drivers/staging/sm750fb/ddk750_dvi.c:21:
+               .reset_chip =3D sii164ResetChip,

CHECK: Avoid CamelCase: <sii164GetChipString>
#22: FILE: drivers/staging/sm750fb/ddk750_dvi.c:22:
+               .get_chip_string =3D sii164GetChipString,

CHECK: Avoid CamelCase: <sii164SetPower>
#23: FILE: drivers/staging/sm750fb/ddk750_dvi.c:23:
+               .set_power =3D sii164SetPower,

CHECK: Avoid CamelCase: <sii164EnableHotPlugDetection>
#24: FILE: drivers/staging/sm750fb/ddk750_dvi.c:24:
+               .enable_hot_plug_detection =3D sii164EnableHotPlugDetection=
,

CHECK: Avoid CamelCase: <sii164IsConnected>
#25: FILE: drivers/staging/sm750fb/ddk750_dvi.c:25:
+               .is_connected =3D sii164IsConnected,

CHECK: Avoid CamelCase: <sii164CheckInterrupt>
#26: FILE: drivers/staging/sm750fb/ddk750_dvi.c:26:
+               .check_interrupt =3D sii164CheckInterrupt,

CHECK: Avoid CamelCase: <sii164ClearInterrupt>
#27: FILE: drivers/staging/sm750fb/ddk750_dvi.c:27:
+               .clear_interrupt =3D sii164ClearInterrupt,

total: 0 errors, 0 warnings, 8 checks, 62 lines checked

I would love to have all the 8 checks done, although I learnt it is one
check at a time.

Please how do I go about sending the patches, given the fact that same
definitions are
found in file: drivers/staging/sm750fb/ddk750_dvi.c and file:
drivers/staging/sm750fb/ddk750_sii164.h
and I don't know which other files they are defined.

Richard Akintola

On Sat, Mar 29, 2025 at 11:30=E2=80=AFAM Julia Lawall <julia.lawall@inria.f=
r> wrote:
>
>
>
> On Sat, 29 Mar 2025, Richard Akintola wrote:
>
> > Hi Julia,
> >
> > I want to inform you that I have successfully built the kernel.
> > After building successfully, I could not install, I searched on how to
> > build Linux kernel on Debian, so I found the command "make -jN
> > bindeb-pkg" which created a debian packages for easy installation in
> > the parent directory which I installed with the command "sudo apt
> > install ./*.deb".
> >
> > Thank you for the support so far, I really appreciate, now nothing is
> > standing in the way of sending my patches.
>
> OK, sounds good.
>
> It could be good to review the previous messages on the mailing list to
> get suggestions of what to focus on and to see what others have done.  I
> will post some more suggestions this weekend.
>
> julia
>
>
> >
> > Richard Akintola
> >
> >
> > On Wed, Mar 26, 2025 at 11:50=E2=80=AFAM Richard Akintola
> > <princerichard17a@gmail.com> wrote:
> > >
> > > Thank you Julia, do expect my patches.
> > >
> > > Richard
> > >
> > >
> > > On Tue, 25 Mar 2025, 21:25 Julia Lawall, <julia.lawall@inria.fr> wrot=
e:
> > >>
> > >>
> > >>
> > >> On Tue, 25 Mar 2025, Richard Akintola wrote:
> > >>
> > >> > Hi Julia,
> > >> > The reason I haven't sent feedback is that the kernel I built and =
installed resulted in kernel panic which I am trying to recover from and if=
 I am not able to, I will install a new Os and try again (until I successfu=
lly build the kernel).
> > >>
> > >> OK, thanks for the update.  If you can't make it work in th short te=
rm,
> > >> you could start working on some patches while continuing to try to g=
et the
> > >> build to work.
> > >>
> > >> julia
> > >>
> > >>
> > >>
> > >> >
> > >> > Thank you for the support so far.
> > >> >
> > >> > Richard Akintola
> > >> >
> > >> > On Monday, March 24, 2025, Richard Akintola <princerichard17a@gmai=
l.com> wrote:
> > >> >
> > >> >       Thank you Julia, I will go about resolving it as recommended
> > >> >
> > >> >       Richard Akintola
> > >> >
> > >> >
> > >> >       On Mon, 24 Mar 2025, 16:06 Julia Lawall, <julia.lawall@inria=
.fr> wrote:
> > >> >
> > >> >
> > >> >       On Mon, 24 Mar 2025, Richard Akintola wrote:
> > >> >
> > >> >       > Good to hear from you Julia,
> > >> >       >
> > >> >       > For the first question: No, I am not using a VM, I am buil=
ding the kernel on
> > >> >       > my machine's Os which is Parrot Linux Os.
> > >> >       >
> > >> >       > And as for the configuration: yes, I am reusing the the co=
nfiguration of my
> > >> >       > host machine - I copied my machine's configuration to the =
repository as
> > >> >       > shown in the tutorial.
> > >> >
> > >> >
> > >> >       OK, try to find something related to signatures in your conf=
iguration.
> > >> >       Distro configurations often have this issue.  For Debian the=
re is some PEM
> > >> >       thing.
> > >> >
> > >> >       julia
> > >> >
> > >> >       >
> > >> >       > Richard Akintola
> > >> >       >
> > >> >       > On Mon, 24 Mar 2025, 14:57 Julia Lawall, <julia.lawall@inr=
ia.fr> wrote:
> > >> >       >
> > >> >       >
> > >> >       >       On Mon, 24 Mar 2025, Richard Akintola wrote:
> > >> >       >
> > >> >       >       > Hello Julia,
> > >> >       >       >
> > >> >       >       > I have been trying to build the Linux Kernel via t=
he tutorial
> > >> >       >       on my
> > >> >       >       > machine to no avail.
> > >> >       >       >
> > >> >       >       > This has prevented me from making a PATCH.
> > >> >       >       >
> > >> >       >       > This is the Os and Kernel version of my machine
> > >> >       >       > OS: Parrot Security 6.3 (lorikeet) x86_64
> > >> >       >       > Kernel: 6.5.0-13parrot1-amd64
> > >> >       >
> > >> >       >       Sort of basic questions are whether you are using a =
VM and how
> > >> >       >       much memory
> > >> >       >       you have.
> > >> >       >
> > >> >       >       Afterwards, maybe it is a configuration problems?  A=
re you
> > >> >       >       reusing the
> > >> >       >       configuration of your host machine?  Here are some o=
ld posts on
> > >> >       >       disabling
> > >> >       >       module signing:
> > >> >       >
> > >> >       > https://stackoverflow.com/questions/29806414/how-to-disabl=
e-kernel-module-s
> > >> >       >       igning-in-linux
> > >> >       > https://kernelnewbies.kernelnewbies.narkive.com/kKXLBu8C/h=
ow-to-disable-mod
> > >> >       > ule-verification-failed-signature-and-or-required-key-miss=
ing-tainting-ker
> > >> >       >       nel
> > >> >       >
> > >> >       >       If you change the configuration file, do make olddef=
config
> > >> >       >       afterwards to
> > >> >       >       make sure your changes are take into account.
> > >> >       >
> > >> >       >       Let me know how it goes.
> > >> >       >
> > >> >       >       julia
> > >> >       >
> > >> >       >
> > >> >       >       >
> > >> >       >       > Below is the error I got while installing the kern=
el build
> > >> >       >       >
> > >> >       >       > ...
> > >> >       >       >
> > >> >       >       > INSTALL /lib/modules/6.14.0-rc1custom-
> > >> >       >       > ola+/kernel/net/vmw_vsock/vmw_vsock_virtio_transpo=
rt_common.ko
> > >> >       >       >   INSTALL /lib/modules/6.14.0-rc1custom-
> > >> >       >       > ola+/kernel/net/vmw_vsock/hv_sock.ko
> > >> >       >       >   INSTALL /lib/modules/6.14.0-rc1custom-
> > >> >       >       > ola+/kernel/net/vmw_vsock/vsock_loopback.ko
> > >> >       >       >   INSTALL
> > >> >       >       /lib/modules/6.14.0-rc1custom-ola+/kernel/net/nsh/ns=
h.ko
> > >> >       >       >   INSTALL
> > >> >       >       /lib/modules/6.14.0-rc1custom-ola+/kernel/net/hsr/hs=
r.ko
> > >> >       >       >   INSTALL
> > >> >       >       /lib/modules/6.14.0-rc1custom-ola+/kernel/net/qrtr/q=
rtr.ko
> > >> >       >       >   INSTALL
> > >> >       >       /lib/modules/6.14.0-rc1custom-ola+/kernel/net/qrtr/q=
rtr-
> > >> >       >       > mhi.ko
> > >> >       >       >   DEPMOD  /lib/modules/6.14.0-rc1custom-ola+
> > >> >       >       >   INSTALL /boot
> > >> >       >       > run-parts: executing /etc/kernel/postinst.d/dkms
> > >> >       >       6.14.0-rc1custom-ola+
> > >> >       >       > /boot/vmlinuz-6.14.0-rc1custom-ola+
> > >> >       >       > dkms: running auto installation service for kernel
> > >> >       >       6.14.0-rc1custom-
> > >> >       >       > ola+.
> > >> >       >       > readelf: Error: Not an ELF file - it has the wrong=
 magic bytes
> > >> >       >       at the
> > >> >       >       > start
> > >> >       >       > readelf: Error: Not an ELF file - it has the wrong=
 magic bytes
> > >> >       >       at the
> > >> >       >       > start
> > >> >       >       > readelf: Error: Not an ELF file - it has the wrong=
 magic bytes
> > >> >       >       at the
> > >> >       >       > start
> > >> >       >       > readelf: Error: Not an ELF file - it has the wrong=
 magic bytes
> > >> >       >       at the
> > >> >       >       > start
> > >> >       >       > readelf: Error: Not an ELF file - it has the wrong=
 magic bytes
> > >> >       >       at the
> > >> >       >       > start
> > >> >       >       > readelf: Error: Not an ELF file - it has the wrong=
 magic bytes
> > >> >       >       at the
> > >> >       >       > start
> > >> >       >       > readelf: Error: Not an ELF file - it has the wrong=
 magic bytes
> > >> >       >       at the
> > >> >       >       > start
> > >> >       >       > readelf: Error: Not an ELF file - it has the wrong=
 magic bytes
> > >> >       >       at the
> > >> >       >       > start
> > >> >       >       > readelf: Error: Not an ELF file - it has the wrong=
 magic bytes
> > >> >       >       at the
> > >> >       >       > start
> > >> >       >       > readelf: Error: Not an ELF file - it has the wrong=
 magic bytes
> > >> >       >       at the
> > >> >       >       > start
> > >> >       >       > readelf: Error: Not an ELF file - it has the wrong=
 magic bytes
> > >> >       >       at the
> > >> >       >       > start
> > >> >       >       > readelf: Error: Not an ELF file - it has the wrong=
 magic bytes
> > >> >       >       at the
> > >> >       >       > start
> > >> >       >       > readelf: Error: Not an ELF file - it has the wrong=
 magic bytes
> > >> >       >       at the
> > >> >       >       > start
> > >> >       >       > readelf: Error: Not an ELF file - it has the wrong=
 magic bytes
> > >> >       >       at the
> > >> >       >       > start
> > >> >       >       > Sign command:
> > >> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sig=
n-
> > >> >       >       > file
> > >> >       >       > Binary
> > >> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sig=
n-file not
> > >> >       >       > found, modules won't be signed
> > >> >       >       >
> > >> >       >       > Building module:
> > >> >       >       > Cleaning build area...
> > >> >       >       > make -j4 KERNELRELEASE=3D6.14.0-rc1custom-ola+
> > >> >       >       KVER=3D6.14.0-rc1custom-
> > >> >       >       > ola+........(bad exit status: 2)
> > >> >       >       > Error! Bad return status for module build on kerne=
l:
> > >> >       >       6.14.0-rc1custom-
> > >> >       >       > ola+ (x86_64)
> > >> >       >       > Consult /var/lib/dkms/broadcom-sta/6.30.223.271/bu=
ild/make.log
> > >> >       >       for more
> > >> >       >       > information.
> > >> >       >       > Sign command:
> > >> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sig=
n-
> > >> >       >       > file
> > >> >       >       > Binary
> > >> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sig=
n-file not
> > >> >       >       > found, modules won't be signed
> > >> >       >       >
> > >> >       >       > Building module:
> > >> >       >       > Cleaning build area...(bad exit status: 2)
> > >> >       >       > kernelver=3D6.14.0-rc1custom-ola+ ./dkms-make.sh..=
.(bad exit
> > >> >       >       status: 2)
> > >> >       >       > Error! Bad return status for module build on kerne=
l:
> > >> >       >       6.14.0-rc1custom-
> > >> >       >       > ola+ (x86_64)
> > >> >       >       > Consult /var/lib/dkms/realtek-
> > >> >       >       > rtl8814au/5.8.5.1~git20240527.d8208c8/build/make.l=
og for more
> > >> >       >       > information.
> > >> >       >       > Sign command:
> > >> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sig=
n-
> > >> >       >       > file
> > >> >       >       > Binary
> > >> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts/sig=
n-file not
> > >> >       >       > found, modules won't be signed
> > >> >       >       >
> > >> >       >       > Building module:
> > >> >       >       > Cleaning build area...(bad exit status: 2)
> > >> >       >       > 'make' -j4 KVER=3D6.14.0-rc1custom-ola+
> > >> >       >       KSRC=3D/lib/modules/6.14.0-
> > >> >       >       > rc1custom-ola+/build...(bad exit status: 2)
> > >> >       >       > Error! Bad return status for module build on kerne=
l:
> > >> >       >       6.14.0-rc1custom-
> > >> >       >       > ola+ (x86_64)
> > >> >       >       > Consult /var/lib/dkms/realtek-
> > >> >       >       > rtl88xxau/5.6.4.2~git20240510.b44d288/build/make.l=
og for more
> > >> >       >       > information.
> > >> >       >       > Error! One or more modules failed to install durin=
g
> > >> >       >       autoinstall.
> > >> >       >       > Refer to previous errors for more information.
> > >> >       >       > dkms: autoinstall for kernel: 6.14.0-rc1custom-ola=
+ failed!
> > >> >       >       > run-parts: /etc/kernel/postinst.d/dkms exited with=
 return code
> > >> >       >       11
> > >> >       >       > make[2]: *** [arch/x86/Makefile:321: install] Erro=
r 1
> > >> >       >       > make[1]: ***
> > >> >       >       [/home/laolu/Desktop/Outreachy_Contributions/Linux-
> > >> >       >       > Kernel/git/kernels/staging/Makefile:372: __build_o=
ne_by_one]
> > >> >       >       Error 2
> > >> >       >       > make[1]: Target 'modules_install' not remade becau=
se of
> > >> >       >       errors.
> > >> >       >       > make[1]: Target 'install' not remade because of er=
rors.
> > >> >       >       > make: *** [Makefile:251: __sub-make] Error 2
> > >> >       >       > make: Target 'modules_install' not remade because =
of errors.
> > >> >       >       > make: Target 'install' not remade because of error=
s.
> > >> >       >       >
> > >> >       >       >
> > >> >       >       >
> > >> >       >
> > >> >       >
> > >> >       >
> > >> >
> > >> >
> > >> >
> >
> >
