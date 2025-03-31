Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DA91C2BD
	for <outreachy@lists.linux.dev>; Mon, 31 Mar 2025 04:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743396478; cv=none; b=e3Xg3KYRiAhfEmn/L8rqL0tdiFXDRKYON8LoSwnmeESOZ4KNWwvRqu01COnOrKhCtSVM6bGdQyRqdDOzizwfqEKZxhBni+4apfmaWsSRLT8Uy6Z77qbozssJW6vVgasIAvL4buCdwQXVId38jxgeY73bR63csrQXsVoT8Q9cO/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743396478; c=relaxed/simple;
	bh=jhwa9oDtJDYlWZi3CbW842bXrhIcd6AxOqGJ26bEik0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j+4CnRhXDP3GxZ49AttBr1OBwsJYTUOBPJwYsO+0urAybui22UVPxNIISpkfSyNFFMboYgAR386XR4e7gd+Tb8lWkEMTCkEu7nhOw052tFuQBIoyCiXg7YRAvbaiuCY0qRVpxoB551USTIZEmjFt1SjFGwenbgOeLXK7B0mV958=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MrhTY4/b; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MrhTY4/b"
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5efe8d9ebdfso695351a12.3
        for <outreachy@lists.linux.dev>; Sun, 30 Mar 2025 21:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743396474; x=1744001274; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tDNL/Ya5RJI2jJq7I0sXTOZvgzgvMqmXDg0sedcr2SM=;
        b=MrhTY4/bHZkiftF0XDtfjfp0mzHrfVjlpRqlW5clK0dGWltwe6gsbCr5pNVPIZaVRL
         h7kC43fqUE+ycUNSJfaGusWjKwtgsE4cvTcNOlzb6F6qZUc++Xjl22WP3pZeMbww3hKw
         5FwhWMJOcylEJ40jOFU6r1hTx9oBH+7fYdB0WbFfmL+WP+Epb0NI3SNzoAF/7sRclv3v
         BaEBDSpU5P9nJWhskFaiAp1IfYbDS5x6nO2Qkd8eM6OFyQWgHoM4tLcSoh63q2F9HgCr
         RR25qLsPjJ8LfOQJKfAA1h1lF3e1gl1CkegIR175SO8ZsdQNuRxJJLk3rZywNAsYa5ge
         nQ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743396474; x=1744001274;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tDNL/Ya5RJI2jJq7I0sXTOZvgzgvMqmXDg0sedcr2SM=;
        b=m/t0mVt5J+28s1/Ke6GCRBVv52VPEaxaTceIvCCk4uE6n+pgHQ9HGn1mObsdWnEBMg
         8H7dORnERVkBogveTTlSgsTYYceO5JrmODj3riR1EdUzqLc/jvEH/O481cqQCn7x+y2Z
         qP8sODtcay2fkgryd+TKCvwmC93gmkdTTKkrE+ONdGmlPOroBsJHzf1HZ+4P7Zj3yMTx
         H0S1VVhaJ1JFg57s87ChQLYoiDcn4syeRYJfdu4Ciu+8Z29HNlITRSG5X3XjqDv4V7Xv
         zvs0cMmSnCVByj7Q4gpyunguPM266WEoRr2ZRjWfQUVGVN92QXJ44J154NucLHYuFZTw
         q59Q==
X-Gm-Message-State: AOJu0Yy0h9li/vHhPVKgU0U1++xJAUSYh3xTw+Ur0bCiDcUjOx1PJ54m
	FyFhUXq780scpQUCNjPhdbXzfTqr/H97UYanfPq2J/Fl4wkvYyS8barN1nKyP+2ZguBRWWhVP8l
	YhiWY6uCnUFx641rLIQYIf0JQfQ6oWzCTXVY=
X-Gm-Gg: ASbGncsPCkMf/DTCZONDRmTFH4UHYwDRpz+at1vRGhDN6fz9+mejB2TMy8badh5/eSC
	H624CSgZxd6QkukcgoVoylftHJZe13fO/2Bg0yF4kFDRbJ93IADORtEQpfzd2GzeeYypQCHhmbV
	v1tZ7GtWiMN65+Ok4KrhBKVI60Dw==
X-Google-Smtp-Source: AGHT+IG1gKxcl3ejWu+7/lve+4yVsWwtxxhRLkEIXW3fNopK1SXxLDaWg+o148OD6zkcWjUt3qB+7ZHFJ4KlTwlhFfo=
X-Received: by 2002:a05:6402:35c6:b0:5e7:b02b:6430 with SMTP id
 4fb4d7f45d1cf-5edfdafb282mr5394776a12.23.1743396474119; Sun, 30 Mar 2025
 21:47:54 -0700 (PDT)
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
 <CAMyr_bKSouz-OCTOaWX9HvAEVLEsodW6Nv9MNDqjzYWp+=Ohtw@mail.gmail.com>
 <alpine.DEB.2.22.394.2503291129340.58211@hadrien> <CAMyr_bL-rAZRfPjEWMKHJNApUySeP_Jgkj_iDH+7EK_hCS-Bmg@mail.gmail.com>
 <alpine.DEB.2.22.394.2503302034530.23941@hadrien>
In-Reply-To: <alpine.DEB.2.22.394.2503302034530.23941@hadrien>
From: Richard Akintola <princerichard17a@gmail.com>
Date: Mon, 31 Mar 2025 05:47:42 +0100
X-Gm-Features: AQ5f1JoeLgpnGuUNnWyrB73dlb6L8PzqU64BiCgxzDtUIseZVBFuvp2vGRUjpBk
Message-ID: <CAMyr_bK_3aQYhkF_+B=c2dpy4atQKqsQPcWU=FV3pvM8gLuiRg@mail.gmail.com>
Subject: Re: Can't Build Linux Kernel from Tutorial
To: Julia Lawall <julia.lawall@inria.fr>
Cc: "outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Finally submitted a patch.
Thank you Julia.
Thank you Adekunle.

Richard Akintola

On Sun, Mar 30, 2025 at 7:36=E2=80=AFPM Julia Lawall <julia.lawall@inria.fr=
> wrote:
>
>
>
> On Sun, 30 Mar 2025, Richard Akintola wrote:
>
> > Hi Julia,
> >
> > Having reviewed previous messages on the mailing list, and running the =
command:
> > perl scripts/checkpatch.pl --strict -f drivers/staging/sm750fb/* | less
> >
> > I found:
> > ------------------------------------
> > drivers/staging/sm750fb/ddk750_dvi.c
> > ------------------------------------
> > CHECK: Avoid CamelCase: <sii164GetDeviceID>
> > #19: FILE: drivers/staging/sm750fb/ddk750_dvi.c:19:
> > +               .get_device_id =3D sii164GetDeviceID,
> >
> > CHECK: Avoid CamelCase: <sii164ResetChip>
> > #21: FILE: drivers/staging/sm750fb/ddk750_dvi.c:21:
> > +               .reset_chip =3D sii164ResetChip,
> >
> > CHECK: Avoid CamelCase: <sii164GetChipString>
> > #22: FILE: drivers/staging/sm750fb/ddk750_dvi.c:22:
> > +               .get_chip_string =3D sii164GetChipString,
> >
> > CHECK: Avoid CamelCase: <sii164SetPower>
> > #23: FILE: drivers/staging/sm750fb/ddk750_dvi.c:23:
> > +               .set_power =3D sii164SetPower,
> >
> > CHECK: Avoid CamelCase: <sii164EnableHotPlugDetection>
> > #24: FILE: drivers/staging/sm750fb/ddk750_dvi.c:24:
> > +               .enable_hot_plug_detection =3D sii164EnableHotPlugDetec=
tion,
> >
> > CHECK: Avoid CamelCase: <sii164IsConnected>
> > #25: FILE: drivers/staging/sm750fb/ddk750_dvi.c:25:
> > +               .is_connected =3D sii164IsConnected,
> >
> > CHECK: Avoid CamelCase: <sii164CheckInterrupt>
> > #26: FILE: drivers/staging/sm750fb/ddk750_dvi.c:26:
> > +               .check_interrupt =3D sii164CheckInterrupt,
> >
> > CHECK: Avoid CamelCase: <sii164ClearInterrupt>
> > #27: FILE: drivers/staging/sm750fb/ddk750_dvi.c:27:
> > +               .clear_interrupt =3D sii164ClearInterrupt,
> >
> > total: 0 errors, 0 warnings, 8 checks, 62 lines checked
> >
> > I would love to have all the 8 checks done, although I learnt it is one
> > check at a time.
> >
> > Please how do I go about sending the patches, given the fact that same
> > definitions are
> > found in file: drivers/staging/sm750fb/ddk750_dvi.c and file:
> > drivers/staging/sm750fb/ddk750_sii164.h
> > and I don't know which other files they are defined.
>
> It looks like you should be able to find the function definitions using
> grep.  You can make one patch that contains all of the changes in all the
> relevant files.  Remember to compile your kernel to be sure that
> everything is consistent.
>
> julia
>
> >
> > Richard Akintola
> >
> > On Sat, Mar 29, 2025 at 11:30=E2=80=AFAM Julia Lawall <julia.lawall@inr=
ia.fr> wrote:
> > >
> > >
> > >
> > > On Sat, 29 Mar 2025, Richard Akintola wrote:
> > >
> > > > Hi Julia,
> > > >
> > > > I want to inform you that I have successfully built the kernel.
> > > > After building successfully, I could not install, I searched on how=
 to
> > > > build Linux kernel on Debian, so I found the command "make -jN
> > > > bindeb-pkg" which created a debian packages for easy installation i=
n
> > > > the parent directory which I installed with the command "sudo apt
> > > > install ./*.deb".
> > > >
> > > > Thank you for the support so far, I really appreciate, now nothing =
is
> > > > standing in the way of sending my patches.
> > >
> > > OK, sounds good.
> > >
> > > It could be good to review the previous messages on the mailing list =
to
> > > get suggestions of what to focus on and to see what others have done.=
  I
> > > will post some more suggestions this weekend.
> > >
> > > julia
> > >
> > >
> > > >
> > > > Richard Akintola
> > > >
> > > >
> > > > On Wed, Mar 26, 2025 at 11:50=E2=80=AFAM Richard Akintola
> > > > <princerichard17a@gmail.com> wrote:
> > > > >
> > > > > Thank you Julia, do expect my patches.
> > > > >
> > > > > Richard
> > > > >
> > > > >
> > > > > On Tue, 25 Mar 2025, 21:25 Julia Lawall, <julia.lawall@inria.fr> =
wrote:
> > > > >>
> > > > >>
> > > > >>
> > > > >> On Tue, 25 Mar 2025, Richard Akintola wrote:
> > > > >>
> > > > >> > Hi Julia,
> > > > >> > The reason I haven't sent feedback is that the kernel I built =
and installed resulted in kernel panic which I am trying to recover from an=
d if I am not able to, I will install a new Os and try again (until I succe=
ssfully build the kernel).
> > > > >>
> > > > >> OK, thanks for the update.  If you can't make it work in th shor=
t term,
> > > > >> you could start working on some patches while continuing to try =
to get the
> > > > >> build to work.
> > > > >>
> > > > >> julia
> > > > >>
> > > > >>
> > > > >>
> > > > >> >
> > > > >> > Thank you for the support so far.
> > > > >> >
> > > > >> > Richard Akintola
> > > > >> >
> > > > >> > On Monday, March 24, 2025, Richard Akintola <princerichard17a@=
gmail.com> wrote:
> > > > >> >
> > > > >> >       Thank you Julia, I will go about resolving it as recomme=
nded
> > > > >> >
> > > > >> >       Richard Akintola
> > > > >> >
> > > > >> >
> > > > >> >       On Mon, 24 Mar 2025, 16:06 Julia Lawall, <julia.lawall@i=
nria.fr> wrote:
> > > > >> >
> > > > >> >
> > > > >> >       On Mon, 24 Mar 2025, Richard Akintola wrote:
> > > > >> >
> > > > >> >       > Good to hear from you Julia,
> > > > >> >       >
> > > > >> >       > For the first question: No, I am not using a VM, I am =
building the kernel on
> > > > >> >       > my machine's Os which is Parrot Linux Os.
> > > > >> >       >
> > > > >> >       > And as for the configuration: yes, I am reusing the th=
e configuration of my
> > > > >> >       > host machine - I copied my machine's configuration to =
the repository as
> > > > >> >       > shown in the tutorial.
> > > > >> >
> > > > >> >
> > > > >> >       OK, try to find something related to signatures in your =
configuration.
> > > > >> >       Distro configurations often have this issue.  For Debian=
 there is some PEM
> > > > >> >       thing.
> > > > >> >
> > > > >> >       julia
> > > > >> >
> > > > >> >       >
> > > > >> >       > Richard Akintola
> > > > >> >       >
> > > > >> >       > On Mon, 24 Mar 2025, 14:57 Julia Lawall, <julia.lawall=
@inria.fr> wrote:
> > > > >> >       >
> > > > >> >       >
> > > > >> >       >       On Mon, 24 Mar 2025, Richard Akintola wrote:
> > > > >> >       >
> > > > >> >       >       > Hello Julia,
> > > > >> >       >       >
> > > > >> >       >       > I have been trying to build the Linux Kernel v=
ia the tutorial
> > > > >> >       >       on my
> > > > >> >       >       > machine to no avail.
> > > > >> >       >       >
> > > > >> >       >       > This has prevented me from making a PATCH.
> > > > >> >       >       >
> > > > >> >       >       > This is the Os and Kernel version of my machin=
e
> > > > >> >       >       > OS: Parrot Security 6.3 (lorikeet) x86_64
> > > > >> >       >       > Kernel: 6.5.0-13parrot1-amd64
> > > > >> >       >
> > > > >> >       >       Sort of basic questions are whether you are usin=
g a VM and how
> > > > >> >       >       much memory
> > > > >> >       >       you have.
> > > > >> >       >
> > > > >> >       >       Afterwards, maybe it is a configuration problems=
?  Are you
> > > > >> >       >       reusing the
> > > > >> >       >       configuration of your host machine?  Here are so=
me old posts on
> > > > >> >       >       disabling
> > > > >> >       >       module signing:
> > > > >> >       >
> > > > >> >       > https://stackoverflow.com/questions/29806414/how-to-di=
sable-kernel-module-s
> > > > >> >       >       igning-in-linux
> > > > >> >       > https://kernelnewbies.kernelnewbies.narkive.com/kKXLBu=
8C/how-to-disable-mod
> > > > >> >       > ule-verification-failed-signature-and-or-required-key-=
missing-tainting-ker
> > > > >> >       >       nel
> > > > >> >       >
> > > > >> >       >       If you change the configuration file, do make ol=
ddefconfig
> > > > >> >       >       afterwards to
> > > > >> >       >       make sure your changes are take into account.
> > > > >> >       >
> > > > >> >       >       Let me know how it goes.
> > > > >> >       >
> > > > >> >       >       julia
> > > > >> >       >
> > > > >> >       >
> > > > >> >       >       >
> > > > >> >       >       > Below is the error I got while installing the =
kernel build
> > > > >> >       >       >
> > > > >> >       >       > ...
> > > > >> >       >       >
> > > > >> >       >       > INSTALL /lib/modules/6.14.0-rc1custom-
> > > > >> >       >       > ola+/kernel/net/vmw_vsock/vmw_vsock_virtio_tra=
nsport_common.ko
> > > > >> >       >       >   INSTALL /lib/modules/6.14.0-rc1custom-
> > > > >> >       >       > ola+/kernel/net/vmw_vsock/hv_sock.ko
> > > > >> >       >       >   INSTALL /lib/modules/6.14.0-rc1custom-
> > > > >> >       >       > ola+/kernel/net/vmw_vsock/vsock_loopback.ko
> > > > >> >       >       >   INSTALL
> > > > >> >       >       /lib/modules/6.14.0-rc1custom-ola+/kernel/net/ns=
h/nsh.ko
> > > > >> >       >       >   INSTALL
> > > > >> >       >       /lib/modules/6.14.0-rc1custom-ola+/kernel/net/hs=
r/hsr.ko
> > > > >> >       >       >   INSTALL
> > > > >> >       >       /lib/modules/6.14.0-rc1custom-ola+/kernel/net/qr=
tr/qrtr.ko
> > > > >> >       >       >   INSTALL
> > > > >> >       >       /lib/modules/6.14.0-rc1custom-ola+/kernel/net/qr=
tr/qrtr-
> > > > >> >       >       > mhi.ko
> > > > >> >       >       >   DEPMOD  /lib/modules/6.14.0-rc1custom-ola+
> > > > >> >       >       >   INSTALL /boot
> > > > >> >       >       > run-parts: executing /etc/kernel/postinst.d/dk=
ms
> > > > >> >       >       6.14.0-rc1custom-ola+
> > > > >> >       >       > /boot/vmlinuz-6.14.0-rc1custom-ola+
> > > > >> >       >       > dkms: running auto installation service for ke=
rnel
> > > > >> >       >       6.14.0-rc1custom-
> > > > >> >       >       > ola+.
> > > > >> >       >       > readelf: Error: Not an ELF file - it has the w=
rong magic bytes
> > > > >> >       >       at the
> > > > >> >       >       > start
> > > > >> >       >       > readelf: Error: Not an ELF file - it has the w=
rong magic bytes
> > > > >> >       >       at the
> > > > >> >       >       > start
> > > > >> >       >       > readelf: Error: Not an ELF file - it has the w=
rong magic bytes
> > > > >> >       >       at the
> > > > >> >       >       > start
> > > > >> >       >       > readelf: Error: Not an ELF file - it has the w=
rong magic bytes
> > > > >> >       >       at the
> > > > >> >       >       > start
> > > > >> >       >       > readelf: Error: Not an ELF file - it has the w=
rong magic bytes
> > > > >> >       >       at the
> > > > >> >       >       > start
> > > > >> >       >       > readelf: Error: Not an ELF file - it has the w=
rong magic bytes
> > > > >> >       >       at the
> > > > >> >       >       > start
> > > > >> >       >       > readelf: Error: Not an ELF file - it has the w=
rong magic bytes
> > > > >> >       >       at the
> > > > >> >       >       > start
> > > > >> >       >       > readelf: Error: Not an ELF file - it has the w=
rong magic bytes
> > > > >> >       >       at the
> > > > >> >       >       > start
> > > > >> >       >       > readelf: Error: Not an ELF file - it has the w=
rong magic bytes
> > > > >> >       >       at the
> > > > >> >       >       > start
> > > > >> >       >       > readelf: Error: Not an ELF file - it has the w=
rong magic bytes
> > > > >> >       >       at the
> > > > >> >       >       > start
> > > > >> >       >       > readelf: Error: Not an ELF file - it has the w=
rong magic bytes
> > > > >> >       >       at the
> > > > >> >       >       > start
> > > > >> >       >       > readelf: Error: Not an ELF file - it has the w=
rong magic bytes
> > > > >> >       >       at the
> > > > >> >       >       > start
> > > > >> >       >       > readelf: Error: Not an ELF file - it has the w=
rong magic bytes
> > > > >> >       >       at the
> > > > >> >       >       > start
> > > > >> >       >       > readelf: Error: Not an ELF file - it has the w=
rong magic bytes
> > > > >> >       >       at the
> > > > >> >       >       > start
> > > > >> >       >       > Sign command:
> > > > >> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts=
/sign-
> > > > >> >       >       > file
> > > > >> >       >       > Binary
> > > > >> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts=
/sign-file not
> > > > >> >       >       > found, modules won't be signed
> > > > >> >       >       >
> > > > >> >       >       > Building module:
> > > > >> >       >       > Cleaning build area...
> > > > >> >       >       > make -j4 KERNELRELEASE=3D6.14.0-rc1custom-ola+
> > > > >> >       >       KVER=3D6.14.0-rc1custom-
> > > > >> >       >       > ola+........(bad exit status: 2)
> > > > >> >       >       > Error! Bad return status for module build on k=
ernel:
> > > > >> >       >       6.14.0-rc1custom-
> > > > >> >       >       > ola+ (x86_64)
> > > > >> >       >       > Consult /var/lib/dkms/broadcom-sta/6.30.223.27=
1/build/make.log
> > > > >> >       >       for more
> > > > >> >       >       > information.
> > > > >> >       >       > Sign command:
> > > > >> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts=
/sign-
> > > > >> >       >       > file
> > > > >> >       >       > Binary
> > > > >> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts=
/sign-file not
> > > > >> >       >       > found, modules won't be signed
> > > > >> >       >       >
> > > > >> >       >       > Building module:
> > > > >> >       >       > Cleaning build area...(bad exit status: 2)
> > > > >> >       >       > kernelver=3D6.14.0-rc1custom-ola+ ./dkms-make.=
sh...(bad exit
> > > > >> >       >       status: 2)
> > > > >> >       >       > Error! Bad return status for module build on k=
ernel:
> > > > >> >       >       6.14.0-rc1custom-
> > > > >> >       >       > ola+ (x86_64)
> > > > >> >       >       > Consult /var/lib/dkms/realtek-
> > > > >> >       >       > rtl8814au/5.8.5.1~git20240527.d8208c8/build/ma=
ke.log for more
> > > > >> >       >       > information.
> > > > >> >       >       > Sign command:
> > > > >> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts=
/sign-
> > > > >> >       >       > file
> > > > >> >       >       > Binary
> > > > >> >       >       /lib/modules/6.14.0-rc1custom-ola+/build/scripts=
/sign-file not
> > > > >> >       >       > found, modules won't be signed
> > > > >> >       >       >
> > > > >> >       >       > Building module:
> > > > >> >       >       > Cleaning build area...(bad exit status: 2)
> > > > >> >       >       > 'make' -j4 KVER=3D6.14.0-rc1custom-ola+
> > > > >> >       >       KSRC=3D/lib/modules/6.14.0-
> > > > >> >       >       > rc1custom-ola+/build...(bad exit status: 2)
> > > > >> >       >       > Error! Bad return status for module build on k=
ernel:
> > > > >> >       >       6.14.0-rc1custom-
> > > > >> >       >       > ola+ (x86_64)
> > > > >> >       >       > Consult /var/lib/dkms/realtek-
> > > > >> >       >       > rtl88xxau/5.6.4.2~git20240510.b44d288/build/ma=
ke.log for more
> > > > >> >       >       > information.
> > > > >> >       >       > Error! One or more modules failed to install d=
uring
> > > > >> >       >       autoinstall.
> > > > >> >       >       > Refer to previous errors for more information.
> > > > >> >       >       > dkms: autoinstall for kernel: 6.14.0-rc1custom=
-ola+ failed!
> > > > >> >       >       > run-parts: /etc/kernel/postinst.d/dkms exited =
with return code
> > > > >> >       >       11
> > > > >> >       >       > make[2]: *** [arch/x86/Makefile:321: install] =
Error 1
> > > > >> >       >       > make[1]: ***
> > > > >> >       >       [/home/laolu/Desktop/Outreachy_Contributions/Lin=
ux-
> > > > >> >       >       > Kernel/git/kernels/staging/Makefile:372: __bui=
ld_one_by_one]
> > > > >> >       >       Error 2
> > > > >> >       >       > make[1]: Target 'modules_install' not remade b=
ecause of
> > > > >> >       >       errors.
> > > > >> >       >       > make[1]: Target 'install' not remade because o=
f errors.
> > > > >> >       >       > make: *** [Makefile:251: __sub-make] Error 2
> > > > >> >       >       > make: Target 'modules_install' not remade beca=
use of errors.
> > > > >> >       >       > make: Target 'install' not remade because of e=
rrors.
> > > > >> >       >       >
> > > > >> >       >       >
> > > > >> >       >       >
> > > > >> >       >
> > > > >> >       >
> > > > >> >       >
> > > > >> >
> > > > >> >
> > > > >> >
> > > >
> > > >
> >
