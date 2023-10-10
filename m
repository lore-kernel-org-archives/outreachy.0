Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F414A2FE1B
	for <outreachy@lists.linux.dev>; Tue, 10 Oct 2023 16:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XdDMIU+y"
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2b95d5ee18dso71978991fa.1
        for <outreachy@lists.linux.dev>; Tue, 10 Oct 2023 09:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696956161; x=1697560961; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p0iO/wGGnpYXIogOAEGgb1VmUYkb40fITJyKvE4NFuM=;
        b=XdDMIU+y/HW2Ti4PN87NtsVyLWvHbcmOCrZ1w4JwguhQFSHxipumR9ENE7Bu8sAand
         ub3yWSQFo2bfRQyxkyXRRdUtL4Vigel0Ir7FYUYYyMu50h1H24SKmu7T2l6FJ9CoHUQT
         AhfkBSRTlpAwZxTOMOJ/5Lc0+AfvkfPOG6Up7cc7Kx+92O70HskA9fLHKia2z5Aj2G87
         57A+LacODm0viMV91hqwaGH3RZvO5/ESAv1SDJrYrYMtWDlS4rochhowL4PZtYEhrUBU
         FG/hPb7VKWmkMyOMShqKDYx1gfQmZemR49YXkoUB3SS4d92noVsdR7XZvKRdoOmStSVT
         lAjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696956161; x=1697560961;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p0iO/wGGnpYXIogOAEGgb1VmUYkb40fITJyKvE4NFuM=;
        b=Ukzozi5/iSvxGXIAG5j7521ZXNUoRRnpjEw8fTE3CjBEyVUSM9h7yxsPsWKUmTcjqt
         krYNBWZyOnIsSOaxbBP3BrIOdXcZ+suBhp3zT739YuaDCGx345nTFrXwOJ3y4WgftbGR
         I4dMaJ19eAeRKdknrf5jM4Eu1tkr7gi3q9pj78RYLUS2e+Tii6ePe2YUfcRYxzk7mqF1
         nKIaGLlYhky5YfuiPHBZrzwMidOOSweQXMU0nkAgYQ7v+ScDZrwpZ/5s8EHwkBKCqWpn
         tccTo6AqQMVLkWzzaG/Tz3N8tgAitUMdHDSPxiWn/Cwmk0zbvE52DF4rjGpcBzNIhSuD
         NtvA==
X-Gm-Message-State: AOJu0YymhHA6CBw3bpzOlIaQQxNxuTqQWzO5N2m3yXnlvNENldRavP0B
	/pcO4j9NHom75AsVKOUcWkj7Zuko/05EEYc2S68=
X-Google-Smtp-Source: AGHT+IGNDl2suvz3LlBvOF7+R5pq4uB6J1C+stt5jnCE/m13dw22G4BlfHio3f0HB+o8ckdgyW+jr6rwb/u4mDXjiqU=
X-Received: by 2002:a2e:8456:0:b0:2c0:30ce:1679 with SMTP id
 u22-20020a2e8456000000b002c030ce1679mr16365917ljh.7.1696956160540; Tue, 10
 Oct 2023 09:42:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <ZSTRETv7sO+1A6/G@gilbert-PC> <ZST5+5a8Uq1pULop@ashyti-mobl2.lan>
 <CAKrXSsZe4w-K7kzGu=8_R_h1TSVtJWL1_TmFX-S-A1jCrPeCrg@mail.gmail.com> <8e38f1a1-1da4-1d1f-aa32-6ad7ebb31c11@inria.fr>
In-Reply-To: <8e38f1a1-1da4-1d1f-aa32-6ad7ebb31c11@inria.fr>
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Date: Tue, 10 Oct 2023 17:42:03 +0100
Message-ID: <CAKrXSsYGi0ZsA2N-+1Djf81C1L6ZEhhvJ4V7iJXyuz9wn2keDg@mail.gmail.com>
Subject: Re: [Outreachy Applicant] NEEDS SOME CLARIFICATIONS
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Andi Shyti <andi.shyti@linux.intel.com>, 
	"andi.shyti@kernel.org" <andi.shyti@kernel.org>, 
	"outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 10, 2023 at 5:36=E2=80=AFPM Julia Lawall <julia.lawall@inria.fr=
> wrote:
>
>
>
> On Tue, 10 Oct 2023, Gilbert Adikankwu wrote:
>
> >
> >
> > On Tuesday, October 10, 2023, Andi Shyti <andi.shyti@linux.intel.com> w=
rote:
> >       Hi Gilbert,
> >
> >       On Tue, Oct 10, 2023 at 05:20:33AM +0100, Gilbert Adikankwu
> >       wrote:
> >       > Hello Andi and Julia,
> >       >
> >       > Thank you so much for your responses.
> >       >
> >       > I need some help with moving forward in the tutorial.
> >       >
> >       > I am at the "Make a driver change" step of the first patch
> >       tutorial. The tutorial made the look like finding the _main.c
> >       file of the driver and locating its probe function was quite
> >       easy.
> >       >
> >       > I ran lsmod as instructed and picked e1000e. I used git grep
> >       e1000e -- '*Makefile' to search for its subdirectory in the
> >       kernel tree. This is where it got tricky for me, I thought I
> >       would find a .c file like e1000e.c or e1000e_main.c as was shown
> >       in the VM example(I'm using native Linux) but I can see in the
> >       subdirectory are .o files that I can't modify. And I don't what
> >       to do or how to find the probe function I'm supposed to modify
> >
> >       Long story short: the .o files are object binary files that are
> >       not supposed to be edited. The object files are then linked
> >       together in a single file that will be your final driver's
> >       object.
> >
> >       Check the file drivers/net/ethernet/intel/e1000e/Makefile:
> >
> >       obj-$(CONFIG_E1000E) +=3D e1000e.o
> >
> >       e1000e-objs :=3D 82571.o ich8lan.o 80003es2lan.o \
> >                      mac.o manage.o nvm.o phy.o \
> >                      param.o ethtool.o netdev.o ptp.o
> >
> >       This means that the compilation process will produce the objects
> >       in the second group of .o files. At the end an e1000e.o file
> >       will contain all of them.
> >
> >       It doesn't mean that you will necessarily have a e1000e.c file.
> >
> >       As Deepak recommended, you could find the probe file with the
> >       grep command. You found it in netdev.c. As you can see from the
> >       Makefile, you will also have a netdev.o that will end up inside
> >       the e1000e.o.
> >
> >       This means that not always the driver is called the same way as
> >       its directory or the final .o file.
> >
> >       This is true also you end up working for the i915 sysfs project.
> >       Indeed the big set of files in the drivers/gpu/drm/i915/ with
> >       all
> >       the subdirectories, will, at the end, create one single object,
> >       called i915.o, even though there is no i915.c file in it.
> >
> >       I hope this cleared a bit things as in this list I have often
> >       seen people looking for source code in .o files.
> >
> >       Andi
> >
> >       > I tried the above process for a couple more names in the list
> >       returned by lsmod and it is the same issue.
> >       >
> >       > Please advise
> >       >
> >       > Thanks
> >       > Gilbert
> >       >
> >
> >
> > Hello Andi,
> >
> > Thank you for the explanation. It has helped my understanding.
> >
> > I have another issue, I tried compiling after modifying and it compiled
> > successfully. But when I tried to install so I can reboot, I got this
> > error:
> >
> > zstd: error 25 : Write error : No space left on device (cannot write
> > compressed block)
> > E: mkinitramfs failure zstd -q -1 -T0 25
> > update-initramfs: failed for /boot/initrd.img-6.6.0-rc1gilbert+ with 1.
> > run-parts: /etc/kernel/postinst.d/initramfs-tools exited with return co=
de 1
> > make[2]: *** [arch/x86/Makefile:292: install] Error 1
> > make[1]: *** [/home/functionguyy/git/kernels/staging/Makefile:359:
> > __build_one_by_one] Error 2
> > make: *** [Makefile:234: __sub-make] Error 2
>
> You have too little space in the partition that contains /boot?
>
> julia

The tutorial that guided me through the installation process just told
me to allocate 1GB for boot, is that too small? Do I need to wipe the
installation and redo it?

Gilbert
