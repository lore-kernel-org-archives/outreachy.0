Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81286171C1
	for <outreachy@lists.linux.dev>; Tue, 10 Oct 2023 16:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YgfMAvIS"
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2c131ddfeb8so68235921fa.3
        for <outreachy@lists.linux.dev>; Tue, 10 Oct 2023 09:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696956366; x=1697561166; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=toj/NKdhGibx1OuE6PH34M9jun/ETP4+IIPE/i2yaPM=;
        b=YgfMAvISHbGx4exEZwCX3bvYbQy4eqK2muK2Mg1TojeQj4CZMHKY8KqNGL0gjEzFMi
         es/vJTrbNeOQZuaebm2KhP98Y96LzhWfYFJE+qlQ4cJu+AGVqIuDbRztUTbe4LPH0sU0
         +L1hAR9jEz8qwr1NmzLFR4EwFkAY61IiOvvyUCv8nEq+mVAv4juiVu/JTxAwBxFbI8ix
         4emJXZYYtVsofjHbcV/deLCWNUXWBcmIBIlbDcHwAlBx6hlg79l7g7RIqWIbhxRmGGiS
         synq9DqUCpAgvvMbfvsih6M+W8GvoveEulMhaDGywpCq5eE0SfNThrHCUr+fYCwEJY5W
         R5yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696956366; x=1697561166;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=toj/NKdhGibx1OuE6PH34M9jun/ETP4+IIPE/i2yaPM=;
        b=ECnUsFsyHGAXHo7A6jFy6aRAZbMJOCJZM0HnZSxH3keyqx7D9z6Qq2u4r3emS9Y75U
         pXRAAkTIxtcMhVBpsLVfy0nEJLsfIXW4oLzAlbb10kQ9si3/KAhseCiLSBndCTczz1iN
         8l5cJ7TYvAGU3Zm+OV8bqN/uL56kRnpeSxWzRW4v1vtSDWnmD2DAf9nzRBzHmG9KrEnG
         Om0fywmhzzWyCl/q+KRBj/iqIrPJFivaPXdFmqt316II+OQLskfnwNYK7mZgx1Rmtgrd
         hf7Bf+x/u36LsnBs/Wn59GDH0iATw4RkZdbwczvejm2YUlGQk/0d1Iw94Ndm2+TLgR0K
         3jjQ==
X-Gm-Message-State: AOJu0YwL602kcUJ8IfZPhTVRzs3GYtNfKaKJmC34CM+JHq1sLpZ9SQ3H
	q4QvE7h/H6F2TjilcakjTnXZPPPLIFIUMQI+UN0=
X-Google-Smtp-Source: AGHT+IHV6Y9WEVjjP2yNhb30odKuHeb+1Ld44+ERnYDmp2jeBkds85BhQy3wgi0jAB4leHyOImQM/puUHG5mMSZBMoE=
X-Received: by 2002:a2e:9f51:0:b0:2b9:ef0a:7d4b with SMTP id
 v17-20020a2e9f51000000b002b9ef0a7d4bmr16908567ljk.31.1696956366276; Tue, 10
 Oct 2023 09:46:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <ZSTRETv7sO+1A6/G@gilbert-PC> <ZST5+5a8Uq1pULop@ashyti-mobl2.lan>
 <CAKrXSsZe4w-K7kzGu=8_R_h1TSVtJWL1_TmFX-S-A1jCrPeCrg@mail.gmail.com>
 <8e38f1a1-1da4-1d1f-aa32-6ad7ebb31c11@inria.fr> <ZSV/MLpQs0GJYIqh@ashyti-mobl2.lan>
In-Reply-To: <ZSV/MLpQs0GJYIqh@ashyti-mobl2.lan>
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Date: Tue, 10 Oct 2023 17:45:29 +0100
Message-ID: <CAKrXSsZSb35yvwvMm_sa9+Xk6V01ZA_2LSzd9Lbufjsifr7kKw@mail.gmail.com>
Subject: Re: [Outreachy Applicant] NEEDS SOME CLARIFICATIONS
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, "andi.shyti@kernel.org" <andi.shyti@kernel.org>, 
	"outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 10, 2023 at 5:43=E2=80=AFPM Andi Shyti <andi.shyti@linux.intel.=
com> wrote:
>
> Hi Gilbert,
>
> > > I have another issue, I tried compiling after modifying and it compil=
ed
> > > successfully. But when I tried to install so I can reboot, I got this
> > > error:
> > >
> > > zstd: error 25 : Write error : No space left on device (cannot write
> > > compressed block)
> > > E: mkinitramfs failure zstd -q -1 -T0 25
> > > update-initramfs: failed for /boot/initrd.img-6.6.0-rc1gilbert+ with =
1.
> > > run-parts: /etc/kernel/postinst.d/initramfs-tools exited with return =
code 1
> > > make[2]: *** [arch/x86/Makefile:292: install] Error 1
> > > make[1]: *** [/home/functionguyy/git/kernels/staging/Makefile:359:
> > > __build_one_by_one] Error 2
> > > make: *** [Makefile:234: __sub-make] Error 2
> >
> > You have too little space in the partition that contains /boot?
>
> What does "df -h" say?
>
> Andi

This is what df -h returned:

Filesystem      Size  Used Avail Use% Mounted on
tmpfs           784M  2.0M  782M   1% /run
/dev/sda9        23G   17G  5.6G  75% /
tmpfs           3.9G   45M  3.8G   2% /dev/shm
tmpfs           5.0M  4.0K  5.0M   1% /run/lock
/dev/sda7       944M  761M  119M  87% /boot
/dev/sda11       60G   28G   30G  49% /home
/dev/sda2        96M   32M   65M  33% /boot/efi
tmpfs           784M  120K  784M   1% /run/user/1000

Gilbert
